const express = require('express')
const app = express()
const port = 4000

app.get('/new', (req, res) => {
  res.send('Hello New World!')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})