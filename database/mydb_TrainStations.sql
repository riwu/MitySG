-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: awsdb.chorl1j1nddl.ap-southeast-1.rds.amazonaws.com    Database: mydb
-- ------------------------------------------------------
-- Server version	5.6.35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TrainStations`
--

DROP TABLE IF EXISTS `TrainStations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrainStations` (
  `name` varchar(17) CHARACTER SET utf8 NOT NULL,
  `latitude` decimal(8,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `place_id` varchar(27) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrainStations`
--

LOCK TABLES `TrainStations` WRITE;
/*!40000 ALTER TABLE `TrainStations` DISABLE KEYS */;
INSERT INTO `TrainStations` VALUES ('Admiralty',1.4405862,103.8009750,'ChIJ9dSHDHUT2jER2OAwCRnDDKk'),('Aljunied',1.3164325,103.8829060,'ChIJO7BsLzsY2jER-OVKkQKKm64'),('Ang Mo Kio',1.3699718,103.8495876,'ChIJn0ZzleYW2jERBt5hM27FAkw'),('Bartley',1.3423252,103.8802484,'ChIJJRbTeJcX2jERlaDCZ_zNXqY'),('Bayfront',1.2813448,103.8589484,'ChIJPYxKUwQZ2jER7KUuPbBTsUQ'),('Beauty World',1.3416921,103.7759660,'ChIJ3R4LA4oQ2jERNSHfbiszO48'),('Bedok',1.3240113,103.9301725,'ChIJq_0PDLMi2jERb6799gqyk2E'),('Bishan',1.3513087,103.8491544,'ChIJ32t26hYX2jER6dCRixHVBJM'),('Boon Keng',1.3198587,103.8618306,'ChIJy7SWftEZ2jERRM4LKZ_0j8M'),('Boon Lay',1.3385559,103.7058277,'ChIJZZ5e1JIP2jER3nPOBF7LjTI'),('Botanic Gardens',1.3221102,103.8149828,'ChIJT1y8pwYa2jER8oi7FaUgAus'),('Braddell',1.3404334,103.8468013,'ChIJj1FG-WkX2jER3BHN3fuR95Y'),('Bras Basah',1.2969443,103.8507941,'ChIJSa3-naQZ2jERLE62C7okX-I'),('Buangkok',1.3830715,103.8931105,'ChIJX-pz3j8W2jER0fhQEhJ-KoM'),('Bugis',1.2995507,103.8568683,'ChIJuz41c7AZ2jERgl25Ot0ZuJw'),('Bukit Batok',1.3485641,103.7490636,'ChIJy37FHD8Q2jERQrs731bZT5Y'),('Bukit Gombak',1.3590369,103.7518278,'ChIJmYDhHjYQ2jERn_eQZlaFlkw'),('Bukit Panjang',1.3699218,103.7645493,'ChIJwTNm4a0R2jERoSGLsGQZveQ'),('Buona Vista',1.3073194,103.7899422,'ChIJsQvqY0Ia2jER_QrezH_adnY'),('Caldecott',1.3376585,103.8395412,'ChIJt4dBe0MX2jERv_W35iW_eSA'),('Cashew',1.3699218,103.7645493,'ChIJwTNm4a0R2jERoSGLsGQZveQ'),('Changi Airport',1.3573710,103.9888360,'ChIJF7Q9Fow82jERNvbZPNr07Xo'),('Chinatown',1.2839643,103.8434468,'ChIJfaoDoHQZ2jERLr4T5bcHKgM'),('Chinese Garden',1.3423597,103.7325541,'ChIJUeGvkh4Q2jER21Tz2-_e-_I'),('Choa Chu Kang',1.3851680,103.7443574,'ChIJCZRupukR2jERCglyJsNXaHE'),('City Hall',1.2930893,103.8519267,'ChIJz9dNmKYZ2jER1fKcZf6c9Fg'),('Clarke Quay',1.2886199,103.8471100,'ChIJJ92ckAoZ2jERRQL6F-fdd7c'),('Clementi',1.3151940,103.7647922,'ChIJwSNoSo4a2jERJV-XA_Ifq-Q'),('Commonwealth',1.3024476,103.7982907,'ChIJhY0kWUca2jERcQr3RFss0Fg'),('Dakota',1.3083577,103.8886855,'ChIJh13Ndz8Y2jERAqyDuHh6Qfs'),('Dhoby Ghaut',1.2997055,103.8454882,'ChIJGbzEZ70Z2jERHl4jQI1-c0Q'),('Dover',1.3113220,103.7786532,'ChIJI4ftDmEa2jERtj1VWjNTNRg'),('Downtown',1.2794670,103.8524576,'ChIJk4si1xEZ2jERnGbj_QIw9B8'),('Esplanade',1.2934360,103.8553810,'ChIJg-1OCaYZ2jERrP1VjFszkFQ'),('Eunos',1.3197777,103.9028587,'ChIJA08Q0gQY2jERrq60-mOgmxQ'),('Farrer Park',1.3124557,103.8548207,'ChIJ2_fgd8YZ2jERjjZDjwfps_c'),('Farrer Road',1.3175815,103.8077576,'ChIJfYAWKhAa2jERor0NyvIz_pU'),('Gul Circle',1.3195052,103.6605530,'ChIJYUYvP40F2jERo8Mjh_7RhSs'),('HarbourFront',1.2659167,103.8209079,'ChIJvVoiGuIb2jERe5Qtm_9EueU'),('Haw Par Villa',1.2831258,103.7819544,'ChIJCRjzJ68b2jER7QSuHv9dtN4'),('Hillview',1.3621275,103.7670071,'ChIJVXo4D1MQ2jERrFd9ABXPItU'),('Holland Village',1.3111869,103.7961423,'ChIJibY7cGsa2jER6eVsmwG3vQo'),('Hougang',1.3711282,103.8924668,'ChIJJwWqyzcW2jER6pLeAgv9qOU'),('Joo Koon',1.3277507,103.6783297,'ChIJK-VlIX4P2jERdpc51RYg9Lw'),('Jurong East',1.3331336,103.7422884,'ChIJL52pCg8Q2jERgiWsODe3X9I'),('Kallang',1.3114784,103.8713507,'ChIJ580nZDQY2jERNmMG5GQHQMI'),('Kembangan',1.3210276,103.9129091,'ChIJ9Qq5NwcY2jERMkhHdGleiKk'),('Kent Ridge',1.2924922,103.7848916,'ChIJOdueMVIa2jERhE4TnhWtNpo'),('Khatib',1.4173489,103.8330221,'ChIJrxLCiA0U2jER-R_D8ehBje4'),('King Albert Park',1.3357575,103.7831752,'ChIJk5Tkd4UQ2jERkkBBwZK8CMI'),('Kovan',1.3599937,103.8853009,'ChIJJ8F39rMX2jERDK76MHa6RwE'),('Kranji',1.4251684,103.7619192,'ChIJ54GIcUYS2jER3UQ5swvevls'),('Labrador Park',1.2722052,103.8024245,'ChIJszi8l8Eb2jERMYr0lHRAEBo'),('Lakeside',1.3442374,103.7207253,'ChIJRbJiD-cP2jERkXkR2OZh8hI'),('Lavender',1.3072265,103.8629510,'ChIJdeUW8LUZ2jERkHgM-FIPzc0'),('Little India',1.3035362,103.8525596,'ChIJV8sOb7kZ2jERBRSCAclpvf0'),('Lorong Chuan',1.3514809,103.8646643,'ChIJK2ewIQkX2jERNNpWkYHNPDk'),('MacPherson',1.3267424,103.8898817,'ChIJKW7xoooX2jERWCwU-Zxw1Vc'),('Marina Bay',1.2813448,103.8589484,'ChIJPYxKUwQZ2jER7KUuPbBTsUQ'),('Marina South Pier',1.2713951,103.8636337,'ChIJq0GQRB8Z2jERfz0GTv95OQg'),('Marsiling',1.4325197,103.7741190,'ChIJOfqWIFMS2jERa9KO1y1xmCM'),('Marymount',1.3485243,103.8394989,'ChIJRf3Ftj4X2jERvjPG4vhLNeY'),('Mountbatten',1.3061938,103.8825470,'ChIJg_aECkcY2jERfRwtMtOwcbs'),('Newton',1.3136071,103.8378110,'ChIJr18Rv-4Z2jERXFDaPCqD8UU'),('Nicoll Highway',1.3000484,103.8636666,'ChIJP2l0QrIZ2jER3tchWx8bNVs'),('Novena',1.3204301,103.8438181,'ChIJTxTEcecZ2jERVySfJurj8Ok'),('One North',1.2998788,103.7874313,'ChIJi9J7UkUa2jEREUidaQaWpMU'),('Orchard',1.3045879,103.8319307,'ChIJc6Z8jG8U2jERv8M81RFvr7Q'),('Outram Park',1.2797645,103.8395747,'ChIJaRyBB3IZ2jERiBztojttuT0'),('Pasir Panjang',1.2760331,103.7919041,'ChIJf0qJ7Lsb2jERvOs0xj0jZho'),('Pasir Ris',1.3730873,103.9493131,'ChIJzTCPALA92jERbKZCdNiIgNA'),('Paya Lebar',1.3174303,103.8921788,'ChIJU-xrGhgY2jERLX7VN6dXpsA'),('Pioneer',1.3373141,103.6968636,'ChIJzRnjMpAP2jERg3vUJQgsTI0'),('Potong Pasir',1.3312911,103.8687956,'ChIJm_MpH4IX2jERVIOW8M-HPjw'),('Promenade',1.2928916,103.8608530,'ChIJb0ITR6kZ2jER8-w2oQ7co7M'),('Punggol',1.4051700,103.9023559,'ChIJB9fWN-MV2jER0btc565fpUA'),('Queenstown',1.2952659,103.8056329,'ChIJx9rOZTEa2jERlZRq0UkmFS4'),('Raffles Place',1.2838627,103.8493554,'ChIJG9eysQ4Z2jERjKyYBmUQEXM'),('Redhill',1.2896276,103.8167623,'ChIJQ2MJTysa2jERGZ-q0JXY0qg'),('Rochor',1.3035362,103.8525596,'ChIJV8sOb7kZ2jERBRSCAclpvf0'),('Sembawang',1.4488796,103.8201024,'ChIJWUPdyWIT2jERxPOWpY4QJ5A'),('Sengkang',1.3915277,103.8954161,'ChIJuaN4bRIW2jERsZRWMegbqjU'),('Serangoon',1.3514809,103.8646643,'ChIJK2ewIQkX2jERNNpWkYHNPDk'),('Simei',1.3431974,103.9533771,'ChIJU1XTRiI92jERegtsZETZgPU'),('Sixth Avenue',1.3312349,103.7968943,'ChIJp0ROMp8Q2jERKYlWsK7ARrw'),('Somerset',1.3005915,103.8385290,'ChIJl3JJzpAZ2jERwwtDj3VXBYM'),('Stadium',1.3025028,103.8745655,'ChIJ1--Qyk4Y2jERqHYnktErHrM'),('Stevens',1.3200527,103.8258215,'ChIJNTPucPkZ2jER7fKC_YSmscM'),('Tai Seng',1.3359176,103.8876833,'ChIJ8TvwnY0X2jER3eTNw9iVmKE'),('Tampines',1.3532156,103.9452078,'ChIJQ2PMxhE92jERiewBne0iww8'),('Tan Kah Kee',1.3253631,103.8077988,'ChIJZUCWSAga2jERBxjf346lnBQ'),('Tanjong Pagar',1.2764031,103.8468585,'ChIJj7KfORMZ2jERJAUe-Q0aW5I'),('Telok Ayer',1.2822806,103.8483128,'ChIJ1-BSTQwZ2jERA6iv46k9c68'),('Telok Blangah',1.2706894,103.8098756,'ChIJWbYBqsIb2jERNsaPjl0rGdc'),('Tiong Bahru',1.2861934,103.8270194,'ChIJyVjyzn4Z2jERDXskfR5wNjY'),('Toa Payoh',1.3326911,103.8470785,'ChIJ48Ai4mYX2jER5M71MMdN5NY'),('Tuas Crescent',1.3210266,103.6490755,'ChIJ-0lQjPAF2jERJJJZHjuPqyM'),('Tuas Link',1.3404638,103.6368787,'ChIJsadYyEwP2jERL7SpvzQCd5Q'),('Tuas West Road',1.3299891,103.6396141,'ChIJwUy_rFUP2jERzltean2a4Ck'),('Woodlands',1.4369630,103.7864925,'ChIJUxRTh6gT2jERt8YBJbwhN4k'),('Woodleigh',1.3389179,103.8704719,'ChIJZ57syp0X2jERE4a9G0SQHl0'),('Yew Tee',1.3973811,103.7475000,'ChIJXda8xtoR2jERkD1aoLDmzhI'),('Yio Chu Kang',1.3817576,103.8448008,'ChIJn0tVp-oW2jERdiqBIe4em60'),('Yishun',1.4293199,103.8350278,'ChIJc6Z8jG8U2jERv8M81RFvr7Q');
/*!40000 ALTER TABLE `TrainStations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-06 15:13:13