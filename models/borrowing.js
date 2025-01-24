// models/borrowing.js
const pool = require('../config/database');

const getAllBorrowings = async () => {
  const result = await pool.query('SELECT * FROM borrowings');
  return result.rows;
};

const createBorrowing = async (borrowing) => {
  const { book_id, member_id, borrow_date, return_date, status } = borrowing;
  const query = 'INSERT INTO borrowings (book_id, member_id, borrow_date, return_date, status) VALUES ($1, $2, $3, $4, $5) RETURNING *';
  const values = [book_id, member_id, borrow_date, return_date, status];
  const result = await pool.query(query, values);
  return result.rows[0];
};

module.exports = { getAllBorrowings, createBorrowing };
