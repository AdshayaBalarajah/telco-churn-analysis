SELECT CASE WHEN tenure <= 12 THEN '1. 0-12 months'
            WHEN tenure <= 24 THEN '2. 13-24 months'
            WHEN tenure <= 48 THEN '3. 25-48 months'
            ELSE '4. 49-72 months' END AS tenure_group,
       COUNT(*) AS customers,
       COUNT(*) FILTER (WHERE churn = 'Yes') AS churned,
       ROUND(100.0 * COUNT(*) FILTER (WHERE churn = 'Yes') / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY 1
ORDER BY 1;