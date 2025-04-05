SELECT
    job_title_short,
    round(avg(salary_year_avg),2)
FROM
    jobs
GROUP BY
    job_title_short
ORDER BY
    round(avg(salary_year_avg),2) DESC


