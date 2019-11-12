SELECT assignments.id, name, day, chapter, COUNT(assistance_requests.assignment_id)
FROM assignments
JOIN assistance_requests ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id;