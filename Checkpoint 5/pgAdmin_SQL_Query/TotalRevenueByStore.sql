SELECT
    s.store_id,
    s.store_name,
    SUM(ti.final_amount) AS total_revenue
FROM transactions t
JOIN stores s
    ON s.store_id = t.store_id
JOIN transaction_items ti
    ON ti.transaction_id = t.transaction_id
GROUP BY
    s.store_id,
    s.store_name
ORDER BY
    total_revenue DESC;
