use colonialadventuretours;

#Query 1
select LAST_NAME FROM guide WHERE STATE !='Massachusetts';
#Query 2
select TRIP_NAME FROM trip where TYPE = 'Biking';
#Query 3
select TRIP_NAME FROM trip where SEASON = 'Summer';
#Query 4
select TRIP_NAME FROM trip where TYPE = 'Hiking' AND DISTANCE > 10;
#Query 5
select CUSTOMER_NUM FROM reservation where STATE = 'NJ';