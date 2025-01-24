// services/bookService.js
const bookModel = require('../models/book');

const getAllBooks = async () => {
  return await bookModel.getAllBooks();
};

const addBook = async (book) => {
  return await bookModel.addBook(book);
};

module.exports = { getAllBooks, addBook };
