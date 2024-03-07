create schema cars;
use cars;
-- Read car data--
select * from car_data;

-- Total cars: To get a count of total records--
select count(*) from car_data;

-- The manager asked the employee.How many cars will be available in 2023?--
select count(*) from car_data where year=2023;

-- The manager asked the employee. How many cars is available in 2020,2021,2022--
select count(*) from car_data where year=2020; #74
-- The manager asked the employee. How many cars is available in 2021--
select count(*) from car_data where year=2021; #7
-- The manager asked the employee. How many cars is available in 2022--
select count(*) from car_data where year=2022; #7

-- Client asked me to print the total of all cars by year. I don't see all the details--
select year, count(*) from car_data
group by year;

-- Client asked to car dealer agent. How many diesel cars will there be in 2020?--
select year, count(fuel) from car_data where fuel='Diesel' and year=2020
group by year;

-- Client requested to car dealer agent. How many petrol cars will there be in 2020?--
select year, count(fuel) from car_data where fuel='petrol' and year=2020
group by year;

-- The manager told the employee to give a print all the fuel cars(petrol,Diesel, and CNG) come by all year--
select year,fuel, count(fuel) from car_data where fuel in ("petrol","Diesel","CNG")
group by year, fuel;

-- Manager said there were more than 100 cars in a give year, Which year had more than 100 cars?--
select year, count(*) from car_data 
group by year
having count(*)>100
order by year;

-- The Manager said to the employee All cars count details between 2015 and 2023; we need a complete list.--
select count(*) from car_data where year between 2015 and 2023;

-- The manager said to the employee All cars details between 2015 and 2023; we need a complete list--
select * from car_data where year between 2015 and 2023;

