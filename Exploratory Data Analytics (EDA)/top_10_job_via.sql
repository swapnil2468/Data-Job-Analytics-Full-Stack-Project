SELECT 
    job_via,
    count(*)
FROM
    jobs
GROUP BY
    job_via
ORDER BY
    count(*) DESC
LIMIT 10