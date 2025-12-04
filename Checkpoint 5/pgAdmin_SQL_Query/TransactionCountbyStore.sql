SELECT
    s.store_id,
    s.store_name,
    COUNT(*) AS transaction_count
FROM stores s
JOIN transactions t ON t.store_id = s.store_id
GROUP BY s.store_id, s.store_name
ORDER BY transaction_count DESC;
