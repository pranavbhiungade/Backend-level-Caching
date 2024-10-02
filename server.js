const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const currentTime = new Date().toISOString();
  res.send(`Hello! Current time: ${currentTime}`);
});

app.listen(3000, () => {
  console.log('Node.js app is running on port 3000');
});
