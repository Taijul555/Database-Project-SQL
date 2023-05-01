Create Database Booksells
On
( Name= 'Booksells_Data',
Filename='C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Booksells_data.mdf',
Size=100mb,
Maxsize=500mb,
Filegrowth=5%
)
Log On
(
Name= 'Booksells_Log',
Filename='C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\Booksells_Log.ldf',
Size=20mb,
Maxsize=50mb,
Filegrowth=2%
)
Go
Use Booksells
Go
Create Table Customers
(
CustomerID int primary key,
CustomerName nvarchar(50) not null
)
Go
Create Table Sales
(
SalesID INT PRIMARY KEY,
SalesDate date not null,
Customerid int not null references customers(customerid)
)
Go
Create Table Authors
(
Authorid int primary key,
Authorname nvarchar(50) not null,
[Address] nvarchar(50) not null
)
Go
Create Table Genres
(
GenreID int primary key,
GenreName nvarchar(50) not null
)
Go
Create Table Publishers
(
PublisherID int primary key,
PublisherName nvarchar(50) not null
)
Go
Create Table Books
(
Bookid int primary key,
Title nvarchar(50) not null,
Price money not null,
PublishDate date not null,
PublisherID int not null references Publishers(PublisherID),
GenreID int not null references Genres(GenreID)
)
Go
Create Table Sales_Details
(
Number_of_Books nvarchar(40),
SalesID  int not null references Sales(SalesID),
Bookid int not null references Books(Bookid),
Primary Key(SalesID,Bookid)
)
Go
Create Table Book_Authors
(
Authorid INT not null references Authors(Authorid) ,
Bookid  INT not null references Books(Bookid),
Primary Key (Authorid,Bookid)
)
Go
