select
    job_country,
    count(*)
FROM
    jobs
GROUP BY
    job_country
ORDER BY
    count(*) DESC
LIMIT 10
