SELECT 
    monthname,
    COUNT(*)    
FROM 
    jobs
GROUP BY 
    monthname
ORDER BY 
    TO_DATE(monthname, 'Month');
