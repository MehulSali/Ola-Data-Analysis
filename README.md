# OLA Data Analyst Project

## Project Overview
This project focuses on analyzing OLA ride data using **SQL queries** for data extraction and **Power BI dashboards** for visualization. The dataset includes details on bookings, customer and driver ratings, ride distances, cancellations, and payment methods.

## Technologies Used
- **SQL** for querying ride data
- **Power BI** for visualizing insights
- **Python (Optional)** for data preprocessing
- **Excel/CSV** for storing ride data

---

## SQL Queries
### 1. Retrieve all successful bookings:
```sql
SELECT * FROM rides WHERE status = 'Completed';
```

### 2. Find the average ride distance for each vehicle type:
```sql
SELECT vehicle_type, AVG(distance) AS avg_distance FROM rides GROUP BY vehicle_type;
```

### 3. Get the total number of cancelled rides by customers:
```sql
SELECT COUNT(*) AS cancelled_rides FROM rides WHERE status = 'Cancelled' AND cancelled_by = 'Customer';
```

### 4. List the top 5 customers who booked the highest number of rides:
```sql
SELECT customer_id, COUNT(*) AS total_rides FROM rides GROUP BY customer_id ORDER BY total_rides DESC LIMIT 5;
```

### 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
```sql
SELECT reason, COUNT(*) AS total_cancellations FROM ride_cancellations WHERE cancelled_by = 'Driver' GROUP BY reason;
```

### 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
```sql
SELECT MAX(driver_rating) AS max_rating, MIN(driver_rating) AS min_rating FROM rides WHERE vehicle_type = 'Prime Sedan';
```

### 7. Retrieve all rides where payment was made using UPI:
```sql
SELECT * FROM rides WHERE payment_method = 'UPI';
```

### 8. Find the average customer rating per vehicle type:
```sql
SELECT vehicle_type, AVG(customer_rating) AS avg_customer_rating FROM rides GROUP BY vehicle_type;
```

### 9. Calculate the total booking value of rides completed successfully:
```sql
SELECT SUM(fare_amount) AS total_revenue FROM rides WHERE status = 'Completed';
```

### 10. List all incomplete rides along with the reason:
```sql
SELECT ride_id, status, cancellation_reason FROM rides WHERE status IN ('Cancelled', 'Pending');
```

---

## Power BI Dashboards
### 1. **Ride Volume Over Time**
   - Line chart showing daily/weekly ride trends.
### 2. **Booking Status Breakdown**
   - Pie chart for completed, cancelled, and pending rides.
### 3. **Top 5 Vehicle Types by Ride Distance**
   - Bar chart ranking vehicle types based on total ride distance.
### 4. **Average Customer Ratings by Vehicle Type**
   - Column chart displaying customer ratings per vehicle category.
### 5. **Cancelled Ride Reasons**
   - Donut chart showing driver vs. customer cancellation reasons.
### 6. **Revenue by Payment Method**
   - Stacked bar chart showing revenue contributions by payment type.
### 7. **Top 5 Customers by Total Booking Value**
   - Table listing top-paying customers and their total spending.
### 8. **Ride Distance Distribution Per Day**
   - Histogram showing ride distances on different days.
### 9. **Driver Ratings Distribution**
   - Scatter plot analyzing variations in driver ratings.
### 10. **Customer vs. Driver Ratings**
   - Dual-axis chart comparing customer and driver ratings.

---

## How to Use
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/OLA-Data-Analyst-Project.git
   cd OLA-Data-Analyst-Project
   ```
2. Load the SQL scripts into a database management system (e.g., MySQL, PostgreSQL, or SQLite).
3. Import the dataset into Power BI to generate dashboards.
4. Modify queries or visualizations as per project requirements.

---

## Folder Structure
```
📂 OLA-Data-Analyst-Project
│-- 📁 SQL_Scripts  # Contains all SQL queries
│-- 📁 PowerBI_Dashboards  # PBIX files for visualizations
│-- 📂 Data  # Sample datasets in CSV format
│-- README.md  # Project documentation
```

---

## Contributing
Feel free to contribute by adding new insights, refining queries, or improving Power BI dashboards. Fork the repository and submit a pull request.

---

## License
This project is licensed under the MIT License.

---

## Contact
For any queries or collaborations, reach out via email or GitHub Issues.

---

Happy Analyzing! 🚀

