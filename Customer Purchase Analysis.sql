/*******************************************************************************
  SQL PORTFOLIO PROJECT: CUSTOMER PURCHASE BEHAVIOR ANALYSIS
  Table Name: [dbo].[Customer Purchasing Behaviors]
  Tool: SQL Server Management Studio 21
*******************************************************************************/

-- [Q1] DATA INTEGRITY CHECK
-- Question: How many customers does the store have and are there duplicate records?
SELECT 
    COUNT(*) AS total_rows, 
    COUNT(DISTINCT user_id) AS unique_customer_ids
FROM [dbo].[Customer Purchasing Behaviors];

/* FINDING: Total rows and unique IDs both equal 238.
   INSIGHT: The data set is clean with no duplicates, ensuring our analysis is 
   accurate from the start.
*/

--------------------------------------------------------------------------------

-- [Q2] INCOME BENCHMARKING
-- Question: What is the average, minimum, and maximum income for clients?
SELECT 
    ROUND(AVG(annual_income), 2) AS avg_annual_income,
    ROUND(AVG(annual_income) / 12, 2) AS avg_monthly_income,
    MIN(annual_income) AS min_annual_income,
    MAX(annual_income) AS max_annual_income
FROM [dbo].[Customer Purchasing Behaviors];

/* FINDING: Avg Annual: $57,407 | Avg Monthly: $4,783 | Min: $30k | Max: $75k.
   INSIGHT: Establishing these benchmarks helps in identifying the store's 
   "middle-class" target demographic for future campaigns. 
*/

--------------------------------------------------------------------------------

-- [Q3] DEMOGRAPHIC ANALYSIS (AGE)
-- Question: What is the average income and purchase amount by age group?
SELECT 
    CASE 
        WHEN age <= 30 THEN '30 and younger'
        WHEN age <= 40 THEN '31 to 40 years'
        ELSE 'Older than 40'
    END AS age_segment,
    ROUND(AVG(annual_income), 2) AS avg_income,
    ROUND(AVG(purchase_amount), 2) AS avg_spend,
    COUNT(user_id) AS client_count
FROM [dbo].[Customer Purchasing Behaviors]
GROUP BY 
    CASE 
        WHEN age <= 30 THEN '30 and younger'
        WHEN age <= 40 THEN '31 to 40 years'
        ELSE 'Older than 40'
    END
ORDER BY avg_income DESC;

/* FINDING: The "Older than 40" group has the highest purchasing power ($555 avg spend).
   INSIGHT: This group represents the store's most reliable revenue source and 
   should be the primary focus of premium loyalty programs. 
*/

--------------------------------------------------------------------------------

-- [Q4] BEHAVIORAL SEGMENTATION (PURCHASE FREQUENCY)
-- Question: Which frequency group generates the highest total revenue?
WITH frequency_cte AS (
    SELECT 
        CASE 
            WHEN purchase_frequency <= 16 THEN 'Low Frequency (16 & below)'
            WHEN purchase_frequency <= 23 THEN 'Medium Frequency (17 to 23)'
            ELSE 'High Frequency (Above 23)'
        END AS frequency_group,
        purchase_amount,
        user_id
    FROM [dbo].[Customer Purchasing Behaviors]
)
SELECT 
    frequency_group,
    COUNT(user_id) AS total_clients,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase_val,
    ROUND(SUM(purchase_amount), 2) AS total_revenue_generated
FROM frequency_cte
GROUP BY frequency_group
ORDER BY total_revenue_generated DESC;

/* FINDING: The "Medium Frequency" group (17-23) generates the most total revenue.
   INSIGHT: High-frequency buyers spend more per person, but the Medium Frequency 
   segment has higher volume. Marketing should focus on retaining this group.  
*/

--------------------------------------------------------------------------------

-- [Q5] GEOGRAPHIC PERFORMANCE
-- Question: How does customer spend and volume differ across regions?
SELECT 
    region,
    COUNT(user_id) AS client_count,
    ROUND(AVG(purchase_amount), 2) AS avg_per_purchase,
    ROUND(SUM(purchase_amount), 2) AS total_revenue
FROM [dbo].[Customer Purchasing Behaviors]
GROUP BY region
ORDER BY total_revenue DESC;

/* FINDING: South and North are top performers. East has only 3 clients.
   INSIGHT: The East region shows high spend but low volume. This indicates 
   an untapped growth opportunity for regional marketing expansion. 
*/

/*******************************************************************************
  END OF SCRIPT
*******************************************************************************/