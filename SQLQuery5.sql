/*SQL script is mostly correct and shows that you're trying to:

View your dataset.

Add an index column.

Clean and standardize values in the Depression column from numbers (0, 1) to meaningful labels (No, Yes).

Check the table structure.

Change the column data type.

Get a count of Yes/No values.*/

-- Step 1: View all data
SELECT * FROM [Depression+Student+Dataset];

-- Step 2: Add an index column to uniquely identify rows
ALTER TABLE [Depression+Student+Dataset]
ADD Index_Column INT IDENTITY(1,1);

-- Step 3: Convert numeric 'Depression' values to text (No for 0)
UPDATE [Depression+Student+Dataset]
SET Depression = 'No'
WHERE Depression = '0';

-- Step 4: Change column type to support text (if not already)
ALTER TABLE [Depression+Student+Dataset]
ALTER COLUMN Depression VARCHAR(MAX);

-- Step 5: Convert '1' values to 'Yes'
UPDATE [Depression+Student+Dataset]
SET Depression = 'Yes'
WHERE Depression = '1';

-- Step 6: Check table schema (column info)
SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_NAME = 'Depression Student Dataset';

-- Step 7: Get count of Yes/No in Depression column
SELECT Depression, COUNT(*) AS [Count]
FROM [Depression+Student+Dataset]
GROUP BY Depression;
