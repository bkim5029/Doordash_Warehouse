CREATE TABLE IF NOT EXISTS `doordash_pos`.`store_city` (
  `store_city_id` INT NOT NULL,
  `city_name` VARCHAR(45),
  `state` VARCHAR(3),
  PRIMARY KEY (`store_city_id`)
  );
  
CREATE TABLE IF NOT EXISTS `doordash_pos`.`menu` (
  `menu_id` INT NOT NULL,
  `food_name` VARCHAR(45),
  `food_price` FLOAT,
  `food_rating` FLOAT,
  PRIMARY KEY (`menu_id`)
  );
  
CREATE TABLE IF NOT EXISTS `doordash_pos`.`store_menu` (
  `store_menu_id` INT NOT NULL,
  `menu_id` INT,
  `city_id` INT,
  `store_name` VARCHAR(45),
  `food_category` VARCHAR(45),
  `rating` FLOAT,
  `address` VARCHAR(45),
  PRIMARY KEY (`store_menu_id`),
  FOREIGN KEY (`city_id`) REFERENCES `doordash_pos`.`store_city` (`store_city_id`),
  FOREIGN KEY (`menu_id`) REFERENCES `doordash_pos`.`menu` (`menu_id`)
);

CREATE TABLE IF NOT EXISTS `doordash_pos`.`customer_city` (
  `customer_city_id` INT NOT NULL,
  `city_name` VARCHAR(45),
  `state` VARCHAR(3),
  PRIMARY KEY (`customer_city_id`)
  );
  
  CREATE TABLE IF NOT EXISTS `doordash_pos`.`customer` (
  `customer_id` INT NOT NULL,
  `first_name` VARCHAR(45),
  `last_name` VARCHAR(45),
  `rating` VARCHAR(45),
  `dashpass` VARCHAR(3),
  `address` VARCHAR(45),
  `customer_city_id` INT,
  PRIMARY KEY (`customer_id`),
  FOREIGN KEY (`customer_city_id`) REFERENCES `doordash_pos`.`customer_city` (`customer_city_id`)
);
  
  CREATE TABLE IF NOT EXISTS `doordash_pos`.`month` (
  `month_id` INT NOT NULL,
  `month_name` VARCHAR(45),
  `month_number` INT,
  PRIMARY KEY (`month_id`)
  );
  
  CREATE TABLE IF NOT EXISTS `doordash_pos`.`date` (
  `date_id` INT NOT NULL,
  `date` VARCHAR(45),
  `year` INT,
  `month_id` INT,
  `day` INT,
  PRIMARY KEY (`date_id`),
  FOREIGN KEY (`month_id`) REFERENCES `doordash_pos`.`month` (`month_id`)
  );
  
  CREATE TABLE IF NOT EXISTS `doordash_pos`.`dasher` (
  `dasher_id` INT NOT NULL,
  `first_name` VARCHAR(45),
  `last_name` VARCHAR(45),
  `rating` FLOAT,
  `address` VARCHAR(45),
  PRIMARY KEY (`dasher_id`)
  );
 
 CREATE TABLE IF NOT EXISTS `doordash_pos`.`orders` (
  `order_id` INT NOT NULL,
  `dasher_id` INT,
  `customer_id` INT,
  `date_id` INT,
  `store_menu_id` INT,
  `menu_price` FLOAT,
  `dasher_tip` FLOAT,
  `fees` FLOAT,
  `order_total` FLOAT,
  FOREIGN KEY (`dasher_id`) REFERENCES `doordash_pos`.`dasher` (`dasher_id`),
  FOREIGN KEY (`store_menu_id`) REFERENCES `doordash_pos`.`store_menu` (`store_menu_id`),
  FOREIGN KEY (`customer_id`) REFERENCES `doordash_pos`.`customer` (`customer_id`),
  FOREIGN KEY (`date_id`) REFERENCES `doordash_pos`.`date` (`date_id`)
  );