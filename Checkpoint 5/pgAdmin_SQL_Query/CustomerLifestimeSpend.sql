SELECT
    c.customer_id,
    SUM(ti.final_amount) AS lifetime_value
FROM customers c
JOIN transactions t ON t.customer_id = c.customer_id
JOIN transaction_items ti ON ti.transaction_id = t.transaction_id
GROUP BY c.customer_id
ORDER BY lifetime_value DESC;
