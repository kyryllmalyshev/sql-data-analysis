# SQL Data Analysis — UK E-Commerce Dataset

SQL analysis of a real-world e-commerce dataset with 540,000+ transactions.  
Practising working with real data: grouping, aggregating, filtering and drawing simple conclusions.

---

## Dataset

**Source:** [UK E-Commerce Data — Kaggle](https://www.kaggle.com/datasets/carrie1/ecommerce-data)  
**Size:** 541,909 rows  
**Period:** December 2010 — December 2011  
**Fields:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country

---

## Queries

| File | Question |
|------|----------|
| `01_top_countries.sql` | Which countries place the most orders? |
| `02_top_products.sql` | What are the top 10 products by units sold? |
| `03_monthly_revenue.sql` | How does revenue change month by month? |
| `04_avg_order_value.sql` | Which countries have the highest average order value? |
| `05_cancelled_orders.sql` | How many orders were cancelled and what's the rate? |
| `06_top_customers.sql` | Who are the top 10 customers by total spend? |
| `07_bulk_orders.sql` | Which orders had a quantity over 100 units? |

---

## Key Findings

- **UK dominates** — ~82% of all transactions come from the United Kingdom
- **November is peak month** — revenue spikes before the holiday season
- **Cancellation rate is low** — ~1.7% of invoices are cancellations
- **Top customer spent £280,000+** — likely a wholesale/B2B buyer
- **Bulk orders** are mostly low-cost decorative items bought in large quantities

---

## SQL Concepts Used

- `GROUP BY`, `ORDER BY`, `HAVING`, `LIMIT`
- Aggregate functions: `SUM`, `COUNT`, `AVG`, `ROUND`
- `CASE WHEN` for conditional counting
- String filtering: `LIKE`, `NOT LIKE`
- Calculated columns: `Quantity * UnitPrice`

---

## How to Run

Load `data.csv` into SQLite, DBeaver, or any SQL tool. Create a table named `ecommerce`:

```sql
CREATE TABLE ecommerce (
    InvoiceNo TEXT,
    StockCode TEXT,
    Description TEXT,
    Quantity INTEGER,
    InvoiceDate TEXT,
    UnitPrice REAL,
    CustomerID TEXT,
    Country TEXT
);
```

Then run any `.sql` file.

---

*Other repos: [sql-practice](https://github.com/kyryllmalyshev/sql-practice) · [api-practice](https://github.com/kyryllmalyshev/api-practice)*
