------------------------------------------------------------------------------

---NAME: EC_IT143_W5.2_My_Samsung_iPhone_Specifications_mn

---PURPOSE:
---This script answers questions about Samsung Mobile Phones
---using the Samsung_iPhone_Specifications dataset.
--------------------------------------------------------------------------------
---MODIFICATION LOG:
---Ver     Date         Author          Description
-----   ----------   --------------  ------------------------------------------
---1.0     11/24/2026   Melvin Nkandu   Created Deliverable 5.2. SQL script
--------------------------------------------------------------------------------


--NOTES:
--This script was created for IT143 Deliverable 5.2.
--The dataset contains Samsung smartphone specifications including
--price, RAM, storage, battery capacity, screen size, camera resolution,
--and release year.

------------------------------------------------------------------------------
-- Question 1
-- Original Author:Melvin Nkandu
-- Which Samsung model has the highest battery capacity and what storage and
-- RAM specifications does it provide?
------------------------------------------------------------------------------

SELECT TOP 1
    modelName,
    BatteryCapacity,
    Storage,
    RAM
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand = 'Samsung'
ORDER BY BatteryCapacity DESC;
GO

------------------------------------------------------------------------------
-- Question 2
-- Original Author: Melvin Nkandu
-- Which Samsung models released most recently have the highest prices?
------------------------------------------------------------------------------

SELECT
    modelName,
    ReleaseYear,
    Price
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand = 'Samsung'
ORDER BY ReleaseYear DESC, Price DESC;
GO

------------------------------------------------------------------------------
-- Question 3
-- Original Author: Melvin Nkandu
-- Do higher-priced Samsung models offer greater RAM and storage capacity
-- than lower-priced models?
------------------------------------------------------------------------------

SELECT
    modelName,
    Price,
    RAM,
    Storage
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand = 'Samsung'
ORDER BY Price DESC;
GO

------------------------------------------------------------------------------
-- Question 4
-- Original Author: Student (Jeffrey David Evans)
-- Which Samsung Galaxy smartphone model offers the best combination of price, storage capacity
-- and battery capacity?
------------------------------------------------------------------------------

SELECT
    modelName,
    Price,
    Storage,
    BatteryCapacity
FROM dbo.Samsung_iPhone_Specifications
WHERE Brand = 'Samsung'
ORDER BY Price ASC,
         Storage DESC,
         BatteryCapacity DESC;
GO

