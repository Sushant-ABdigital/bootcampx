-- This is my code
SELECT SUM(duration)
FROM assignment_submissions
INNER JOIN students
ON  assignment_submissions.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';


-- This is from the solution
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';

--Both produces same result;