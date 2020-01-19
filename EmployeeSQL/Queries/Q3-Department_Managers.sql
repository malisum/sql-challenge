-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates

Select 
	DM.Department_Number, 
	D.Department_Name,
	E.Employee_number As Manager_Employee_Number, 
	E.Last_Name, 
	E.First_Name, 
	E.Hire_Date
From Department_Manager DM
Inner Join Employee E On 
	DM.Employee_Number = E.Employee_Number	
Inner Join Department D On
	DM.Department_Number = D.Department_Number