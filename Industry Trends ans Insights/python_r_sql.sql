WITH Skills_type AS (
    SELECT
        job_title_short,
        UNNEST(
            string_to_array(
                REGEXP_REPLACE(job_skills, '[^a-zA-Z0-9+.#,-]', '', 'g'), ',' 
            )
        ) AS skills
    FROM
        jobs
)
  
SELECT      
    count(*) FILTER(WHERE skills = 'python') as python,
    count(*) FILTER(WHERE skills = 'sql') as sql1,
    count(*) FILTER(WHERE skills = 'r') as r
FROM
    Skills_type      