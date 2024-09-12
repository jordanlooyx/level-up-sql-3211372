-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT * FROM Reservations
JOIN Customers ON Reservations.CustomerID = Customers.CustomerID
WHERE Customers.FirstName = 'Norby' AND Reservations.Date > '2022-07-24'

DELETE FROM Reservations WHERE ReservationID = 2000;

INSERT INTO Customers(CustomerID, FirstName, LastName, Email, Address, City, State, Phone, Birthday)
VALUES (64,'Norby', 'Sleight', 'Norby@samoca.org', '479 Dr.', 'Memphis', 'TN', '555-555', '1973-07-21')