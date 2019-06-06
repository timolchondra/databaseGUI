#DATABASE FOR GUAM TRAVELOR'S INFORMATION SYSTEM
#Timothy Olchondra

#Insert one entry to Population of Guam
INSERT INTO Population VALUES ('Guam', 174445);

#Insert ethnic groups
INSERT INTO EthnicGroups VALUES ('Guam', 'Chamorro', 0.373);
INSERT INTO EthnicGroups VALUES ('Guam', 'Filipino', 0.293);
INSERT INTO EthnicGroups VALUES ('Guam', 'White', 0.071);
INSERT INTO EthnicGroups VALUES ('Guam', 'Chuukese',0.07);
INSERT INTO EthnicGroups VALUES ('Guam', 'Korean', 0.022);
INSERT INTO EthnicGroups VALUES ('Guam', 'OtherPacificIslander', 0.02); 
INSERT INTO EthnicGroups VALUES ('Guam', 'OtherAsian', 0.02);
INSERT INTO EthnicGroups VALUES ('Guam', 'Chinese', 0.016);
INSERT INTO EthnicGroups VALUES ('Guam', 'Palauan', 0.016);
INSERT INTO EthnicGroups VALUES ('Guam', 'Japanese', 0.015);
INSERT INTO EthnicGroups VALUES ('Guam', 'Pohnpeian', 0.014);
INSERT INTO EthnicGroups VALUES ('Guam', 'Mixed', 0.094);
INSERT INTO EthnicGroups VALUES ('Guam', 'Other', 0.06);

#Insert Villages
INSERT INTO Village VALUES ('Agana Heights', 'Guam');
INSERT INTO Village VALUES ('Agat', 'Guam');
INSERT INTO Village VALUES ('Asan-Maina','Guam');
INSERT INTO Village VALUES ('Barrigada', 'Guam');
INSERT INTO Village VALUES ('Chalan-Pago-Ordot', 'Guam');
INSERT INTO Village VALUES ('Dededo', 'Guam');
INSERT INTO Village VALUES ('Hagatna', 'Guam');
INSERT INTO Village VALUES ('Inarajan', 'Guam');
INSERT INTO Village VALUES ('Mangilao', 'Guam');
INSERT INTO Village VALUES ('Merizo', 'Guam');
INSERT INTO Village VALUES ('Mongmong-Toto-Maite', 'Guam');
INSERT INTO Village VALUES ('Piti', 'Guam');
INSERT INTO Village VALUES ('Santa Rita', 'Guam');
INSERT INTO Village VALUES ('Sinajana', 'Guam');
INSERT INTO Village VALUES ('Talofofo', 'Guam');
INSERT INTO Village VALUES ('Tamuning', 'Guam');
INSERT INTO Village VALUES ('Tumon', 'Guam');
INSERT INTO Village VALUES ('Umatac', 'Guam');
INSERT INTO Village VALUES ('Yigo', 'Guam');
INSERT INTO Village VALUES ('Yona', 'Guam');


#insert Houses Available
INSERT INTO House VALUES ('Agat', '3 Bedroom Home for Sale in Agat, GU', 'L6-1 Pagachao, Agat, Guam 96915', 90000,3,1,1220);
INSERT INTO House VALUES ('Dededo', '2 Bedroom Home for Sale in Dededo, GU', '141 Biradan Sasata, Astumbo, Dededo, Guam 96929', 95000,2,1,918);
INSERT INTO House VALUES ('Agat', '2 Bedroom Home for Sale in Agat, GU', '174 Santa Cruz North Street, Agat, Guam 96915', 99000,2,1.5,1989);
INSERT INTO House VALUES ('Santa Rita', '3 Bedroom Home for Sale in Santa Rita, GU', '135 Chalan Medina Street, Santa Rita, Guam 96915', 134500,3,2,1100);
INSERT INTO House VALUES ('MongMong-Toto-Maite', '3 Bedroom Home for Sale in MongMong-Toto-Maite, GU', '152 Torres Street, MongMong-Toto-Maite,Guam 96910', 160000,3,1,1327);
INSERT INTO House VALUES ('Yigo', '4 Bedroom Home for Sale in Yigo, GU', '283 Jesus Amparo Street, Yigo, Guam 96929', 165000,4,2,1200);
INSERT INTO House VALUES ('Merizo', '2 Bedroom Home for Sale in Merizo, GU', '137 Esteves Court, Merizo, Guam 96915', 168000,2,2,900);
INSERT INTO House VALUES ('Mangilao', '3 Bedroom Home for Sale in Mangilao, GU', '157 Sobrino Street, Mangilao, Guam 96913', 240000,3,2,1221);

