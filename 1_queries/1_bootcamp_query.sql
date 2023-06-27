SELECT id, name 
FROM students 
WHERE cohort_id = 1
ORDER BY name;


SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);


SELECT count(id)
FROM students 
WHERE cohort_id IN (1,2,3);

SELECT name, id, cohort_id
FROM students
WHERE phone IS NULL
OR  IS NULL;

SELECT name, id, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
AND phone IS NULL;


SELECT name, id, cohort_id
FROM students
WHERE end_date IS NULL
ORDER BY cohort_id;

SELECT name, email, phone
FROM students
WHERE github IS NULL
AND end_date IS NOT NULL;




SELECT students.name as student_name, cohorts.name as cohort_name,
cohorts.start_date as cohort_start_date,students.start_date as student_start_date
FROM students JOIN cohorts ON cohort_id =cohorts.id
WHERE cohorts.start_date != students.start_date
ORDER BY cohort_start_date;

SELECT sum(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

SELECT cohorts.name, cohorts.duration FROM chohorts RIGHT OURTER 
JOIN assignement_submissions ON cohorts.durations = assignment_submissions.duration WHERE cohorts.name = 'FEB12';
