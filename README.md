
# 📄Customer Segmentation, Churn & Revenue Analytics

Analysed customer segmentation, churn patterns and revenue concentration to identify retention and revenue protection opportunities.


## 📌Table of Contents

- [Project Background](#project-background)
- [Business Objective](#business-objective)
- [Dataset](#dataset)
- [Executive Summary](#executive-summary)
- [Insights Deep Dive](#insights-deep-dive)
- [Key Recommendations](#key-recommendations)
- [Estimated Business Impact](#estimated-business-impact)
- [Tools & Technologies](#tools--technologies)
- [Project Structure](#project-structure)
- [Data Preparation](#data-preparation)
- [Methods](#methods)
- [Author & Contact](#author--contact)


## Project Background

RetailPlus Analytics is a mid-sized Indian e-commerce retailer operating across multiple product categories, including electronics, fashion, home essentials and lifestyle goods. The company primarily trades through its online platform and relies on digital marketing channels to acquire and engage customers. During 2019, overall transaction volumes remained stable, but management observed inconsistencies in customer retention and uneven revenue contribution across the customer base.

Although reporting focused on aggregate sales and transaction counts, there was limited visibility into customer-level behaviour. Leadership lacked a structured understanding of which customers were driving long-term value, which segments were at risk of churn and how purchasing behaviour influenced revenue sustainability. This gap highlighted the need for a more customer-centric, data-driven approach to support retention and revenue protection decisions.



## Business Objective

The objective of this analysis is to support leadership with data-driven insights by:
-	Segmenting customers using Recency, Frequency and Monetary (RFM) metrics to identify High Value, Loyal, Potential, At Risk and Lost customer groups.
-	Defining customer churn based on transaction inactivity and analysing churn behaviour across customer segments.
-	Evaluating revenue contribution and revenue concentration by segment to understand where business value is generated.
-	Comparing average and total revenue between churned and retained customers to assess the financial impact of churn.
-	Quantifying revenue exposure associated with high-risk customer segments.
-	Statistically validating whether differences in churn behaviour and revenue patterns are significant rather than driven by random variation.
-	Enabling more targeted retention strategies and improved prioritisation of customer segments to protect and grow revenue.



## Dataset

This project uses a synthetic e-commerce transactional dataset spanning 12 months (Jan 2019 – Dec 2019), structured across multiple relational tables to simulate a real-world retail analytics environment.

| Table Name        | Description                                                                                              |
| ----------------- | -------------------------------------------------------------------------------------------------------- |
| `online_sales`    | Stores transaction-level purchase records including product category, quantity, price, and coupon usage. |
| `customers_data`  | Contains unique customer demographic and lifecycle details such as location and tenure in months.        |
| `discount_coupon` | Provides category-level coupon codes and discount percentages applied across months.                     |
| `marketing_spend` | Captures daily online and offline marketing expenditure for performance context.                         |
| `tax_amount`      | Contains GST percentage details mapped to product categories.                                            |


### Entity Relationship Diagram (ERD)

![ERD Diagram](https://github.com/ajaykjaiswar/Customer-Funnel-Retention-and-Revenue-Analysis/blob/main/images/erd.jpg)




## Executive Summary

Customer behavior analysis using RFM segmentation reveals that revenue and churn are highly concentrated across customer segments. A small share of customers generates the majority of revenue with low churn, while a large portion of the customer base contributes disproportionately to churn with limited revenue impact. Statistical testing confirms that these patterns are significant and not random, reinforcing the need for targeted, segment-based retention strategies.

![Overview](https://github.com/ajaykjaiswar/Customer-Funnel-Retention-and-Revenue-Analysis/blob/main/images/Overview.PNG)

### Key Business Findings
1. **Customer Lifecycle & Value Segmentation**

   - Revenue is concentrated within a small group of High Value customers.
   - Nearly half of the customer base sits in At Risk and Lost segments.  

2. **Customer Churn Risk Assessment**

   - Churn is concentrated in At Risk and Lost segments.
   - High Value customers show comparatively low churn.

3. **Revenue Concentration & Exposure Analysis**

   - A few segments generate the majority of revenue.
   - A significant share of revenue is exposed to churn risk.

4. **Statistical Validation of Customer Behaviour**

   - Churn varies significantly across segments.
   - Retained customers generate significantly higher revenue than churned customers.


## Insights Deep Dive 
[View Detailed Analysis (PDF)](https://github.com/ajaykjaiswar/Customer-Funnel-Retention-and-Revenue-Analysis/blob/main/Report.pdf)

### Customer Lifecycle & Value Segmentation

- High Value customers represent ~19% of the customer base but contribute ~48% of total revenue, confirming strong revenue concentration.
-	Loyal customers form ~21% of customers and contribute ~22% of revenue, indicating stable repeat behavior but moderate spend.
-	Potential customers account for ~12% of customers but contribute only ~3% of revenue, signaling low engagement despite recent activity.
-	At Risk and Lost customers together make up ~48% of customers but generate less than ~27% of total revenue, highlighting significant retention leakage.



### Customer Churn Risk Assessment

- Lost and At Risk segments exhibit extremely high churn rates, indicating disengagement is strongly correlated with recency deterioration.
-	High Value customers show very low churn (~6%), validating the effectiveness of current engagement for top customers.
-	Although Loyal customers are relatively stable, they still contribute ~19% of total churn, making them an important secondary retention target.
-	Churn is not evenly distributed; it is concentrated in specific lifecycle stages.


### Revenue Concentration & Exposure Analysis

- Revenue is highly concentrated, with a small proportion of customers driving a majority of sales.
-	High Value customers generate ~6–7× higher average revenue per customer compared to Lost and Potential segments.
-	At Risk customers still contribute ~22% of revenue, indicating meaningful revenue exposure if churn is not addressed.
-	Lost customers account for the largest customer share (~28%) but only ~5% of revenue, suggesting diminishing returns from aggressive win-back efforts


### Statistical Validation of Customer Behaviour

#### 1. Churn vs Segment (Chi-Square Test)
-	A chi-square test confirms a statistically significant relationship between customer segment and churn (p < 0.05).
- This validates that churn behavior is structurally different across lifecycle segments, not random variation.
- The RFM segmentation framework is statistically meaningful for churn analysis.


#### 2. Revenue vs Churn (Two-Sample t-Test)
-	A Welch’s two-sample t-test shows that mean revenue differs significantly between churned and retained customers (p < 0.001).
-	Retained customers generate substantially higher revenue, confirming the financial cost of churn.
-	Revenue distribution is right-skewed, but the result remains robust under unequal variance assumptions.



## Key Recommendations

| **Insight**                                                           | **Recommendation**                                                                     | **Estimated Business Impact**                                                       |
| --------------------------------------------------------------------- | -------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| High Value customers drive ~48% of revenue with low churn             | Introduce VIP retention programs (personalized offers, priority support, early access) | Protect **~0.5–1% of total revenue** by preventing even small churn in this segment |
| At Risk customers contribute ~22% of revenue but show very high churn | Deploy early intervention triggers (inactivity alerts, targeted incentives)            | Retain **~2–3% of annual revenue** through modest churn reduction                   |
| Loyal customers generate ~22% of revenue with moderate churn          | Strengthen loyalty and cross-sell initiatives to increase repeat spend                 | Unlock **~1–2% incremental revenue uplift**                                         |
| Lost customers account for ~28% of customers but only ~5% of revenue  | Limit costly win-back campaigns; focus on low-cost reactivation                        | Improve marketing efficiency by **~10–20%**                                         |
| Churn is concentrated in specific segments                            | Replace broad campaigns with segment-driven retention strategies                       | Improve retention ROI and reduce wasted spend                                       |
| Retained customers generate significantly higher revenue              | Shift focus from acquisition-heavy strategies to retention-first planning              | Increase customer lifetime value and stabilize revenue                              |
| Segment differences are statistically significant                     | Use RFM segmentation as a core decision framework for customer strategy                | Enable confident, data-backed decision-making                                       |


## Estimated Business Impact

The analysis demonstrates that revenue and churn are highly concentrated across specific customer segments. By prioritising retention efforts for high-value and at-risk customers, the business could realistically protect and improve an estimated 3–6% of annual revenue, while improving marketing efficiency and strategic decision-making.
## Tools & Technologies

| **Category**        | **Tools / Technologies**                           |
| ------------------- | -------------------------------------------------- |
| `Programming`         | Python (Pandas, NumPy, SciPy, Matplotlib, Seaborn) |
| `Database`           | MySQL                                              |
| `Database Interface`  | MySQL Workbench                                    |
| `Data Modelling`      | SQL, Customer-Level Aggregations                   |
| `Visualisation`       | Power BI                                           |
| `Statistical Testing` | Chi-Square Test, Welch’s Two-Sample t-test         |
| `Documentation`       | GitHub README, PDF Report                          |



## Project Structure

```
📁 RetailPlus
|   📄dashboard.pbix
│   📄README.md
│   📄RetailPlus_Report.pdf
│
├───📁analysis
│       📄Analysis.ipynb
│       📄consolidated_data.sql
│       📄Loadingdata+Cleaning.sql
│
├───📁data
│       📄consolidated_data.sql
│       📄CustomersData.csv
│       📄Discount_Coupon.csv
│       📄Marketing_Spend.csv
│       📄Online_Sales.csv
│       📄Tax_amount.csv
│
└───📁images
        📸Churn vs Revenue.png
        📸Customer Segmentation.png
        📸dashboard.png
        📸ERD.PNG

```



## Data Preparation
[View Data Preparation SQL](https://github.com/ajaykjaiswar/Customer-Funnel-Retention-and-Revenue-Analysis/blob/main/analysis/createsummarytable.sql)

- Consolidated datasets into a unified analytical table
- Filtered invalid, duplicate and non-conversion events to ensure data quality
- Transaction-level data was reviewed for completeness, consistency and duplicate records.
- Date fields were standardised to ensure accurate calculation of recency metrics.
- Revenue values were validated and aggregated at customer level to compute total spend.
- Customer-level features such as Recency, Frequency and Monetary value were derived from transactional data.
- Churn status was defined based on transaction inactivity within the specified analysis period.
- Final analytical tables were structured for downstream statistical analysis and dashboard visualisation.
  
## Methods

- Data cleaning and enrichment using SQL views.
- Customer Segmentation: Customers were segmented using Recency, Frequency and Monetary (RFM) metrics to classify them into High Value, Loyal, Potential, At Risk and Lost groups.
- Churn Definition: Churn was defined based on transaction inactivity within a specified period and calculated at customer level.
- Revenue Analysis: Total revenue, revenue share and average revenue per customer were computed to assess revenue concentration and exposure across segments.
- Statistical Testing: A chi-square test was conducted to evaluate the relationship between customer segment and churn and a Welch’s two-sample t-test was performed to assess differences in revenue between churned and retained customers.
- Visualisation & Reporting: Final analytical tables were stored in MySQL and visualised using Power BI to create an executive-facing dashboard.
  
## Author & Contact

**Ajaykumar Jaiswar**   
Data Analyst  
📧 **Email:** ajaykjaiswar57@gmail.com
