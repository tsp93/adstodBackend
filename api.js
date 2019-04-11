const express = require('express');

const {
  getQuestions,
  postResults,
} = require('./questions');

const router = express.Router();

function catchErrors(fn) {
  return (req, res, next) => fn(req, res, next).catch(next);
}

/**
 * Route handler to get Questions
 *
 * @param {object} req Request object
 * @param {object} res Response object
 * @returns {array} Array of Questions
 */
async function getQuestionsRoute(req, res) {
  const { language = 'ICE' } = req.query;

  if (!['ICE', 'ENG', 'POL'].includes(language)) {
    return res.status(400).json({ error: 'Invalid language' });
  }

  const result = await getQuestions({ language });

  return res.status(200).json(result);
}

/**
 * Route handler to get results
 *
 * @param {object} req Request object
 * @param {object} res Response object
 */
async function postResultsRoute(req, res) {
  const { questions } = req.body;

  const result = await postResults(questions);

  if (!result) {
    return res.status(404).json({ error: 'Project not found' });
  }

  return res.status(200).json();
}


router.get('/', catchErrors(getQuestionsRoute));
router.post('/', catchErrors(postResultsRoute));
router.get('/favicon.ico', (req, res) => res.status(204));

module.exports = router;
