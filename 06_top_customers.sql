-- ============================================================
-- Query 6: Top 10 Customers by Total Spend
-- ============================================================

SELECT
    CustomerID,
    COUNT(DISTINCT InvoiceNo) AS total_orders,
    ROUND(SUM(Quantity * UnitPrice), 2) AS total_spent
FROM ecommerce
WHERE
    Quantity > 0
    AND UnitPrice > 0
    AND InvoiceNo NOT LIKE 'C%'
    AND CustomerID != ''
GROUP BY CustomerID
ORDER BY total_spent DESC
LIMIT 10;

-- Result: Top customer spent over £280,000 — likely a wholesale buyer.
-- Large gap between top customers and the rest suggests B2B segment.
