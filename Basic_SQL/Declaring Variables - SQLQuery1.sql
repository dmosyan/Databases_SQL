CREATE DATABASE ISTC;
USE ISTC;

DECLARE @Name VARCHAR(15)
SET @Name = 'John'
PRINT @Name;
SET @Name = 'Bob'
PRINT @Name;
--John
--Bob

DECLARE @Age Int
SET @Age = 35;
PRINT @Age 

DECLARE @Date DATETIME
SET @Date = '2019-05-29'
PRINT @Date;
--May 29 2019 12:00AM
SET @Date = @Date + '09:30:00'
PRINT @Date;
--May 29 2019 9:30AM

--Generate random 6 digit random ID
DECLARE @Id Int
SET @Id  = abs(checksum(NewId()) % 1000000)
Print @Id;
--546933

DECLARE @isMarried Bit
SET @isMarried = 'True'
print @isMarried;

DECLARE @Timestampp DATETIME = GETDATE()
print @Timestampp;
--Sep 18 2019  1:35PM