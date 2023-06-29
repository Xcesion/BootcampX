const { Pool } = require("pg");

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = $1
ORDER BY teacher;` ;

const name = process.argv[2] || 'JUL02';

pool.query(queryString, [name])
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${row.cohort}: ${row.teacher}`);
    })
  });