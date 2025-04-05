WITH Skills_type AS (
    SELECT
        job_skills,
        UNNEST(
            string_to_array(
                REGEXP_REPLACE(job_skills, '[^a-zA-Z0-9+.#,-]', '', 'g'), ',' 
            )
        ) AS skills
    FROM
        jobs
),