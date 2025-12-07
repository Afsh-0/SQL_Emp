create database DUMMY;
use DUMMY;
create table emy
(EmpID INT,
EmpName varchar(30),
Department varchar(30),
City varchar(30),
salary INT, 
HireData DATE);
select *from emy;
insert into emy values
(101, 'Rahul Mehata', 'Sales','Delhi',55000,'2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-09-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', ' Delhi',  48000,'2022-01-14'),
(105, 'Karan Joshi', 'Marketing','Pune', 45000,'2018-07-22'),
(106, 'Divya Nair', 'IT','Chennai', 81000,'2019-12-11'),
(107, 'Raj Kumar', 'HR','Delhi', 60000, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
(109, 'Arjun Reddy', 'IT',  'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales','Kolkata', 51000, '2023-01-15');

select *From emy;

#(1) Show employees working in either the ‘IT’ or ‘HR’ departments?
use DUMMY;
select *from emy
where Department in ('HR', 'IT')
order by Department desc;


#(2) Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’?
Select *from emy
where Department in ('Sales', 'IT', 'Finance')
order by Department;


#(3) Display employees whose salary is between ₹50,000 and ₹70,000?
select *from emy;
select *from emy
where salary between 50000 and 70000
order by EmpId;


#(4) List employees whose names start with the letter ‘A’?
select *from emy
where EmpName like "A%"
order by EmpID;


#(5) Find employees whose names contain the substring ‘an’?
select *from emy
where EmpName like "%an%"
order by EmpID;



#(6) Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000?
select *from emy
where City in ('Delhi', 'Mumbai') and Salary>55000
order by EmpID;



#(7) Display all employees except those from the ‘HR’ department?
select *from emy
where Department not like 'HR'
order by EmpID;



#(8) Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).?

select *from emy
where year(HireData) between 2019 and 2022
order by year(HireData) desc;
 
