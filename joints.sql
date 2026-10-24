CREATE TABLE Employees (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    DepartmentID INT,
    Salary INT
);

CREATE TABLE Departments (
    DepartmentID INT,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);


INSERT INTO Employees VALUES
(101, 'Arun', 1, 45000),
(102, 'Priya', 2, 52000),
(103, 'Karthik', 1, 48000),
(104, 'Divya', 3, 60000),
(105, 'Rahul', 4, 55000),
(106, 'Sneha', 2, 58000),
(107, 'Vijay', 5, 50000),
(108, 'Meena', NULL, 47000);

INSERT INTO Departments VALUES
(1, 'Data Analytics', 'Bangalore'),
(2, 'Finance', 'Chennai'),
(3, 'Human Resources', 'Coimbatore'),
(4, 'Marketing', 'Hyderabad'),
(6, 'IT', 'Pune');

drop table Employees;

select * from Employees;

select * from Departments;

select * from Employees inner join Departments
on Employees.Departmentid=Departments.Departmentid;

select * from Employees left join Departments
on Employees.Departmentid=Departments.Departmentid;

select * from Employees right join Departments
on Employees.Departmentid=Departments.Departmentid;

SELECT Employees.EmployeeName, Departments.Location
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'Finance';

select Employees.EmployeeName,Departments.DepartmentName
from Employees
left join Departments
ON Employees.DepartmentID = Departments.DepartmentID;

SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
RIGHT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

select Employees.EmployeeName,Departments.DepartmentName
from Employees
inner join Departments
on Employees.DepartmentID=Departments.DepartmentID;

SELECT Employees.EmployeeName, Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentID IS NULL;

SELECT Employees.EmployeeName,
       Employees.Salary,
       Departments.DepartmentName,
       Departments.Location
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


SELECT Employees.EmployeeName,
       Employees.Salary,
       Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


SELECT Employees.EmployeeName,
       Departments.Location
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.Location = 'Bangalore';

SELECT Employees.EmployeeName,
       Employees.Salary,
       Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Employees.Salary > 50000;

SELECT Employees.EmployeeName,
       Departments.Location
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

select Employees.EmployeeName
from Employees
left join Departments
on Employees.DepartmentId=Departments.DepartmentID
where Departments.DepartmentID is null;

SELECT Departments.DepartmentName,
       COUNT(Employees.EmployeeID) AS No_of_Employees
FROM Departments
LEFT JOIN Employees
ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY Departments.DepartmentName;

select Departments.DepartmentName,
       max(Employees.salary) as Highest_salary
from Employees
inner join Employees.DepartmentID=Departments.DepartmentID

select Departments.DepartmentName,
       max(Employees.salary) as Highest_salary
from Employees
inner join Departments
on Employees.DepartmentID=Departments.DepartmentID
group by Deparments.DepartmentName;

CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    Product VARCHAR(50),
    Amount INT
);

drop table Customers;

drop table orders;

INSERT INTO Customers VALUES
(1, 'Arun', 'Chennai'),
(2, 'Priya', 'Bangalore'),
(3, 'Karthik', 'Coimbatore'),
(4, 'Divya', 'Hyderabad'),
(5, 'Rahul', 'Mumbai'),
(6, 'Sneha', 'Pune');

INSERT INTO Orders VALUES
(101, 1, 'Laptop', 55000),
(102, 2, 'Mobile', 25000),
(103, 1, 'Mouse', 1500),
(104, 3, 'Keyboard', 3000),
(105, 5, 'Monitor', 18000),
(106, 2, 'Headphones', 5000);

select * from customers;

select * from Orders;

select * from customers left join Orders
on customers.customerID=orders.CustomerID;

SELECT Customers.CustomerName,
       Orders.OrderID,
       Orders.Product,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;

SELECT Customers.CustomerName,
       Orders.Product,
       Orders.Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Amount > 10000;


CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(50),
    Specialization VARCHAR(50),
    Experience INT
);

CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    DoctorID INT,
    PatientName VARCHAR(50),
    Fee INT,
    Status VARCHAR(20)
);

drop table Appointments;

INSERT INTO Doctors VALUES
(301, 'Dr. Anand', 'Cardiology', 12),
(302, 'Dr. Priya', 'Neurology', 8),
(303, 'Dr. Kumar', 'Orthopedics', 15),
(304, 'Dr. Meena', 'Dermatology', 6),
(305, 'Dr. Ravi', 'Pediatrics', 10),
(306, 'Dr. Divya', 'ENT', 5);

