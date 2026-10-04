SELECT COUNT(*) AS total_customers,
       COUNT(*) FILTER (WHERE churn = 'Yes') AS churned,
       ROUND(100.0 * COUNT(*) FILTER (WHERE churn = 'Yes') / COUNT(*), 2) AS churn_rate_pct,
       ROUND(100.0 * COUNT(*) FILTER (WHERE churn = 'No') / COUNT(*), 2) AS retention_rate_pct
FROM customers;