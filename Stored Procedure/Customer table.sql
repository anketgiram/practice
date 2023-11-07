Create Table Customer
( customerid int PRIMARY KEY,
  customername varchar(50),
  email_id nvarchar(50),
  mobile_number nvarchar(10),
  phone_number nvarchar(10)
  )


Alter table Customer
Add address nvarchar(50)

Alter table Customer
Add city nvarchar(50)


ALTER TABLE Customer
Add city nvarchar(50),
Add column2_name datatype2,
ADD column3_name datatype3;
