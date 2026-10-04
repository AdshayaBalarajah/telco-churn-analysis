SELECT COUNT(*) FROM customers;


SELECT churn, COUNT(*) FROM customers GROUP BY 1;


SELECT COUNT(*) AS missing_totalcharges FROM customers WHERE totalcharges IS NULL;


SELECT COUNT(*) - COUNT(DISTINCT customerid) AS duplicate_customers FROM customers;