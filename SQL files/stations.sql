

-- Create Stations table including Station Name, Station Lat. and Long.

create table stations (
	station_name varchar(55) not null,
	station_latitude float(8),
	station_longitude float(8));
	

select * from stations;