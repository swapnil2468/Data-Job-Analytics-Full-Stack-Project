SELECT 
    job_title_short Job_Title,
    count(*) as No_of_jobs
from 
    jobs 
where 
    job_work_from_home = TRUE
GROUP BY
    job_title_short
ORDER BY
    count(*) DESC
    