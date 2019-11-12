SELECT students.name, AVG(assignments.duration) as average_estimated_duration, AVG(assignment_submissions.duration) as average_assignment_duration
FROM assignment_submissions
JOIN assignments ON assignments.id = assignment_id
JOIN students ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignments.duration) > AVG(assignment_submissions.duration);