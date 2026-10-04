SELECT CASE WHEN monthlycharges < 35 THEN '1. Under 35'
            WHEN monthlycharges < 70 THEN '2. 35-70'
            WHEN monthlycharges < 90 THEN '3. 70-90'
            ELSE '4. 90 and above' END AS charge_band,
       COUNT(*) AS customers,
       COUNT(*) FILTER (WHERE churn = 'Yes') AS churned,
       ROUND(100.0 * COUNT(*) FILTER (WHERE churn = 'Yes') / COUNT(*), 2) AS churn_rate_pct
FROM customers
GROUP BY 1
ORDER BY 1;