SELECT
    t.transaction_date,
    SUM(ti.final_amount) AS total_sales
FROM transactions t
JOIN transaction_items ti
    ON ti.transaction_id = t.transaction_id
GROUP BY
    t.transaction_date
ORDER BY
    t.transaction_date;