// app.js

require('dotenv').config();
const express = require('express');
const aa = require('./a'); // Import the object from a.js
const app = express();
const PORT = process.env.PORT || 3000;

// Call the 'a' function from the imported object
const aaa = aa.a(4, 5); // Use aa.a to access the 'a' function

// Root route
app.get('/', (req, res) => {
  res.send('test and update ' + aaa);
});

// Start server
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
