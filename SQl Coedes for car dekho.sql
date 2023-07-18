create schema cars;
use cars;
-- READ DATA--
SELECT * FROM cars.cars_24_combined;
-- Total Cars: To get a count of total records--	
select count(*) from cars.cars_24_combined;
-- The Manager asked the employye as to how many cards will be available in 2023 ? -- 
select count(*) from cars.cars_24_combined where year = 2023; # 1	
-- The Manger asked the employee how many cars is were avaibale in 2020, 2021, 2022? --
select count(*) from cars.cars_24_combined where year = 2020; # 613
select count(*) from cars.cars_24_combined where year = 2021; # 683
select count(*) from cars.cars_24_combined where year = 2022; # 256
-- GROUP BY --
select count(*) from cars.cars_24_combined where year in (2020,2021,2022) group by year;
-- Client asked me to print the total of all cars by year -- 
select year, count(*) from cars.cars_24_combined  group by year;
# 2010-174, 2011-218, 2012-294, 2013-353, 2014-528, 2015-614, 2016-903, 2017-1161, 2018-1206, 2019-1010, 2020-613, 2021-683, 2022-294, 2023- 1
-- How many disel cars were ther in the year 2020 ?--
select count(*) from cars.cars_24_combined where Year = 2020 and Fuel = "DIESEL"; # 65
-- How many petro cars were there in the year 2020 ? --
select count(*) from cars.cars_24_combined where Year = 2020 and Fuel ="PETROL"; # 500
-- A catelog of all cars by the fuel (petrol, diesel, and CNG) within the years? --
select year, count(*) from cars.cars_24_combined where Fuel = "PETROL" group by Year;
# 2010-165, 2011-196, 2012-239,2013-265, 2014-437, 2015-504, 2016-734, 2017-945,2018-906, 2019-806,2020-500,2021-523,2022- 191,2023-1.
select year, count(*) from cars.cars_24_combined where Fuel = "DIESEL" group by Year;
# 2011-13, 2012-35,2013-60, 2014-64, 2015-78, 2016-139, 2017-158,2018-226, 2019-125,2020-65,2021-67,2022- 27.
select year, count(*) from cars.cars_24_combined where Fuel = "CNG" group by Year;
# 2011-9, 2012-19,2013-28, 2014-27, 2015-32, 2016-30, 2017-58,2018-74, 2019-79,2020-48,2021-93,2022- 38.
-- Whcih year had more than 100 cars in a given year ? --
select year , count(*) from cars.cars_24_combined group by year having count(*)>100;
# 2011-218, 2012-294,2013-353, 2014-528, 2015-614, 2016-903, 2017-1161, 2018-1206, 2019-1010 ,2020-613 ,2021-683,2022-256.
-- How many cars where the between the years 2015 to 2023? -- 
select count(*) from cars.cars_24_combined where year between 2015 and 2023; # 6447
-- How many Automatonatic cars where there between 2020 to 2023 ? -- 
select count(*) from cars.cars_24_combined where  (year between 2020 and 2023) and ( Drive = "Automatic"); # 367
-- How many manual cars where there between year 2020 to 2023? --
select count(*) from cars.cars_24_combined where  (year between 2020 and 2023) and ( Drive = "Manual"); # 1186
-- How many SUV were there in total ? --
select year, count(*) from cars.cars_24_combined where Type = "SUV" group by Year;
# 2012-5,2013-14, 2014-26, 2015-33, 2016-113, 2017-153, 2018-208, 2019-196 ,2020-168 ,2021-172,2022-5, 2023-1.
-- How many Sedan were there in total ? --
select year, count(*) from cars.cars_24_combined where Type = "Sedan" group by Year;
 # 2010-28, 2011-35, 2012-61, 2013-97, 2014-139, 2015-141, 2016-198, 2017-215, 2018-275, 2019-176 ,2020-121 ,2021-99 ,2022-36.
 -- How many Hatchback were there in total ? --
 select year, count(*) from cars.cars_24_combined where Type = "Hatchback" group by Year;
# 2010-140, 2011-177, 2012-227, 2013-236, 2014-353, 2015-427, 2016-572, 2017-760, 2018-696, 2019-623 ,2020-322  ,2021-140 ,2022-137.
-- How many cars in the years between 2022 to 2023  had a Distance run over 20000 kms--
select count(*) from cars.cars_24_combined where  (year between 2020 and 2023) and ( Distance > 20000) ; # 980
-- How mnay first owner cars were there ? --
select count(*) from cars.cars_24_combined where Owner ="1"; # 5811
-- How mnay Second owner cars were there ? --
select count(*) from cars.cars_24_combined where Owner ="2"; # 2001

