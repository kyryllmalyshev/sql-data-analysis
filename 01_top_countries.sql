-- ============================================================
-- Query 1: Top 10 Countries by Number of Orders
-- ============================================================

SELECT
    Country,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM ecommerce
WHERE InvoiceNo NOT LIKE 'C%'   -- exclude cancellations
GROUP BY Country
ORDER BY total_orders DESC
LIMIT 10;

-- Result: UK dominates with ~19,000 orders.
-- Germany and France are the top international markets.
