# Customer Purchase Behavior Analysis (SQL)

## 📌 Project Overview

This SQL project analyzes customer purchasing behavior to uncover insights into demographic trends, spending patterns, purchase frequency, and regional performance.

Using structured SQL queries, the analysis evaluates customer income distribution, identifies high-value age groups, examines purchasing behavior based on frequency, and compares revenue performance across regions.

The goal of this project is to demonstrate how **SQL-driven data analysis can support business decision-making, customer segmentation, and targeted marketing strategies.**

---

## ❓ Business Questions

This analysis answers several key business questions:

1. How many customers exist in the dataset and are there duplicate records?
2. What are the income benchmarks of customers (average, minimum, maximum)?
3. How does purchasing behaviour vary across age groups?
4. Which purchase frequency segment generates the most revenue?
5. How does customer spending differ across regions?

---

## 🛠 Skills Demonstrated

- SQL Data Analysis  
- Data Cleaning and Validation  
- Aggregation Functions (AVG, SUM, COUNT, MIN, MAX)  
- Customer Segmentation  
- Revenue Analysis  
- Business Insight Generation  
- Common Table Expressions (CTE)  
- Analytical Query Design  

---

## 📊 Dataset Information

| Attribute       | Description                                                                 |
|-----------------|-----------------------------------------------------------------------------|
| Dataset         | Customer Purchasing Behaviors                                               |
| Table Name      | `[dbo].[Customer Purchasing Behaviors]`                                     |
| Total Records   | 238 customers                                                               |
| Key Fields      | user_id, age, annual_income, purchase_amount, loyalty_score, purchase_frequency, region |

The dataset contains demographic and purchasing information used to analyze customer behavior and spending trends.

---

# 📊 Data Analysis

## 1️⃣ Data Integrity Check

The first step verifies whether the dataset contains duplicate records.
<img width="322" height="67" alt="image" src="https://github.com/user-attachments/assets/86038f32-bd39-4f24-b879-73b7690ed099" />

### Insight
The total number of rows and unique customer IDs are both **238**, confirming that the dataset contains **no duplicate customer records**.  
This ensures the dataset is clean and reliable for further analysis.

---

## 2️⃣ Income Benchmarking

This query analyzes the distribution of customer income.

<img width="710" height="73" alt="image" src="https://github.com/user-attachments/assets/569b1284-3e82-4799-82d7-2c744ee1e247" />

### Insight
- **Average Annual Income:** $57,407  
- **Average Monthly Income:** $4,783  
- **Minimum Income:** $30,000  
- **Maximum Income:** $75,000  

These results suggest the store primarily serves **middle-income customers**, helping define the target segment for marketing and pricing strategies.

---

## 3️⃣ Demographic Analysis (Age Segmentation)

Customers are segmented by age group to analyze income and purchasing behavior.

<img width="490" height="117" alt="image" src="https://github.com/user-attachments/assets/0141c339-f7f2-46d0-b9c5-40df2866becf" />

### Insight
The **"Older than 40"** segment demonstrates the **highest purchasing power**, with the largest average purchase amount.  
This group represents a **high-value customer segment** that could be targeted with premium products or loyalty programs.

---

## 4️⃣ Behavioral Segmentation (Purchase Frequency)

Customers are grouped by purchase frequency to determine which segment generates the most revenue.

<img width="733" height="120" alt="image" src="https://github.com/user-attachments/assets/1fcf2c32-3c51-4e67-bf57-f6cb5d713c02" />

### Insight
The **Medium Frequency** segment generates the **highest total revenue**.  

While high-frequency customers spend more per person, the medium-frequency segment contains more customers, making it the **largest contributor to total revenue**.

---

## 5️⃣ Geographic Performance

This analysis compares customer spending and volume across regions.

<img width="490" height="148" alt="image" src="https://github.com/user-attachments/assets/c47c77b5-bcf5-4530-9747-0befdac4c1cd" />

### Insight
- The **South and North regions** generate the **highest total revenue**.  
- The **East region** has few customers but relatively high spending per customer, suggesting a **potential growth opportunity**.

---

## 📌 Conclusion

- Customers aged **40+** have the highest spending levels.  
- **Medium-frequency buyers** generate the largest share of total revenue.  
- Certain regions with low volume but high spending per customer offer **growth opportunities**.

---

## 🚀 Recommendations

- **Customer Targeting:** Focus marketing efforts on customers aged 40+ for higher revenue potential.  
- **Customer Retention:** Implement loyalty programs targeting medium-frequency shoppers.  
- **Regional Growth:** Expand marketing in low-volume, high-spending regions.  
- **Data-Driven Marketing:** Use demographic and behavioral insights to craft personalized campaigns.

---

⭐ If you found this project useful, feel free to star the repository!
