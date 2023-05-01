                 -----------Data Insert Procedure for Tables-----------
/*
Create Proc SpCustomers 
						@id int,
						@name nvarchar(50)
As
	Insert into customers values (@id,@name)
Go
Exec spCustomer 1,'Taijul'
Go
Create Proc spSale
						@id int,
						@sd date,
						@cid int
As
	Insert into Sales values (@id,@sd,@cid)
Go
Exec spSale 1,'2023-02-25',1
Go
Create Proc SpAuthors 
							@id int,
							@name nvarchar(50),
							@a nvarchar(50)
As
	Insert into Authors values (@id,@name,@a)
Go
Exec SpAuthors 1,'Taijul','Gulisthan'
Go
Create Proc spGenres 
						@id int,
						@name nvarchar(50)
As
	Insert into Genres values (@id,@name)
Go
Exec spGenres 1,'Taijul'
Go
Create Proc spPublishers
						@id int,
						@name nvarchar(50)
As
	Insert into Publishers values (@id,@name)
Go
Exec spPublishers 1,'Tawhid Publication'
Go
Create Proc spBooks
						@id int,
						@title nvarchar(50),
						@price money,
						@pdate date,
						@pid int,
						@gid int
As
	Insert into Books values (@id,@title,@price,@pdate,@pid,@gid)
Go
Exec spBooks 1,'Quaran Quarim',1000,'2023-01-01',1,1
Go
Create Proc spSalesDetails
						@nb nvarchar(40),
						@sid int,
						@bid int
As
	Insert into Sales_Details values (@nb,@sid,@bid)
Go
Exec spSalesDetails 100,1,1
Go
Create Proc spBoolAuthors
						@aid int,
						@bid int

As
	Insert into Book_Authors values (@aid,@bid)
Go
Exec spBoolAuthors 1,1
Go

                -----------Data update Procedure for Tables--------------
Go
Create Proc spCustomer_update 
							@id int
As
	Begin
		Update Customers
	    set CustomerName='Saiful'
		where @id=CustomerID
	End
Go
Exec spCustomer_update @id=1
Go
Create Proc spSales_update 
							@id int
As
	Begin
		Update Sales
	    set SalesDate='2023-01-01'
		where @id=SalesID
	End
Go
Exec spSales_update @id=1
Go
Create Proc spAuthors_update 
							@id int
As
	Begin
		Update Authors
	    set Authorname='Taijul'
		where @id=Authorid
	End
Go
Exec spAuthors_update @id=1
Go
Create Proc spGenres_update 
							@id int
As
	Begin
		Update Genres
	    set GenreName='Novel'
		where @id=GenreID
	End
Go
Exec spGenres_update @id=1
Go
Create Proc spPublishers_update 
							@id int
As
	Begin
		Update Publishers
	    set PublisherName='At-Tawhid'
		where @id=PublisherID
	End
Go
Exec spPublishers_update @id=1
Go
Create Proc spBook_update 
							@id int
As
	Begin
		Update Books
	    set Title='Quran-Quarim'
		where @id=Bookid
	End
Go
Exec spBook_update @id=1
Go
Create Proc spSalesd_Details_update 
							       @sid int
As
	Begin
		Update Sales_Details
	    set Number_of_Books=100
		where @sid=SalesID
	End
Go
Exec spSalesd_Details_update @sid=1
Go
Create Proc spBook_author_update
							    @id int
As
	Begin
		Update Book_Authors
	    set Authorid=1
		where @id=Authorid
	End
Go
Exec spBook_author_update @id=1
Go
                 -----------Data Delete Procedure for Tables-----------------

Create proc sp_Customer_delete 
							@id int
As
	Begin
		delete Customers
		where @id=CustomerID
	End
Go
Exec sp_Customer_delete @id=1
Go
Create proc sp_Sales_delete 
							@id int
As
	Begin
		delete Sales
		where @id=SalesID
	End
Go
Exec sp_Sales_delete @id=1
Go
Create proc sp_Authors_delete 
							@id int
As
	Begin
		delete Authors
		where @id=Authorid
	End
Go
Exec sp_Authors_delete @id=1
Go
Create proc sp_Genres_delete 
							@id int
As
	Begin
		delete Genres
		where @id=GenreID
	End
Go
Exec sp_Genres_delete @id=1
Go
Create proc sp_Publishers_delete 
							@id int
As
	Begin
		delete Publishers
		where @id=PublisherID
	End
Go
Exec sp_Publishers_delete @id=1
Go
Create proc sp_Books_delete 
							@id int
As
	Begin
		delete Books
		where @id=Bookid
	End
Go
Exec sp_Books_delete @id=1
Go
Create proc sp_sales_Details_delete 
							@nb Nvarchar(40)
As
	Begin
		delete Sales_Details
		where @nb=Number_of_Books
	End
Go
Exec sp_sales_Details_delete @nb=100
Go
Create proc sp_Book_Author_delete 
							@aid int
As
	Begin
		delete Book_Authors
		where @aid=Authorid
	End
Go
Exec sp_Book_Author_delete @aid=1
Go
*/