# 🛒 Zepto Inventory Analysis with SQL Workbench

This project explores and analyzes inventory data for **Zepto**, a quick-commerce platform, using SQL Workbench. The goal is to clean, transform, and extract valuable insights from the product-level inventory dataset, helping to better understand stock availability, pricing strategies, category performance, and more.

---

## 📌 Project Overview

The dataset includes product details like:
- Product Name
- Category
- MRP (Maximum Retail Price)
- Discount Percentage
- Available Quantity
- Out-of-Stock Status
- Weight (in grams)

Using SQL, we performed:
- **Data Cleaning**: Handled missing values, fixed pricing anomalies, and ensured data consistency.
- **Data Transformation**: Converted pricing units and categorized weights.
- **Exploratory Analysis**: Answered key business questions around pricing, discounts, stock levels, revenue potential, and product segmentation.

---

## ⚙️ Tools Used

- **SQL Workbench/J**
- **MySQL**
- **CSV Dataset**

---

## 📊 Key Insights & Queries

### ✅ Data Cleaning
- Identified and removed products with 0 MRP or Selling Price.
- Converted price values from paise to INR.
- Removed or flagged rows with null critical fields.

### 🔍 Data Exploration Highlights
- **Top 10 Products by Discount**  
  Identified highly discounted products to understand pricing strategy.

- **High MRP but Out of Stock**  
  Flagged premium items frequently out of stock—potential missed revenue.

- **Estimated Revenue by Category**  
  Calculated potential earnings based on available quantity and discounted price.

- **High MRP + Low Discount Products**  
  Products with high value but minimal discount, possibly underperforming.

- **Top 5 Categories with Highest Avg Discount**  
  Helps in understanding where the company is pushing promotions.

- **Best Value per Gram**  
  Identified cost-effective items by comparing weight vs. selling price.

- **Weight-Based Segmentation**  
  Products grouped as Low, Medium, or Bulk based on their weight.

- **Total Inventory Weight per Category**  
  Useful for logistics and storage optimization.

---

## 📂 Files Included

| File Name | Description |
|-----------|-------------|
| `zepto_v2.csv` | Raw product inventory dataset |
| `Zepto_SQL.sql` | Full SQL script with all cleaning and analysis queries |
| `README.md` | Project description and instructions |

---

## 🧠 Learnings

- Practical experience in **real-world SQL data cleaning**
- How to apply **analytical thinking** to answer business questions
- How inventory data can guide decision-making in e-commerce and retail

---

## 🚀 How to Use

1. Import the `zepto_v2.csv` into your SQL database.
2. Open `Zepto_SQL.sql` in SQL Workbench.
3. Execute the queries step by step or run all at once after verifying data import.
4. Explore and modify queries as needed to extract deeper insights.

---

## 📬 Contact

**Mohammed Afsal V P**  
📧 mohdafzaal6097@gmail.com  
📍 Kannur, Kerala  
+91 9567300647

---

> *This project is intended for learning and portfolio purposes and is not affiliated with Zepto.*
