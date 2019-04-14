const { query } = require('./db');

/**
 * Retrieve all questions of a particular language
 *
 * @param {string} language Language in which to get questions
 * @returns {array} Array of questions in a particular language
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
    JOIN Options${language} o2 on o.OptionID = o2.ID WHERE q.id = $1`;
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

/**
 * Retrieves resources based on answers
 *
 * @param {array} answers An array of answers to check
 * @returns {array} Array of resources for the questionee
 */
function checkAnswers(answers) {
  const assResources = [];

  // In all following comments above if statements:
  // AR = Assistance Resource

  // If true, this will add the AR "Kvennathvarf"
  if (answers[0] === 1 && answers[5] === 1) {
    assResources.push(1);
  }

  // If true, this will add the AR "Stigamót"
  if (answers[5] === 1) {
    assResources.push(2);
  }

  // If true, this will add the AR "Frú Ragnheiður"
  if (answers[5] > 3 && answers[10] > 3) {
    assResources.push(3);
  }

  // If true, this will add the AR "Heimsóknarvinur"
  if (answers[2] === 5 && answers[15] > 3) {
    assResources.push(4);
  }

  // If true, this will add the AR "Heilahristingur"
  if (answers[2] === 1 && answers[11] === 1) {
    assResources.push(5);
  }

  // If nothing is chosen, then the default AR "Þjónustumiðstöð
  // Laugardals og Háaleitis" will be sent to the user
  if (assResources.length === 0) {
    assResources.push(6);
  }
  return assResources;
}

/**
 * Posts results and saves them if user allows. Then returns
 * a bunch of possible places the user can contact.
 *
 * @param {array} answers An array of answers
 * @param {number} permission 1 if users allow us to save answers, 0 if not
 * @param {string} language The language in which the user answered the questions
 * @returns {array} An array of places the user can contact for assistance
 */
async function postResults(answers, permission, language) {
  if (permission === 1) {
    const savedAnswer = answers.join(',');
    await query('INSERT INTO SavedAnswers (Answers) VALUES ($1)', [savedAnswer]);
  }

  const assResources = checkAnswers(answers);

  const results = [];
  const SQLquery = `
  SELECT a.ID, a.Title, a.Link, p.Number, a.Description, a.PhoneNumberCount 
  FROM AssistanceResources${language} a 
  JOIN PhoneNumbersForResources${language} p2 ON a.ID = p2.AssistanceResourceID 
  JOIN PhoneNumbers p ON p.ID = p2.PhoneNumberID 
  WHERE a.ID = $1`;

  for (let i = 0; i < assResources.length; i += 1) {
    results.push(query(SQLquery, [assResources[i]]));
  }
  const baz = await Promise.all(results);

  const retResources = [];
  for (let j = 0; j < baz.length; j += 1) {
    const bazRows = baz[j].rows;
    retResources.push(bazRows[0]);

    retResources[j].phonenumbers = [];
    for (let k = 0; k < bazRows.length; k += 1) {
      retResources[j].phonenumbers.push(bazRows[k].number);
    }
    delete retResources[j].number;
  }

  return retResources;
}

module.exports = {
  getQuestions,
  postResults,
};
