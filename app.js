const express = require('express')
const bodyParser = require('body-parser');
const app = express()
const port = 3000
const courses = require('./routes/courses')
const instructors = require('./routes/instructors')

app.use(bodyParser.json());

app.use('/courses', courses)
app.use('/instructors', instructors)

 

const server = app.listen(3000, () => {
  console.log(`Example app listening on port ${port}`)
})