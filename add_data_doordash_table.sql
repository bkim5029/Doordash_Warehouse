# inserting data into store_city table
INSERT INTO doordash_pos.store_city VALUES(1,'Arlington','VA');
INSERT INTO doordash_pos.store_city VALUES(2,'Marysville','WA');
INSERT INTO doordash_pos.store_city VALUES(3,'Fredericksburg','VA');
INSERT INTO doordash_pos.store_city VALUES(4,'Gainesville','GA');
INSERT INTO doordash_pos.store_city VALUES(5,'Hayward','CA');
INSERT INTO doordash_pos.store_city VALUES(6,'Binghamton','NY');
INSERT INTO doordash_pos.store_city VALUES(7,'Orange','CA');
INSERT INTO doordash_pos.store_city VALUES(8,'Panama','FL');
INSERT INTO doordash_pos.store_city VALUES(9,'Clearwater','FL');
INSERT INTO doordash_pos.store_city VALUES(10,'Youngstown','OH');

# inserting data into menu table
INSERT INTO doordash_pos.menu VALUES(1,'Pork ramen',13.50,4.2);
INSERT INTO doordash_pos.menu VALUES(2,'Tuna roll',6.00,4.5);
INSERT INTO doordash_pos.menu VALUES(3,'Shrimp taco',15.00,4.7);
INSERT INTO doordash_pos.menu VALUES(4,'Lobster tail',25.50,4.3);
INSERT INTO doordash_pos.menu VALUES(5,'Italian salad',15.50,3.7);
INSERT INTO doordash_pos.menu VALUES(6,'Chocolate Ice cream',7.50,4.8);
INSERT INTO doordash_pos.menu VALUES(7,'Cheeseburger',9.00,4.6);
INSERT INTO doordash_pos.menu VALUES(8,'Beef fried rice',10.50,4.0);
INSERT INTO doordash_pos.menu VALUES(9,'Banana pancake',13.00,3.7);
INSERT INTO doordash_pos.menu VALUES(10,'Pit beef',18.00,4.3);
INSERT INTO doordash_pos.menu VALUES(11,'Brisket',20.00,4.8);

# inserting data into store_menu table
INSERT INTO doordash_pos.store_menu VALUES(1,9,1,'Breakfast house','Breakfast',4.3,'Manor Station St');
INSERT INTO doordash_pos.store_menu VALUES(2,8,10,'Chinese house','Chinese',4.9,'High Noon St');
INSERT INTO doordash_pos.store_menu VALUES(3,2,3,'Japanese house','Japanese',4.2,'Roehampton Lane');
INSERT INTO doordash_pos.store_menu VALUES(4,3,6,'Mexican house','Mexican',3.7,'Cactus Ave');
INSERT INTO doordash_pos.store_menu VALUES(5,10,9,'Barbecue house','Barbecue',4.2,'South Strawberry Dr');
INSERT INTO doordash_pos.store_menu VALUES(6,11,2,'Barbecue house','Barbecue',4.2,'South Strawberry Dr');
INSERT INTO doordash_pos.store_menu VALUES(7,2,5,'Sushi house','Sushi',3.2,'Ocean St');
INSERT INTO doordash_pos.store_menu VALUES(8,5,6,'Salad house','Salad',4.8,'Piper Court');
INSERT INTO doordash_pos.store_menu VALUES(9,6,4,'Desserts house','Desserts',4.5,'Water Street');
INSERT INTO doordash_pos.store_menu VALUES(10,7,8,'FastFood house','FastFood',4.5,'Edgemont St');
INSERT INTO doordash_pos.store_menu VALUES(11,4,7,'Seafood house','Seafood',4.1,'Windsor Lane');

# inserting data into customer_city table
INSERT INTO doordash_pos.customer_city VALUES(1,'Woodside','VA');
INSERT INTO doordash_pos.customer_city VALUES(2,'Lacey','TX');
INSERT INTO doordash_pos.customer_city VALUES(3,'Piedmont','OH');
INSERT INTO doordash_pos.customer_city VALUES(4,'Apex','MI');
INSERT INTO doordash_pos.customer_city VALUES(5,'Carmel','NJ');
INSERT INTO doordash_pos.customer_city VALUES(6,'Goldsboro','WI');
INSERT INTO doordash_pos.customer_city VALUES(7,'Massillon','WA');
INSERT INTO doordash_pos.customer_city VALUES(8,'Portsmouth','MD');
INSERT INTO doordash_pos.customer_city VALUES(9,'Hobert','NY');
INSERT INTO doordash_pos.customer_city VALUES(10,'Asbury','SC');

