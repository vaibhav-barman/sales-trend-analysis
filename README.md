# Sales Trend Analysis Using SQL Aggregations

## Objective

Analyze monthly revenue and order volume using SQL aggregate functions.

---

## Tools Used

- MySQL
- VS Code
- GitHub

---

## Dataset

Dataset: online_sales.csv

Columns used:

- order_id
- order_date
- amount (sales)
- product_id

---

## SQL Concepts Used

- GROUP BY
- ORDER BY
- SUM()
- COUNT(DISTINCT)
- YEAR()
- MONTH()
- LIMIT

---

## Queries Performed

### 1. Monthly Revenue Analysis

```sql
SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
```

### 2. Monthly Order Volume Analysis

```sql
SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
```

### 3. Revenue and Order Volume Together

```sql
SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS revenue,
COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;
```

### 4. Top 3 Months by Revenue

```sql
SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY revenue DESC
LIMIT 3;
```

---

## Screenshots

The screenshots folder contains:

- Monthly Revenue Analysis
- Monthly Order Volume Analysis
- Revenue & Order Volume Combined
- Top 3 Months by Revenue

---

## Key Learnings

- SQL Aggregation Functions
- Monthly Trend Analysis
- Data Grouping with GROUP BY
- Sorting Results using ORDER BY
- Finding Top Records using LIMIT
- Revenue Analysis using SUM()
- Order Volume Analysis using COUNT(DISTINCT)

---

## Outcome

Successfully analyzed sales trends using SQL aggregation techniques and generated monthly revenue and order volume reports.