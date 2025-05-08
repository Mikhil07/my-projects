# 🎵 SQL Music Store Project

This project simulates a **digital music store database** using **MySQL Workbench**. It demonstrates core SQL skills such as creating tables, inserting data, querying with joins, using aggregate functions, and applying constraints.

## 🗂️ Project Overview

The database models key components of a music store, including:
- Customers
- Genres
- Artists
- Albums
- Tracks
- Invoices
- Invoice items
- Employees

## 🧩 Features Demonstrated

- ✅ Table creation with primary and foreign keys
- ✅ Data insertion using `INSERT INTO`
- ✅ Use of SQL `JOIN` for combining data across tables
- ✅ Filtering with `WHERE` and `HAVING` clauses
- ✅ Aggregations using `COUNT`, `SUM`, `GROUP BY`
- ✅ Practical business queries like:
  - Total sales per genre
  - Customers who bought specific tracks
  - Top-selling albums or genres
  - Employee-customer relationships

## 🔧 Tools Used

- MySQL Workbench
- SQL

## 🚀 How to Run

1. Open `music store project.sql` in MySQL Workbench.
2. Execute the script to create tables and insert sample data.
3. Run custom queries to explore the dataset and practice SQL.

## 📈 Sample Queries

```sql
-- Find total sales by genre
SELECT g.name AS Genre, SUM(ii.unit_price * ii.quantity) AS Total_Sales
FROM genre g
JOIN track t ON g.genre_id = t.genre_id
JOIN invoice_item ii ON t.track_id = ii.track_id
GROUP BY g.name
ORDER BY Total_Sales DESC;

-- List top 5 customers by invoice amount
SELECT c.first_name, c.last_name, SUM(i.total) AS Total_Spent
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id
GROUP BY c.customer_id
ORDER BY Total_Spent DESC
LIMIT 5;
