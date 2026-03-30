# Customer Segmentation & Campaign Analysis

## Project Overview
This project analyzes customer behavior using purchase history and demographics to identify high-value customers and optimize marketing campaigns. The goal is to segment customers and provide actionable insights for marketing strategies.

## Tools & Technologies
- **Python**: Data cleaning, feature engineering, clustering (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn)
- **SQL**: Data analysis and aggregations (SQL Server)
- **Power BI**: Interactive dashboard for visualization

## Folder Structure
1. **Data/** - Contains raw and processed datasets
2. **Python/** - Jupyter notebooks for data cleaning, feature engineering, and KMeans clustering
3. **SQL/** - SQL queries for customer segment and campaign analysis
4. **PowerBI/** - Power BI dashboard file

## Key Steps
1. **Data Cleaning & Preprocessing** (Python)
   - Handled missing values and data types
   - Created new features: Total Spending, Age, Total Accepted Campaigns, Total Children
   - Handled outliers using capping
2. **Customer Segmentation** (Python)
   - Applied KMeans clustering to group customers into high, medium, and low-value segments
   - Analyzed cluster characteristics
3. **Data Analysis** (SQL)
   - Calculated total and average spending by segment
   - Analyzed campaign acceptance and customer distribution
4. **Dashboard Visualization** (Power BI)
   - KPI cards for total customers and total spending
   - Clustered column charts for segment distribution, spending, and campaign acceptance
   - Scatter plot for spending vs recency by segment
   - Slicers for interactive filtering
5. **Insights & Recommendations**
   - High-value customers contribute significantly to revenue
   - Some segments have many customers but lower spending → opportunity for targeted marketing
   - Campaign 3 has the highest acceptance rate
   - Customers with lower recency tend to spend more

## Business Impact
These insights help businesses:
- Focus on high-value customers
- Improve customer retention strategies
- Optimize marketing campaigns and campaign targeting

## Author
**Your Name**  
LinkedIn: [Your LinkedIn URL]  
GitHub: [Your GitHub URL]
