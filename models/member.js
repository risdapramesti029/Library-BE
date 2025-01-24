// models/member.js
const pool = require('../config/database');

const getAllMembers = async () => {
  const result = await pool.query('SELECT * FROM members');
  return result.rows;
};

const addMember = async (member) => {
  const { name, email, phone, address } = member;
  const query = 'INSERT INTO members (name, email, phone, address) VALUES ($1, $2, $3, $4) RETURNING *';
  const values = [name, email, phone, address];
  const result = await pool.query(query, values);
  return result.rows[0];
};

module.exports = { getAllMembers, addMember };
