------------------------------------------------------------------------------

---NAME: EC_IT143_W5.2_My_Samsung_iPhone_Specifications_mn

---PURPOSE:
---This script answers questions about Apple iPhones
---using the Samsung_iPhone_Specifications dataset.
--------------------------------------------------------------------------------
---MODIFICATION LOG:
---Ver     Date         Author          Description
-----   ----------   --------------  ------------------------------------------
---1.0     11/24/2026   Melvin Nkandu   Created Deliverable 5.2. SQL script
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- NOTES:
-- This script was created for IT143 Deliverable 5.2.
-- The dataset contains Apple iPhone specifications including price, RAM,
-- storage, battery capacity, screen size, camera resolution and release year.

------------------------------------------------------
-- Question 1
-- Original Author: Melvin Nkandu
-- Which iPhone model has the highest price and what are its technical
-- specifications?
------------------------------------------------------------------------------

SELECT TOP 1
    modelName,
    Price,
    RAM,
    Storage,
    BatteryCapacity,
    ScreenSize,
    CameraMP
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand = 'Apple'
ORDER BY Price DESC;
GO

------------------------------------------------------------------------------
-- Question 2
-- Original Author: Melvin Nkandu
-- Which iPhone models released after 2020 offer the largest storage
-- capacities?
------------------------------------------------------------------------------

SELECT
    modelName,
    ReleaseYear,
    Storage
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand = 'Apple'
AND ReleaseYear > 2020
ORDER BY Storage DESC;
GO

------------------------------------------------------------------------------
-- Question 3
-- Original Author: Melvin Nkandu
-- Is there a relationship between iPhone price and battery capacity
-- across models?
------------------------------------------------------------------------------

SELECT
    modelName,
    Price,
    BatteryCapacity
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand = 'Apple'
ORDER BY Price DESC;
GO

------------------------------------------------------------------------------
-- Question 4
-- Original Author: Student (Faith Nnadi)
-- Which smartphone models from Samsung and Apple have the highest battery capacity
-- and how do their prices compare?
------------------------------------------------------------------------------

SELECT
    Brand,
    modelName,
    BatteryCapacity,
    Price
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand IN ('Samsung', 'Apple')
ORDER BY BatteryCapacity DESC,
         Price DESC;
GO