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

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `overall_rating` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`rating_id`),
  KEY `fk_order_id` (`order_id`),
  CONSTRAINT `fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`order_id`)
  );
  CREATE TABLE `restaurant_rating` (
  `rating_id` int(11) NOT NULL REFERENCES rating(`rating_id`),
  `food_rating` int(11) DEFAULT NULL,
  `price_rating` int(11) NOT NULL,
  PRIMARY KEY(`rating_id`),
  CONSTRAINT `fk_rating_id` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`)
  );
  CREATE TABLE `delivery_rating` (
  `rating_id` int(11) NOT NULL REFERENCES rating(`rating_id`),
  `on_time` int(11) DEFAULT NULL,
  `courteous` int(11) NOT NULL,
  PRIMARY KEY(`rating_id`),
   CONSTRAINT `fk_rating_id2` FOREIGN KEY (`rating_id`) REFERENCES `rating` (`rating_id`)
  )
ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=latin1;

Data Dictionary:

[Deliverable 2 - Data Dictionary - Sheet1.pdf](https://github.com/lazylizardz/DBGroupProject/files/6249865/Deliverable.2.-.Data.Dictionary.-.Sheet1.pdf)