#insert Apartments

INSERT INTO Apartment VALUES ('19-1412', 'Tan Felicita Dungca Street A8, Tamuning, Guam 96913','A8',3, 800,2,1,900, 'Tamuning');
INSERT INTO Apartment VALUES ('19-1979', '157 Salinas St. B, Agat, Guam 96915','B',1, 900,2,1,800, 'Agat');
INSERT INTO Apartment VALUES ('19-1542', '580 Chalan Famha B, Not in List, Chalan-Pago-Ordot, Guam 96910','B',1, 950,2,1,450,'Chalan-Pago-Ordot');
INSERT INTO Apartment VALUES ('19-2118', 'Mall C307, Pacific Towers Condo-Tamuning, Tamuning, Guam 96913','C307',3, 950,2,1,7359,'Tamuning');

#insert Public Schools

#insert some public elementary schools
INSERT INTO PublicSchool VALUES (1000, 'Mangilao');
INSERT INTO PublicSchool VALUES (1001, 'Agana Heights');
INSERT INTO PublicSchool VALUES (1002, 'Dededo');
INSERT INTO PublicSchool VALUES (1003, 'Sinajana');

INSERT INTO ElementarySchool VALUES('Adacao Elementary', NULL, '(671) 300-1035', 'Hilitais', 1000, NULL);
INSERT INTO ElementarySchool VALUES('Agana Heights Elementary School', NULL, NULL, 'Bumblebees', 1001, NULL);
INSERT INTO ElementarySchool VALUES('Astumbo Elementary', NULL, '(671) 635-4363', 'Butterflies', 1002, NULL);
INSERT INTO ElementarySchool VALUES('C.L. Taitano Elementary', NULL, '(671) 472-4245', 'Deerling', 1003, NULL);

#insert some public middle schools
INSERT INTO PublicSchool VALUES (1004, 'Chalan-Pago-Ordot');
INSERT INTO PublicSchool VALUES (1005, 'Dededo');
INSERT INTO PublicSchool VALUES (1006, 'Yigo');
INSERT INTO PublicSchool VALUES (1007, 'Inarajan');

INSERT INTO MiddleSchool VALUES('Agueda Johnston Middle School', 800, '(671) 472-6785', 'Pirates', 1004, NULL);
INSERT INTO MiddleSchool VALUES('Astumbo Middle School', NULL, '(671) 300-2610', 'Dragons', 1005, NULL);
INSERT INTO MiddleSchool VALUES('F.B. Leon Guerrero Middle School', NULL, '(671) 653-2080', 'Hawks', 1006, NULL);
INSERT INTO MiddleSchool VALUES('Inarajan Middle School', NULL, '(671) 475-0668', 'Warriors', 1007, NULL);

#insert some public high schools
INSERT INTO PublicSchool VALUES(1008, 'Mangilao');
INSERT INTO PublicSchool VALUES(1009, 'Tamuning');
INSERT INTO PublicSchool VALUES(1010, 'Dededo');
INSERT INTO PublicSchool VALUES(1011, 'Yigo');

INSERT INTO HighSchool VALUES ('George Washington High School', 2610, '(671) 734-2911', 'Geckos', 1008, NULL);
INSERT INTO HighSchool VALUES ('John F. Kennedy High School', 1904, NULL, 'Islanders', 1009, NULL);
INSERT INTO HighSchool VALUES ('Okkodo High School', 1641, '(671) 300-1870', 'Bulldogs', 1010, NULL);
INSERT INTO HighSchool VALUES ('Simon Sanchez High School', 2347, '(671) 653-3625','Sharks', 1011, NULL);


#Insert Private schools