INSERT INTO Appointments VALUES
(401, 301, 'Arun', 1200, 'Completed'),
(402, 302, 'Sneha', 1000, 'Completed'),
(403, 301, 'Rahul', 1200, 'Pending'),
(404, 303, 'Karthik', 1500, 'Completed'),
(405, 304, 'Divya', 800, 'Cancelled'),
(406, 305, 'Vijay', 900, 'Completed'),
(407, 302, 'Meena', 1000, 'Pending'),
(408, 307, 'Sanjay', 1100, 'Completed');


select * from Doctors;

select * from Appointments;

select Doctors.DoctorName,
       Doctors.Specialization,
       Appointments.PatientName
from Doctors
inner join Appointments
on Doctors.DoctorID=Appointments.DoctorID;

select * from Doctors left join Appointments
on Doctors.DoctorID=Appointments.DoctorID;

select * from Appointments right join Doctors
on Doctors.DoctorID=Appointments.DoctorID;

select Doctors.DoctorName,
        Doctors. Experience,
        Appointments.patientName
from Doctors
left join Appointments
on Doctors.DoctorID=Appointments.DoctorID
where Doctors.Experience > 8;

select * from Doctors left join Appointments
on Doctors.DoctorID=Appointments.DoctorID
where Appointments.fee > 1000;

select * from Doctors left join Appointments
on Doctors.DoctorID=Appointments.DoctorID
where Appointments.Status="Completed";

select Doctors.DoctorName,
       Doctors.Specialization
FROM Doctors
LEFT JOIN Appointments
ON Doctors.DoctorID = Appointments.DoctorID
WHERE Appointments.AppointmentID IS NULL; 


SELECT Doctors.DoctorName,
       SUM(Appointments.Fee) AS Total_fees
FROM Doctors
LEFT JOIN Appointments
ON Doctors.DoctorID = Appointments.DoctorID
GROUP BY Doctors.DoctorName
HAVING SUM(Appointments.Fee) IS NOT NULL;

SELECT Doctors.DoctorName,
       SUM(Appointments.Fee) AS Total_fees
FROM Doctors
LEFT JOIN Appointments
ON Doctors.DoctorID = Appointments.DoctorID
GROUP BY Doctors.DoctorName
HAVING SUM(Appointments.Fee) IS NOT null and 
sum(Appointments.Fee) > 1500;

SELECT Doctors.DoctorID,
       Doctors.Specialization,
       Appointments.PatientName,
       Appointments.Fee,
       Appointments.Status
FROM Doctors
LEFT JOIN Appointments
ON Doctors.DoctorID = Appointments.DoctorID
WHERE Appointments.Fee IS NOT NULL
ORDER BY Appointments.Fee DESC;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(50),
    Price INT
);

drop table sales;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    SaleDate DATE,
    SalesPerson VARCHAR(50)
);


INSERT INTO Products VALUES
(501, 'Laptop', 'Electronics', 65000),
(502, 'Smartphone', 'Electronics', 35000),
(503, 'Office Chair', 'Furniture', 12000),
(504, 'Desk', 'Furniture', 18000),
(505, 'Headphones', 'Accessories', 5000),
(506, 'Printer', 'Electronics', 22000),
(507, 'Keyboard', 'Accessories', 3000),
(508, 'Webcam', 'Accessories', 4500);

INSERT INTO Sales VALUES
(601, 501, 2, '2026-08-01', 'Arun'),
(602, 502, 5, '2026-08-02', 'Priya'),
(603, 503, 3, '2026-08-03', 'Rahul'),
(604, 501, 1, '2026-08-04', 'Meena'),
(605, 504, 4, '2026-08-05', 'Arun'),
(606, 505, 10, '2026-08-06', 'Karthik'),
(607, 506, 2, '2026-08-07', 'Priya'),
(608, 502, 3, '2026-08-08', 'Rahul'),
(609, 507, 15, '2026-08-09', 'Meena'),
(610, 509, 5, '2026-08-10', 'Arun');

select * from Products;

select * from sales;

select products.productName,
       Products.Category,
       sales.Quantity,
       sales.salesperson
from Products
left join sales
on products.productID=Sales.ProductID
where sales.Quantity is not null;

