WITH Skills_type AS (
    SELECT
        job_country,
        UNNEST(
            string_to_array(
                REGEXP_REPLACE(job_skills, '[^a-zA-Z0-9+.#,-]', '', 'g'), ',' 
            )
        ) AS skills
    FROM
        jobs
),
Ranked AS (
    SELECT DISTINCT ON (job_country) 
        job_country,
        skills,
        COUNT(*) AS skill_count
    FROM 
        Skills_type
    GROUP BY 
        job_country, skills
    ORDER BY 
        job_country, skill_count DESC
)
SELECT *
FROM 
    Ranked
ORDER BY 
    skill_count DESC
LIMIT 10;