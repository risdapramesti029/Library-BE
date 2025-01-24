// services/borrowingService.js
const borrowingModel = require('../models/borrowing');

const getAllBorrowings = async () => {
  return await borrowingModel.getAllBorrowings();
};

const createBorrowing = async (borrowing) => {
  return await borrowingModel.createBorrowing(borrowing);
};

module.exports = { getAllBorrowings, createBorrowing };
