use zepto;
select count(*) from zepto1;
select * from zepto1
limit 10;
-- finding null
select * from zepto1
where name is null
or
Category is null
or
mrp is null
or
discountPercent is null
or
availableQuantity is null
or
discountedSellingPrice is null
or 
weightInGms is null
or
outOfStock is null
or
quantity is null;

-- different product Categories;
 select distinct Category
 from zepto1
 order by Category;
 
 select outOfStock , count(id)
 from zepto1
 group by outOfStock;
 
ALTER TABLE zepto1
ADD COLUMN id INT NOT NULL AUTO_INCREMENT PRIMARY KEY;
-- Product name present multiple times
select name,count(id) as "Stock Unit"
from zepto1
group by name
having count(id) > 1
order by count(id) DESC;

Data Cleaning;
-- --Product with 0 Price
select * from zepto1
where discountedSellingPrice = 0 or mrp = 0;  
--Delete Null Price;
delete from zepto1
where discountedSellingPrice = 0; 
 -- Convert price to rupee 
 update zepto1
set mrp = mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

-- data analysis

-- Q1. Find the top 10 best-value products based on the discount percentage.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto1
ORDER BY discountPercent DESC
LIMIT 10;

-- Q2.What are the Products with High MRP but Out of Stock

SELECT DISTINCT name,mrp
FROM zepto1
WHERE outOfStock = TRUE and mrp > 300
ORDER BY mrp DESC;

-- --Q3.Calculate Estimated Revenue for each category
SELECT category,
SUM(discountedSellingPrice * availableQuantity) AS total_revenue
FROM zepto
GROUP BY category
ORDER BY total_revenue;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
SELECT DISTINCT name, mrp, discountPercent
FROM zepto1
WHERE mrp > 500 AND discountPercent < 10
ORDER BY mrp DESC, discountPercent DESC;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
SELECT category,
ROUND(AVG(discountPercent),2) AS avg_discount
FROM zepto1
GROUP BY category
ORDER BY avg_discount DESC
LIMIT 5;

-- Q6. Find the price per gram for products above 100g and sort by best value.
SELECT DISTINCT name, weightInGms, discountedSellingPrice,
ROUND(discountedSellingPrice/weightInGms,2) AS price_per_gram
FROM zepto1
WHERE weightInGms >= 100
ORDER BY price_per_gram;

-- Q7.Group the products into categories like Low, Medium, Bulk.
SELECT DISTINCT name, weightInGms,
CASE WHEN weightInGms < 1000 THEN 'Low'
	WHEN weightInGms < 5000 THEN 'Medium'
	ELSE 'Bulk'
	END AS weight_category
FROM zepto1;

-- Q8.What is the Total Inventory Weight Per Category 
SELECT category,
SUM(weightInGms * availableQuantity) AS total_weight
FROM zepto1
GROUP BY category
ORDER BY total_weight;

