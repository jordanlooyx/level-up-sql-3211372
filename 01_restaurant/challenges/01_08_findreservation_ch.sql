-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT * FROM Customers
JOIN Reservations ON Customers.CustomerID=Reservations.CustomerID 
WHERE Customers.LastName LIKE 'Ste%' AND Reservations.PartySize=4
ORDER BY Reservations.Date DESC