SELECT Products.ProductName,
       Sales.Quantity,
       Products.Price,
       Sales.Quantity * Products.Price AS Total_Revenue
FROM Products
LEFT JOIN Sales
ON Products.ProductID = Sales.ProductID
where sales.Quantity is not NULL;

SELECT Products.Category,
       Sales.Quantity,
       Products.Price,
       Sales.Quantity * Products.Price AS Total_Revenue
FROM Products
LEFT JOIN Sales
ON Products.ProductID = Sales.ProductID
where sales.Quantity is not NULL;

SELECT Products.ProductName,
       SUM(Sales.Quantity * Products.Price) AS Total_Revenue
FROM Products
INNER JOIN Sales
ON Products.ProductID = Sales.ProductID
GROUP BY Products.ProductName
ORDER BY Total_Revenue DESC
LIMIT 1;

SELECT Sales.SalesPerson,
       SUM(Sales.Quantity * Products.Price) AS Total_Revenue
FROM Products
INNER JOIN Sales
ON Products.ProductID = Sales.ProductID
GROUP BY Sales.SalesPerson
ORDER BY Total_Revenue DESC;

SELECT Products.ProductName,
       Products.Category,
       Products.Price
FROM Products
LEFT JOIN Sales
ON Products.ProductID = Sales.ProductID
WHERE Sales.ProductID IS NULL;

select products.productName,
       sum(sales.Quantity*products.price) as Total_Revenue
from Products
left join sales
on products.Productid=sales.productID
group by products.productName
having sum(sales.Quantity*products.price) > 50000;

select Products.Category,
       sum(sales.Quantity*products.price) as Total_Revenue
from products
left join sales
on products.productID=sales.productID
group by Products.Category
order by sum(sales.Quantity*products.price) desc;

SELECT Sales.SalesPerson,
       SUM(Sales.Quantity * Products.Price) AS Total_Revenue
FROM Products
LEFT JOIN Sales
ON Products.ProductID = Sales.ProductID
where Sales.Quantity is not null
GROUP BY Products.Category, Sales.SalesPerson
ORDER BY Total_Revenue desc;
 
select Products.Category,
       sum(sales.Quantity*products.price) as Total_Revenue
from products
left join sales
ON Products.ProductID = Sales.ProductID
group by Products.Category
having sum(sales.Quantity*products.price) > 100000;


SELECT Products.ProductName,
       Sales.SalesPerson,
       Sales.Quantity
FROM Products
LEFT JOIN Sales
ON Products.ProductID = Sales.ProductID

UNION

SELECT Products.ProductName,
       Sales.SalesPerson,
       Sales.Quantity
FROM Products
RIGHT JOIN Sales
ON Products.ProductID = Sales.ProductID;


SELECT  * FROM Products
CROSS JOIN Sales;

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50),
    DepartmentID INT
);

drop table Employees;
drop table Departments;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50),
    Location VARCHAR(50)
);

INSERT INTO Employees VALUES
(101, 'Arun', 1),
(102, 'Bala', 2),
(103, 'Charan', 3),
(104, 'Deepak', 1),
(105, 'Ezhil', 4),
(106, 'Gokul', NULL);

INSERT INTO Departments VALUES
(1, 'Data Analytics', 'Coimbatore'),
(2, 'Finance', 'Chennai'),
(3, 'Human Resources', 'Bangalore'),
(4, 'Marketing', 'Madurai'),
(5, 'Information Technology', 'Hyderabad');

select * from Employees;

select * from Departments;


select * from employees cross join departments;

SELECT 
    Employees.EmployeeName,
    Departments.DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;

select * from Employees left join Departments
on Employees.DepartmentID=Departments.DepartmentID;


select * from Employees right join Departments
on Employees.DepartmentID=Departments.DepartmentID;

SELECT 
    Employees.EmployeeName,
    Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'Data Analytics';


select Employees.EmployeeName,
       Departments.DepartmentName,
       Departments.Location
from Employees
left join Departments
on Employees.DepartmentID=Departments.DepartmentID
where Departments.Location="Coimbatore";

SELECT 
    Employees.EmployeeName,
    Departments.DepartmentName,
    Departments.Location
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;


select * from Employees left join Departments
on Employees.DepartmentID=Departments.DepartmentID
where Departments.DepartmentName is null;


SELECT 
    Departments.DepartmentName
