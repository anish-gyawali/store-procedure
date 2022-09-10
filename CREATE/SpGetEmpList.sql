/*store procedure  with variables to get the listt of Employeee*/

Alter  PROC uspGetEmpList
AS 
BEGIN
    DECLARE @emp_list VARCHAR(MAX);
    SET @emp_list = '';

    SELECT @emp_list = @emp_list + [Name] + ' is in " ' +CONVERT(VARCHAR(12), [level])  + ' "Level' 
	               + CHAR(10)
    FROM [Employee]
    
    PRINT @emp_list;
END;

/*
In the above example, we created a stored procedure that returns the name and level of all the employees. 
And for this implementation, we are using the variable to store the name and level string. 
Now, if we execute the procedure, we will get the following result.

Anish is in " 10 "Level
Basanta is in " 5 "Level
Dipika is in " 3 "Level
Simran is in " 4 "Level
Subash is in " 5 "Level

*/

/*
script to implement above store procedure

EXEC uspGetEmpList

*/