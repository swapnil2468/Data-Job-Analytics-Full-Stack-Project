SELECT
    round(avg(salary_year_avg) FILTER(WHERE job_work_from_home = True),2) as WFM,
    round(avg(salary_year_avg) FILTER(WHERE job_work_from_home = False),2) as Office
FROM
    jobs