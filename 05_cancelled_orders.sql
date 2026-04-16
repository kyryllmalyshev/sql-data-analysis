-- ============================================================
-- Query 5: Cancelled Orders Count
-- Cancellations have InvoiceNo starting with 'C'
-- ============================================================

-- 5a: Total regular orders
SELECT
    COUNT(DISTINCT InvoiceNo) AS regular_orders
FROM ecommerce
WHERE InvoiceNo NOT LIKE 'C%';

-- 5b: Total cancelled orders
SELECT
    COUNT(DISTINCT InvoiceNo) AS cancelled_orders
FROM ecommerce
WHERE InvoiceNo LIKE 'C%';

-- Result: ~19,000 regular orders vs ~1,300 cancellations.
-- Cancellation rate is low — no major fulfilment issue detected.