FROM Departments
LEFT JOIN Employees
ON Departments.DepartmentID = Employees.DepartmentID
WHERE Employees.EmployeeID IS NULL;


SELECT 
    Employees.EmployeeName,
    Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
WHERE Departments.DepartmentName = 'Finance'
   OR Departments.DepartmentName = 'Marketing';

SELECT 
    Employees.EmployeeName,
    Departments.DepartmentName
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
ORDER BY Departments.DepartmentName;

SELECT
    Departments.DepartmentName,
    COUNT(Employees.EmployeeID) AS No_of_Employee
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY Departments.DepartmentName
having Departments.DepartmentName is  not null;


SELECT
    Departments.DepartmentName,
    COUNT(Employees.EmployeeID) AS No_of_Employee
FROM Employees
LEFT JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID
GROUP BY Departments.DepartmentName
having count(Employees.EmployeeID)>1;


SELECT
    Departments.DepartmentName,
    COUNT(Employees.EmployeeID) AS No_of_Employees
FROM Departments
LEFT JOIN Employees
ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY Departments.DepartmentName
ORDER BY No_of_Employees DESC
LIMIT 1;


SELECT
    Departments.DepartmentName,
    Departments.Location,
    COUNT(Employees.EmployeeID) AS no_of_Employees
FROM Departments
LEFT JOIN Employees
ON Departments.DepartmentID = Employees.DepartmentID
GROUP BY
    Departments.DepartmentName,
    Departments.Location
ORDER BY no_of_Employees DESC;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(50),
    Amount INT
);

drop table sales;
drop table customers;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Sales VALUES
(1001, 201, 'Laptop', 55000),
(1002, 202, 'Monitor', 22000),
(1003, 203, 'Keyboard', 5000),
(1004, 204, 'Printer', 18000),
(1005, 201, 'Mouse', 2500),
(1006, 205, 'Laptop', 60000),
(1007, 202, 'Headset', 4500),
(1008, 206, 'Tablet', 30000);

INSERT INTO Customers VALUES
(201, 'Karthik', 'Coimbatore'),
(202, 'Rahul', 'Chennai'),
(203, 'Sanjay', 'Bangalore'),
(204, 'Vijay', 'Madurai'),
(205, 'Arun', 'Salem'),
(207, 'Prakash', 'Trichy');

select * from sales;

select * from customers;

select * from sales left join customers
on sales.customerID=customers.CustomerID;

select * from sales right join customers
on sales.customerID=customers.CustomerID;

select * from sales inner join customers
on sales.customerID=customers.CustomerID;

select * from sales cross join customers;

SELECT 
    Customers.CustomerName,
    Customers.City,
    Sales.Amount
FROM Sales
LEFT JOIN Customers
ON Sales.CustomerID = Customers.CustomerID
WHERE Customers.CustomerName IS NOT NULL;

SELECT
    Customers.CustomerName,
    Customers.City
FROM Customers
LEFT JOIN Sales
ON Customers.CustomerID = Sales.CustomerID
WHERE Sales.SaleID IS NULL;

SELECT
    Customers.City,
    SUM(Sales.Amount) AS Total_Revenue
FROM Sales
LEFT JOIN Customers
ON Sales.CustomerID = Customers.CustomerID
GROUP BY Customers.City
HAVING SUM(Sales.Amount) > 20000;

SELECT
    Customers.CustomerName,
    Customers.City,
    COUNT(Sales.SaleID) AS No_of_Orders,
    SUM(Sales.Amount) AS Total_Amount
FROM Customers
LEFT JOIN Sales
ON Customers.CustomerID = Sales.CustomerID
GROUP BY
    Customers.CustomerName,
    Customers.City;

SELECT
    Customers.CustomerName,
    Customers.City,
    COUNT(Sales.SaleID) AS No_of_orders,
    SUM(Sales.Amount) AS Total_spending,
    AVG(Sales.Amount) AS Avg_order_value
FROM Customers
LEFT JOIN Sales
ON Sales.CustomerID = Customers.CustomerID
GROUP BY
    Customers.CustomerName,
    Customers.City
HAVING COUNT(Sales.SaleID) >= 2
ORDER BY Total_spending DESC
LIMIT 3;

SELECT
    Customers.CustomerName,
    Customers.City,
    COUNT(Sales.SaleID) AS No_of_orders,
    SUM(Sales.Amount) AS Total_spending
