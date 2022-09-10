/*store procedure to pass input parameter and ouput parameter*/

ALTER PROCEDURE GetLevelRecords
( 
  @LevelNumber VARCHAR(50),  --input parameter
  @Count INT OUTPUT	  --output parameter	
)
AS
BEGIN
SET NOCOUNT ON
 
SELECT [Name], [level], [gender] FROM Employee
WHERE [level]=@LevelNumber

SET @Count = @@ROWCOUNT
 
END

/*
Script to exec this store procedure:

-First, we have to declare a variable count that will store the value returned by the output parameter.

-Next, we have provided the value of the input parameter in the execution statement.

-After this, we have specified the count variable as the value of the output parameter.
 It will save the value returned by the output parameter in the count variable.

-And then, we can easily use the count variable to display the result using the SELECT statement.

DECLARE @count INT
EXEC GetLevelRecords '5', @count OUTPUT 
SELECT @count AS 'Total Records'
*/