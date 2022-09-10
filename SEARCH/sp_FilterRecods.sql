
/*
create a stored procedure for dynamic filtering, a procedure must accept some input parameters.
And, it will use the parameters to find and filter the data to get the desired output.
*/

CREATE PROC sp_FilterRecods
( @country VARCHAR(MAX), @start_date DATE, @end_date DATE )
AS
BEGIN
  SELECT [FirstName], [LastName], [country], [Date] AS [Joining Date]
  FROM [Work]
  WHERE ([Country] = @country AND ([Date] BETWEEN @start_date AND @end_date))
END

/*
we are using the WHERE clause to filter out results based upon the country name and joining date of an User.
And for the dates, we have used 2 date variables to define a range for the joining date.
*/

/*
 let’s execute the procedure by using the following inputs.
 
 DECLARE @country VARCHAR(MAX) = 'United States',
        @start_date DATE = '2020-09-01',
	@end_date DATE = '2021-07-01'
	
	EXEC sp_FilterRecods @country, @start_date, @end_date
*/