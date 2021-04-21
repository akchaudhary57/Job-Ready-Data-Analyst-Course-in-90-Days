###############################################################
###############################################################
-- Project: Using SQL String Functions to Clean Data
###############################################################
###############################################################
 

#############################
-- Task One: Introduction
-- In this task, we will create new tables; the customers
-- and sales tables in the database
#############################

-- 1.1: Create the customers table
CREATE TABLE customers
(
    Customer_ID CHAR(8) PRIMARY KEY,
	Bracket_cust_id CHAR(10),
    Customer_Name VARCHAR(255),
    Segment VARCHAR(255),
    Age INT,
	Country VARCHAR(255),
	City VARCHAR(255),
	State VARCHAR(255),
    Postal_Code INT,
	Region VARCHAR(255)
);

-- 1.2: Create the sales table
CREATE TABLE sales
(
    Order_line VARCHAR(255),
	Order_ID VARCHAR(255),
	Order_Date VARCHAR(255),
	Ship_Date VARCHAR(255),
    Ship_Mode VARCHAR(255),
    Customer_ID VARCHAR(255),
	Product_ID VARCHAR(255),
	Sales VARCHAR(255),
	Quantity VARCHAR(255),
    Discount VARCHAR(255),
	Profit VARCHAR(255)
);

-- 1.3: Retrieve data from the customers and sales tables


#############################
-- Task Two: LENGTH, LEFT, RIGHT
-- In this task, we will use the LENGTH function to return the 
-- length of a specified string, expressed as the number of characters.
-- In addition, we will use the LEFT/RIGHT functions to pull a certain number of characters 
-- from the left or right side of a string and present them as a separate string
#############################

-- 2.1: Retrieve data from the employees table
SELECT * FROM employees;

-- 2.2: Find the length of the first name of male employees


-- 2.3: Find the length of the first name of male employees
-- where the length of the first name is greater than 5

-- 2.4: Retrieve a list of the customer group of all customers


-- 2.5: Retrieve a list of the customer number of all customers


-- 2.6: Retrieve the length of the customer_id column
SELECT customer_id, LENGTH(customer_id)
FROM customers;

-- 2.7: Retrieve a list of the customer group of all customers



#############################
-- Task Three: UPPER & LOWER 
-- In this task, we will use the UPPER and LOWER functions to convert all 
-- characters in the specified string to uppercase or lowercase.
#############################

-- 3.1: Change Data-Cleaning-Project to uppercase letters


-- 3.2: Change Data-Cleaning-Project to lowercase letters


-- 3.3: Retrieve the details of the first employee


-- Start a transaction
BEGIN;

-- 3.4: Change the first name of the first employee to uppercase letters


-- Rollback to the previous step
ROLLBACK;

#############################
-- Task Four: REPLACE
-- In this task, we will learn how to use the 
-- REPLACE function to replace all occurrences of a specified string
#############################

-- 4.1: Change M to Male in the gender column of the employees table


-- 4.2: Change F to Female in the gender column of the employees table

-- 4.2: Change F to Female and M to Male in the gender column using case when in the employees table


-- 4.3: Retrieve data from the customers table
SELECT * FROM customers;

-- 4.4: Change United States to US in the country column of the customers table


#############################
-- Task Five: TRIM, RTRIM, LTRIM
-- In this task, we will use the TRIM functions to remove
-- all specified characters either parts of a string
#############################

-- 5.1: Trim the word Data-Cleaning-Project


-- 5.2: Trim the word Data-Cleaning-Project


-- 5.3: Trim the word Data-Cleaning-Project


-- 5.4: Trim the word Data-Cleaning-Project


-- 5.5: Right trim the word Data-Cleaning-Project


-- 5.6: Left trim the word Data-Cleaning-Project

-- 5.7: Retrieve data from the customers table
SELECT * FROM customers;

-- 5.8: Remove the brackets from each customer id in the bracket_cust_id column


#############################
-- Task Six: Concatenation
-- In this task, we will learn how to join or
-- concatenate two or more strings together
#############################

-- 6.1: Create a new column called Full_Name from the first_name and last_name of employees


-- 6.2: Create a new column called Address from the city, state, and country of customers


-- 6.3: Create a column called desc_age from the customers name and age


#############################
-- Task Seven: SUBSTRING
-- In this task, we will learn how to
-- extract a substring from a string
#############################

-- 7.1: Retrieve data from the customers table
SELECT * FROM customers;

-- 7.2: Retrieve the IDs, names, and groups of customers
-- Hint: Use the customer_id column


-- 7.3: Retrieve the IDs, names of customers in the customer group 'AB'


-- 7.4: Retrieve the IDs, names, and customer number of customers in the customer group 'AB'


-- 7.5: Retrieve the year of birth for all employees


#############################
-- Task Eight: String Aggregation
-- In this task, we will learn how to use string aggregation 
-- to join strings together, separated by delimiter
#############################

-- 8.1: Retrieve data from the dept_emp table
SELECT * FROM dept_emp;

-- 8.2: Retrieve a list of all department numbers for different employees


-- 8.3: Retrieve data from the sales table
SELECT * FROM sales;

-- 8.4: Retrieve a list of all products that were ordered by a customer from the sales table


#############################
-- Task Nine: COALESCE
-- In this task, we will learn how to use COALESCE
-- to fill null values with actual values
#############################

-- 9.1: Retrieve data from the departments_dup table
SELECT * FROM departments_dup;

-- 9.2: Replace all missing department number with its department name


-- 9.3: Change every missing department number to 'No Department Number' and
-- every missing department name to 'No Department Name' respectively
SELECT dept_no, dept_name,
COALESCE(dept_no, 'No Department Number') AS New_dept_no,
COALESCE(dept_name, 'No Department Name') AS new_dept_name
FROM departments_dup
ORDER BY dept_no;

-- 9.4: Replace a missing country with the city, state or No Address
SELECT * FROM customers;


