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
    const createTable = await readFileAsync('./db.sql');
    await query(createTable.toString('utf8'));
    console.info('Database created');
  } catch (e) {
    console.error('Error creating database:', e.message);
    return;
  }
}

main().catch((err) => {
  console.error(err);
});
