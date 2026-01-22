drop table if exists customers;

CREATE TABLE customers(
customer_id VARCHAR(120),
age INTEGER,
gender VARCHAR (30),
subscription_type VARCHAR(30),
watch_hours FLOAT,
last_login_days INTEGER,
region VARCHAR(30),
device VARCHAR(30),
monthly_fee FLOAT,
churned INTEGER,
payment_method VARCHAR(30),
number_of_profiles INTEGER,
ave_watch_time_per_day FLOAT,
favorite_gerne VARCHAR(30)
)


-- Data exploration

-- Count of rows

SELECT COUNT(*) FROM customers;


-- Check for duplicate value

SELECT customer_id, COUNT(*) 
FROM customers
GROUP BY customer_id
HAVING COUNT(*) > 1;

-- Check for null values

SELECT * FROM customers
WHERE customer_id IS NULL
OR
age IS NULL
OR
gender IS NULL
OR
subscription_type IS NULL
OR
watch_hours IS NULL
OR
last_login_days IS NULL
OR
region IS NULL
OR
device IS NULL
OR
monthly_fee IS NULL
OR
churned IS NULL
OR
payment_method IS NULL
OR
number_of_profiles IS NULL
OR
avg_watch_time_per_day IS NULL
OR
favorite_gerne IS NULL;

-- Sample Data

SELECT * FROM customers
LIMIT 10;

-- Business Questions.....

-- Overall churn rate?

SELECT COUNT(*) AS total_customers,
SUM(churned) AS churned_customers,
ROUND(SUM(churned) * 100 / COUNT(*), 2) AS churn_rate
FROM customers;

-- Subscription type wise churn rate?

SELECT subscription_type,
COUNT(*) AS total_users,
SUM(churned) AS churned_users,
ROUND(SUM(churned) * 100 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY subscription_type
ORDER BY churn_rate DESC;

-- Region wise churn rate?

SELECT region,
ROUND(SUM(churned) * 100 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY region
HAVING ROUND(SUM(churned) * 100 / COUNT(*), 2) > 30;

-- Age wise churn rate?

SELECT 
CASE 
WHEN age < 25 THEN 'Below 25'
WHEN age BETWEEN 25 AND 34 THEN '25-34'
WHEN age BETWEEN 35 AND 44 THEN '35-44'
WHEN age BETWEEN 45 AND 54 THEN '45-54'
ELSE '55+'
END AS age_group,
COUNT(*) AS total_customers,
SUM(churned) AS churned_customers,
ROUND(SUM(churned) * 100.0 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY 
CASE 
WHEN age < 25 THEN 'Below 25'
WHEN age BETWEEN 25 AND 34 THEN '25-34'
WHEN age BETWEEN 35 AND 44 THEN '35-44'
WHEN age BETWEEN 45 AND 54 THEN '45-54'
ELSE '55+'
END
ORDER BY churn_rate DESC;

-- On the basis of user activity churn rate?

SELECT 
CASE 
WHEN watch_hours < 5 THEN 'Low Watch'
WHEN watch_hours BETWEEN 5 AND 15 THEN 'Medium Watch'
ELSE 'High Watch'
END AS watch_category,
COUNT(*) AS users,
ROUND(SUM(churned) * 100 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY watch_category
ORDER BY churn_rate DESC;

-- How much impact does the last login have on churn due to inactivity?

SELECT 
CASE 
WHEN last_login_days <= 7 THEN 'Active'
WHEN last_login_days BETWEEN 8 AND 20 THEN 'Semi Active'
ELSE 'Inactive'
END AS user_status,
COUNT(*) AS users,
ROUND(SUM(churned) * 100 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY user_status
ORDER BY churn_rate DESC;

-- Device wise churn?

SELECT device,
ROUND(SUM(churned) * 100 / COUNT(*), 2) AS churn_rate
FROM customers
GROUP BY device
HAVING ROUND(SUM(churned) * 100 / COUNT(*), 2) > 25;

-- Update column

ALTER TABLE customers
RENAME ave_watch_time_per_day TO avg_watch_time_per_day;

-- Is the proportion of low-engagement users higher than the overall proportion?

SELECT 
ROUND(AVG(churn_rate), 2) AS avg_churn_rate
FROM
(SELECT 
CASE 
WHEN avg_watch_time_per_day < 0.5 THEN 'Low Engagement'
ELSE 'Other'
END AS engagement,
SUM(churned) * 100 / COUNT(*) AS churn_rate
FROM customers
GROUP BY engagement
) t
WHERE engagement = 'Low Engagement' ;

-- Which customers are at high churn risk?

SELECT customer_id, subscription_type, watch_hours, last_login_days
FROM customers
WHERE churned = 1
AND watch_hours < 5
AND last_login_days > 20;