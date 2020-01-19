-- List the following details of each employee: employee number, last name, first name, gender, and salary.

Select 
	E.Employee_number, 
	E.Last_Name, 
	E.First_Name, 
	E.Gender, 
	ES.Salary
From Employee E
Inner Join Employee_Salary ES On
	E.Employee_Number = ES.Employee_Number

