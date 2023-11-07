if exists 
      ( select * from sys.objects where type = 'P' and name = 'sp.updateProduct')  
begin
     drop procedure sp.updateProduct
end
go

Create procedure [sp.updateProduct]
     @pid int,
     @ProductName varchar,
	 @price int,
	 @avilableStatus varchar,
	 @imageurl varchar,
	 @isdeleted int
as
begin
     update Products
	 set 
	     ProductName = @ProductName,
		 price = @price,
		 avilableStatus = @avilableStatus,
		 imageurl = @imageurl,
		 isdeleted = @isdeleted
     where 
	     pid = @pid
END