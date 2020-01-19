-- List all employees whose first name is "Hercules" and last names begin with "B"


Select 
	E.*
From Employee E
Where
	E.First_Name = 'Hercules'
	And
	E.Last_Name Like 'B%'
