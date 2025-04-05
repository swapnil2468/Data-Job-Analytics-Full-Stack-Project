SELECT 
    round((COUNT(*) FILTER (WHERE job_no_degree_mention = TRUE) * 100.0 / COUNT(*)),2) AS percentage_no_degree
FROM jobs;
