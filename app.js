const express = require('express');
const bodyParser = require('body-parser');
const bookRoutes = require('./routes/bookRoutes');
const memberRoutes = require('./routes/memberRoutes');
const borrowingRoutes = require('./routes/borrowingRoutes');
const pool = require('./config/database'); 

const app = express();


app.use(bodyParser.json());

// Test Database Connection
pool.query('SELECT NOW()', (err, res) => {
  if (err) {
    console.error('Database connection error:', err.stack);
  } else {
    console.log('Connected to the database. Server time:', res.rows[0].now);
  }
});

app.get('/', (req, res) => {
  res.send('Library Management System');
});


app.use('/api', bookRoutes);
app.use('/api', memberRoutes);
app.use('/api', borrowingRoutes);


app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Something broke!');
});


const port = process.env.PORT || 3000; 
app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
