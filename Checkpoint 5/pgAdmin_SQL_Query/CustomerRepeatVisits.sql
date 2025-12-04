SELECT
    c.customer_id,
    COUNT(*) AS number_of_visits
FROM customers c
JOIN transactions t ON t.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY number_of_visits DESC;
