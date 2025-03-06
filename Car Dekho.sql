show databases;
create database cars;
use cars;
show tables;

-- checking table structure
desc car_dekho;

-- reading data from table
select * from car_dekho;

-- reading total rows
select count(*) as total_records from car_dekho;

-- distinct cars
select distinct(Name) from car_dekho;

-- total types of distinct cars
select distinct(count(Name)) as total_cars from car_dekho;

-- checking Mahindra xuv 700 series car
select * from car_dekho where name like ' %Mahindra XUV700 AX5%';

-- Cars that available in 2023.
select * from car_dekho where year = 2023;

-- total cars available in 2023,
select count(*) as total_cars from car_Dekho where year = 2023;

-- Total cars available in 2020,2021,2022-
select * from car_dekho where year in (2020,2021,2022);

select count(*) as total_cars from car_dekho where year in (2020,2021,2022);

-- using group by.
select year, count(*) as total_cars from car_dekho where year in (2020,2021,2022) group by year;


-- display all cars by year.
select year, count(*) as total_cars from car_dekho group by year;


-- diesel cars in year 2020. 
select * from car_dekho;
select year, count(*) as total_cars from car_dekho where year = 2020 and fuel = 'Diesel';

-- diesel cars sold by year
select year, fuel, count(*) as total_cars from car_dekho where fuel = 'Diesel' group by year;


-- Petrol cars sold by year
select year, fuel, count(*) as total_cars from car_dekho where fuel = 'Petrol' group by year;

-- CNG cars sold by year
select year, fuel, count(*) as total_cars from car_dekho where fuel = 'CNG' group by year;

-- Petrol Diesel CNG cars by year.
select year, count(*) as total_cars from car_dekho where fuel in ('Diesel','Petrol','CNG') group by year;

-- which year had more than 100 cars sold.
select year, count(*) as total_cars from car_dekho group by year having total_cars >100;

-- which year has less than 50 cars sold. 
select year,count(*) as total_cars from car_dekho group by year having total_cars <50;


-- all cars count details from 2015 to 2023. 
select * from car_dekho where year between 2015 and 2023;

-- all cars details from 2015 to 2023.
select * from car_dekho where year between 2015 and 2023; 


