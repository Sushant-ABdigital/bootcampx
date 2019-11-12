-- SELECT cohorts.name, AVG(completed_at - started_at) as Average
-- FROM assistance_requests
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON students.cohort_id = cohorts.id
-- GROUP BY cohorts.name
-- ORDER BY Average;

-- WITH LONGEST DURATION

SELECT MAX(cohort_time) as  max_Average
FROM 
(
SELECT cohorts.name as cohortName, AVG(completed_at - started_at) as cohort_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
) as totals_cohort;