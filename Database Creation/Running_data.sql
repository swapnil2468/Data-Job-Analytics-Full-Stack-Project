SELECT
        job_title_short,
        UNNEST(
            string_to_array(
                REGEXP_REPLACE(job_skills, '[^a-zA-Z0-9+.#,-]', '', 'g'), ',' 
            )
        ) AS skills
    FROM
        jobs