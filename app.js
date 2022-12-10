const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const userInput = req.query.input;
  const output = eval(userInput);  // This line is vulnerable to RCE attacks
  res.send(output);
});

app.listen(3000, () => {
  console.log('Listening on port 3000...');
});
