-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


Select 
	E.Employee_Number,
	E.Last_Name,
	E.First_Name,
	D.Department_Name
From Employee E
Inner Join Employee_Department ED On 
	E.Employee_Number = ED.Employee_Number
Inner Join Department D On 
	ED.Department_number = D.Department_Number
Where
	D.Department_Name = 'Sales'
