
SELECT
    p.product_name,
    SUM(ti.quantity) AS total_units
FROM products p
JOIN transaction_items ti ON ti.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_units DESC
LIMIT 20;
