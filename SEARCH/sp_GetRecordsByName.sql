/*create a stored procedure in SQL Server to search and filter out table data. */

CREATE PROC sp_GetRecordsByName
(@name VARCHAR(MAX))
AS
BEGIN
	SELECT [FirstName],[LastName],[gender],[country]
	FROM [PERSONAL]
	Where [FirstName] LIKE @name+'%'
END

/*
we have created a procedure that will filter out the records from a table based upon the starting character of the name.
It will be used to find the records from a table whose name starts with specific letters.
In the query, we have used the WHERE clause, and in the clause, we have used the LIKE operator to find the starting character.

*/

/*
 let’s try to execute the procedure and try to search records whose name starts with “A”.

	exec sp_GetRecordsByName 'A'
*/