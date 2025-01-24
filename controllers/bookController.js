// controllers/bookController.js
const bookService = require('../services/bookService');

const getBooks = async (req, res) => {
  try {
    const books = await bookService.getAllBooks();
    res.json(books);
  } catch (error) {
    console.error(error);
    res.status(500).send('Something went wrong');
  }
};

const createBook = async (req, res) => {
  try {
    const newBook = await bookService.addBook(req.body);
    res.status(201).json(newBook);
  } catch (error) {
    console.error(error);
    res.status(500).send('Something went wrong');
  }
};

module.exports = { getBooks, createBook };

