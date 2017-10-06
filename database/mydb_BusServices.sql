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
-- Table structure for table `BusServices`
--

DROP TABLE IF EXISTS `BusServices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BusServices` (
  `serviceNo` varchar(17) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `name` varchar(300) DEFAULT NULL,
  `operator` varchar(50) DEFAULT NULL,
  `routes` int(11) DEFAULT NULL,
  PRIMARY KEY (`serviceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BusServices`
--

LOCK TABLES `BusServices` WRITE;
/*!40000 ALTER TABLE `BusServices` DISABLE KEYS */;
INSERT INTO `BusServices` VALUES ('10','Tampines Int - Kent Ridge Ter','sbs',2),('100','Serangoon Int - Ghim Moh Ter','sbs',2),('101','Serangoon Int','sbs',1),('102','Hougang Ctrl Int','sbs',1),('103','Serangoon Int - Yishun Temp Int','sbs',2),('105','Serangoon Int - Jurong East Temp Int','sbs',2),('106','Bt Batok Int - Shenton Way Ter','tower transit',2),('106A','Bt Batok Int - Clementi Stn','tower transit',1),('107','Hougang Ctrl Int - Shenton Way Ter','sbs',2),('107M','Hougang Ctrl Int','sbs',1),('109','Serangoon Int - Changi Village Ter','sbs',2),('10e','Opp Man Fatt Lam Tp - Opp AXA Twr','sbs',2),('11','Lor 1 Geylang Ter','sbs',1),('111','Ghim Moh Ter','sbs',1),('112','Hougang Ctrl Int','sbs',1),('113','Hougang Ctrl Int','sbs',1),('115','Hougang St 21 FC','sbs',1),('116','Hougang Ctrl Int','sbs',1),('117','Punggol Temp Int - Sembawang Int','sbs',2),('118','Punggol Temp Int - Changi Business Park Bus Terminal','go-ahead',2),('119','Punggol Temp Int','go-ahead',1),('12','Pasir Ris Int - New Bridge Rd Ter','go-ahead',2),('120','New Bridge Rd Ter','sbs',1),('121','New Bridge Rd Ter','sbs',1),('122','New Bridge Rd Ter','sbs',1),('123','Bt Merah Int - HarbourFront Int','sbs',2),('123M','HarbourFront Int','sbs',1),('124','St. Michael\'s Ter - HarbourFront Int','sbs',2),('125','St. Michael\'s Ter','sbs',1),('128','Ang Mo Kio Depot - Shenton Way Ter','sbs',2),('13','Yio Chu Kang Int - Upp East Coast Ter','sbs',2),('130','Ang Mo Kio Int - Shenton Way Ter','sbs',2),('131','St. Michael\'s Ter - Bt Merah Int','sbs',2),('131M','Bt Merah Int','sbs',1),('132','Hougang Ctrl Int - Bt Merah Int','sbs',2),('133','Ang Mo Kio Int - Shenton Way Ter','sbs',2),('134','Sims Pl Ter','sbs',1),('135','Ang Mo Kio Int','sbs',1),('135A','Ang Mo Kio Int - Victoria Sch','sbs',1),('136','Ang Mo Kio Int - Punggol Temp Int','go-ahead',2),('138','Ang Mo Kio Int','sbs',1),('139','Toa Payoh Int - Bt Merah Int','sbs',2),('139M','Toa Payoh Int','sbs',1),('14','Bedok Int - Clementi Int','sbs',2),('140','Lor 1 Geylang Ter','sbs',1),('141','Lor 1 Geylang Ter - Toa Payoh Int','sbs',2),('142','Toa Payoh Int','sbs',1),('143','Toa Payoh Int - Jurong East Temp Int','tower transit',2),('143M','Jurong East Temp Int','tower transit',1),('145','Toa Payoh Int - Buona Vista Ter','sbs',2),('147','Hougang Ctrl Int - Clementi Int','sbs',2),('14e','Blk 403 - Lucky Plaza','sbs',2),('15','Pasir Ris Int','go-ahead',1),('150','Eunos Int','sbs',1),('151','Hougang Ctrl Int - Kent Ridge Ter','sbs',2),('151e','Hougang Ctrl Int - Kent Ridge Ter','sbs',2),('153','Bt Merah Int - Hougang Ctrl Int','sbs',2),('154','Boon Lay Int - Eunos Int','sbs',2),('155','Toa Payoh Int','sbs',1),('155A','Toa Payoh Int - Victoria Sch','sbs',1),('156','Sengkang Int - Clementi Int','sbs',2),('157','Toa Payoh Int - Boon Lay Int','sbs',2),('158','Serangoon Int','sbs',1),('159','Sengkang Int - Toa Payoh Int','sbs',2),('15A','Pasir Ris Int - Opp Eunos Stn','go-ahead',1),('16','Bedok Int - Bt Merah Int','sbs',2),('160','Jurong East Temp Int','sbs',1),('161','Hougang Ctrl Int - Woodlands Temp Int','sbs',2),('162','Yio Chu Kang Int - Shenton Way Ter','sbs',2),('162M','Yio Chu Kang Int','sbs',1),('163','Sengkang Int - Toa Payoh Int','sbs',2),('163M','Sengkang Int','sbs',1),('165','Hougang Ctrl Int - Clementi Int','sbs',2),('166','Ang Mo Kio Int - Clementi Int','sbs',2),('167','Sembawang Int - Bt Merah Int','smrt',2),('168','Bedok Int - Woodlands Temp Int','sbs',2),('169','Woodlands Temp Int - Ang Mo Kio Int','smrt',2),('169A','Woodlands Temp Int - Aft NorthPoint Shop Ctr','smrt',1),('17','Pasir Ris Int - Bedok Int','go-ahead',2),('170','Queen St Ter - Larkin Ter','sbs',2),('170A','Queen St Ter - Woodlands Train Checkpt','sbs',1),('170X','Opp Kranji Stn - JB Sentral Bus Ter','sbs',2),('171','Yishun Temp Int - Pan Pacific Hotel','smrt',2),('172','Choa Chu Kang Int - Boon Lay Int','smrt',2),('173','Bt Batok Int','tower transit',1),('173A','Bt Batok Int - Blk 254','tower transit',1),('174','Boon Lay Int - New Bridge Rd Ter','sbs',2),('174e','Boon Lay Int - New Bridge Rd Ter','sbs',2),('175','Clementi Int - Lor 1 Geylang Ter','sbs',2),('176','Bt Panjang Temp Bus Pk - Bt Merah Int','smrt',2),('177','Bt Batok Int','tower transit',1),('178','Woodlands Temp Int - Boon Lay Int','smrt',2),('178A','Woodlands Temp Int - Kranji Stn','smrt',1),('179','Boon Lay Int','sbs',1),('17A','Bedok Int - SBST Bedok Bus Pk','go-ahead',1),('18','Tampines Int','sbs',1),('180','Boon Lay Int','smrt',1),('180A','Boon Lay Int - Blk 183','smrt',1),('181','Boon Lay Int','sbs',1),('181M','Boon Lay Int','sbs',1),('182','Joo Koon Int','sbs',1),('182M','Joo Koon Int','sbs',1),('183','Jurong East Temp Int','tower transit',1),('183B','Jurong East Temp Int - Ulu Pandan R.I. Plant','tower transit',1),('184','Bt Panjang Temp Bus Pk - Blk 183','smrt',1),('185','Soon Lee Bus Pk - Buona Vista Ter','sbs',2),('186','Shenton Way Ter - St. Michael\'s Ter','sbs',2),('187','Woodlands Temp Int - Boon Lay Int','smrt',2),('188','Choa Chu Kang Int - HarbourFront Int','smrt',2),('188E','Choa Chu Kang Int - HarbourFront Int','smrt',1),('188R','Choa Chu Kang Int - Resorts World Sentosa','smrt',2),('189','Bt Batok Int','tower transit',1),('189A','Bt Batok Int - Opp Midview Bldg','tower transit',1),('19','Tampines Int','sbs',1),('190','Choa Chu Kang Int - New Bridge Rd Ter','smrt',2),('190A','Choa Chu Kang Int - Dhoby Ghaut Stn','smrt',1),('191','Buona Vista Ter','sbs',1),('192','Boon Lay Int - Tuas Ter','sbs',2),('193','Boon Lay Int - Tuas Ter','sbs',2),('194','Boon Lay Int','sbs',1),('195','Marina Ctr Ter','sbs',1),('196','Bedok Int - Clementi Int','sbs',2),('196e','Lagoon View - Opp MAS Bldg','sbs',2),('197','Bedok Int - Jurong East Temp Int','sbs',2),('198','Boon Lay Int - Bt Merah Int','sbs',2),('199','Boon Lay Int','sbs',1),('1N','Marina Ctr Ter - Blk 798','sbs',1),('2','Changi Village Ter - New Bridge Rd Ter','go-ahead',2),('20','Tampines Int','sbs',1),('200','Buona Vista Ter','sbs',1),('201','Kent Ridge Ter','sbs',1),('21','Pasir Ris Int - St. Michael\'s Ter','sbs',2),('22','Ang Mo Kio Int - Tampines Int','sbs',2),('222','Bedok Int','sbs',1),('222B','Bedok Stn','sbs',1),('225G','Bedok Int','sbs',1),('225W','Bedok Int','sbs',1),('228','Bedok Int','sbs',1),('229','Bedok Int','sbs',1),('23','Tampines Int','sbs',1),('231','Toa Payoh Int','sbs',1),('232','Toa Payoh Int','sbs',1),('235','Toa Payoh Int','sbs',1),('238','Toa Payoh Int','sbs',1),('24','Ang Mo Kio Int','sbs',1),('240','Boon Lay Int','sbs',1),('240M','Lakeside Stn - Opp Lakeside Stn','sbs',1),('241','Boon Lay Int','sbs',1),('242','Boon Lay Int','sbs',1),('243G','Boon Lay Int','sbs',1),('243W','Boon Lay Int','sbs',1),('246','Boon Lay Int','sbs',1),('249','Boon Lay Int','sbs',1),('25','Ang Mo Kio Int - Bedok Int','sbs',2),('251','Boon Lay Int','sbs',1),('252','Boon Lay Int','sbs',1),('253','Joo Koon Int','sbs',1),('254','Joo Koon Int','sbs',1),('255','Joo Koon Int','sbs',1),('256','Boon Lay Int','sbs',1),('257','Joo Koon Int','sbs',1),('258','Joo Koon Int','sbs',1),('26','Bedok Int - Toa Payoh Int','sbs',2),('261','Ang Mo Kio Int','sbs',1),('262','Ang Mo Kio Int','sbs',1),('265','Ang Mo Kio Depot','sbs',1),('268','Ang Mo Kio Depot','sbs',1),('268B','Opp AMK Police Div HQ - Ang Mo Kio Stn','sbs',1),('268C','Opp Ang Mo Kio Stn - AMK Police Div HQ','sbs',1),('269','Ang Mo Kio Int','sbs',1),('27','Hougang Ctrl Int','sbs',1),('272','Bt Merah Int','sbs',1),('273','Bt Merah Int','sbs',1),('28','Tampines Int - Toa Payoh Int','sbs',2),('282','Clementi Int','tower transit',1),('284','Clementi Int','tower transit',1),('285','Clementi Int','tower transit',1),('29','Tampines Int','sbs',1),('291','Tampines Int','sbs',1),('292','Tampines Int','sbs',1),('293','Tampines Int','sbs',1),('2N','Marina Ctr Ter - Blk 888','sbs',1),('3','Tampines Int - Punggol Temp Int','go-ahead',2),('30','Bedok Int - Boon Lay Int','sbs',2),('300','Choa Chu Kang Int','smrt',1),('301','Choa Chu Kang Int','smrt',1),('302','Choa Chu Kang Int','smrt',1),('302A','Yew Tee Stn - Opp Yew Tee Stn','smrt',1),('307','Choa Chu Kang Int','smrt',1),('307A','Lot 1 Shoppers\' Mall - Opp Choa Chu Kang Stn','smrt',1),('308','Choa Chu Kang Int','smrt',1),('30e','Bedok Int - Opp Heng Mui Keng Terr','sbs',2),('31','Tampines Int - Toa Payoh Int','sbs',2),('315','Serangoon Int','sbs',1),('317','Serangoon Int','sbs',1),('32','Bedok Int - Buona Vista Ter','sbs',2),('324','Hougang Ctrl Int','sbs',1),('325','Hougang Ctrl Int','sbs',1),('33','Bedok Int - Kent Ridge Ter','sbs',2),('333','Jurong East Temp Int','tower transit',1),('334','Jurong East Temp Int','tower transit',1),('335','Jurong East Temp Int','tower transit',1),('33A','Kent Ridge Ter - Blk 1','sbs',1),('33B','Bedok Int - Aft Tembeling Rd','sbs',1),('34','Punggol Temp Int','go-ahead',1),('34A','Punggol Temp Int - Opp Tampines Stadium','go-ahead',1),('35','Bedok Int','sbs',1),('354','Pasir Ris Int','go-ahead',1),('358','Pasir Ris Int','go-ahead',1),('359','Pasir Ris Int','go-ahead',1),('35M','Bedok Int','sbs',1),('36','Changi Airport PTB2','go-ahead',1),('36A','Changi Airport PTB2 - The Regent S\'pore','go-ahead',1),('36B','Lagoon View - Opp Mandarin Gdns','go-ahead',1),('37','Tampines Int','sbs',1),('371','Sengkang Int','sbs',1),('372','Sengkang Int','sbs',1),('38','Tampines Int - Bedok Int','sbs',2),('382G','Punggol Temp Int','go-ahead',1),('382W','Punggol Temp Int','go-ahead',1),('386','Punggol Temp Int','go-ahead',1),('39','Tampines Int - Yishun Temp Int','sbs',2),('3A','Tampines Int - Blk 747A','go-ahead',1),('3B','Blk 738 - Pasir Ris Int','go-ahead',1),('3N','Marina Ctr Ter - Blk 708','sbs',1),('4','Tampines Int','sbs',1),('40','Bedok Int','sbs',1),('400','Shenton Way Ter','sbs',1),('401','Bedok Int','sbs',1),('402','Shenton Way Ter','sbs',1),('403','Pasir Ris Int','go-ahead',1),('405','Boon Lay Int','sbs',1),('408','HarbourFront Int','null',1),('41','Jurong East Temp Int','tower transit',1),('410G','Bishan Int','sbs',1),('410W','Bishan Int','sbs',1),('42','Kembangan Stn','sbs',1),('43','Punggol Temp Int - Upp East Coast Ter','go-ahead',2),('43M','Punggol Temp Int','go-ahead',1),('45','Upp East Coast Ter - Ang Mo Kio Depot','sbs',2),('46','Upp East Coast Ter - Tampines Int','sbs',2),('47','Changi Business Park Bus Terminal','sbs',1),('48','Bedok Nth Depot - Buona Vista Ter','sbs',2),('49','Jurong East Temp Int','tower transit',1),('4N','Marina Ctr Ter - Blk 210','sbs',1),('5','Pasir Ris Int - Bt Merah Int','sbs',2),('50','Bishan Int - Punggol Temp Int','sbs',2),('502','Soon Lee Bus Pk','sbs',1),('502A','Soon Lee Bus Pk - Downtown Stn','sbs',1),('506','Jurong East Temp Int - Upp East Coast Ter','sbs',2),('51','Hougang Ctrl Int - Jurong East Temp Int','sbs',2),('513','Darul Ghufran Mque - Opp MAS Bldg','sbs',2),('518','Pasir Ris Int','go-ahead',1),('518A','Pasir Ris Int - Opp Marina Bay Sands MICE','go-ahead',1),('52','Bishan Int - Jurong East Temp Int','sbs',2),('53','Bishan Int','sbs',1),('53A','Blk 738 - Changi Airport PTB2','sbs',1),('53M','Opp Blk 232 - Blk 232','sbs',1),('54','Bishan Int - New Bridge Rd Ter','sbs',2),('55','Bishan Int','sbs',1),('56','Bishan Int - Marina Ctr Ter','sbs',2),('57','Bishan Int - Bt Merah Int','sbs',2),('58','Bishan Int - Pasir Ris Int','sbs',2),('59','Bishan Int - Changi Village Ter','sbs',2),('5N','Marina Ctr Ter - Blk 924','sbs',1),('6','Pasir Ris Int','go-ahead',1),('60','Eunos Int','sbs',1),('61','Bt Batok Int - Eunos Int','smrt',2),('62','Punggol Temp Int','go-ahead',1),('62A','Punggol Temp Int - Aljunied Stn','go-ahead',1),('63','Eunos Int','sbs',1),('63M','Eunos Int','sbs',1),('64','Sims Pl Ter','sbs',1),('65','Tampines Int - HarbourFront Int','sbs',2),('66','Bedok Int - Jurong East Temp Int','tower transit',2),('66A','Bedok Int - Opp Little India Stn','tower transit',1),('66B','Blk 44 - Jurong East Temp Int','tower transit',2),('67','Choa Chu Kang Int - Tampines Int','smrt',2),('69','Tampines Int','sbs',1),('6N','Marina Ctr Ter - Opp Blk 201A','sbs',1),('7','Bedok Int - Clementi Int','sbs',2),('70','Yio Chu Kang Int - Shenton Way Ter','sbs',2),('700','Bt Panjang Temp Bus Pk - Aft Shenton Way','smrt',2),('700A','Bt Panjang Temp Bus Pk - Blk 183','smrt',1),('70M','Yio Chu Kang Int','sbs',1),('72','Yio Chu Kang Int - Tampines Int','sbs',2),('73','Ang Mo Kio Int','sbs',1),('74','Hougang Ctrl Int - Buona Vista Ter','sbs',2),('74e','Hougang Ctrl Int - Buona Vista Ter','sbs',2),('75','Bt Panjang Temp Bus Pk - Pan Pacific Hotel','smrt',2),('75A','Bt Panjang Temp Bus Pk - Opp SIM HQ','smrt',1),('76','Yio Chu Kang Int - Eunos Int','sbs',2),('77','Bt Batok Int - Marina Ctr Ter','tower transit',2),('78','Jurong East Temp Int','tower transit',1),('78A','Jurong East Temp Int - ECS Freight Svcs','tower transit',1),('79','Jurong East Temp Int','tower transit',1),('79A','Jurong East Temp Int - Boon Lay Int','tower transit',1),('8','Tampines Int - Toa Payoh Int','sbs',2),('80','Sengkang Int - HarbourFront Int','sbs',2),('800','Yishun Temp Int','smrt',1),('803','Yishun Temp Int','smrt',1),('804','Yishun Temp Int','smrt',1),('805','Yishun Temp Int','smrt',1),('806','Yishun Temp Int','smrt',1),('81','Tampines Int','sbs',1),('811','Yishun Temp Int - Opp Blk 201','smrt',1),('811A','Yishun Temp Int - Blk 151','smrt',1),('812','Yishun Temp Int - Opp Blk 201','smrt',1),('82','Punggol Temp Int','go-ahead',1),('825','Yio Chu Kang Int','smrt',1),('83','Punggol Temp Int','go-ahead',1),('84','Punggol Temp Int','go-ahead',1),('85','Punggol Temp Int - Yishun Temp Int','go-ahead',2),('850E','Blk 432C - Opp MAS Bldg','smrt',2),('851','Yishun Temp Int - Bt Merah Int','smrt',2),('852','Yishun Temp Int - Bt Batok Int','smrt',2),('853','Yishun Temp Int - Lor 1 Geylang Ter','smrt',2),('853C','Yishun Temp Int - Upp East Coast Ter','smrt',2),('854','Yishun Temp Int - Bedok Int','smrt',2),('854E','Yishun Temp Int - Bedok Int','smrt',1),('855','Yishun Temp Int - HarbourFront Int','smrt',2),('856','Yishun Temp Int - Woodlands Temp Int','smrt',2),('857','Yishun Temp Int','smrt',1),('857A','Yishun Temp Int - Opp Sunrise Gdns','smrt',1),('858','Woodlands Temp Int','smrt',1),('858A','Woodlands Temp Int - Aft NorthPoint Shop Ctr','smrt',1),('859','Sembawang Int','smrt',1),('859A','Sembawang Int','smrt',1),('859B','Sembawang Int','smrt',1),('86','Sengkang Int - Ang Mo Kio Int','sbs',2),('860','Yishun Temp Int','smrt',1),('860A','Yishun Temp Int - Opp Blk 798','smrt',1),('868','Blk 347 - Opp Millenia Twr','smrt',1),('87','Sengkang Int - Bedok Int','sbs',2),('88','Pasir Ris Int - Toa Payoh Int','sbs',2),('882','Sembawang Int','smrt',1),('882A','Sembawang Int - Blk 592A','smrt',1),('883','Sembawang Int','null',1),('89','Hougang Ctrl Int','sbs',1),('89e','Hougang Ctrl Int - SATS Cargo Ter','sbs',2),('9','Bedok Int','sbs',1),('90','Toa Payoh Int','sbs',1),('900','Woodlands Temp Int','smrt',1),('900A','Woodlands Temp Int','smrt',1),('901','Woodlands Temp Int','smrt',1),('902','Woodlands Temp Int - Republic Poly','smrt',1),('903','Woodlands Temp Int','smrt',1),('904','Woodlands Temp Int','smrt',1),('91','Buona Vista Ter','sbs',1),('911','Woodlands Temp Int','smrt',1),('912','Woodlands Temp Int','smrt',1),('912M','Woodlands Temp Int','smrt',1),('913','Woodlands Temp Int','smrt',1),('92','Ghim Moh Ter','sbs',1),('920','Bt Panjang Temp Bus Pk - Aft Bt Panjang Stn','smrt',1),('922','Bt Panjang Temp Bus Pk - Aft Bt Panjang Stn','smrt',1),('925','Woodlands Temp Int - Choa Chu Kang Int','smrt',2),('925C','Woodlands Temp Int','smrt',1),('926','Woodlands Temp Int','smrt',1),('927','Choa Chu Kang Int','smrt',1),('92M','Ghim Moh Ter','sbs',1),('93','HarbourFront Int - Eunos Int','sbs',2),('94','Eunos Int','sbs',1),('941','Bt Batok Int','tower transit',1),('945','Bt Batok Int','tower transit',1),('947','Bt Batok Int','tower transit',1),('95','Kent Ridge Ter','sbs',1),('950','Woodlands Temp Int','smrt',1),('951E','Blk 875 - Opp MAS Bldg','smrt',2),('96','Clementi Int','tower transit',1),('960','Woodlands Temp Int - Pan Pacific Hotel','smrt',2),('961','Woodlands Temp Int - Lor 1 Geylang Ter','smrt',2),('961C','Woodlands Temp Int - Lor 1 Geylang Ter','smrt',2),('962','Woodlands Temp Int','smrt',1),('962B','Opp Sun Plaza - Sun Plaza','smrt',1),('962C','Blk 618 - Blk 680','smrt',1),('963','Woodlands Temp Int - HarbourFront Int','smrt',2),('963E','Woodlands Temp Int - HarbourFront Int','smrt',2),('963R','Woodlands Temp Int - Resorts World Sentosa','smrt',2),('964','Woodlands Temp Int','smrt',1),('965','Woodlands Temp Int','smrt',1),('965A','Woodlands Temp Int - Aft NorthPoint Shop Ctr','smrt',1),('966','Woodlands Temp Int','smrt',1),('969','Woodlands Temp Int - Tampines Int','smrt',2),('97','Jurong East Temp Int - Marina Ctr Ter','tower transit',2),('970','Bt Panjang Temp Bus Pk - Aft Shenton Way','smrt',2),('971E','Bt Panjang Temp Bus Pk - Prudential Twr','smrt',2),('972','Bt Panjang Temp Bus Pk - Blk 183','smrt',1),('972A','Bt Panjang Temp Bus Pk - Dhoby Ghaut Stn','smrt',1),('975','Bt Panjang Temp Bus Pk - Blk 180','smrt',1),('975A','Bt Panjang Temp Bus Pk - Aft Old Lim Chu Kang Rd','smrt',1),('975B','Opp Choa Chu Kang Stn - Opp Lim Chu Kang Lane 3','smrt',1),('979','Bt Panjang Temp Bus Pk - Blk 183','smrt',1),('979M','Bt Panjang Temp Bus Pk - Blk 183','smrt',1),('97e','Jurong East Temp Int - Marina Ctr Ter','tower transit',2),('98','Jurong East Temp Int','tower transit',1),('980','Sembawang Int - Lor 1 Geylang Ter','smrt',2),('981','Sembawang Int - Bef Senoko Dr','smrt',2),('982E','Opp Blk 489A - Marina Bay Financial Ctr','smrt',2),('983','Choa Chu Kang Int','smrt',1),('985','Choa Chu Kang Int - Lor 1 Geylang Ter','smrt',2),('98A','Lakeside Stn - Corporation Pl','tower transit',1),('98B','Blk 490 - Jurong Island Checkpt','tower transit',1),('98M','Jurong East Temp Int','tower transit',1),('99','Clementi Int - Joo Koon Int','sbs',2),('990','Bt Batok Int','tower transit',1),('BPS1','BLK 457 - Choa Chu Kang Int','smrt',2),('CT18','Blk 403 - New Bridge Rd Ter','sbs',2),('CT28','New Bridge Rd Ter','sbs',1),('CT8','Opp Ang Mo Kio Comm Hosp - New Bridge Rd Ter','sbs',2),('NR1','Resorts World Sentosa - Blk 798','smrt',1),('NR2','Marina Ctr Ter - Blk 317','smrt',1),('NR3','Boat Quay - Choa Chu Kang Int','smrt',1),('NR5','Marina Ctr Ter - Blk 685B','smrt',1),('NR6','Resorts World Sentosa - Blk 225A','smrt',1),('NR7','Marina Ctr Ter - Opp Blk 275','smrt',1),('NR8','Marina Ctr Ter - Blk 531','smrt',1),('RWS8','Resorts World Sentosa','null',1);
/*!40000 ALTER TABLE `BusServices` ENABLE KEYS */;
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
