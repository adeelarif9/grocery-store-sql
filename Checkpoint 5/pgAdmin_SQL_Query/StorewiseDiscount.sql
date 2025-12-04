SELECT
    s.store_id,
    s.store_name,
    SUM(COALESCE(ti.discount_amount, 0)) AS total_discount_amount
FROM stores s
JOIN transactions tr
    ON tr.store_id = s.store_id
JOIN transaction_items ti
    ON ti.transaction_id = tr.transaction_id
GROUP BY
    s.store_id,
    s.store_name
ORDER BY
    total_discount_amount DESC;