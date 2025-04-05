SELECT 
    job_title_short Job_Title, 
    count(*) No_of_jobs
FROM 
    jobs
GROUP BY
    job_title_short
ORDER BY
    count(*) desc
LIMIT 10

