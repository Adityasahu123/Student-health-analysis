-- Step 1: Count how many records exist for each age, ordered descending
SELECT age, COUNT(*) AS [Count]
FROM [dbo].[Depression+Student+Dataset]
GROUP BY age
ORDER BY age DESC;

-- Step 2: Add a new column for age group classification
ALTER TABLE[dbo].[Depression+Student+Dataset]
ADD Age_Group VARCHAR(MAX);

-- Step 3: View the data after adding the column (optional check)
SELECT * FROM [dbo].[Depression+Student+Dataset]

-- Step 4: Update the Age_Group column with proper age classifications
UPDATE [dbo].[Depression+Student+Dataset]
SET Age_Group = 
    CASE 
        WHEN Age BETWEEN 18 AND 24 THEN 'A1'
        WHEN Age BETWEEN 25 AND 30 THEN 'A2'
        ELSE 'A3'
    END;

-- Step 5: Get a count of records per age group
SELECT Age_Group, COUNT(*) AS [Count]
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Age_Group;
