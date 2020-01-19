-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name


Select 
	E.Last_Name,
	Count(*) As Last_Name_Count
From Employee E
Group By 
	E.Last_Name
Order By Last_Name_Count Desc

