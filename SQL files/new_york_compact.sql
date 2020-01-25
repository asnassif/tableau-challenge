-- Install the Earthdistance (and requirement cube) modules to enable Latitude / Longtitude in Postgres:
CREATE EXTENSION cube;
CREATE EXTENSION earthdistance;



-- Create New York CitiBike Table

create table new_york_compact (
	city varchar(25) not null,
	year int,
	date date,
	trip_duration int,
	start_time time(4),
	stop_time time(4),
	start_station_id varchar(15),
	start_station_name varchar(55),
	start_station_latitude float(8),
	start_station_longitude float(8),
	end_station_id varchar(15),
	end_station_name varchar(50),
	end_station_latitude float(8),
	end_station_longitude float(8),
	bike_id int,
	user_type varchar(15),
	birth_year int,
	gender varchar(6)
);




-- Reolace 1 with Male, 2 with Female and 0 with Unknown:

UPDATE 
   new_york_compact
SET 
   gender = REPLACE (
     gender,
   '1',
   'Male'
   );


UPDATE 
   new_york_compact
SET 
   gender = REPLACE (
     gender,
   '2',
   'Female'
   );
   
   
UPDATE 
   new_york_compact
SET 
   gender = REPLACE (
     gender,
   '0',
   'Unknow'
   );



-- Update Customer to Non-Sunscriber

UPDATE 
   new_york_compact
SET 
   user_type= REPLACE(
     user_type,
   'Customer',
   'Non-Subscriber'
   );
   


-- Check table contents
select * from new_york_compact;


select date from new_york where date='2019-12-31';



-- Count bikers by gender

SELECT
   gender,
   COUNT (gender)
FROM
   new_york_compact
GROUP BY
   gender;
   
   
   
   



