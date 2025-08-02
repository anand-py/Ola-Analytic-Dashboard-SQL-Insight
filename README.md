🚕 **Ola Analytics: Ride Performance and Cancellation Insights Dashboard**  
A comprehensive SQL + Power BI dashboard project designed to analyze Ola's ride operations, vehicle usage, cancellations, revenue performance, and customer-driver satisfaction across India.

---

🔍 **Purpose**  
The Ola Analytics Dashboard helps uncover key insights around ride performance, vehicle utilization, booking success rates, cancellations, and ratings. It enables business stakeholders to identify inefficiencies, optimize fleet operations, and improve user satisfaction through data-driven decision-making.

---

⚙️ **Tech Stack**

This project was built using the following tools and technologies:

- **🧮 MySQL** – Used for querying booking data and creating analytical views.
- **📊 Power BI Desktop** – Used to build interactive visual dashboards.
- **📂 Power Query Editor** – For cleaning and preparing data before visualization.
- **🔗 Data Modeling** – Relationships built between vehicle type, booking status, customer, and payment method fields.
- **📁 File Format** – Dashboard exported as `.pdf` and `.png` for stakeholder presentations.

---

🗂️ **Data Source**  
The data is assumed to be Ola’s internal booking and transaction records, structured around:

- Booking ID, Vehicle Type, Customer ID, Driver Ratings, Customer Ratings  
- Booking Status (Success, Cancelled), Ride Distance, Payment Method  
- Revenue Metrics (Booking Value), Cancellation Reasons (Driver/Customer)

---

🌟 **Features / Highlights**

### • **Business Problem**
Ola handles millions of bookings daily across different vehicle types and regions. Without a centralized analytics framework, it's hard to assess:

- Which vehicle types drive the most revenue?
- Why rides are being canceled and by whom?
- Which payment modes are most popular?
- Where customer or driver dissatisfaction is growing?

This dashboard solves these challenges with interactive visuals + SQL-powered insights.

---

### • **Goals of the Dashboard**
To deliver a performance dashboard that:

- Tracks key ride metrics by vehicle type (e.g., Prime Sedan, Auto, Bike)
- Analyzes cancellation reasons and responsible parties
- Highlights top customers and successful booking segments
- Measures driver and customer satisfaction via average ratings
- Calculates average ride distance and revenue contributions

---

🎯 **Walkthrough of Key Visuals**

📌 **KPI Cards (Top Layer)**  
- Total Revenue: ₹17.2 Cr  
- Total Rides: 65K  
- Avg Driver Rating: 4.2  
- Avg Customer Rating: 4.5  

📈 **Revenue by Vehicle Type (Bar Chart)**  
Highlights revenue contribution from each category:  
- Prime Sedan, SUV, Plus, Mini, Auto, Bike, E-Bike  

🛑 **Cancellation Reasons (Pie Chart)**  
Breaks down cancellation cases:  
- Cancelled by Driver (Personal/Vehicle Issue)  
- Cancelled by Customer  
- System Incomplete Rides  

🚗 **Vehicle Type Usage (Bar Chart)**  
Shows booking volume distribution by vehicle type to assess fleet demand.

🌟 **Driver & Customer Ratings by Vehicle Type**  
Two side-by-side visuals comparing average ratings—revealing quality gaps by segment.

📉 **Cancellation Metrics (Card + SQL View)**  
- Cancelled by Driver: 3,542  
- Cancelled by Customer: 5,129  
- Incomplete Rides: 847  

🧾 **Top Customers by Booking Count (Table)**  
Lists the top 5 customers with highest number of bookings and ride value.

💳 **UPI Payment Ride Analysis (SQL View)**  
Quickly identify how many rides were paid through UPI for fintech collaboration.

🛣️ **Average Ride Distance by Vehicle (SQL View)**  
Shows efficiency by comparing vehicle types and how far they usually travel.

---

💡 **Business Impact & Insights**

🎯 **Customer Churn Prevention**  
Understand cancellation reasons and dissatisfaction zones to reduce drop-off rates.

🚘 **Fleet Optimization**  
Use revenue + distance metrics to allocate more vehicles in high-performing segments.

📈 **Payment Partner Growth**  
UPI usage insights help establish partnerships with digital payment platforms.

🌟 **Driver Retention and Training**  
Identify vehicle segments with lower driver ratings to inform driver training or onboarding.

📊 **Performance Benchmarking**  
Compare vehicle types on distance, revenue, success, and satisfaction—enabling better forecasting and business planning.

---

🖼️ **Screenshots / Demos**

- `Overall` – KPI Summary of Total Revenue, Rides, and Ratings  
- `Revenue` – Visual breakdown of revenue per vehicle type  
- `Cancellation` – Cancellation Reasons by Type  
- `Ratings` – Driver vs Customer Ratings comparison  
- `Vehicle Type` – Rides volume by vehicle category


<img width="991" height="552" alt="1_Overall" src="https://github.com/user-attachments/assets/a600fb32-f120-41f7-97fb-588c883a6786" />
<img width="1000" height="563" alt="2_Vehicle Type" src="https://github.com/user-attachments/assets/b499b34b-c920-4937-8526-bb6ba5a653ac" />
<img width="984" height="566" alt="3_Revenue" src="https://github.com/user-attachments/assets/b6a72d39-e711-4d74-af93-8d06bf2a4018" />
<img width="1080" height="545" alt="4_Cancellation" src="https://github.com/user-attachments/assets/02976b85-1c48-4686-b7e6-1cc5616fd081" />
<img width="1005" height="556" alt="5_Ratings" src="https://github.com/user-attachments/assets/ccdc1763-d4f8-4b08-8c09-efcdf9200840" />


---

📌 **SQL Analysis Highlights (MySQL Views)**

- ✅ `Successful_Bookings` – All rides marked as 'Success'
- 📏 `Avg_Rider_Distance_For_Each_Vehicle` – Avg. km per ride by vehicle
- 🛑 `cancelled_rides_by_customers` – Total rides canceled by customers
- 🔝 `booked_the_highest_number_of_rides` – Top 5 customers by ride count
- ❌ `cancelled_by_drivers` – Count of driver cancellations due to personal/car issues
- 🌟 `Min_Max_Driver_Rating` – Best & worst driver rating for Prime Sedan
- 💸 `Total_Successful_Ride` – Revenue from successful bookings

---

📂 **File Formats**

- `.pbix` – Power BI source file  
- `.png` / `.pdf` – Presentation and export-ready visual assets  

---



---

