CREATE DATABASE Relationships

--- One-To-One relationships

CREATE TABLE dbo.Person
(
	PK_Person_ID INT IDENTITY PRIMARY KEY,
	Name varchar(255),
	EmailID varchar(255),
);

CREATE TABLE dbo.Passport
(
	PK_Passport_ID INT PRIMARY KEY,
	Passport_Number varchar(255),
	FK_Passport_ID INT UNIQUE FOREIGN KEY REFERENCES dbo.Person(Pk_Person_ID),
);

INSERT INTO dbo.Person VALUES ('John','john@email.com');
INSERT INTO dbo.Person VALUES ('Bob', 'bob@email.com');
INSERT INTO dbo.Person VALUES ('Bill', 'bill@email.com');
INSERT INTO dbo.Person VALUES ('Tom', 'tom@email.com');
GO

INSERT INTO dbo.Passport VALUES (101, 'KP27370909', 1);
INSERT INTO dbo.Passport VALUES (102, 'KP27370910', 2);
INSERT INTO dbo.Passport VALUES (103, 'KP27370911', 3);
INSERT INTO dbo.Passport VALUES (104, 'KP27370912', 4);
-- INSERT INTO dbo.Passport VALUES (105, 'KP27370913', 4); Getting ERROR 
GO

SELECT * FROM dbo.Person;
SELECT * FROM dbo.Passport;

-- One-to-One Relationship is implemented using dbo.Person(Pk_Person_Id) as the Primary key 
-- and dbo.PassportDetails(fk_person_id) as (Unique Key Constraint-Foreign Key).
--------------------------------------------------------------------------------------------

-- One - Many Relationships

CREATE TABLE dbo.Books
(
 Pk_Book_Id INT PRIMARY KEY,
 Name varchar(255),
 ISBN varchar(255),
 );

CREATE TABLE dbo.Author
(
 Pk_Author_Id INT PRIMARY KEY,
 FullName varchar(255),
 MobileNumber char(10),
 Fk_Book_Id INT FOREIGN KEY REFERENCES Books(Pk_Book_Id),
);

INSERT INTO dbo.Books VALUES (1, 'Harry Potter', 'ISBN123456');
INSERT INTO dbo.Books VALUES (2, 'Let it Snow', 'ISBN123457');
GO

INSERT INTO dbo.Author VALUES (101, 'J.K. Rowling', '+1234567', 1);
INSERT INTO dbo.Author VALUES (102, 'Bob Smith', '+1234987', 1);
INSERT INTO dbo.Author VALUES (103, 'John Green', '+1234869', 1);
INSERT INTO dbo.Author VALUES (104, 'K.M.N.', '+1234172', 2);
INSERT INTO dbo.Author VALUES (105, 'Y.R.P', '+1234760', 2);
GO

SELECT * FROM dbo.Author;
SELECT * FROM dbo.Books;

-- One-to-Many Relationship is implemented using dbo.Book(Pk_Book_Id) as the Primary Key and dbo.Author (Fk_Book_Id) as (Foreign Key). Thus, it will always have only 
-- One-to-Many (One Book-Multiple Authors) matching rows between the Book-Author table based on the dbo.Book (Pk_Book_Id)-dbo.Author(Fk_Book_Id) relationship.
