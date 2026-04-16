-- ============================================================
-- Query 7: Orders with Quantity Over 100 (Bulk Orders)
-- ============================================================

SELECT
    InvoiceNo,
    Description,
    Quantity,
    UnitPrice,
    ROUND(Quantity * UnitPrice, 2) AS line_total,
    Country
FROM ecommerce
WHERE
    Quantity > 100
    AND UnitPrice > 0
    AND InvoiceNo NOT LIKE 'C%'
ORDER BY Quantity DESC
LIMIT 20;

-- Result: Bulk orders are mostly low-cost decorative items.
-- These are likely wholesale/retail buyers, not individual consumers.
-- In a support context: large orders often require special handling or priority.
