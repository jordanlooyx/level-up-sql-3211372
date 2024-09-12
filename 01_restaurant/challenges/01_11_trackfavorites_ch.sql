-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT CustomerID FROM Customers WHERE FirstName='Cleo'
--CustomerID=42
SELECT DishID FROM Dishes WHERE Name='Quinoa Salmon Salad'
--DishID=9
SELECT * FROM CustomersDishes WHERE CustomerID=42
UPDATE Customers SET FavoriteDish = 9


