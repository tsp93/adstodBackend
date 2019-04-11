const { query } = require('./db');

/**
 * Retrieve all questions of a particular language
 *
 * @param {string} order Hækkandi eða lækkandi röð
 * @param {boolean} completed Satt/ósatt biður aðeins um lokin/ólokin verkefni
 * @returns {array} Fylki með verkefnum
 */
async function getQuestions({ language = 'ICE' }) {
  let SQLquery = `SELECT * FROM Questions${language}`;
  const result = await query(SQLquery);
  const questions = result.rows;

  const results = [];
  SQLquery = `
    SELECT q.id, q.QuestionText, q.OptionCount, o2.OptionText
    FROM Questions${language} q
    JOIN OptionsForAnswers${language} o on q.ID = o.QuestionID
    JOIN OptionsICE o2 on o.OptionID = o2.ID WHERE q.id = $1`;
  for (let i = 0; i < questions.length; i += 1) {
    results.push(query(SQLquery, [questions[i].id]));
  }
  const baz = await Promise.all(results);

  for (let j = 0; j < baz.length; j += 1) {
    const bazRows = baz[j].rows;
    const options = [];
    for (let k = 0; k < bazRows.length; k += 1) {
      options.push(bazRows[k].optiontext);
    }
    questions[j].options = options;
  }
  
  return questions;
}

async function getQuestion(id, lang) {
  const SQLquery = `
    SELECT q.id, q.QuestionText, q.OptionCount, o2.OptionText 
    FROM Questions${lang} q
    JOIN OptionsForAnswers${lang} o on q.ID = o.QuestionID 
    JOIN OptionsICE o2 on o.OptionID = o2.ID WHERE q.id = ${id}`;
}

/**
 * Sækir stakt verkefni.
 *
 * @param {number} id Id á verkefni
 * @returns {object} Hlutur með verkefni
 */
async function postResults() {
  const result = await query(`SELECT * FROM projects WHERE id = ${id}`);

  return result.rows[0];
}

module.exports = {
  getQuestions,
  postResults,
};
