// models/book.js
const pool = require('../config/database');

const getAllBooks = async () => {
  const result = await pool.query('SELECT * FROM books');
  return result.rows;
};

const addBook = async (book) => {
  const { title, author, published_year, stock, isbn } = book;
  const query = 'INSERT INTO books (title, author, published_year, stock, isbn) VALUES ($1, $2, $3, $4, $5) RETURNING *';
  const values = [title, author, published_year, stock, isbn];
  const result = await pool.query(query, values);
  return result.rows[0];
};

module.exports = { getAllBooks, addBook };
