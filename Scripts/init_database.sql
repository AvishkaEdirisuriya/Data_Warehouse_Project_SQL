/*

==========================================
Create New DataBase and Schemas
==========================================

Purpose of the script:
	The script initializes a database named DataWarehouse and configures the bronze, silver, and gold schemas.
*/

-- Switching to Master --

USE master;
GO

-- Create DataBase (DataWarehouse) -- 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
