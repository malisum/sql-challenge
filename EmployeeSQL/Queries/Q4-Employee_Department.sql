-- List the department of each employee with the following information: employee number, last name, first name, and department name

Select 
	E.Employee_number, 
	E.Last_Name, 
	E.First_Name, 
	D.Department_Name
From Employee E
Inner Join Employee_Department ED On 
	E.Employee_Number = ED.Employee_Number
Inner Join Department D On
	ED.Department_Number = D.Department_Number