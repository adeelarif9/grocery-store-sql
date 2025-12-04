SELECT
    a.aisle_id,
    a.aisle_name,
    SUM(ti.final_amount - COALESCE(ti.discount_amount, 0)) AS net_revenue
FROM aisles a
JOIN products p
    ON p.aisle_id = a.aisle_id
JOIN transaction_items ti
    ON ti.product_id = p.product_id
GROUP BY
    a.aisle_id,
    a.aisle_name
ORDER BY
    net_revenue DESC;
