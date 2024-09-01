var express = require('express');
var router = express.Router();

var courses = [
  { id: 0, name: 'Advanced Networking' }
  , { id: 1, name: 'Database Systems' }
  , { id: 2, name: 'Computer Organization' }
];

function getCourse (req, res, next) {
  console.log('req.params.id  ' + req.params.id);
  var course = courses[req.params.id];  
  req.course = course;
  next();
}

/* /courses (home) API call.  This API call gets the complete table of courses */
router.get('/', (req, res) => 
   {res.send('Courses are: ' + JSON.stringify(courses))});

/* /course by id API call.  This API call receives a path parameter in :id, looks up the course in the
    course table using the id, and returns the course name */

router.get('/:id', getCourse, function (req, res)  {
 res.send('Course name is: ' +  req.course.name )}
)
/*  This statement exports the router */

module.exports = router;

//  res.send('Course name is: ' + JSON.stringify({ id: 0, name: 'Advanced Networking' }))}