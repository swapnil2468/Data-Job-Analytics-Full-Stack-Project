SELECT
    job_schedule_type,
    count(*)
FROM
    jobs
GROUP BY
    job_schedule_type
ORDER BY
    count(*) DESC
LIMIT 5