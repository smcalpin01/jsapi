var express = require('express');
var router = express.Router();

var instructors = [
  { id: 0, name: 'Po' }
  , { id: 1, name: 'Kanji' }
  , { id: 2, name: 'Zhang' }
];

function getInstructor (req, res, next) {
  console.log('req.params.id  ' + req.params.id);
  var instructor = instructors[req.params.id];  
  req.instructor = instructor;
  next();
}

/* /instructors API call.  This API call gets the complete table of instructors */
router.get('/', (req, res) => 
   {res.send('Instructors are: ' + JSON.stringify(instructors))});

/* /instructor by id API call.  This API call receives a path parameter in :id, looks up the instructor in the
    instructor table using the id, and returns the instructor name */

router.get('/:id', getInstructor, function (req, res)  {
 res.send('Instructor name is: ' +  req.instructor.name )}
)
/*  This statement exports the router */

module.exports = router;