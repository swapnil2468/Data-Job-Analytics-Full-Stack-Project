WITH schedule_type AS (
    SELECT
        salary_year_avg,
        UNNEST(
            string_to_array(
                REGEXP_REPLACE(job_schedule_type, '[,/]',' and ', 'g'),  
                ' and '
            )
        ) AS sched_type
    FROM jobs
)
SELECT
    round(AVG(salary_year_avg) FILTER (WHERE TRIM(sched_type) = 'Full-time'), 2) AS Full,
    round(AVG(salary_year_avg) FILTER (WHERE TRIM(sched_type) = 'Part-time'), 2) AS Part
FROM schedule_type;
