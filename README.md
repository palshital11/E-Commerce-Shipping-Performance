# E-Commerce-Shipping-Performance Project
A short project to get hands-on how real world shipment is done, managed and track performance.

This project analyzes **E-Commerce Shipping Data** from [Kaggle](https://www.kaggle.com/datasets/prachi13/customer-analytics) to evaluate shipping efficiency, customer satisfaction, and delivery performance.  
The goal is to simulate how a **Data Manager at Maersk** would track and improve logistics KPIs using Excel, SQL, and Power BI.

---

## Dataset Overview
The dataset contains ~10,000 shipment records with the following key columns:
- **Warehouse_block** – Warehouse location  
- **Mode_of_Shipment** – Ship / Flight / Road  
- **Customer_care_calls** – Number of follow-up calls  
- **Customer_rating** – Satisfaction score (1–5)  
- **Cost_of_the_Product** – Product cost in USD  
- **Product_importance** – Low / Medium / High  
- **Reached_on_Time_Y_N** – On-time delivery flag  

---

## Project Workflow
**1️Data Cleaning (Excel)**  
- Removed duplicates and handled missing values  
- Standardized column formats  
- Added derived metrics such as `Delay_Flag` and `Cost_Category`  

**2️SQL Analysis**  
- Queried shipment efficiency by transport mode and warehouse  
- Calculated KPIs like On-Time %, Avg Cost, and Avg Rating  
- Identified high-delay routes and low-rated shipments  

**3️Visualization (Power BI)**  
- Built dashboard to display:
  - On-Time Delivery %
  - Average Shipping Cost
  - Average Customer Rating
  - Warehouse & Mode-wise performance  

---

## Key KPIs
- On-Time Delivery Rate  
- Average Customer Rating  
- Average Cost per Shipment  
- Delay % by Warehouse  

---

## Insights
- Air shipments show the **lowest delay percentage** but **highest cost**.  
- Ship mode is the most used but has **higher delay rates**.  
- Warehouses ‘F’ and ‘D’ show **best overall performance**.  
- Higher product importance correlates with **fewer delays**.  

---

## Tools & Technologies
Excel | SQL | Power BI | Kaggle  
