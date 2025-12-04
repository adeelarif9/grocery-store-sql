SELECT
    p.product_id,
    p.product_name,
    SUM(ti.final_amount) AS net_profit,
    SUM(ti.quantity) AS units
FROM transactions t
JOIN transaction_items ti
    ON ti.transaction_id = t.transaction_id
JOIN products p
    ON p.product_id = ti.product_id
JOIN aisles a
    ON a.aisle_id = p.aisle_id
GROUP BY
    p.product_id,
    p.product_name
ORDER BY
    net_profit DESC
LIMIT 25;
