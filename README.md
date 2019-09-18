# Databases_SQL
🛠 Structured Query Language(SQL) 🔑 as we all know is the database language by the use of which we can perform certain operations on the existing database and also we can use this language to create a database.

![sql-server-queries](https://user-images.githubusercontent.com/33767811/65128980-80afa180-da0b-11e9-84d5-70a5e4057d65.jpg)

## Database Definitions

**RDBMS (Relational Database Management System)** – Software that stores and manipulates data arranged in
relational database tables

**Table** – A set of data arranged in columns and rows. The columns represent characteristics of stored 
data and the rows represent actual data entries.


SQL uses certain commands like Create, Drop, Insert etc. to carry out the required tasks.

These SQL commands are mainly categorized into four categories as:

- DDL – Data Definition Language
- DQl – Data Query Language
- DML – Data Manipulation Language
- DCL – Data Control Language

**DDL(Data Definition Language)** : DDL or Data Definition Language actually consists of the SQL commands that can be used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database.

**DQL (Data Query Language)** : DML statements are used for performing queries on the data within schema objects. The purpose of DQL Command is to get some schema relation based on the query passed to it.

**DML(Data Manipulation Language)** : The SQL commands that deals with the manipulation of data present in the database belong to DML or Data Manipulation Language and this includes most of the SQL statements.

**DCL(Data Control Language)** : DCL includes commands such as GRANT and REVOKE which mainly deals with the rights, permissions and other controls of the database system.

## DATA TYPES IN SQL 
In SQL we have more than 40 different data types. But these seven are the most important ones: 
1. **Integer**. A whole number without a fractional part. E.g. 1, 156, 2012412
2. **Decimal**. A number with a fractional part. E.g. 3.14, 3.141592654, 961.1241250
3. **Boolean**. A binary value. It can be either TRUE or FALSE.
4. **Date**. Speaks for itself. You can also choose the format. E.g. 2017-12-31
5. **Time**. You can decide the format of this, as well. E.g. 23:59:59
6. **Timestamp**. The date and the time together. E.g. 2017-12-31 23:59:59
7. **Text**. This is the most general data type. But it can be alphabetical letters only,
or a mix of letters and numbers and any other characters. E.g. hello, R2D2,
Tomi, 124.56.128.41

## BASE QUERY
```SELECT * FROM table_name;```
This query returns every column and every row of the table called table_name. 

```SELECT * FROM table_name LIMIT 10;```
It returns every column and the first 10 rows from table_name.

```SELECT column1, column2, column3 FROM table_name;```
This query returns every row of column1, column2 and column3 from table_name.

```SELECT * FROM table_name WHERE column1 = 'expression';```
"Horizontal filtering." This query returns every column from table_name - but only
those rows where the value in column1 is 'expression'. Obviously this can be
something other than text: a number (integer or decimal), date or any other data
format, too. 

## Comparison operators
help you compare two values. (Usually a value that you define in your query and values 
that exist in your SQL table.) Mostly, they are mathematical symbols, with a few exceptions:

| Operator | What does it mean |
| --- | --- |
| = | Equal to |
| <> | Not equal to |
| != | Not equal to |
| < | Less than |
| <= | Less than or equal to |
| > | Greater than |
| >= | Greater than or equal to |
| LIKE ‘%expression%’ | Contains ‘expression’ |
| IN (‘exp1’, ‘exp2’, ‘exp3’) | Contains any of ‘exp1’, ‘exp2’, or ‘exp3’ |

```SELECT * FROM table_name WHERE column1 != 'expression';```
This query returns every column from table_name, but only those rows where the value in 
column1 is NOT 'expression'.

```SELECT * FROM table_name WHERE column2 >= 10;```
It returns every column from table_name, but only those rows where the value in
column2 is greater or equal to 10.

```SELECT * FROM table_name WHERE column3 LIKE ‘%xzy%’;```
It returns every column from table_name, but only those rows where the value in
column3 contains the 'xyz' string.

You can use more than one condition to filter. For that, we have two logical
operators: **OR**, **AND**.

```SELECT * FROM table_name WHERE column1 != ‘expression’ AND column3 LIKE ‘%xzy%’;```
This query returns every column from table_name, but only those rows where the
value in column1 is NOT ‘expression’ AND the value in column3 contains the 'xyz'
string. 
