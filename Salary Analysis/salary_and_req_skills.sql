WITH Skills_type AS (
    SELECT
        salary_year_avg,
        UNNEST(
            string_to_array(
                REGEXP_REPLACE(job_skills, '[^a-zA-Z0-9+.#,-]', '', 'g'), ',' 
            )
        ) AS skills
    FROM
        jobs
)
SELECT
    ROUND(AVG(salary_year_avg), 2) AS Average,
    TRIM(skills) AS skills,
    COUNT(skills) AS skill_count
FROM Skills_type
GROUP BY skills
HAVING COUNT(skills) > 100 
ORDER BY Average DESC,skill_count DESC;
