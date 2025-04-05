SELECT COUNT(*) AS cloud_jobs
FROM jobs
WHERE job_type_skills LIKE '%cloud%';
