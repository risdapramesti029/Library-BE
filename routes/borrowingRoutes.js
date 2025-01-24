// routes/borrowingRoutes.js
const express = require('express');
const router = express.Router();
const borrowingController = require('../controllers/borrowingController');

router.get('/borrowings', borrowingController.getBorrowings);
router.post('/borrowings', borrowingController.createBorrowing);

module.exports = router;
