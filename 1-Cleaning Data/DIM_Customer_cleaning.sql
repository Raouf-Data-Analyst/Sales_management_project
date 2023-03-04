-- Clean DimCustomer table --
SELECT 
  [CustomerKey] as CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  [FirstName] as [First Name], 
  --,[MiddleName]
  [LastName] as [Last Name], 
  [FirstName] + ' ' + LastName as [Full Name], 
  -- combined first and last name 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE [Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  [DateFirstPurchase] AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.city AS [Customer City] --joined in Customer City from geography table 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN [dbo].[DimGeography] AS g ON g.geographykey = c.geographykey 
ORDER BY 
  Customerkey ASC --order by customer
