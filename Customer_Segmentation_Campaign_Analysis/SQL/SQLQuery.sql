select * from customer_segmentation

--1. Total Customers
Select COUNT(*) as Total_Customers from customer_segmentation;
/*Explanation:
Count all rows in the table & Gives total number of customers in your dataset
Business Insight:
You know the dataset size
Useful for understanding how large the customer base is before segmenting
I calculated the total number of customers in the dataset to understand the scope of the analysis. 
This also helps in validating that the dataset was imported correctly.*/

--2. Average & Total Income / Spending
select AVG(Income) as Avg_Income,SUM(Income) as Total_Income,
AVG(Total_Spending) as Avg_Spending, SUM(Total_Spending) as total_spending
from customer_segmentation;
/*Explanation:
AVG → average per customer, SUM → total across all customers. Measures customer value and purchase behavior
Business Insight: Identify high-value customers and Helps prioritize marketing campaigns and retention strategies.
I calculated both average and total income/spending to identify the value contribution of customers. 
This helps the business focus on the most profitable segments.*/

--3. Cluster-wise Customer Count & Spending
select Cluster, COUNT(*) as Num_Customers, AVG(Total_Spending) as Avg_Spending, AVG(Income) as Avg_Income
from customer_segmentation
group by Cluster
order by Cluster;
/*Explanation:
Groups customers by Cluster (High, Medium, Low) and Counts number of customers per cluster and 
Calculates average spending and income per cluster
Business Insight: Understand which clusters are most valuable and Helps design targeted campaigns
I analyzed customer clusters to see how many customers fall in each segment and their average spending. 
This directly informs marketing and retention strategies for each group.*/

--Changing data type
ALTER TABLE customer_segmentation
ALTER COLUMN AcceptedCmp1 SMALLINT;

ALTER TABLE customer_segmentation
ALTER COLUMN AcceptedCmp2 SMALLINT;

ALTER TABLE customer_segmentation
ALTER COLUMN AcceptedCmp3 SMALLINT;

ALTER TABLE customer_segmentation
ALTER COLUMN AcceptedCmp4 SMALLINT;

ALTER TABLE customer_segmentation
ALTER COLUMN AcceptedCmp5 SMALLINT;

ALTER TABLE customer_segmentation
ALTER COLUMN Response SMALLINT;

--4. Campaign Acceptance Analysis
select sum(AcceptedCmp1) as Cmp1_Responses,
       sum(AcceptedCmp2) as Cmp2_Responses,
	   sum(AcceptedCmp3) as Cmp3_Responses,
	   sum(AcceptedCmp4) as Cmp4_Responses,
	   sum(AcceptedCmp5) as Cmp5_Responses,
	   sum(Response) as Total_Response
from customer_segmentation;
/* Explanation:
Counts how many customers accepted each campaign and Measures campaign effectiveness
Business Insight: Identify which campaigns are most successful and Helps optimize future campaigns
I calculated the total number of customers who responded to each marketing campaign. 
This helps evaluate which campaigns are most effective and guides future marketing strategy.*/

--5. Recency & Frequency Analysis
select AVG(Recency) as Avg_Recency, AVG(NumWebVisitsMonth) as Avg_Web_Visits, AVG(NumstorePurchases) as Avg_Store_Purchases
from customer_segmentation
/* Explanation:
Understand customer engagement & Recency → how recent their last purchase & Frequency → store or online visits
Business Insight: Identify active vs dormant customers & Helps plan retention campaigns
I analyzed customer recency and purchase frequency to identify engagement levels. 
This supports targeted retention campaigns and personalized marketing.*/

Select * from customer_segmentation
sp_help customer_segmentation;