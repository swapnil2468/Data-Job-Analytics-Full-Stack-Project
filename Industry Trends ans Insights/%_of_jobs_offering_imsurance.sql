SELECT
    job_country,
    round((count(*) filter(WHERE job_health_insurance = True) * 100.0 /count(*)),2) as percentage_health_insurance
FROM
    jobs
GROUP BY
    job_country
HAVING
    round((count(*) filter(WHERE job_health_insurance = True) * 100.0 /count(*)),2) <> 0.00
ORDER BY
    percentage_health_insurance desc