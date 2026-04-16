-- ============================================================
-- Query 4: Average Order Value by Country
-- ============================================================

SELECT
    Country,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    ROUND(AVG(Quantity * UnitPrice), 2) AS avg_order_value
FROM ecommerce
WHERE
    Quantity > 0
    AND UnitPrice > 0
    AND InvoiceNo NOT LIKE 'C%'
GROUP BY Country
HAVING total_orders > 20
ORDER BY avg_order_value DESC
LIMIT 10;

-- Result: Some smaller markets have higher average order values than the UK.
-- Netherlands and Japan stand out despite lower order volumes.
