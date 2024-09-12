-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
SELECT * FROM Books WHERE Published >=1890 AND Published <1899 AND (BookID NOT IN
(SELECT BookID FROM Loans WHERE ReturnedDate IS NULL))

SELECT * FROM Books WHERE Published >=1890 AND Published <1899 AND 
(SELECT BookID FROM Loans WHERE ReturnedDate IS NOT NULL)