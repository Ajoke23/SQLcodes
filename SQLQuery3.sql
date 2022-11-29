USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name= N'CompanyDB'
   )
CREATE DATABASE [CompanyDB]
GO

USE [CompanyDB]
IF OBJECT_ID('dbo.staff', 'U') IS NOT NULL
DROP TABLE dbo.staff
GO

CREATE TABLE dbo.staff (
staff_id int,
staff_surname varchar(225), 
staff_othername varchar(225),
age int, 
staff_designation varchar(225)
);
INSERT INTO  dbo.staff VALUES ('601', 'Anderson', 'Benjamin', '23', 'Mr');
INSERT INTO  dbo.staff VALUES ('602', 'Benard', 'Thompsom', '52', 'Mr');
INSERT INTO  dbo.staff VALUES ('603', 'Pepple', 'Gideon', '28', 'Mr');
INSERT INTO  dbo.staff VALUES ('604', 'Brown', 'Benson','33', 'Mr');
INSERT INTO  dbo.staff VALUES ('605', 'Leverett', 'Catherine', '58', 'Miss');
GO

CREATE TABLE dbo.department (
dept_id int,
deptName varchar(225),
deptFunction varchar(225)
);
INSERT INTO dbo.department VALUES ('1', 'Admin', 'Oversee the affairs of CSC Company');
INSERT INTO dbo.department VALUES ('2', 'HR', 'Helps in maximizing employee performance');
INSERT INTO dbo.department VALUES ('3', 'HSE', 'Incharge in the safety rules and regulations of the organization');
INSERT INTO dbo.department VALUES ('4', 'Account', 'Oversee the daily fund entering the organization');
INSERT INTO dbo.department VALUES ('5', 'Oil and gas', 'Help in monitoring protroleum product');
GO

CREATE TABLE dbo.attendance (
staff_id int,
dept_id int, 
dateClocked Date, 
timeClocked Time
);
INSERT INTO dbo.attendance VALUES ('601','1','2019-10-21','14.30 PM');
INSERT INTO dbo.attendance VALUES ('602','2','2019-10-21','7.30 AM');
INSERT INTO dbo.attendance VALUES ('603','3','2019-10-21','16.30 PM');
INSERT INTO dbo.attendance VALUES ('604','4','2019-10-21','18.45 PM');
INSERT INTO dbo.attendance VALUES ('605','5','2019-10-21','7.15 AM');
GO

SELECT * FROM [CompanyDB].[dbo].[staff];
SELECT * FROM [CompanyDB].[dbo].[department]

SELECT staff_surname,staff_othername,deptName
FROM staff LEFT JOIN department
ON staff.staff_id