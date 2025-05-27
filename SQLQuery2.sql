-- Step 1: Count the number of entries per unique gender value.
-- This helps to identify inconsistent or unexpected values in the Gender column.
SELECT Gender, COUNT(*) 
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Gender;

-- Step 2: Standardize the Gender value.
-- Change 'Female' to 'F' for consistency.
UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'F' 
WHERE Gender = 'Female';

-- Step 3: Standardize the Gender value.
-- Change 'male' (lowercase) to 'M' for consistency.
UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'M' 
WHERE Gender = 'male';

-- Optional cleanup (uncomment if needed):
-- This will handle other casing issues, like 'Male' or 'female'.
-- UPDATE [dbo].[Depression Student Dataset]
-- SET Gender = 'M'
-- WHERE LOWER(Gender) = 'male';

-- UPDATE [dbo].[Depression Student Dataset]
-- SET Gender = 'F'
-- WHERE LOWER(Gender) = 'female';

-- Step 4: Select all rows where Gender is NULL (missing).
-- These are cases where the gender information was not entered at all.
SELECT * 
FROM [dbo].[Depression+Student+Dataset]
WHERE Gender IS NULL;

-- Step 5: Select all rows where Gender is an empty string.
-- These are cases where the field was entered but left blank.
SELECT * 
FROM [Depression+Student+Dataset]
WHERE Gender = '';

-- Optional cleanup (uncomment if needed):
-- Convert empty string gender values to NULL for consistency.
-- UPDATE [dbo].[Depression Student Dataset]
-- SET Gender = NULL
-- WHERE Gender = '';
