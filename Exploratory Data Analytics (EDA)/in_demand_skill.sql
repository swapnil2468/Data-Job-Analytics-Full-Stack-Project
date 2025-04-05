-- WITH skills_exploded AS (
--     SELECT REGEXP_REPLACE(UNNEST(string_to_array(job_skills, ',')), '[^a-zA-Z0-9+.#-]', '', 'g') AS skill
--     FROM jobs
--     WHERE job_skills IS NOT NULL
-- )
-- SELECT LOWER(skill) AS skill, COUNT(*) AS count
-- FROM skills_exploded
-- WHERE skill IS NOT NULL AND skill <> ''
-- GROUP BY LOWER(skill)
-- ORDER BY count DESC
-- LIMIT 5;


WITH skills_exploded AS (
    SELECT REGEXP_REPLACE(UNNEST(string_to_array(job_skills, ',')), '[^a-zA-Z0-9+.#-]', '', 'g') AS skill
    FROM jobs
    WHERE job_skills IS NOT NULL
    and job_title_short = 'Data Analyst'
)
SELECT LOWER(skill) AS skill, COUNT(*) AS count
FROM skills_exploded
WHERE skill IS NOT NULL AND skill <> ''
GROUP BY LOWER(skill)
ORDER BY count DESC
LIMIT 5;
