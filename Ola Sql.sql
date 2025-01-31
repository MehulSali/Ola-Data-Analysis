create database ola;
use ola;
select * from bookings;


# 1. Retrive all Successful bookings:
create view Successful_bookings as
select * from bookings
where Booking_Status = 'Success';


# 2. Find the Average ride distance for each vehicle type:
create view ride_distance_for_each_vehicle as
select Vehicle_Type, avg(Ride_Distance) as Avrage_distance
from bookings
group by Vehicle_Type;


# 3. get the total number of canceled rides by customers:
create view canceled_rides_by_customers as
select count(*) as canceled_rides from bookings 
where Booking_Status = 'Canceled by Customer';


# 4. List the top 5 customers who booked the highest number of rides:
create view Top5_Customer as 
select Customer_ID, count(Booking_ID) as total_rides
from bookings
group by Customer_ID
order by total_rides desc limit 5;


# 5. Get the number of rides canceled by drivers due to personal and car-related issues:
create view rides_cancele_by_drivers as
select count(*) from bookings
where Canceled_Rides_by_Driver = 'Personal & Car related issue';


# 6. find the maximum and minimum driver ratings for prime sedan bookings :
create view Max_Min_Driver_Rating as
select max(Driver_Ratings), min(Driver_Ratings) from bookings
where Vehicle_Type = 'Prime Sedan';


# 7. Retrive all the rides where payment was made using UPI:
create view UPI_Payment as
select * from bookings 
where Payment_Method = 'UPI';


# 8. Find the average customer rating per vehicle type :
create view Avg_customer_rating as
select Vehicle_Type , avg(Customer_Rating)  from bookings
group by Vehicle_Type;
    

# 9. Calculate the total bookings value of rides completed sucessfully:
create view total_sucessful_ride_amount as
select sum(Booking_Value) as amount from bookings 
where Booking_Status = 'Success';


# 10 . List all incomplete rides along with reason :  
create view incomplete_rides_with_reason as
select Booking_ID, Incomplete_Rides_Reason from bookings
where Incomplete_Rides = 'Yes';

 