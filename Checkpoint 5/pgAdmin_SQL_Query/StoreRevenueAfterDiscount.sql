
SELECT
    s.store_id,
    s.store_name,
    SUM(ti.final_amount - COALESCE(ti.discount_amount, 0)) AS revenue_after_discount
FROM stores s
JOIN transactions tr
    ON tr.store_id = s.store_id
JOIN transaction_items ti
    ON ti.transaction_id = tr.transaction_id
GROUP BY
    s.store_id,
    s.store_name
ORDER BY
    revenue_after_discount DESC;
