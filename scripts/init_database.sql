/* The Project Blueprint: Building the Great Library
    -----------------------------------------------
    As a Data Analyst, I know that raw data is like unorganized scrolls 
    scattered across different kingdoms (CRM and ERP). To find the truth, 
    we need a central place to store them.

    This script initializes our 'Great Library' (The Data Warehouse). 
    We use a three-layer schema approach to ensure the data is never 
    lost, always clean, and ready for the King's ministers (Business BI).
*/

-- 1. Create the Warehouse building
-- Execute this first while connected to the default 'postgres' system
CREATE DATABASE "DataWarehouse";

/* ANALYST NOTE: 
   Postgres requires a new connection to enter the building. 
   In DBeaver, switch your active database to 'DataWarehouse' 
   before running the code below.
*/

-- 2. Create the rooms (Schemas) for our data lifecycle
CREATE SCHEMA IF NOT EXISTS bronze; -- The Landing Zone: Where raw scrolls are kept
CREATE SCHEMA IF NOT EXISTS silver; -- The Cleaning Room: Where we translate and fix errors
CREATE SCHEMA IF NOT EXISTS gold;   -- The Gallery: Where final insights are displayed

-- 3. Verify the foundation is solid
SELECT schema_name 
FROM information_schema.schemata 
WHERE schema_name IN ('bronze', 'silver', 'gold');

-- The foundation is ready. Time to start the first raw ingestion.
