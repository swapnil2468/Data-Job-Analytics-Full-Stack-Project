SELECT 
    company_name,
    count(*)
FROM
    jobs
GROUP BY
    company_name
ORDER BY
    count(*) DESC
LIMIT 10