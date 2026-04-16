-- ============================================================
-- Query 2: Top 10 Products by Quantity Sold
-- ============================================================

SELECT
    Description,
    SUM(Quantity) AS total_units_sold
FROM ecommerce
WHERE
    Quantity > 0
    AND InvoiceNo NOT LIKE 'C%'
GROUP BY Description
ORDER BY total_units_sold DESC
LIMIT 10;

-- Result: Small decorative items dominate by volume.
-- High quantity doesn't always mean high revenue.
