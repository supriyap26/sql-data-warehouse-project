/*
===============================================================
Create Database and Schemas
===============================================================
Script purpose
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the Database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanantly deleted . Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

--Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.database WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DatawareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DatawareHouse;
END;
GO
    
--Create the 'DataWarehouse' Database
Create Database DataWarehouse;
GO

USE DataWarehouse;
GO

--Create Schema
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO
  
CREATE SCHEMA gold;
