require('dotenv').config();

const fs = require('fs');
const util = require('util');

const { query } = require('./db');

const connectionString = process.env.DATABASE_URL;

const readFileAsync = util.promisify(fs.readFile);

async function main() {
  console.info(`Putting up database on ${connectionString}`);

  // Create the database
  try {
    const createDatabase = await readFileAsync('./db.sql');
    console.info(createDatabase.toString('utf8'));
    await query(createDatabase.toString('utf8'));
    console.info('Database created');
  } catch (e) {
    console.error('Error creating database:', e.message);
  }
}

main().catch((err) => {
  console.error(err);
});