FROM Customers
LEFT JOIN Sales
ON Sales.CustomerID = Customers.CustomerID
GROUP BY
    Customers.CustomerName,
    Customers.City
HAVING COUNT(Sales.SaleID) >= 2
   AND SUM(Sales.Amount) > 30000
ORDER BY Total_spending DESC;



select *FROM Customers
LEFT JOIN Sales
ON Customers.CustomerID = Sales.CustomerID

UNION

select * FROM Customers
RIGHT JOIN Sales
ON Customers.CustomerID = Sales.CustomerID;
       

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(101, 'Arun', 'Chennai'),
(102, 'Priya', 'Coimbatore'),
(103, 'Karthik', 'Bangalore'),
(104, 'Divya', 'Chennai'),
(105, 'Rahul', 'Madurai'),
(106, 'Sneha', 'Coimbatore');

select * from Customers;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1001, 101, 'Laptop', 25000),
(1002, 102, 'Mobile', 18000),
(1003, 101, 'Headphones', 12000),
(1004, 103, 'Laptop', 30000),
(1005, 104, 'Office Chair', 15000),
(1006, 102, 'Headphones', 22000),
(1007, 105, 'Keyboard', 10000),
(1008, 103, 'Mobile', 27000);

select * from Orders;

select * from customers left join orders
on customers.customerID=Orders.CustomerID;

select * from customers right join orders
on customers.customerID=Orders.CustomerID;

select Customers.CustomerName,Customers.City,
       Orders.Product,
       Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID;


select * from customers cross join orders;

select * from customers left join orders 
on customers.CustomerID=orders.CustomerID 
union 
select * from customers right join orders 
on customers.CustomerID=orders.CustomerID;

SELECT
    Customers.CustomerName,
    COUNT(Orders.OrderID) AS OrderCount
FROM Customers
LEFT JOIN Orders
    ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
HAVING COUNT(Orders.OrderID) > 1;

SELECT Customers.CustomerName
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;

SELECT Customers.CustomerName,
       SUM(Orders.Amount) AS Total_Amount
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY SUM(Orders.Amount) DESC
LIMIT 2;


SELECT Customers.CustomerName,
       SUM(Orders.Amount) AS Total_Spending
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
HAVING SUM(Orders.Amount) >
       (SELECT AVG(Amount) FROM Orders);


select customers.city,
       Sum(Amount) as Total_Amount
from customers 
left join orders 
on customers.CustomerID=orders.CustomerID 
group by Customers.City 
order by Sum(Amount) desc 
limit 2;


SELECT Customers.CustomerName
FROM Customers
JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
HAVING SUM(Orders.Product = 'Laptop') > 0
   AND SUM(Orders.Product = 'Mobile') > 0;

SELECT Customers.CustomerName,
       Orders.Product,
       Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.Amount > (SELECT AVG(Amount)
                       FROM Orders);

SELECT Customers.CustomerName,
       Orders.Product,
       Orders.Amount
FROM Customers
INNER JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
ORDER BY Orders.Amount DESC
LIMIT 1;


select customers.CustomerName,
       sum(Amount) as Total_Spending
from customers 
left join orders
on customers.customerID=orders.CustomerID
group  by Customers.CustomerName
having sum(Amount) < 20000;


select customers.customerName,
       sum(Amount) as Total_spending
from customers 
left join orders 
on customers.customerID=orders.CustomerID
group by customers.customerName
order by sum(Amount) desc;





CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(50),
    City VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Arun', 'Coimbatore'),
(2, 'Rahul', 'Bangalore'),
(3, 'Priya', 'Chennai'),
(4, 'Kumar', 'Coimbatore');

drop table Customers;
drop table orders;

select * from customers;

CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    Amount INT
);

INSERT INTO Orders VALUES
(101, 1, 5000),
(102, 2, 3000),
(103, 1, 2000),
(104, 3, 4000);

select * from orders;



select * from customers left join orders
on customers.customerID=orders.customerID;

select * from customers right join orders
on customers.customerID=orders.customerID;

select * from customers inner join orders
on customers.customerID=orders.customerID;

select * from customers cross join orders;

select * from orders cross join customers;

select * from customers left join orders
on customers.customerID=orders.customerID
union
select * from customers right join orders
on customers.customerID=orders.customerID;







       


        
            





































































 









































































       



























       









