# inserting data into customer table
INSERT INTO doordash_pos.customer VALUES(1,'Argos','Feidhlim',4.3,'NO','Henry Drive',3);
INSERT INTO doordash_pos.customer VALUES(2,'Nima','Yente',4.7,'NO','Glenwood Dr',7);
INSERT INTO doordash_pos.customer VALUES(3,'Dwi','Enzo',4.9,'NO','Mayflower St',8);
INSERT INTO doordash_pos.customer VALUES(4,'Thomas','Dileep',4.6,'YES','Madison Lane',1);
INSERT INTO doordash_pos.customer VALUES(5,'Abdulla','Salacia',4.3,'NO','Valley Farms St',9);
INSERT INTO doordash_pos.customer VALUES(6,'Camilla','Fenton',4.0,'NO','Hilldale Drive',2);
INSERT INTO doordash_pos.customer VALUES(7,'Surya','Echdonn',4.8,'YES','Pilgrim Ave',5);
INSERT INTO doordash_pos.customer VALUES(8,'Elisabeta','Galo',4.3,'YES','Coffee Rd',4);
INSERT INTO doordash_pos.customer VALUES(9,'Tony','Vaitiare',3.9,'NO','Myers Lane',7);
INSERT INTO doordash_pos.customer VALUES(10,'Richard','Vivek',4.7,'NO','Marshall Dr',6);

# inserting data into month table
INSERT INTO doordash_pos.month VALUES(1, 'January', 1);
INSERT INTO doordash_pos.month VALUES(2, 'Febuary', 2);
INSERT INTO doordash_pos.month VALUES(3, 'March', 3);
INSERT INTO doordash_pos.month VALUES(4, 'April', 4);
INSERT INTO doordash_pos.month VALUES(5, 'May', 5);
INSERT INTO doordash_pos.month VALUES(6, 'June', 6);
INSERT INTO doordash_pos.month VALUES(7, 'July', 7);
INSERT INTO doordash_pos.month VALUES(8, 'August', 8);
INSERT INTO doordash_pos.month VALUES(9, 'September', 9);
INSERT INTO doordash_pos.month VALUES(10, 'October', 10);
INSERT INTO doordash_pos.month VALUES(11, 'November', 11);
INSERT INTO doordash_pos.month VALUES(12, 'December', 12);

# inserting data into date table
INSERT INTO doordash_pos.date VALUES(1,'2022-02-12',2022,2,12);
INSERT INTO doordash_pos.date VALUES(2,'2022-05-22',2022,5,22);
INSERT INTO doordash_pos.date VALUES(3,'2022-06-18',2022,6,18);
INSERT INTO doordash_pos.date VALUES(4,'2022-09-27',2022,9,27);
INSERT INTO doordash_pos.date VALUES(5,'2022-12-12',2022,12,12);
INSERT INTO doordash_pos.date VALUES(6,'2022-11-02',2022,11,2);
INSERT INTO doordash_pos.date VALUES(7,'2022-02-15',2022,2,15);
INSERT INTO doordash_pos.date VALUES(8,'2022-07-09',2022,7,9);
INSERT INTO doordash_pos.date VALUES(9,'2022-05-22',2022,5,22);
INSERT INTO doordash_pos.date VALUES(10,'2022-03-14',2022,3,14);

# inserting data into dasher table
INSERT INTO doordash_pos.dasher VALUES(1,'Fergal','Grozdan',4.8,'Buckingham Dr');
INSERT INTO doordash_pos.dasher VALUES(2,'Sumaiya','Lex',4.4,'Pierce Ave');
INSERT INTO doordash_pos.dasher VALUES(3,'Emmanuel','Agafon',4.6,'Manhattan Lane');
INSERT INTO doordash_pos.dasher VALUES(4,'Roland','Maj',4.1,'Brewery Street');
INSERT INTO doordash_pos.dasher VALUES(5,'Neus','Landy',4.7,'Birch Hill St');
INSERT INTO doordash_pos.dasher VALUES(6,'Tomson','Lee',3.9,'Pulaski Street');
INSERT INTO doordash_pos.dasher VALUES(7,'Sione','Selma',4.8,'Shadow Brook St');
INSERT INTO doordash_pos.dasher VALUES(8,'Rosa','Tao',4.2,'Hudson Street');
INSERT INTO doordash_pos.dasher VALUES(9,'Patka','Medusa',4.4,'Garden Street');
INSERT INTO doordash_pos.dasher VALUES(10,'Diana','Artur',4.0,'Arrowhead Rd');

# inserting data into orders table
INSERT INTO doordash_pos.orders VALUES(1,3,4,5,1,13,3,2,24);
INSERT INTO doordash_pos.orders VALUES(1,3,4,5,3,6,3,2,24);
INSERT INTO doordash_pos.orders VALUES(2,6,5,7,10,9,3,1.5,13.5);
INSERT INTO doordash_pos.orders VALUES(3,4,3,8,5,18,4,2,24);
INSERT INTO doordash_pos.orders VALUES(4,10,1,4,6,20,2,2,24);
INSERT INTO doordash_pos.orders VALUES(5,7,2,1,3,6,1,0.7,7.7);
INSERT INTO doordash_pos.orders VALUES(6,8,6,6,4,15,3,2,20);
INSERT INTO doordash_pos.orders VALUES(7,9,10,9,7,6,1,0.5,7.5);
INSERT INTO doordash_pos.orders VALUES(8,2,10,3,8,15.5,3,2,20.5);
INSERT INTO doordash_pos.orders VALUES(9,1,9,2,9,7.5,1,1,9.5);
INSERT INTO doordash_pos.orders VALUES(10,5,9,8,5,18,5,3,46);
INSERT INTO doordash_pos.orders VALUES(10,5,9,8,6,20,5,3,46);
