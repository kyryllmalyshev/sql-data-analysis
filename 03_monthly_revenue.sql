-- ============================================================
-- Query 3: Total Revenue by Year
-- ============================================================

SELECT
    InvoiceDate,
    ROUND(SUM(Quantity * UnitPrice), 2) AS daily_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce
WHERE
    Quantity > 0
    AND UnitPrice > 0
    AND InvoiceNo NOT LIKE 'C%'
GROUP BY InvoiceDate
ORDER BY daily_revenue DESC
LIMIT 20;

-- Result: Busiest days by revenue.
-- November dates dominate — holiday season demand spike.
