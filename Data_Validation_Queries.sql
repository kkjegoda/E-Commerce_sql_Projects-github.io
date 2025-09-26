-- 1. DATA VALIDATION
-- Performing data validation to identify rows with missing critical fields (NULL values),
-- which could indicate incomplete or invalid data requiring correction or further review.


SELECT * FROM ecommerce_1.products_data
WHERE
ProductName IS Null
OR PRICE IS NULL
OR StockQuantity IS NULL;


SELECT * FROM ecommerce_1.users_data
WHERE
UserName is NULL 
OR Email is NULL
or Password is NULL;

-- 2. VALIDATE DATA FORMATS
-- CHECKING ALL EMAILS IN THE USERS TABLE ARE CORRECTLY FORMATTED
-- %_@_%._% IS USED TO VERIFY THE EMAIL FORMAT
SELECT * 
FROM ecommerce_1.users_data
WHERE Email 
NOT LIKE '%_@_%._%';

-- ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ is the regex to validate a email
SELECT * 
FROM ecommerce_1.users_data
WHERE Email 
NOT regexp '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$';

-- 3. STANDARDIZE DATA FORMATS
-- CHECKS ALL DATES IN THE ORDER TABLE ARE IN A VALID DATE RANGE
SELECT * 
FROM ecommerce_1.orders_data
WHERE
OrderDate>'1970-01-01' or
Orderdate> CURDATE();

-- 4. CHECKING DUPLICATE USER ID'S IN USER TABLE
Select
UserID,COUNT(*) as IdCount
from ecommerce_1.users_data
GROUP BY UserID
having IdCount>1;


-- 5. Forcing Constraints to maintain the Data Integrity
-- Ensuring Non Negative Prices
-- None of the Product Price in Products Table should be negative

ALTER TABLE 
ecommerce_1.products_data
ADD constraint
chk_price CHECK (PRICE>=0);

-- Ensuring Email Validation in User Emails from Users Table

Alter Table
ecommerce_1.users_data
Add Constraint
chk_email check (Email like '%_@_%._%');