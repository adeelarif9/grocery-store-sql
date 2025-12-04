SELECT
    p.product_name,
    SUM(ti.final_amount) AS total_revenue
FROM products p
JOIN transaction_items ti
    ON ti.product_id = p.product_id
GROUP BY
    p.product_name
ORDER BY
    total_revenue DESC;