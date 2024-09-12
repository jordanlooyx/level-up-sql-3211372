-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
SELECT CustomerID FROM Customers WHERE FirstName='Loretta' AND LastName='Hundey';
--CustomerID=70
INSERT INTO Orders(CustomerID, OrderDate) VALUES (70,'2022-09-20 14:00')
SELECT OrderID FROM Orders WHERE CustomerID=70 AND OrderDate='2022-09-20 14:00';

INSERT INTO OrdersDishes(OrderID, DishID)VALUES
(1001, (SELECT DishID FROM Dishes WHERE Name='House Salad')),
(1001, (SELECT DishID FROM Dishes WHERE Name='Mini Cheeseburgers')),
(1001, (SELECT DishID FROM Dishes WHERE Name='Tropical Blue Smoothie'))

SELECT SUM(Dishes.Price) FROM Dishes JOIN OrdersDishes ON Dishes.DishID=OrdersDishes.DishID
WHERE OrdersDishes.OrderID=1001