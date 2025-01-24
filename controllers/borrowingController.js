// controllers/borrowingController.js
const borrowingService = require('../services/borrowingService');

const getBorrowings = async (req, res) => {
  try {
    const borrowings = await borrowingService.getAllBorrowings();
    res.json(borrowings);
  } catch (error) {
    console.error(error);
    res.status(500).send('Something went wrong');
  }
};

const createBorrowing = async (req, res) => {
  try {
    const newBorrowing = await borrowingService.createBorrowing(req.body);
    res.status(201).json(newBorrowing);
  } catch (error) {
    console.error(error);
    res.status(500).send('Something went wrong');
  }
};

module.exports = { getBorrowings, createBorrowing };
