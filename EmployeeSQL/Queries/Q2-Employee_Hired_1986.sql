-- List employees who were hired in 1986.

Select 
	E.*
From Employee E
Where 
	Extract(Year From E.Hire_Date) = '1986'