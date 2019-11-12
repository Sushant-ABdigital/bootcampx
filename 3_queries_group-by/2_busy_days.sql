SELECT day, COUNT(assignments.*) as total_assignments
FROM assignments
GROUP BY assignments.day
HAVING COUNT(assignments.*) >= 10
ORDER BY day;