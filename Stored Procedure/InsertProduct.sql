if exists
     (select 1 from sys.objects where type = 'P' and object_id = object_id('[dbo].[sp_insertproduct]')
	 )
begin
      drop procedure [dbo].[sp_insertproduct];
end 
go

Create Procedure [dbo].sp_insertproduct
	   @ProductName nvarchar,
	   @price int,
	   @avilableStatus nvarchar,
	   @imageurl nvarchar,
	   @isDeleted int
As
begin
     insert into Products
	         (productname, 
			  price,
			  avilableStatus,
			  imageUrl,
			  isDeleted)
	 values 
	        (@ProductName, @price, @avilableStatus, @imageurl, @isdeleted)
END
