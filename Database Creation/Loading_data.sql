CREATE TABLE jobs (
    id SERIAL PRIMARY KEY,
    job_title_short TEXT,
    job_title TEXT,
    job_location TEXT,
    job_via TEXT,
    job_schedule_type TEXT,
    job_work_from_home BOOLEAN,
    search_location TEXT,
    job_posted_date TIMESTAMP,
    job_no_degree_mention BOOLEAN,
    job_health_insurance BOOLEAN,
    job_country TEXT,
    salary_rate TEXT,
    salary_year_avg NUMERIC,
    company_name TEXT,
    job_skills TEXT,
    job_type_skills TEXT,
    year INT,
    monthname TEXT
);

COPY jobs (job_title_short, job_title, job_location, job_via, job_schedule_type, 
           job_work_from_home, search_location, job_posted_date, job_no_degree_mention, 
           job_health_insurance, job_country, salary_rate, salary_year_avg, 
           company_name, job_skills, job_type_skills, year, monthname)
FROM 'C:\Users\91987\Desktop\New folder (2)\Full Stack Project\data_jobs_cleaned.csv'
DELIMITER ','
CSV HEADER;

