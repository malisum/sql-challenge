-- Department Table 
Create Table Department (
	Department_Number	Char(10) Primary Key Not Null,
	Department_Name		VarChar(100) Not Null
);


-- Emlpoyee Table
Create Table Employee (
	Employee_Number		Numeric(10) Primary Key Not Null,
	Birth_Date			Date	Not Null,
	First_Name			VarChar(100) Not Null,
	Last_Name			VarChar(100) Not Null,
	Gender				Char(1) Not Null,
	Hire_Date			Date Not Null
);


-- Department Manager Table 
Create Table Department_Manager (
	Department_Number	Char(10) Not Null References Department(Department_Number),
	Employee_Number		Numeric(10) Not Null References Employee(Employee_Number),
	From_Date			Date	Not NUll,
	To_Date				Date,
	Primary Key (Department_Number, Employee_Number, From_Date)
);


-- Employee Department Table
Create Table Employee_Department (
	Employee_Number		Numeric(10) Not Null References Employee(Employee_Number),
	Department_Number	Char(10) Not Null References Department(Department_Number),
	From_Date			Date	Not NUll,
	To_Date				Date,
	Primary Key (Employee_Number, Department_Number, From_Date)
);


-- Employee Salary
Create Table Employee_Salary (
	Employee_Number		Numeric(10) Not Null,
	Salary				Integer Not Null,
	From_Date			Date	Not NUll,
	To_Date				Date,
	Primary Key (Employee_Number, From_Date),
	Foreign Key (Employee_Number) References Employee(Employee_Number)
);


-- Employee Title 
Create Table Employee_Title (
	Employee_Number		Numeric(10) Not Null,
	Employee_Title		VarChar(100) Not Null,
	From_Date			Date	Not NUll,
	To_Date				Date,
	Primary Key (Employee_Number, From_Date),
	Foreign Key (Employee_Number) References Employee(Employee_Number)
);



