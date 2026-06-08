DROP TABLE online_sales;

CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO online_sales VALUES
(1,'2024-01-05',500,101),
(2,'2024-01-10',700,102),
(3,'2024-02-03',900,101),
(4,'2024-02-15',1200,103),
(5,'2024-03-08',1500,104),
(6,'2024-03-12',1800,105),
(7,'2024-04-05',1000,101),
(8,'2024-04-20',2200,106),
(9,'2024-05-02',2500,107),
(10,'2024-05-15',3000,108);

SELECT * FROM online_sales;

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS revenue,
COUNT(DISTINCT order_id) AS order_volume
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS revenue
FROM online_sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY revenue DESC
LIMIT 3;

SELECT COUNT(*) FROM online_sales;