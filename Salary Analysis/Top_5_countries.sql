SELECT 
    job_country,
    round(avg(salary_year_avg),2) Average
FROM
    jobs
WHERE
    job_title_short like '%Analyst%'
GROUP BY
    job_country
HAVING
    count(job_country)>50
ORDER BY
    Average DESC
LIMIT 5