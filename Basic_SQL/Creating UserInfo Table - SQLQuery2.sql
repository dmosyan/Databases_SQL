USE ISTC
--CREATING userInfo TABLE
CREATE TABLE [userInfo]
(
	firstName varchar(10),
	lastName varchar(12),
	Age int,
	dateOfBirth date,
	nationality varchar(57),
	isMarried bit
);

--CHECKING THE TABLE 
SELECT * FROM [dbo].[userInfo];

--FILLING THE ROWS WITH VALUES
INSERT INTO [dbo].[userInfo] (firstName, lastName, Age, dateOfBirth, nationality, isMarried)
VALUES ('Bob', 'Johnson', 49, '1970-12-31', 'USA', 1),
	   ('John', 'Charlie', 30, '1989-10-03', 'Canada', 0),
	   ('Shon', 'Morgan', 54, '1965-06-09', 'Mexico', 0)

--ADDING ADDITIONAL COLUMNS
ALTER TABLE [dbo].[userInfo]
ADD 
	education varchar(10),
	universityName varchar(81),
	isWorking bit,
	salary int;

--INSERTING ADDITIONAL COLUMNS VALUES
INSERT INTO [dbo].[userInfo] (education, universityName, isWorking, salary)
VALUES ('Master', 'Harvard', 1, 60000),
	   ('Bachelor', 'Oxford', 0, 0),
	   ('Associate', 'MIT', 1, 100000);

--DELETE FROM [dbo].[userInfo];

--CHANGING isMarried DATATYPE FROM BIT TO INT
ALTER TABLE [dbo].[userInfo]
ALTER COLUMN isMarried int;

