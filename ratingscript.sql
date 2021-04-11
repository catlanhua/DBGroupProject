
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