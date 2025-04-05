select
    job_country,
    round(avg(salary_year_avg),2) as avg_salary
FROM
    jobs
GROUP BY
    job_country
HAVING count(job_title_short)>100
ORDER BY
   round(avg(salary_year_avg),2) DESC
LIMIT 10
