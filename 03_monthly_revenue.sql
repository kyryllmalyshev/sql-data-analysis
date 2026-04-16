-- ============================================================
-- Query 3: Total Revenue by Month
-- ============================================================

SELECT
    SUBSTR(InvoiceDate, 1, 7) AS month,
    ROUND(SUM(Quantity * UnitPrice), 2) AS monthly_revenue
FROM ecommerce
WHERE
    Quantity > 0
    AND UnitPrice > 0
    AND InvoiceNo NOT LIKE 'C%'
GROUP BY SUBSTR(InvoiceDate, 1, 7)
ORDER BY month;

-- Result: Revenue grows steadily through the year.
-- November is the peak month — likely holiday season demand.
