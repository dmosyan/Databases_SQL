-- 1. Insert the missing statement to get all the columns from the Customers table.
SELECT * FROM Customers;

-- 2. Write a statement that will select the City column from the Customers table.
SELECT City FROM Customers;

-- 3. Select all the different values from the Country column in the Customers table.
SELECT DISTINCT Country FROM Customers;

-- 4. Select all records where the City column has the value "Berlin".
SELECT * FROM Customers
WHERE City='Berlin';

-- 5. Use the NOT keyword to select all records where City is NOT "Berlin".
SELECT * FROM Customers
WHERE NOT City = 'Berlin';

-- 6. Select all records where the CustomerID column has the value 32.
SELECT * FROM Customers
WHERE CustomerID = 32;

-- 7. Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 12209.
SELECT * FROM Customers
WHERE City = 'Berlin'
AND PostalCode = 12209;

-- 8. Select all records where the City column has the value 'Berlin' or 'London'.
SELECT * FROM Customers
WHERE City = 'Berlin'
OR City = 'London';

-- 9. Select all records from the Customers table, sort the result alphabetically by 
--    the column City.
SELECT * FROM Customers
ORDER BY City;

-- 10. Select all records from the Customers table, sort the result reversed alphabetically by the column City.
SELECT * FROM Customers
ORDER BY City DESC;

-- 11. Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.
SELECT * FROM Customers
ORDER BY Country, City;

-- 12. Insert a new record in the Customers table.
INSERT INTO Customers (
CustomerName, 
Address, 
City, 
PostalCode,
Country
)
VALUES(
'Hekkan Burger',
'Gateveien 15',
'Sandnes',
'4306',
'Norway'
);

-- 13. Select all records from the Customers where the PostalCode column is empty.
SELECT * FROM Customers
WHERE PostalCode IS NULL;

-- 14. Select all records from the Customers where the PostalCode column is NOT empty.
SELECT * FROM Customers
WHERE PostalCode IS NOT NULL;

-- 15. Update the City column of all records in the Customers table.
UPDATE Customers SET City = 'Oslo';

-- 16. Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
UPDATE Customers SET City = 'Oslo'
WHERE Country = 'Norway';

-- 17. Update the City value and the Country value.
UPDATE Customers SET City = 'Oslo', Country = 'Norway'
WHERE CustomerID = 32;

-- 18. Delete all the records from the Customers table where the Country value is 'Norway'.
DELETE FROM Customers
WHERE Country = 'Norway';

-- 19. Delete all the records from the Customers table.
DELETE FROM Customers;

-- 20. Use the MIN function to select the record with the smallest value of the Price column.
SELECT MIN(Price) FROM Products;

-- 21. Use an SQL function to select the record with the highest value of the Price column.
SELECT MAX(Price) FROM Products;

-- 22. Use the correct function to return the numbers of records that have the Price value set to 18.
SELECT COUNT(*) FROM Products
WHERE Price = 18;

-- 23. Use an SQL function to calculate the average price of all products.
SELECT AVG(Price) FROM Products;

-- 24. Use an SQL function to calculate the sum of all the Price column values in the Products table.
SELECT SUM(Price) FROM Products;

 




