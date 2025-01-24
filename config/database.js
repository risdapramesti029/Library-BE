// config/database.js
/*const { Pool } = require('pg');
require('dotenv').config();

const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "librarydb",
  password: "123456789",
  port: 5432, 
})
module.exports = pool;
*/

const { Pool } = require('pg');

const pool = new Pool({
  user: 'postgres',        // Ganti dengan username PostgreSQL Anda
  host: 'localhost',       // Ganti jika host Anda berbeda
  database: 'librarydb',   // Nama database PostgreSQL Anda
  password: '123456789',   // Password PostgreSQL Anda
  port: 5432,              // Port PostgreSQL (default: 5432)
});

module.exports = pool;