#insert some private elementary schools
INSERT INTO PrivateSchool VALUES (2000, 955, 'Catholic', 'Dededo' );
INSERT INTO PrivateSchool VALUES (2001, 929, 'Catholic','Sinajana');
INSERT INTO PrivateSchool VALUES (2002, 680, 'Christain', 'Barrigada');
INSERT INTO PrivateSchool VALUES (2003, 385, 'Catholic', 'Tamuning');

INSERT INTO ElementarySchool VALUES('Santa Barbara Catholic School', NULL, '(671) 632-5578', 'Spartans', NULL, 2000);
INSERT INTO ElementarySchool VALUES('Bishop Baumgartner Memorial Catholic School', NULL, '(671) 472-6670', 'Obispos', NULL, 2001);
INSERT INTO ElementarySchool VALUES('Harvest Christian Academy', NULL, '(671) 477-6341', 'Eagles', NULL, 2002);
INSERT INTO ElementarySchool VALUES('Saint Anthony Catholic School', NULL, '(671) 647-1140', 'Saints', NULL, 2003);

#insert some private middle schools
 INSERT INTO MiddleSchool VALUES('Santa Barbara Catholic School', NULL, '(671) 632-5578', 'Spartans', NULL, 2000);
INSERT INTO MiddleSchool VALUES('Bishop Baumgartner Memorial Catholic School', NULL, '(671) 472-6670', 'Obispos', NULL, 2001);
INSERT INTO MiddleSchool VALUES('Harvest Christian Academy', NULL, '(671) 477-6341', 'Eagles', NULL, 2002);
INSERT INTO MiddleSchool VALUES('Saint Anthony Catholic School', NULL, '(671) 647-1140', 'Saints', NULL, 2003);

#insert some private high schools
INSERT INTO PrivateSchool Values (2004, 1325, 'Catholic', 'Hagatna');
INSERT INTO PrivateSchool Values (2005, 345, 'Catholic', 'Mangilao');

INSERT INTO HighSchool VALUES ('Academy of Our Lady of Guam', 400, '(671) 477-8203', 'Cougars', NULL, 2004);
INSERT INTO HighSchool VALUES ('Father Duenas Memorial School', 420, '(671) 734-2261', 'Friars', NULL, 2005);
INSERT INTO HighSchool VALUES ('Harvest Christian Academy', NULL, '(671_ 477-6341', 'Eagles', NULL, 2002);

#insert the two colleges on Guam
INSERT INTO College VALUES ('University of Guam', 'https://www.uog.edu/', '(671) 735-2201', 'Tritons', 'Mangilao');
INSERT INTO College VALUES ('Guam Community College', 'https://guamcc.edu/', '(671) 735-5531', NULL, 'Mangilao');


#insert restaurants and their hours

INSERT INTO Restaurant VALUES ('Proa', 'Pale San Vitores Road Tumon, Guam 96913', 'Chamorro', '(671) 646-7762', 'Tumon');
INSERT INTO RestaurantHours VALUES('Proa', '11:00am', '10:00pm');

INSERT INTO Restaurant VALUES ('Ajisen Ramen', '199 Chalan San Antonio Suite 101C Tamuning, Guam 96913','Japanese', '(671) 649-8896', 'Tamuning');
INSERT INTO RestaurantHours VALUES ('Ajisen Ramen', '11:00am', '10:00pm');

INSERT INTO Restaurant VALUES ('Fuji Ichiban', '15177 Pale San Vitores Road Tumon, Guam 96913' ,'Japanese', '(671) 647-4555', 'Tumon');
INSERT INTO RestaurantHours VALUES ('Fuji Ichiban', '12:00am', '11:59pm');

INSERT INTO Restaurant VALUES ('Kings Restaurant', '1199 Chalan San Antonio Suite 200 Tamuning, Guam 96913' ,'Chamorro', '(671) 646-5930', 'Tamuning');
INSERT INTO RestaurantHours VALUES ('Kings Restaurant', '12:00am', '11:59pm');


#insert Malls
INSERT INTO Mall VALUES ('Micronesia Mall','1088 Marine Corps Dr, Dededo, 96913, Guam', 124, '(671) 632-8881', 'Dededo');
INSERT INTO MallHours VALUES('Micronesia Mall', '10:00am','9:00pm');

