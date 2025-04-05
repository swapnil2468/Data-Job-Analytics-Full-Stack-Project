SELECT 
    company_name,
    COUNT(*) as hiring 
FROM 
    jobs
GROUP BY 
    company_name
ORDER BY 
    hiring DESC
LIMIT
    10;
