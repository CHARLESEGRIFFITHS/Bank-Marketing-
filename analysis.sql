-- analysis.sql — questions about the UCI Bank Marketing data.
-- Each query is written under the question it answers, in plain words.
-- Table: clients (41,188 rows, loaded from data/bank-additional-full.csv)
-- The queries started as practice drafts and were cleaned up as part of
-- learning: every column in SELECT is in GROUP BY, and filters on plain
-- columns use WHERE instead of HAVING.

-- 1. How many clients are there in each job type?
SELECT job, COUNT(*) AS n
FROM clients
GROUP BY job
ORDER BY n DESC;

-- 2. How many clients are there in each job type and marital status?
SELECT job, marital, COUNT(*) AS n
FROM clients
GROUP BY job, marital
ORDER BY n DESC;

-- 3. How many clients with a personal loan are there in each job type and marital status?
SELECT job, marital, COUNT(*) AS n
FROM clients
WHERE loan = 'yes'
GROUP BY job, marital
ORDER BY n DESC;

-- 4. How many clients without a personal loan are there in each job type and marital status?
SELECT job, marital, COUNT(*) AS n
FROM clients
WHERE loan = 'no'
GROUP BY job, marital
ORDER BY n DESC;

-- 5. How many clients with a housing loan are there in each job type and marital status?
SELECT job, marital, COUNT(*) AS n
FROM clients
WHERE housing = 'yes'
GROUP BY job, marital
ORDER BY n DESC;

-- 6. How many clients without a housing loan are there in each job type and marital status?
SELECT job, marital, COUNT(*) AS n
FROM clients
WHERE housing = 'no'
GROUP BY job, marital
ORDER BY n DESC;

-- 7. How many clients are there in each job type and education level?
SELECT job, education, COUNT(*) AS n
FROM clients
GROUP BY job, education
ORDER BY n DESC;

-- 8. What is the average age of clients who said yes, compared with clients who said no?
SELECT y, AVG(age) AS avg_age
FROM clients
GROUP BY y;