INSERT INTO Mall VALUES ('Guam Premier Outlet','Tamuning, 96913, Guam', 64, '(671) 647-4032', 'Tamuning');
INSERT INTO MallHours VALUES ('Guam Premier Outlet', '10:00am', '9:00pm');

INSERT INTO Mall VALUES ('Agana Shopping Center','302 South Route 4 #100, Hagatna, 96910, Guam', 42, '(671) 472-5027', 'Hagatna');
INSERT INTO MallHours VALUES ('Agana Shopping Center', '10:00am', '8:00pm');

#insert movie theaters
INSERT INTO MovieTheater VALUES ('Tango Theatres - Agana Center Stadium Theatres', 'South Route 4, Hagatna, 96910, Guam', '(671) 632-2204', 'Hagatna');
INSERT INTO MovieTheaterHours VALUES ('Tango Theatres - Agana Center Stadium Theatres', '8:00am', '12:00pm');

INSERT INTO MovieTheater VALUES ('Micronesia Mall Stadium Theatres','1088 W Marine Corps Dr, Dededo, 96929, Guam', '(671) 632-3456', 'Dededo');
INSERT INTO MovieTheaterHours VALUES ('Micronesia Mall Stadium Theatres', '8:00am', '12:00pm');

INSERT INTO MovieTheater VALUES ('Regal Cinemas Guam Megaplex 14', '235 Pas St, Tamuning, 96911, Guam', '(671) 462-7342', 'Tamuning');
INSERT INTO MovieTheaterHours VALUES ('Regal Cinemas Guam Megaplex 14', '9:00am', '11:00pm');

#insert Beaches
INSERT INTO Beach VALUES ('Gun Beach', 'Gun Beach, Tamuning, Guam', 'Tamuning');
INSERT INTO Beach VALUES ('Nat Park Asan Beach', 'Nat Park Asan Beach Park, Tamuning, Guam', 'Asan-Maina');
INSERT INTO Beach VALUES ('Gab Gab Beach', 'Gab Gab Beach, Santa Rita, Guam', 'Santa Rita');
INSERT INTO Beach VALUES ('Tumon Beach', 'Tamuning, 96913, Guam', 'Tamuning'); 
INSERT INTO Beach VALUES ('Ypao Beach', 'Tamuning, 96913, Guam', 'Tamuning');

#insert Grocery Stores
INSERT INTO Grocery VALUES ('Pay-Less Supermarket', 'Sinajana', 'Guam 4, Sinajana, Guam', '(671) 477-7155');
INSERT INTO GroceryHours VALUES ('Pay-Less Supermarket', '6:00am', '12:00am');

INSERT INTO Grocery VALUES('Cost U Less', 'Dededo', ' 615 27, Dededo, 96929, Guam', '(671) 632-2532');
INSERT INTO GroceryHours VALUES ('Cost U Less', '7:00am', '12:00am');

INSERT INTO Grocery VALUES ('Onedera Store', 'Dededo', '159 Redondo Luchan, Dededo, 96929, Guam', '(671) 632-7369');
INSERT INTO GroceryHours Values ('Onedera Store', '6:00am', '10:00pm');

INSERT INTO Grocery VALUES ('Tokyo Mart', 'Tamuning', ' 267 Chalan San Antonio, Tamuning, 96913, Guam', '(671) 646-6615');
INSERT INTO GroceryHours VALUES ('Tokyo Mart', '10:00am', '8:30pm');

#insert churches
INSERT INTO Church VALUES ('Lutheran Church of Guam', '787 West Marine Corps Dr, Hagåtña, 96910, Guam', 'Lutheran', 'Hagatna');
INSERT INTO Church VALUES ('Harvest Baptist Church', 'Mongmong Toto Mai, 96913, Guam', 'Baptist', 'MongMong-Toto-Maite');
INSERT INTO Church VALUES ('Santa Barbara Church', 'Dededo, 96929, Guam', 'Catholic', 'Dededo');
INSERT INTO Church VALUES ('Bayview Church', '243 Sara Street, Mongmong-Toto-Maite, 96910, Guam', 'Catholic', 'MongMong-Toto-Maite');
INSERT INTO Church VALUES ('St. Jude Thadeus Catholic Church', 'Sinajana, Guam', 'Catholic', 'Sinajana');
