USE [tempdb]
GO

SELECT [Country]
      ,[Year]
      ,[deaths_temperature]
      ,[deaths_wildfire]
      ,[deaths_storm]
      ,[deaths_landslide]
      ,[deaths_mass_movement]
      ,[deaths_volcanic]
      ,[deaths_earthquake]
      ,[deaths_flood]
      ,[deaths_drought]
  FROM [dbo].[naturaldisasters]

GO


-- which country has the most death droughts

SELECT Country,
     deaths_drought,
	   Year
FROM dbo.naturaldisasters

WHERE deaths_drought=(select max(deaths_drought) from dbo.naturaldisasters )

----- the highest death from drought is africa

SELECT [Country]
      ,[Year]
      ,[deaths_temperature]
      ,[deaths_wildfire]
      ,[deaths_storm]
      ,[deaths_landslide]
      ,[deaths_mass_movement]
      ,[deaths_volcanic]
      ,[deaths_earthquake]
      ,[deaths_flood]
      ,[deaths_drought]
  FROM [dbo].[naturaldisasters]

  WHERE Country IN ('China')

  -- highest deaths came from floods in China in 1950

  --which country had the highest deaths from landslide

SELECT Country,
     deaths_landslide,
	   Year
FROM dbo.naturaldisasters

WHERE deaths_landslide=(select max(deaths_landslide) from dbo.naturaldisasters )

--China is the highest country that had landslides in 2000



SELECT *

FROM dbo.naturaldisasters

WHERE year BETWEEN 2010 AND 2011

-- I observed 207 rows and I discovered that Haiti had the highest death in earth with a total of 22258.7

--I want to know what is the highest cause of natual disasters in New Zealand in 2010

SELECT *

FROM dbo.naturaldisasters

WHERE Country = 'New Zealand' AND year = 2010


---The highest deaths in New Zealand in 2010 was from earthquakes which was 18.4

--- I want to evaulate only North America between 2000 and 2010


SELECT *

FROM dbo.naturaldisasters

WHERE country = 'North America' AND year >= 2000

---I want to create a new column called continent

ALTER TABLE dbo.naturaldisasters
Add Continents varchar(50) NULL;


SELECT *

FROM dbo.naturaldisasters


ALTER TABLE dbo.naturaldisasters
DROP COLUMN Continents;


SELECT *

FROM dbo.naturaldisasters












