SELECT 
    round(avg(salary_year_avg),2) as Average,
    monthname
FROM
    jobs
GROUP BY
    monthname
ORDER BY
    Average DESC
