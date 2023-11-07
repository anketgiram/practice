if exists 
     (
	      select * from sys.objects where type = 'P' and OBJECT_ID = OBJECT_ID ('[dbo].[sp_updateproduct]')
     )
begin
     drop procedure [dbo].sp_updateproduct
end
go

Create Procedure [dbo].[sp_updateproduct]
        @pid int,
		@productname nvarchar(50),
		@price int,
		@avilableStatus nvarchar(50),
		@imageurl nvarchar(50),
		@isdelted int
As
begin 
    Update Products
	SET
	   ProductName = @productname,
	   price = @price,
	   @avilableStatus = @avilableStatus,
	   @imageurl = @imageurl,
	   @isdelted = 0
	   where pid = @pid
END
