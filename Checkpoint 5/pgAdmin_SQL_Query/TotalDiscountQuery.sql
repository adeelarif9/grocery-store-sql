SELECT
    SUM(ti.discount_amount) AS total_discount_amount
FROM transaction_items ti;