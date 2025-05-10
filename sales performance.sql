SELECT * 
FROM analysis.sales

---Top selling product by Quantity (by Category)
SELECT Category, SUM(Quantity) AS TotalQuantity
FROM analysis.sales
GROUP BY Category
ORDER BY TotalQuantity DESC
LIMIT 5;

---Top selling product by Quantity (sub-category)
SELECT "Sub-Category" AS SubCategory, SUM(Quantity) AS TotalQuantity
FROM analysis.sales
GROUP BY "Sub-Category"
ORDER BY TotalQuantity DESC
LIMIT 5;

---what is the total revenue per product
SELECT Category, SUM(Quantity * Amount) AS TotalRevenue
FROM analysis.sales
GROUP BY Category
ORDER BY TotalRevenue DESC;

---How does sales performance vary by state
SELECT State,
    SUM(Quantity) AS TotalQuantitySold,
    SUM(Quantity * Amount) AS TotalRevenue
FROM analysis.sales
GROUP BY State
ORDER BY TotalRevenue DESC;


--- Which Customer have contributed most to revenue
SELECT CustomerName, SUM(Quantity * Amount) AS TotalRevenue
FROM analysis.sales
GROUP BY CustomerName
ORDER BY TotalRevenue DESC
LIMIT 1

--- Which month has the most sales
SELECT "Year-Month",SUM(Quantity * Amount) AS TotalRevenue
FROM analysis.sales
GROUP BY "Year-Month"
ORDER BY TotalRevenue DESC
LIMIT 1;


--- Who are the top 5 reccuring customers
SELECT CustomerName, COUNT("Order ID") AS NumberOfOrders
FROM analysis.sales
GROUP BY CustomerName
ORDER BY NumberOfOrders DESC
LIMIT 5;


---Which Category is the top performing (Top 5)
SELECT Category,SUM(Quantity * Amount) AS TotalRevenue
FROM analysis.sales
GROUP BY Category
ORDER BY TotalRevenue DESC
LIMIT 5;

---Which Sub-Category is the top performing (Top 5)
SELECT "Sub-Category" AS SubCategory, SUM(Quantity * Amount) AS TotalRevenue
FROM analysis.sales
GROUP BY "Sub-Category"
ORDER BY TotalRevenue DESC
LIMIT 5;

--- Most Frequent Payment method
SELECT PaymentMode, COUNT(*) AS NumberOfTimesUsed
FROM analysis.sales
GROUP BY PaymentMode
ORDER BY NumberOfTimesUsed DESC
LIMIT 1;

--- Which City did we sell the most
SELECT City, SUM(Quantity * Amount) AS TotalRevenue
FROM analysis.sales
GROUP BY City
ORDER BY TotalRevenue DESC
LIMIT 1;




