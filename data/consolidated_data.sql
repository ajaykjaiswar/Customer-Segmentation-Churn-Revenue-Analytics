-- Consolidated Data from Different Tables ----------------------------------------------------

Create View enriched_data as (
with initial_table as (

SELECT 
    os.CustomerID,
    Transaction_ID,
    Transaction_Date,
    DATE_FORMAT(Transaction_Date, '%b') AS Mnth,
    Location,
    Tenure_Months,
    os.Product_Category,
    Quantity,
    Avg_Price,
    (Quantity * Avg_Price) AS total_amt,
    Coupon_Status
FROM
    online_sales os

left join customersdata cd
on os.CustomerID = cd.CustomerID
),

transactional_data as (

SELECT 
    CustomerID,
    Transaction_ID,
    Transaction_Date,
    Mnth,
    Location,
    Tenure_Months,
    it.Product_Category,
    Quantity,
    Avg_Price,
    total_amt,
    Coupon_Status,
    Discount_pct
FROM
    initial_table it

left join discount_coupon dc
on it.Mnth = dc.Month and it.Product_Category = dc.Product_Category)

Select * from transactional_data);

-- Created a Complete Transactional level data ----------------------------------------------------------

Create table transactions as 
Select * from enriched_data;




