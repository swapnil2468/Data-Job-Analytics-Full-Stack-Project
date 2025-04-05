SELECT
    company_name,
    count(*) as Jobs_count
FROM
    jobs
WHERE
    job_title_short like '%Data%'
GROUP BY
    company_name
ORDER BY
    Jobs_count DESC
LIMIT 10