SELECT
    job_location,
    count(*) as location_Count
FROM
    jobs
WHERE
    job_title_short = 'Data Engineer'
    AND
    job_location is not NULL
    AND
    job_location <> 'United States'
GROUP BY
    job_location
ORDER BY
    location_Count DESC
LIMIT 10;