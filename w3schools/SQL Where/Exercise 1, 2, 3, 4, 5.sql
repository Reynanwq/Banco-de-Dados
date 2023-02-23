-- EXERCISE 1
SELECT * FROM Customers
  WHERE City = 'Berlin';
  
-- EXERCISE 2
SELECT * FROM Customers
  WHERE NOT City = 'Berlin'
  
-- EXERCISE 3
SELECT * FROM Customers
  WHERE CustomerID = 32;  
  
-- EXERCISE 4  
SELECT * FROM Custtomers
  WHERE City = 'Berlin'
  AND PostalCode = 12209;
  
-- EXERCISE 5
SELECT * FROM Customers
  WHERE City = 'Berlin'
  OR City = 'London';
 
