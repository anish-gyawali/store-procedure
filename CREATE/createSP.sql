/* Store procedure to get all record*/

CREATE PROCEDURE GetAllRecords
AS
BEGIN
	SELECT [EmployeeID],[Name],[level],[gender] from dbo.Employee;
END
GO