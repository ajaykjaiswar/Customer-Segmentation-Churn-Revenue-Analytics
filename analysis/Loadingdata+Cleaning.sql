-- Loading Data (Small sized tables were imported using "Table Data Import Wizard") ------------------------

SHOW VARIABLES LIKE 'secure_file_priv';

SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Online_Sales.csv'
INTO TABLE online_sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


-- Data Cleaning ------------------------------------------------------------------------------------------

-- Replaced Special Characters ----------------------------------------------------------------------------

alter table tax_amount
rename column ï»¿Product_Category to Product_Category;

alter table customersdata
rename column ï»¿CustomerID to CustomerID;

-- Deleting Columns that are not required for analysis

delete from tax_amount
where GST = "GST";

-- Data Standardization ----------------------------------------------------------------------------------

UPDATE online_sales
SET Transaction_Date = STR_TO_DATE(Transaction_Date, '%m/%d/%Y');

Alter Table online_sales
modify Transaction_Date DATE;

-- 

UPDATE marketing_spend
SET `Date` = STR_TO_DATE(`Date`, '%m/%d/%Y');

Alter Table marketing_spend
modify `Date` DATE;

-- 







