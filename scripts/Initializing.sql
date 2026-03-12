/*
Script Purpose:
this scripts create a new database named 'DataWarehouse' and three schemas named
if the database exits , it is  dropped and recreated aditionally the scripts set up three schemas named bronze, silver and gold

Warning:
Executing this script will drop the existing 'DataWarehouse' database if it exists, resulting in the loss of all data and objects contained within it. Ensure that you have backed up any important data before running this script.
ENSURE YOU HAVE THE NECESSARY PERMISSIONS TO CREATE AND DROP DATABASES ON THE SERVER BEFORE EXECUTING THIS SCRIPT.

*/


use master;
go

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
     alter database DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
     drop database DataWarehouse;
END;
GO




create database DataWarehouse;
go



use DataWarehouse;
go


create Schema bronze;
go
create schema silver;
go 
create schema gold;
