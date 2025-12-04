SELECT
    s.store_name,
    SUM(ti.final_amount) / COUNT(DISTINCT t.transaction_id) AS average_order_value
FROM stores s
JOIN transactions t ON t.store_id = s.store_id
JOIN transaction_items ti ON ti.transaction_id = t.transaction_id
GROUP BY s.store_name
ORDER BY average_order_value DESC;
