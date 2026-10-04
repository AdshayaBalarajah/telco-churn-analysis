SELECT internetservice,
       COUNT(*) AS customers,
       COUNT(*) FILTER (WHERE churn = 'Yes') AS churned,
       ROUND(100.0 * COUNT(*) FILTER (WHERE churn = 'Yes') / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY 1
ORDER BY 4 DESC;