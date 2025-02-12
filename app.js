const express = require('express');
const app = express();
const port = 80;

app.get('/', (req, res) => {
  res.send('Hello, Docker World!');
});

app.listen(port, () => {
  console.log(`App is listening on port ${port}`);
});
