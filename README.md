# DBGroupProject

Introduction: Hi! We are group 9 and in this project we will be working with the Campus Eats Script in MySQL WorkBench. The members of our group are: Madison Miller, Lan Hua, Samuel King, Nicholas Huy, and Avery Metcalf.

Project Description: COVID-19 has created an increasing demand of a reliable online food delivery service on campus. The current campus-controlled delivery system, however, does not have a system to evaluate the reliability of its drivers and vendors. Thus, this project aims to improve the current database by introducing a rating system to track and analyze drivers’ performance, restaurants’ food quality, and students’ dietary habits. Such data will be valueable to gain insights from what benefits the business and the students so impactful changes can be made. 

Business Rules: 
  1. Only students can be drivers.
  2. Restaurants must be approved before entered in the system.
  3. Only one rating per order can be submitted.
  4. Ratings are optional.
  5. There must be at least 10 restaurants in the database.
  6. Individual orders must come from one restaurant.

Use Case: 
The customer will be able to view ratings and submit ratings.
The administrator will be able to view the customer's ratings, maintain the ratings and view the reports analyzing the data.

 ![Lan's Diagram - Use case diagram](https://raw.githubusercontent.com/lazylizardz/DBGroupProject/19cfe0b0cb4660403b248ac3cdf79aae43c9ff84/Updated_Use_Case.png)


EERD: (with rating supertype table and restaurant_rating, delivery_rating as subtype table)
  
![eerd_updated](https://user-images.githubusercontent.com/81499842/114309552-8cfbc380-9ab5-11eb-99bd-506b0b226a59.PNG)


SQL Script: 
1) Creating the rating tables
![ratingcreation](https://user-images.githubusercontent.com/81499842/116006220-307dc580-a5d8-11eb-9990-a261f3d9f36a.PNG)


2) Stored Procedure for getting the Average Rating from a restaurant
![avg_restaurant](https://user-images.githubusercontent.com/81499842/116006117-e694df80-a5d7-11eb-8ded-b1b884938a37.PNG)
Calling the avg_restaurant Stored Procedure for restaurant_id 1
![avg_restaurant_spcall](https://user-images.githubusercontent.com/81499842/116006350-ce719000-a5d8-11eb-9aa9-a8f682e58e10.PNG)

Data Dictionary:

[Deliverable 2 - Data Dictionary - Sheet1.pdf](https://github.com/lazylizardz/DBGroupProject/files/6249865/Deliverable.2.-.Data.Dictionary.-.Sheet1.pdf)

