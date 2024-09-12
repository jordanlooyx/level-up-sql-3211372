-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
SELECT COUNT(DISTINCT(Title)) AS CountOfTitles,Title,Published FROM Books
GROUP BY Published
ORDER BY CountOfTitles DESC

-- Report 2: Show the five books that have been
-- checked out the most.
SELECT COUNT(Loans.BookID) AS LoanCount, Books.Title 
FROM Loans
JOIN Books ON Loans.BookID=Books.BookID
GROUP BY Loans.BookID
ORDER BY LoanCount DESC
LIMIT 5