-- phpMyAdmin SQL Dump
-- version 2.11.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2012 at 12:30 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `db_career`
--
CREATE DATABASE `db_career` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_career`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) unsigned NOT NULL auto_increment COMMENT 'user_id',
  `full_name` varchar(100) default NULL,
  `email` varchar(256) default NULL,
  `password` varchar(100) NOT NULL,
  `admin_type` tinyint(2) NOT NULL default '0',
  `entry_date` date NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `full_name`, `email`, `password`, `admin_type`, `entry_date`, `status`) VALUES
(1, 'Admin', 'nur@ask.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `applicants_services`
--

CREATE TABLE `applicants_services` (
  `applicants_services_id` int(11) unsigned NOT NULL auto_increment COMMENT 'app service id',
  `resume_id` int(10) NOT NULL,
  `services_id` int(10) NOT NULL,
  `entry_date` date NOT NULL,
  `admin_id` int(10) NOT NULL,
  PRIMARY KEY  (`applicants_services_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `applicants_services`
--


-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `Code` char(3) NOT NULL default '',
  `Name` char(52) NOT NULL default '',
  `Continent` enum('Asia','Europe','North America','Africa','Oceania','Antarctica','South America') NOT NULL default 'Asia',
  `Region` char(26) NOT NULL default '',
  `SurfaceArea` float(10,2) NOT NULL default '0.00',
  `IndepYear` smallint(6) default NULL,
  `Population` int(11) NOT NULL default '0',
  `LifeExpectancy` float(3,1) default NULL,
  `GNP` float(10,2) default NULL,
  `GNPOld` float(10,2) default NULL,
  `LocalName` char(45) NOT NULL default '',
  `GovernmentForm` char(45) NOT NULL default '',
  `HeadOfState` char(60) default NULL,
  `Capital` int(11) default NULL,
  `Code2` char(2) NOT NULL default '',
  PRIMARY KEY  (`Code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`Code`, `Name`, `Continent`, `Region`, `SurfaceArea`, `IndepYear`, `Population`, `LifeExpectancy`, `GNP`, `GNPOld`, `LocalName`, `GovernmentForm`, `HeadOfState`, `Capital`, `Code2`) VALUES
('ABW', 'Aruba', 'North America', 'Caribbean', 193.00, NULL, 103000, 78.4, 828.00, 793.00, 'Aruba', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 129, 'AW'),
('AFG', 'Afghanistan', 'Asia', 'Southern and Central Asia', 652090.00, 1919, 22720000, 45.9, 5976.00, NULL, 'Afganistan/Afqanestan', 'Islamic Emirate', 'Mohammad Omar', 1, 'AF'),
('AGO', 'Angola', 'Africa', 'Central Africa', 1246700.00, 1975, 12878000, 38.3, 6648.00, 7984.00, 'Angola', 'Republic', 'JosÃ© Eduardo dos Santos', 56, 'AO'),
('AIA', 'Anguilla', 'North America', 'Caribbean', 96.00, NULL, 8000, 76.1, 63.20, NULL, 'Anguilla', 'Dependent Territory of the UK', 'Elisabeth II', 62, 'AI'),
('ALB', 'Albania', 'Europe', 'Southern Europe', 28748.00, 1912, 3401200, 71.6, 3205.00, 2500.00, 'ShqipÃ«ria', 'Republic', 'Rexhep Mejdani', 34, 'AL'),
('AND', 'Andorra', 'Europe', 'Southern Europe', 468.00, 1278, 78000, 83.5, 1630.00, NULL, 'Andorra', 'Parliamentary Coprincipality', '', 55, 'AD'),
('ANT', 'Netherlands Antilles', 'North America', 'Caribbean', 800.00, NULL, 217000, 74.7, 1941.00, NULL, 'Nederlandse Antillen', 'Nonmetropolitan Territory of The Netherlands', 'Beatrix', 33, 'AN'),
('ARE', 'United Arab Emirates', 'Asia', 'Middle East', 83600.00, 1971, 2441000, 74.1, 37966.00, 36846.00, 'Al-Imarat al-Â´Arabiya al-Muttahida', 'Emirate Federation', 'Zayid bin Sultan al-Nahayan', 65, 'AE'),
('ARG', 'Argentina', 'South America', 'South America', 2780400.00, 1816, 37032000, 75.1, 340238.00, 323310.00, 'Argentina', 'Federal Republic', 'Fernando de la RÃºa', 69, 'AR'),
('ARM', 'Armenia', 'Asia', 'Middle East', 29800.00, 1991, 3520000, 66.4, 1813.00, 1627.00, 'Hajastan', 'Republic', 'Robert KotÅ¡arjan', 126, 'AM'),
('ASM', 'American Samoa', 'Oceania', 'Polynesia', 199.00, NULL, 68000, 75.1, 334.00, NULL, 'Amerika Samoa', 'US Territory', 'George W. Bush', 54, 'AS'),
('ATA', 'Antarctica', 'Antarctica', 'Antarctica', 13120000.00, NULL, 0, NULL, 0.00, NULL, 'â€“', 'Co-administrated', '', NULL, 'AQ'),
('ATF', 'French Southern territories', 'Antarctica', 'Antarctica', 7780.00, NULL, 0, NULL, 0.00, NULL, 'Terres australes franÃ§aises', 'Nonmetropolitan Territory of France', 'Jacques Chirac', NULL, 'TF'),
('ATG', 'Antigua and Barbuda', 'North America', 'Caribbean', 442.00, 1981, 68000, 70.5, 612.00, 584.00, 'Antigua and Barbuda', 'Constitutional Monarchy', 'Elisabeth II', 63, 'AG'),
('AUS', 'Australia', 'Oceania', 'Australia and New Zealand', 7741220.00, 1901, 18886000, 79.8, 351182.00, 392911.00, 'Australia', 'Constitutional Monarchy, Federation', 'Elisabeth II', 135, 'AU'),
('AUT', 'Austria', 'Europe', 'Western Europe', 83859.00, 1918, 8091800, 77.7, 211860.00, 206025.00, 'Ã–sterreich', 'Federal Republic', 'Thomas Klestil', 1523, 'AT'),
('AZE', 'Azerbaijan', 'Asia', 'Middle East', 86600.00, 1991, 7734000, 62.9, 4127.00, 4100.00, 'AzÃ¤rbaycan', 'Federal Republic', 'HeydÃ¤r Ã„liyev', 144, 'AZ'),
('BDI', 'Burundi', 'Africa', 'Eastern Africa', 27834.00, 1962, 6695000, 46.2, 903.00, 982.00, 'Burundi/Uburundi', 'Republic', 'Pierre Buyoya', 552, 'BI'),
('BEL', 'Belgium', 'Europe', 'Western Europe', 30518.00, 1830, 10239000, 77.8, 249704.00, 243948.00, 'BelgiÃ«/Belgique', 'Constitutional Monarchy, Federation', 'Albert II', 179, 'BE'),
('BEN', 'Benin', 'Africa', 'Western Africa', 112622.00, 1960, 6097000, 50.2, 2357.00, 2141.00, 'BÃ©nin', 'Republic', 'Mathieu KÃ©rÃ©kou', 187, 'BJ'),
('BFA', 'Burkina Faso', 'Africa', 'Western Africa', 274000.00, 1960, 11937000, 46.7, 2425.00, 2201.00, 'Burkina Faso', 'Republic', 'Blaise CompaorÃ©', 549, 'BF'),
('BGD', 'Bangladesh', 'Asia', 'Southern and Central Asia', 143998.00, 1971, 129155000, 60.2, 32852.00, 31966.00, 'Bangladesh', 'Republic', 'Shahabuddin Ahmad', 150, 'BD'),
('BGR', 'Bulgaria', 'Europe', 'Eastern Europe', 110994.00, 1908, 8190900, 70.9, 12178.00, 10169.00, 'Balgarija', 'Republic', 'Petar Stojanov', 539, 'BG'),
('BHR', 'Bahrain', 'Asia', 'Middle East', 694.00, 1971, 617000, 73.0, 6366.00, 6097.00, 'Al-Bahrayn', 'Monarchy (Emirate)', 'Hamad ibn Isa al-Khalifa', 149, 'BH'),
('BHS', 'Bahamas', 'North America', 'Caribbean', 13878.00, 1973, 307000, 71.1, 3527.00, 3347.00, 'The Bahamas', 'Constitutional Monarchy', 'Elisabeth II', 148, 'BS'),
('BIH', 'Bosnia and Herzegovina', 'Europe', 'Southern Europe', 51197.00, 1992, 3972000, 71.5, 2841.00, NULL, 'Bosna i Hercegovina', 'Federal Republic', 'Ante Jelavic', 201, 'BA'),
('BLR', 'Belarus', 'Europe', 'Eastern Europe', 207600.00, 1991, 10236000, 68.0, 13714.00, NULL, 'Belarus', 'Republic', 'Aljaksandr LukaÅ¡enka', 3520, 'BY'),
('BLZ', 'Belize', 'North America', 'Central America', 22696.00, 1981, 241000, 70.9, 630.00, 616.00, 'Belize', 'Constitutional Monarchy', 'Elisabeth II', 185, 'BZ'),
('BMU', 'Bermuda', 'North America', 'North America', 53.00, NULL, 65000, 76.9, 2328.00, 2190.00, 'Bermuda', 'Dependent Territory of the UK', 'Elisabeth II', 191, 'BM'),
('BOL', 'Bolivia', 'South America', 'South America', 1098581.00, 1825, 8329000, 63.7, 8571.00, 7967.00, 'Bolivia', 'Republic', 'Hugo BÃ¡nzer SuÃ¡rez', 194, 'BO'),
('BRA', 'Brazil', 'South America', 'South America', 8547403.00, 1822, 170115000, 62.9, 776739.00, 804108.00, 'Brasil', 'Federal Republic', 'Fernando Henrique Cardoso', 211, 'BR'),
('BRB', 'Barbados', 'North America', 'Caribbean', 430.00, 1966, 270000, 73.0, 2223.00, 2186.00, 'Barbados', 'Constitutional Monarchy', 'Elisabeth II', 174, 'BB'),
('BRN', 'Brunei', 'Asia', 'Southeast Asia', 5765.00, 1984, 328000, 73.6, 11705.00, 12460.00, 'Brunei Darussalam', 'Monarchy (Sultanate)', 'Haji Hassan al-Bolkiah', 538, 'BN'),
('BTN', 'Bhutan', 'Asia', 'Southern and Central Asia', 47000.00, 1910, 2124000, 52.4, 372.00, 383.00, 'Druk-Yul', 'Monarchy', 'Jigme Singye Wangchuk', 192, 'BT'),
('BVT', 'Bouvet Island', 'Antarctica', 'Antarctica', 59.00, NULL, 0, NULL, 0.00, NULL, 'BouvetÃ¸ya', 'Dependent Territory of Norway', 'Harald V', NULL, 'BV'),
('BWA', 'Botswana', 'Africa', 'Southern Africa', 581730.00, 1966, 1622000, 39.3, 4834.00, 4935.00, 'Botswana', 'Republic', 'Festus G. Mogae', 204, 'BW'),
('CAF', 'Central African Republic', 'Africa', 'Central Africa', 622984.00, 1960, 3615000, 44.0, 1054.00, 993.00, 'Centrafrique/BÃª-AfrÃ®ka', 'Republic', 'Ange-FÃ©lix PatassÃ©', 1889, 'CF'),
('CAN', 'Canada', 'North America', 'North America', 9970610.00, 1867, 31147000, 79.4, 598862.00, 625626.00, 'Canada', 'Constitutional Monarchy, Federation', 'Elisabeth II', 1822, 'CA'),
('CCK', 'Cocos (Keeling) Islands', 'Oceania', 'Australia and New Zealand', 14.00, NULL, 600, NULL, 0.00, NULL, 'Cocos (Keeling) Islands', 'Territory of Australia', 'Elisabeth II', 2317, 'CC'),
('CHE', 'Switzerland', 'Europe', 'Western Europe', 41284.00, 1499, 7160400, 79.6, 264478.00, 256092.00, 'Schweiz/Suisse/Svizzera/Svizra', 'Federation', 'Adolf Ogi', 3248, 'CH'),
('CHL', 'Chile', 'South America', 'South America', 756626.00, 1810, 15211000, 75.7, 72949.00, 75780.00, 'Chile', 'Republic', 'Ricardo Lagos Escobar', 554, 'CL'),
('CHN', 'China', 'Asia', 'Eastern Asia', 9572900.00, -1523, 1277558000, 71.4, 982268.00, 917719.00, 'Zhongquo', 'People''sRepublic', 'Jiang Zemin', 1891, 'CN'),
('CIV', 'CÃ´te dâ€™Ivoire', 'Africa', 'Western Africa', 322463.00, 1960, 14786000, 45.2, 11345.00, 10285.00, 'CÃ´te dâ€™Ivoire', 'Republic', 'Laurent Gbagbo', 2814, 'CI'),
('CMR', 'Cameroon', 'Africa', 'Central Africa', 475442.00, 1960, 15085000, 54.8, 9174.00, 8596.00, 'Cameroun/Cameroon', 'Republic', 'Paul Biya', 1804, 'CM'),
('COD', 'Congo, The Democratic Republic of the', 'Africa', 'Central Africa', 2344858.00, 1960, 51654000, 48.8, 6964.00, 2474.00, 'RÃ©publique DÃ©mocratique du Congo', 'Republic', 'Joseph Kabila', 2298, 'CD'),
('COG', 'Congo', 'Africa', 'Central Africa', 342000.00, 1960, 2943000, 47.4, 2108.00, 2287.00, 'Congo', 'Republic', 'Denis Sassou-Nguesso', 2296, 'CG'),
('COK', 'Cook Islands', 'Oceania', 'Polynesia', 236.00, NULL, 20000, 71.1, 100.00, NULL, 'The Cook Islands', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 583, 'CK'),
('COL', 'Colombia', 'South America', 'South America', 1138914.00, 1810, 42321000, 70.3, 102896.00, 105116.00, 'Colombia', 'Republic', 'AndrÃ©s Pastrana Arango', 2257, 'CO'),
('COM', 'Comoros', 'Africa', 'Eastern Africa', 1862.00, 1975, 578000, 60.0, 4401.00, 4361.00, 'Komori/Comores', 'Republic', 'Azali Assoumani', 2295, 'KM'),
('CPV', 'Cape Verde', 'Africa', 'Western Africa', 4033.00, 1975, 428000, 68.9, 435.00, 420.00, 'Cabo Verde', 'Republic', 'AntÃ³nio Mascarenhas Monteiro', 1859, 'CV'),
('CRI', 'Costa Rica', 'North America', 'Central America', 51100.00, 1821, 4023000, 75.8, 10226.00, 9757.00, 'Costa Rica', 'Republic', 'Miguel Ã?ngel RodrÃ­guez EcheverrÃ­a', 584, 'CR'),
('CUB', 'Cuba', 'North America', 'Caribbean', 110861.00, 1902, 11201000, 76.2, 17843.00, 18862.00, 'Cuba', 'Socialistic Republic', 'Fidel Castro Ruz', 2413, 'CU'),
('CXR', 'Christmas Island', 'Oceania', 'Australia and New Zealand', 135.00, NULL, 2500, NULL, 0.00, NULL, 'Christmas Island', 'Territory of Australia', 'Elisabeth II', 1791, 'CX'),
('CYM', 'Cayman Islands', 'North America', 'Caribbean', 264.00, NULL, 38000, 78.9, 1263.00, 1186.00, 'Cayman Islands', 'Dependent Territory of the UK', 'Elisabeth II', 553, 'KY'),
('CYP', 'Cyprus', 'Asia', 'Middle East', 9251.00, 1960, 754700, 76.7, 9333.00, 8246.00, 'KÃ½pros/Kibris', 'Republic', 'Glafkos Klerides', 2430, 'CY'),
('CZE', 'Czech Republic', 'Europe', 'Eastern Europe', 78866.00, 1993, 10278100, 74.5, 55017.00, 52037.00, 'Â¸esko', 'Republic', 'VÃ¡clav Havel', 3339, 'CZ'),
('DEU', 'Germany', 'Europe', 'Western Europe', 357022.00, 1955, 82164700, 77.4, 2133367.00, 2102826.00, 'Deutschland', 'Federal Republic', 'Johannes Rau', 3068, 'DE'),
('DJI', 'Djibouti', 'Africa', 'Eastern Africa', 23200.00, 1977, 638000, 50.8, 382.00, 373.00, 'Djibouti/Jibuti', 'Republic', 'Ismail Omar Guelleh', 585, 'DJ'),
('DMA', 'Dominica', 'North America', 'Caribbean', 751.00, 1978, 71000, 73.4, 256.00, 243.00, 'Dominica', 'Republic', 'Vernon Shaw', 586, 'DM'),
('DNK', 'Denmark', 'Europe', 'Nordic Countries', 43094.00, 800, 5330000, 76.5, 174099.00, 169264.00, 'Danmark', 'Constitutional Monarchy', 'Margrethe II', 3315, 'DK'),
('DOM', 'Dominican Republic', 'North America', 'Caribbean', 48511.00, 1844, 8495000, 73.2, 15846.00, 15076.00, 'RepÃºblica Dominicana', 'Republic', 'HipÃ³lito MejÃ­a DomÃ­nguez', 587, 'DO'),
('DZA', 'Algeria', 'Africa', 'Northern Africa', 2381741.00, 1962, 31471000, 69.7, 49982.00, 46966.00, 'Al-Jazaâ€™ir/AlgÃ©rie', 'Republic', 'Abdelaziz Bouteflika', 35, 'DZ'),
('ECU', 'Ecuador', 'South America', 'South America', 283561.00, 1822, 12646000, 71.1, 19770.00, 19769.00, 'Ecuador', 'Republic', 'Gustavo Noboa Bejarano', 594, 'EC'),
('EGY', 'Egypt', 'Africa', 'Northern Africa', 1001449.00, 1922, 68470000, 63.3, 82710.00, 75617.00, 'Misr', 'Republic', 'Hosni Mubarak', 608, 'EG'),
('ERI', 'Eritrea', 'Africa', 'Eastern Africa', 117600.00, 1993, 3850000, 55.8, 650.00, 755.00, 'Ertra', 'Republic', 'Isayas Afewerki [Isaias Afwerki]', 652, 'ER'),
('ESH', 'Western Sahara', 'Africa', 'Northern Africa', 266000.00, NULL, 293000, 49.8, 60.00, NULL, 'As-Sahrawiya', 'Occupied by Marocco', 'Mohammed Abdel Aziz', 2453, 'EH'),
('ESP', 'Spain', 'Europe', 'Southern Europe', 505992.00, 1492, 39441700, 78.8, 553233.00, 532031.00, 'EspaÃ±a', 'Constitutional Monarchy', 'Juan Carlos I', 653, 'ES'),
('EST', 'Estonia', 'Europe', 'Baltic Countries', 45227.00, 1991, 1439200, 69.5, 5328.00, 3371.00, 'Eesti', 'Republic', 'Lennart Meri', 3791, 'EE'),
('ETH', 'Ethiopia', 'Africa', 'Eastern Africa', 1104300.00, -1000, 62565000, 45.2, 6353.00, 6180.00, 'YeItyopÂ´iya', 'Republic', 'Negasso Gidada', 756, 'ET'),
('FIN', 'Finland', 'Europe', 'Nordic Countries', 338145.00, 1917, 5171300, 77.4, 121914.00, 119833.00, 'Suomi', 'Republic', 'Tarja Halonen', 3236, 'FI'),
('FJI', 'Fiji Islands', 'Oceania', 'Melanesia', 18274.00, 1970, 817000, 67.9, 1536.00, 2149.00, 'Fiji Islands', 'Republic', 'Josefa Iloilo', 764, 'FJ'),
('FLK', 'Falkland Islands', 'South America', 'South America', 12173.00, NULL, 2000, NULL, 0.00, NULL, 'Falkland Islands', 'Dependent Territory of the UK', 'Elisabeth II', 763, 'FK'),
('FRA', 'France', 'Europe', 'Western Europe', 551500.00, 843, 59225700, 78.8, 1424285.00, 1392448.00, 'France', 'Republic', 'Jacques Chirac', 2974, 'FR'),
('FRO', 'Faroe Islands', 'Europe', 'Nordic Countries', 1399.00, NULL, 43000, 78.4, 0.00, NULL, 'FÃ¸royar', 'Part of Denmark', 'Margrethe II', 901, 'FO'),
('FSM', 'Micronesia, Federated States of', 'Oceania', 'Micronesia', 702.00, 1990, 119000, 68.6, 212.00, NULL, 'Micronesia', 'Federal Republic', 'Leo A. Falcam', 2689, 'FM'),
('GAB', 'Gabon', 'Africa', 'Central Africa', 267668.00, 1960, 1226000, 50.1, 5493.00, 5279.00, 'Le Gabon', 'Republic', 'Omar Bongo', 902, 'GA'),
('GBR', 'United Kingdom', 'Europe', 'British Islands', 242900.00, 1066, 59623400, 77.7, 1378330.00, 1296830.00, 'United Kingdom', 'Constitutional Monarchy', 'Elisabeth II', 456, 'GB'),
('GEO', 'Georgia', 'Asia', 'Middle East', 69700.00, 1991, 4968000, 64.5, 6064.00, 5924.00, 'Sakartvelo', 'Republic', 'Eduard Å evardnadze', 905, 'GE'),
('GHA', 'Ghana', 'Africa', 'Western Africa', 238533.00, 1957, 20212000, 57.4, 7137.00, 6884.00, 'Ghana', 'Republic', 'John Kufuor', 910, 'GH'),
('GIB', 'Gibraltar', 'Europe', 'Southern Europe', 6.00, NULL, 25000, 79.0, 258.00, NULL, 'Gibraltar', 'Dependent Territory of the UK', 'Elisabeth II', 915, 'GI'),
('GIN', 'Guinea', 'Africa', 'Western Africa', 245857.00, 1958, 7430000, 45.6, 2352.00, 2383.00, 'GuinÃ©e', 'Republic', 'Lansana ContÃ©', 926, 'GN'),
('GLP', 'Guadeloupe', 'North America', 'Caribbean', 1705.00, NULL, 456000, 77.0, 3501.00, NULL, 'Guadeloupe', 'Overseas Department of France', 'Jacques Chirac', 919, 'GP'),
('GMB', 'Gambia', 'Africa', 'Western Africa', 11295.00, 1965, 1305000, 53.2, 320.00, 325.00, 'The Gambia', 'Republic', 'Yahya Jammeh', 904, 'GM'),
('GNB', 'Guinea-Bissau', 'Africa', 'Western Africa', 36125.00, 1974, 1213000, 49.0, 293.00, 272.00, 'GuinÃ©-Bissau', 'Republic', 'Kumba IalÃ¡', 927, 'GW'),
('GNQ', 'Equatorial Guinea', 'Africa', 'Central Africa', 28051.00, 1968, 453000, 53.6, 283.00, 542.00, 'Guinea Ecuatorial', 'Republic', 'Teodoro Obiang Nguema Mbasogo', 2972, 'GQ'),
('GRC', 'Greece', 'Europe', 'Southern Europe', 131626.00, 1830, 10545700, 78.4, 120724.00, 119946.00, 'EllÃ¡da', 'Republic', 'Kostis Stefanopoulos', 2401, 'GR'),
('GRD', 'Grenada', 'North America', 'Caribbean', 344.00, 1974, 94000, 64.5, 318.00, NULL, 'Grenada', 'Constitutional Monarchy', 'Elisabeth II', 916, 'GD'),
('GRL', 'Greenland', 'North America', 'North America', 2166090.00, NULL, 56000, 68.1, 0.00, NULL, 'Kalaallit Nunaat/GrÃ¸nland', 'Part of Denmark', 'Margrethe II', 917, 'GL'),
('GTM', 'Guatemala', 'North America', 'Central America', 108889.00, 1821, 11385000, 66.2, 19008.00, 17797.00, 'Guatemala', 'Republic', 'Alfonso Portillo Cabrera', 922, 'GT'),
('GUF', 'French Guiana', 'South America', 'South America', 90000.00, NULL, 181000, 76.1, 681.00, NULL, 'Guyane franÃ§aise', 'Overseas Department of France', 'Jacques Chirac', 3014, 'GF'),
('GUM', 'Guam', 'Oceania', 'Micronesia', 549.00, NULL, 168000, 77.8, 1197.00, 1136.00, 'Guam', 'US Territory', 'George W. Bush', 921, 'GU'),
('GUY', 'Guyana', 'South America', 'South America', 214969.00, 1966, 861000, 64.0, 722.00, 743.00, 'Guyana', 'Republic', 'Bharrat Jagdeo', 928, 'GY'),
('HKG', 'Hong Kong', 'Asia', 'Eastern Asia', 1075.00, NULL, 6782000, 79.5, 166448.00, 173610.00, 'Xianggang/Hong Kong', 'Special Administrative Region of China', 'Jiang Zemin', 937, 'HK'),
('HMD', 'Heard Island and McDonald Islands', 'Antarctica', 'Antarctica', 359.00, NULL, 0, NULL, 0.00, NULL, 'Heard and McDonald Islands', 'Territory of Australia', 'Elisabeth II', NULL, 'HM'),
('HND', 'Honduras', 'North America', 'Central America', 112088.00, 1838, 6485000, 69.9, 5333.00, 4697.00, 'Honduras', 'Republic', 'Carlos Roberto Flores FacussÃ©', 933, 'HN'),
('HRV', 'Croatia', 'Europe', 'Southern Europe', 56538.00, 1991, 4473000, 73.7, 20208.00, 19300.00, 'Hrvatska', 'Republic', 'Å tipe Mesic', 2409, 'HR'),
('HTI', 'Haiti', 'North America', 'Caribbean', 27750.00, 1804, 8222000, 49.2, 3459.00, 3107.00, 'HaÃ¯ti/Dayti', 'Republic', 'Jean-Bertrand Aristide', 929, 'HT'),
('HUN', 'Hungary', 'Europe', 'Eastern Europe', 93030.00, 1918, 10043200, 71.4, 48267.00, 45914.00, 'MagyarorszÃ¡g', 'Republic', 'Ferenc MÃ¡dl', 3483, 'HU'),
('IDN', 'Indonesia', 'Asia', 'Southeast Asia', 1904569.00, 1945, 212107000, 68.0, 84982.00, 215002.00, 'Indonesia', 'Republic', 'Abdurrahman Wahid', 939, 'ID'),
('IND', 'India', 'Asia', 'Southern and Central Asia', 3287263.00, 1947, 1013662000, 62.5, 447114.00, 430572.00, 'Bharat/India', 'Federal Republic', 'Kocheril Raman Narayanan', 1109, 'IN'),
('IOT', 'British Indian Ocean Territory', 'Africa', 'Eastern Africa', 78.00, NULL, 0, NULL, 0.00, NULL, 'British Indian Ocean Territory', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'IO'),
('IRL', 'Ireland', 'Europe', 'British Islands', 70273.00, 1921, 3775100, 76.8, 75921.00, 73132.00, 'Ireland/Ã‰ire', 'Republic', 'Mary McAleese', 1447, 'IE'),
('IRN', 'Iran', 'Asia', 'Southern and Central Asia', 1648195.00, 1906, 67702000, 69.7, 195746.00, 160151.00, 'Iran', 'Islamic Republic', 'Ali Mohammad Khatami-Ardakani', 1380, 'IR'),
('IRQ', 'Iraq', 'Asia', 'Middle East', 438317.00, 1932, 23115000, 66.5, 11500.00, NULL, 'Al-Â´Iraq', 'Republic', 'Saddam Hussein al-Takriti', 1365, 'IQ'),
('ISL', 'Iceland', 'Europe', 'Nordic Countries', 103000.00, 1944, 279000, 79.4, 8255.00, 7474.00, 'Ã?sland', 'Republic', 'Ã“lafur Ragnar GrÃ­msson', 1449, 'IS'),
('ISR', 'Israel', 'Asia', 'Middle East', 21056.00, 1948, 6217000, 78.6, 97477.00, 98577.00, 'Yisraâ€™el/Israâ€™il', 'Republic', 'Moshe Katzav', 1450, 'IL'),
('ITA', 'Italy', 'Europe', 'Southern Europe', 301316.00, 1861, 57680000, 79.0, 1161755.00, 1145372.00, 'Italia', 'Republic', 'Carlo Azeglio Ciampi', 1464, 'IT'),
('JAM', 'Jamaica', 'North America', 'Caribbean', 10990.00, 1962, 2583000, 75.2, 6871.00, 6722.00, 'Jamaica', 'Constitutional Monarchy', 'Elisabeth II', 1530, 'JM'),
('JOR', 'Jordan', 'Asia', 'Middle East', 88946.00, 1946, 5083000, 77.4, 7526.00, 7051.00, 'Al-Urdunn', 'Constitutional Monarchy', 'Abdullah II', 1786, 'JO'),
('JPN', 'Japan', 'Asia', 'Eastern Asia', 377829.00, -660, 126714000, 80.7, 3787042.00, 4192638.00, 'Nihon/Nippon', 'Constitutional Monarchy', 'Akihito', 1532, 'JP'),
('KAZ', 'Kazakstan', 'Asia', 'Southern and Central Asia', 2724900.00, 1991, 16223000, 63.2, 24375.00, 23383.00, 'Qazaqstan', 'Republic', 'Nursultan Nazarbajev', 1864, 'KZ'),
('KEN', 'Kenya', 'Africa', 'Eastern Africa', 580367.00, 1963, 30080000, 48.0, 9217.00, 10241.00, 'Kenya', 'Republic', 'Daniel arap Moi', 1881, 'KE'),
('KGZ', 'Kyrgyzstan', 'Asia', 'Southern and Central Asia', 199900.00, 1991, 4699000, 63.4, 1626.00, 1767.00, 'Kyrgyzstan', 'Republic', 'Askar Akajev', 2253, 'KG'),
('KHM', 'Cambodia', 'Asia', 'Southeast Asia', 181035.00, 1953, 11168000, 56.5, 5121.00, 5670.00, 'KÃ¢mpuchÃ©a', 'Constitutional Monarchy', 'Norodom Sihanouk', 1800, 'KH'),
('KIR', 'Kiribati', 'Oceania', 'Micronesia', 726.00, 1979, 83000, 59.8, 40.70, NULL, 'Kiribati', 'Republic', 'Teburoro Tito', 2256, 'KI'),
('KNA', 'Saint Kitts and Nevis', 'North America', 'Caribbean', 261.00, 1983, 38000, 70.7, 299.00, NULL, 'Saint Kitts and Nevis', 'Constitutional Monarchy', 'Elisabeth II', 3064, 'KN'),
('KOR', 'South Korea', 'Asia', 'Eastern Asia', 99434.00, 1948, 46844000, 74.4, 320749.00, 442544.00, 'Taehan Minâ€™guk (Namhan)', 'Republic', 'Kim Dae-jung', 2331, 'KR'),
('KWT', 'Kuwait', 'Asia', 'Middle East', 17818.00, 1961, 1972000, 76.1, 27037.00, 30373.00, 'Al-Kuwayt', 'Constitutional Monarchy (Emirate)', 'Jabir al-Ahmad al-Jabir al-Sabah', 2429, 'KW'),
('LAO', 'Laos', 'Asia', 'Southeast Asia', 236800.00, 1953, 5433000, 53.1, 1292.00, 1746.00, 'Lao', 'Republic', 'Khamtay Siphandone', 2432, 'LA'),
('LBN', 'Lebanon', 'Asia', 'Middle East', 10400.00, 1941, 3282000, 71.3, 17121.00, 15129.00, 'Lubnan', 'Republic', 'Ã‰mile Lahoud', 2438, 'LB'),
('LBR', 'Liberia', 'Africa', 'Western Africa', 111369.00, 1847, 3154000, 51.0, 2012.00, NULL, 'Liberia', 'Republic', 'Charles Taylor', 2440, 'LR'),
('LBY', 'Libyan Arab Jamahiriya', 'Africa', 'Northern Africa', 1759540.00, 1951, 5605000, 75.5, 44806.00, 40562.00, 'Libiya', 'Socialistic State', 'Muammar al-Qadhafi', 2441, 'LY'),
('LCA', 'Saint Lucia', 'North America', 'Caribbean', 622.00, 1979, 154000, 72.3, 571.00, NULL, 'Saint Lucia', 'Constitutional Monarchy', 'Elisabeth II', 3065, 'LC'),
('LIE', 'Liechtenstein', 'Europe', 'Western Europe', 160.00, 1806, 32300, 78.8, 1119.00, 1084.00, 'Liechtenstein', 'Constitutional Monarchy', 'Hans-Adam II', 2446, 'LI'),
('LKA', 'Sri Lanka', 'Asia', 'Southern and Central Asia', 65610.00, 1948, 18827000, 71.8, 15706.00, 15091.00, 'Sri Lanka/Ilankai', 'Republic', 'Chandrika Kumaratunga', 3217, 'LK'),
('LSO', 'Lesotho', 'Africa', 'Southern Africa', 30355.00, 1966, 2153000, 50.8, 1061.00, 1161.00, 'Lesotho', 'Constitutional Monarchy', 'Letsie III', 2437, 'LS'),
('LTU', 'Lithuania', 'Europe', 'Baltic Countries', 65301.00, 1991, 3698500, 69.1, 10692.00, 9585.00, 'Lietuva', 'Republic', 'Valdas Adamkus', 2447, 'LT'),
('LUX', 'Luxembourg', 'Europe', 'Western Europe', 2586.00, 1867, 435700, 77.1, 16321.00, 15519.00, 'Luxembourg/LÃ«tzebuerg', 'Constitutional Monarchy', 'Henri', 2452, 'LU'),
('LVA', 'Latvia', 'Europe', 'Baltic Countries', 64589.00, 1991, 2424200, 68.4, 6398.00, 5639.00, 'Latvija', 'Republic', 'Vaira Vike-Freiberga', 2434, 'LV'),
('MAC', 'Macao', 'Asia', 'Eastern Asia', 18.00, NULL, 473000, 81.6, 5749.00, 5940.00, 'Macau/Aomen', 'Special Administrative Region of China', 'Jiang Zemin', 2454, 'MO'),
('MAR', 'Morocco', 'Africa', 'Northern Africa', 446550.00, 1956, 28351000, 69.1, 36124.00, 33514.00, 'Al-Maghrib', 'Constitutional Monarchy', 'Mohammed VI', 2486, 'MA'),
('MCO', 'Monaco', 'Europe', 'Western Europe', 1.50, 1861, 34000, 78.8, 776.00, NULL, 'Monaco', 'Constitutional Monarchy', 'Rainier III', 2695, 'MC'),
('MDA', 'Moldova', 'Europe', 'Eastern Europe', 33851.00, 1991, 4380000, 64.5, 1579.00, 1872.00, 'Moldova', 'Republic', 'Vladimir Voronin', 2690, 'MD'),
('MDG', 'Madagascar', 'Africa', 'Eastern Africa', 587041.00, 1960, 15942000, 55.0, 3750.00, 3545.00, 'Madagasikara/Madagascar', 'Federal Republic', 'Didier Ratsiraka', 2455, 'MG'),
('MDV', 'Maldives', 'Asia', 'Southern and Central Asia', 298.00, 1965, 286000, 62.2, 199.00, NULL, 'Dhivehi Raajje/Maldives', 'Republic', 'Maumoon Abdul Gayoom', 2463, 'MV'),
('MEX', 'Mexico', 'North America', 'Central America', 1958201.00, 1810, 98881000, 71.5, 414972.00, 401461.00, 'MÃ©xico', 'Federal Republic', 'Vicente Fox Quesada', 2515, 'MX'),
('MHL', 'Marshall Islands', 'Oceania', 'Micronesia', 181.00, 1990, 64000, 65.5, 97.00, NULL, 'Marshall Islands/Majol', 'Republic', 'Kessai Note', 2507, 'MH'),
('MKD', 'Macedonia', 'Europe', 'Southern Europe', 25713.00, 1991, 2024000, 73.8, 1694.00, 1915.00, 'Makedonija', 'Republic', 'Boris Trajkovski', 2460, 'MK'),
('MLI', 'Mali', 'Africa', 'Western Africa', 1240192.00, 1960, 11234000, 46.7, 2642.00, 2453.00, 'Mali', 'Republic', 'Alpha Oumar KonarÃ©', 2482, 'ML'),
('MLT', 'Malta', 'Europe', 'Southern Europe', 316.00, 1964, 380200, 77.9, 3512.00, 3338.00, 'Malta', 'Republic', 'Guido de Marco', 2484, 'MT'),
('MMR', 'Myanmar', 'Asia', 'Southeast Asia', 676578.00, 1948, 45611000, 54.9, 180375.00, 171028.00, 'Myanma Pye', 'Republic', 'kenraali Than Shwe', 2710, 'MM'),
('MNG', 'Mongolia', 'Asia', 'Eastern Asia', 1566500.00, 1921, 2662000, 67.3, 1043.00, 933.00, 'Mongol Uls', 'Republic', 'Natsagiin Bagabandi', 2696, 'MN'),
('MNP', 'Northern Mariana Islands', 'Oceania', 'Micronesia', 464.00, NULL, 78000, 75.5, 0.00, NULL, 'Northern Mariana Islands', 'Commonwealth of the US', 'George W. Bush', 2913, 'MP'),
('MOZ', 'Mozambique', 'Africa', 'Eastern Africa', 801590.00, 1975, 19680000, 37.5, 2891.00, 2711.00, 'MoÃ§ambique', 'Republic', 'JoaquÃ­m A. Chissano', 2698, 'MZ'),
('MRT', 'Mauritania', 'Africa', 'Western Africa', 1025520.00, 1960, 2670000, 50.8, 998.00, 1081.00, 'Muritaniya/Mauritanie', 'Republic', 'Maaouiya Ould SidÂ´Ahmad Taya', 2509, 'MR'),
('MSR', 'Montserrat', 'North America', 'Caribbean', 102.00, NULL, 11000, 78.0, 109.00, NULL, 'Montserrat', 'Dependent Territory of the UK', 'Elisabeth II', 2697, 'MS'),
('MTQ', 'Martinique', 'North America', 'Caribbean', 1102.00, NULL, 395000, 78.3, 2731.00, 2559.00, 'Martinique', 'Overseas Department of France', 'Jacques Chirac', 2508, 'MQ'),
('MUS', 'Mauritius', 'Africa', 'Eastern Africa', 2040.00, 1968, 1158000, 71.0, 4251.00, 4186.00, 'Mauritius', 'Republic', 'Cassam Uteem', 2511, 'MU'),
('MWI', 'Malawi', 'Africa', 'Eastern Africa', 118484.00, 1964, 10925000, 37.6, 1687.00, 2527.00, 'Malawi', 'Republic', 'Bakili Muluzi', 2462, 'MW'),
('MYS', 'Malaysia', 'Asia', 'Southeast Asia', 329758.00, 1957, 22244000, 70.8, 69213.00, 97884.00, 'Malaysia', 'Constitutional Monarchy, Federation', 'Salahuddin Abdul Aziz Shah Alhaj', 2464, 'MY'),
('MYT', 'Mayotte', 'Africa', 'Eastern Africa', 373.00, NULL, 149000, 59.5, 0.00, NULL, 'Mayotte', 'Territorial Collectivity of France', 'Jacques Chirac', 2514, 'YT'),
('NAM', 'Namibia', 'Africa', 'Southern Africa', 824292.00, 1990, 1726000, 42.5, 3101.00, 3384.00, 'Namibia', 'Republic', 'Sam Nujoma', 2726, 'NA'),
('NCL', 'New Caledonia', 'Oceania', 'Melanesia', 18575.00, NULL, 214000, 72.8, 3563.00, NULL, 'Nouvelle-CalÃ©donie', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3493, 'NC'),
('NER', 'Niger', 'Africa', 'Western Africa', 1267000.00, 1960, 10730000, 41.3, 1706.00, 1580.00, 'Niger', 'Republic', 'Mamadou Tandja', 2738, 'NE'),
('NFK', 'Norfolk Island', 'Oceania', 'Australia and New Zealand', 36.00, NULL, 2000, NULL, 0.00, NULL, 'Norfolk Island', 'Territory of Australia', 'Elisabeth II', 2806, 'NF'),
('NGA', 'Nigeria', 'Africa', 'Western Africa', 923768.00, 1960, 111506000, 51.6, 65707.00, 58623.00, 'Nigeria', 'Federal Republic', 'Olusegun Obasanjo', 2754, 'NG'),
('NIC', 'Nicaragua', 'North America', 'Central America', 130000.00, 1838, 5074000, 68.7, 1988.00, 2023.00, 'Nicaragua', 'Republic', 'Arnoldo AlemÃ¡n Lacayo', 2734, 'NI'),
('NIU', 'Niue', 'Oceania', 'Polynesia', 260.00, NULL, 2000, NULL, 0.00, NULL, 'Niue', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 2805, 'NU'),
('NLD', 'Netherlands', 'Europe', 'Western Europe', 41526.00, 1581, 15864000, 78.3, 371362.00, 360478.00, 'Nederland', 'Constitutional Monarchy', 'Beatrix', 5, 'NL'),
('NOR', 'Norway', 'Europe', 'Nordic Countries', 323877.00, 1905, 4478500, 78.7, 145895.00, 153370.00, 'Norge', 'Constitutional Monarchy', 'Harald V', 2807, 'NO'),
('NPL', 'Nepal', 'Asia', 'Southern and Central Asia', 147181.00, 1769, 23930000, 57.8, 4768.00, 4837.00, 'Nepal', 'Constitutional Monarchy', 'Gyanendra Bir Bikram', 2729, 'NP'),
('NRU', 'Nauru', 'Oceania', 'Micronesia', 21.00, 1968, 12000, 60.8, 197.00, NULL, 'Naoero/Nauru', 'Republic', 'Bernard Dowiyogo', 2728, 'NR'),
('NZL', 'New Zealand', 'Oceania', 'Australia and New Zealand', 270534.00, 1907, 3862000, 77.8, 54669.00, 64960.00, 'New Zealand/Aotearoa', 'Constitutional Monarchy', 'Elisabeth II', 3499, 'NZ'),
('OMN', 'Oman', 'Asia', 'Middle East', 309500.00, 1951, 2542000, 71.8, 16904.00, 16153.00, 'Â´Uman', 'Monarchy (Sultanate)', 'Qabus ibn SaÂ´id', 2821, 'OM'),
('PAK', 'Pakistan', 'Asia', 'Southern and Central Asia', 796095.00, 1947, 156483000, 61.1, 61289.00, 58549.00, 'Pakistan', 'Republic', 'Mohammad Rafiq Tarar', 2831, 'PK'),
('PAN', 'Panama', 'North America', 'Central America', 75517.00, 1903, 2856000, 75.5, 9131.00, 8700.00, 'PanamÃ¡', 'Republic', 'Mireya Elisa Moscoso RodrÃ­guez', 2882, 'PA'),
('PCN', 'Pitcairn', 'Oceania', 'Polynesia', 49.00, NULL, 50, NULL, 0.00, NULL, 'Pitcairn', 'Dependent Territory of the UK', 'Elisabeth II', 2912, 'PN'),
('PER', 'Peru', 'South America', 'South America', 1285216.00, 1821, 25662000, 70.0, 64140.00, 65186.00, 'PerÃº/Piruw', 'Republic', 'Valentin Paniagua Corazao', 2890, 'PE'),
('PHL', 'Philippines', 'Asia', 'Southeast Asia', 300000.00, 1946, 75967000, 67.5, 65107.00, 82239.00, 'Pilipinas', 'Republic', 'Gloria Macapagal-Arroyo', 766, 'PH'),
('PLW', 'Palau', 'Oceania', 'Micronesia', 459.00, 1994, 19000, 68.6, 105.00, NULL, 'Belau/Palau', 'Republic', 'Kuniwo Nakamura', 2881, 'PW'),
('PNG', 'Papua New Guinea', 'Oceania', 'Melanesia', 462840.00, 1975, 4807000, 63.1, 4988.00, 6328.00, 'Papua New Guinea/Papua Niugini', 'Constitutional Monarchy', 'Elisabeth II', 2884, 'PG'),
('POL', 'Poland', 'Europe', 'Eastern Europe', 323250.00, 1918, 38653600, 73.2, 151697.00, 135636.00, 'Polska', 'Republic', 'Aleksander Kwasniewski', 2928, 'PL'),
('PRI', 'Puerto Rico', 'North America', 'Caribbean', 8875.00, NULL, 3869000, 75.6, 34100.00, 32100.00, 'Puerto Rico', 'Commonwealth of the US', 'George W. Bush', 2919, 'PR'),
('PRK', 'North Korea', 'Asia', 'Eastern Asia', 120538.00, 1948, 24039000, 70.7, 5332.00, NULL, 'Choson Minjujuui InÂ´min Konghwaguk (Bukhan)', 'Socialistic Republic', 'Kim Jong-il', 2318, 'KP'),
('PRT', 'Portugal', 'Europe', 'Southern Europe', 91982.00, 1143, 9997600, 75.8, 105954.00, 102133.00, 'Portugal', 'Republic', 'Jorge SampÃ£io', 2914, 'PT'),
('PRY', 'Paraguay', 'South America', 'South America', 406752.00, 1811, 5496000, 73.7, 8444.00, 9555.00, 'Paraguay', 'Republic', 'Luis Ã?ngel GonzÃ¡lez Macchi', 2885, 'PY'),
('PSE', 'Palestine', 'Asia', 'Middle East', 6257.00, NULL, 3101000, 71.4, 4173.00, NULL, 'Filastin', 'Autonomous Area', 'Yasser (Yasir) Arafat', 4074, 'PS'),
('PYF', 'French Polynesia', 'Oceania', 'Polynesia', 4000.00, NULL, 235000, 74.8, 818.00, 781.00, 'PolynÃ©sie franÃ§aise', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3016, 'PF'),
('QAT', 'Qatar', 'Asia', 'Middle East', 11000.00, 1971, 599000, 72.4, 9472.00, 8920.00, 'Qatar', 'Monarchy', 'Hamad ibn Khalifa al-Thani', 2973, 'QA'),
('REU', 'RÃ©union', 'Africa', 'Eastern Africa', 2510.00, NULL, 699000, 72.7, 8287.00, 7988.00, 'RÃ©union', 'Overseas Department of France', 'Jacques Chirac', 3017, 'RE'),
('ROM', 'Romania', 'Europe', 'Eastern Europe', 238391.00, 1878, 22455500, 69.9, 38158.00, 34843.00, 'RomÃ¢nia', 'Republic', 'Ion Iliescu', 3018, 'RO'),
('RUS', 'Russian Federation', 'Europe', 'Eastern Europe', 17075400.00, 1991, 146934000, 67.2, 276608.00, 442989.00, 'Rossija', 'Federal Republic', 'Vladimir Putin', 3580, 'RU'),
('RWA', 'Rwanda', 'Africa', 'Eastern Africa', 26338.00, 1962, 7733000, 39.3, 2036.00, 1863.00, 'Rwanda/Urwanda', 'Republic', 'Paul Kagame', 3047, 'RW'),
('SAU', 'Saudi Arabia', 'Asia', 'Middle East', 2149690.00, 1932, 21607000, 67.8, 137635.00, 146171.00, 'Al-Â´Arabiya as-SaÂ´udiya', 'Monarchy', 'Fahd ibn Abdul-Aziz al-SaÂ´ud', 3173, 'SA'),
('SDN', 'Sudan', 'Africa', 'Northern Africa', 2505813.00, 1956, 29490000, 56.6, 10162.00, NULL, 'As-Sudan', 'Islamic Republic', 'Omar Hassan Ahmad al-Bashir', 3225, 'SD'),
('SEN', 'Senegal', 'Africa', 'Western Africa', 196722.00, 1960, 9481000, 62.2, 4787.00, 4542.00, 'SÃ©nÃ©gal/Sounougal', 'Republic', 'Abdoulaye Wade', 3198, 'SN'),
('SGP', 'Singapore', 'Asia', 'Southeast Asia', 618.00, 1965, 3567000, 80.1, 86503.00, 96318.00, 'Singapore/Singapura/Xinjiapo/Singapur', 'Republic', 'Sellapan Rama Nathan', 3208, 'SG'),
('SGS', 'South Georgia and the South Sandwich Islands', 'Antarctica', 'Antarctica', 3903.00, NULL, 0, NULL, 0.00, NULL, 'South Georgia and the South Sandwich Islands', 'Dependent Territory of the UK', 'Elisabeth II', NULL, 'GS'),
('SHN', 'Saint Helena', 'Africa', 'Western Africa', 314.00, NULL, 6000, 76.8, 0.00, NULL, 'Saint Helena', 'Dependent Territory of the UK', 'Elisabeth II', 3063, 'SH'),
('SJM', 'Svalbard and Jan Mayen', 'Europe', 'Nordic Countries', 62422.00, NULL, 3200, NULL, 0.00, NULL, 'Svalbard og Jan Mayen', 'Dependent Territory of Norway', 'Harald V', 938, 'SJ'),
('SLB', 'Solomon Islands', 'Oceania', 'Melanesia', 28896.00, 1978, 444000, 71.3, 182.00, 220.00, 'Solomon Islands', 'Constitutional Monarchy', 'Elisabeth II', 3161, 'SB'),
('SLE', 'Sierra Leone', 'Africa', 'Western Africa', 71740.00, 1961, 4854000, 45.3, 746.00, 858.00, 'Sierra Leone', 'Republic', 'Ahmed Tejan Kabbah', 3207, 'SL'),
('SLV', 'El Salvador', 'North America', 'Central America', 21041.00, 1841, 6276000, 69.7, 11863.00, 11203.00, 'El Salvador', 'Republic', 'Francisco Guillermo Flores PÃ©rez', 645, 'SV'),
('SMR', 'San Marino', 'Europe', 'Southern Europe', 61.00, 885, 27000, 81.1, 510.00, NULL, 'San Marino', 'Republic', NULL, 3171, 'SM'),
('SOM', 'Somalia', 'Africa', 'Eastern Africa', 637657.00, 1960, 10097000, 46.2, 935.00, NULL, 'Soomaaliya', 'Republic', 'Abdiqassim Salad Hassan', 3214, 'SO'),
('SPM', 'Saint Pierre and Miquelon', 'North America', 'North America', 242.00, NULL, 7000, 77.6, 0.00, NULL, 'Saint-Pierre-et-Miquelon', 'Territorial Collectivity of France', 'Jacques Chirac', 3067, 'PM'),
('STP', 'Sao Tome and Principe', 'Africa', 'Central Africa', 964.00, 1975, 147000, 65.3, 6.00, NULL, 'SÃ£o TomÃ© e PrÃ­ncipe', 'Republic', 'Miguel Trovoada', 3172, 'ST'),
('SUR', 'Suriname', 'South America', 'South America', 163265.00, 1975, 417000, 71.4, 870.00, 706.00, 'Suriname', 'Republic', 'Ronald Venetiaan', 3243, 'SR'),
('SVK', 'Slovakia', 'Europe', 'Eastern Europe', 49012.00, 1993, 5398700, 73.7, 20594.00, 19452.00, 'Slovensko', 'Republic', 'Rudolf Schuster', 3209, 'SK'),
('SVN', 'Slovenia', 'Europe', 'Southern Europe', 20256.00, 1991, 1987800, 74.9, 19756.00, 18202.00, 'Slovenija', 'Republic', 'Milan Kucan', 3212, 'SI'),
('SWE', 'Sweden', 'Europe', 'Nordic Countries', 449964.00, 836, 8861400, 79.6, 226492.00, 227757.00, 'Sverige', 'Constitutional Monarchy', 'Carl XVI Gustaf', 3048, 'SE'),
('SWZ', 'Swaziland', 'Africa', 'Southern Africa', 17364.00, 1968, 1008000, 40.4, 1206.00, 1312.00, 'kaNgwane', 'Monarchy', 'Mswati III', 3244, 'SZ'),
('SYC', 'Seychelles', 'Africa', 'Eastern Africa', 455.00, 1976, 77000, 70.4, 536.00, 539.00, 'Sesel/Seychelles', 'Republic', 'France-Albert RenÃ©', 3206, 'SC'),
('SYR', 'Syria', 'Asia', 'Middle East', 185180.00, 1941, 16125000, 68.5, 65984.00, 64926.00, 'Suriya', 'Republic', 'Bashar al-Assad', 3250, 'SY'),
('TCA', 'Turks and Caicos Islands', 'North America', 'Caribbean', 430.00, NULL, 17000, 73.3, 96.00, NULL, 'The Turks and Caicos Islands', 'Dependent Territory of the UK', 'Elisabeth II', 3423, 'TC'),
('TCD', 'Chad', 'Africa', 'Central Africa', 1284000.00, 1960, 7651000, 50.5, 1208.00, 1102.00, 'Tchad/Tshad', 'Republic', 'Idriss DÃ©by', 3337, 'TD'),
('TGO', 'Togo', 'Africa', 'Western Africa', 56785.00, 1960, 4629000, 54.7, 1449.00, 1400.00, 'Togo', 'Republic', 'GnassingbÃ© EyadÃ©ma', 3332, 'TG'),
('THA', 'Thailand', 'Asia', 'Southeast Asia', 513115.00, 1350, 61399000, 68.6, 116416.00, 153907.00, 'Prathet Thai', 'Constitutional Monarchy', 'Bhumibol Adulyadej', 3320, 'TH'),
('TJK', 'Tajikistan', 'Asia', 'Southern and Central Asia', 143100.00, 1991, 6188000, 64.1, 1990.00, 1056.00, 'ToÃ§ikiston', 'Republic', 'Emomali Rahmonov', 3261, 'TJ'),
('TKL', 'Tokelau', 'Oceania', 'Polynesia', 12.00, NULL, 2000, NULL, 0.00, NULL, 'Tokelau', 'Nonmetropolitan Territory of New Zealand', 'Elisabeth II', 3333, 'TK'),
('TKM', 'Turkmenistan', 'Asia', 'Southern and Central Asia', 488100.00, 1991, 4459000, 60.9, 4397.00, 2000.00, 'TÃ¼rkmenostan', 'Republic', 'Saparmurad Nijazov', 3419, 'TM'),
('TMP', 'East Timor', 'Asia', 'Southeast Asia', 14874.00, NULL, 885000, 46.0, 0.00, NULL, 'Timor Timur', 'Administrated by the UN', 'JosÃ© Alexandre GusmÃ£o', 1522, 'TP'),
('TON', 'Tonga', 'Oceania', 'Polynesia', 650.00, 1970, 99000, 67.9, 146.00, 170.00, 'Tonga', 'Monarchy', 'Taufa''ahau Tupou IV', 3334, 'TO'),
('TTO', 'Trinidad and Tobago', 'North America', 'Caribbean', 5130.00, 1962, 1295000, 68.0, 6232.00, 5867.00, 'Trinidad and Tobago', 'Republic', 'Arthur N. R. Robinson', 3336, 'TT'),
('TUN', 'Tunisia', 'Africa', 'Northern Africa', 163610.00, 1956, 9586000, 73.7, 20026.00, 18898.00, 'Tunis/Tunisie', 'Republic', 'Zine al-Abidine Ben Ali', 3349, 'TN'),
('TUR', 'Turkey', 'Asia', 'Middle East', 774815.00, 1923, 66591000, 71.0, 210721.00, 189122.00, 'TÃ¼rkiye', 'Republic', 'Ahmet Necdet Sezer', 3358, 'TR'),
('TUV', 'Tuvalu', 'Oceania', 'Polynesia', 26.00, 1978, 12000, 66.3, 6.00, NULL, 'Tuvalu', 'Constitutional Monarchy', 'Elisabeth II', 3424, 'TV'),
('TWN', 'Taiwan', 'Asia', 'Eastern Asia', 36188.00, 1945, 22256000, 76.4, 256254.00, 263451.00, 'Tâ€™ai-wan', 'Republic', 'Chen Shui-bian', 3263, 'TW'),
('TZA', 'Tanzania', 'Africa', 'Eastern Africa', 883749.00, 1961, 33517000, 52.3, 8005.00, 7388.00, 'Tanzania', 'Republic', 'Benjamin William Mkapa', 3306, 'TZ'),
('UGA', 'Uganda', 'Africa', 'Eastern Africa', 241038.00, 1962, 21778000, 42.9, 6313.00, 6887.00, 'Uganda', 'Republic', 'Yoweri Museveni', 3425, 'UG'),
('UKR', 'Ukraine', 'Europe', 'Eastern Europe', 603700.00, 1991, 50456000, 66.0, 42168.00, 49677.00, 'Ukrajina', 'Republic', 'Leonid KutÅ¡ma', 3426, 'UA'),
('UMI', 'United States Minor Outlying Islands', 'Oceania', 'Micronesia/Caribbean', 16.00, NULL, 0, NULL, 0.00, NULL, 'United States Minor Outlying Islands', 'Dependent Territory of the US', 'George W. Bush', NULL, 'UM'),
('URY', 'Uruguay', 'South America', 'South America', 175016.00, 1828, 3337000, 75.2, 20831.00, 19967.00, 'Uruguay', 'Republic', 'Jorge Batlle IbÃ¡Ã±ez', 3492, 'UY'),
('USA', 'United States', 'North America', 'North America', 9363520.00, 1776, 278357000, 77.1, 8510700.00, 8110900.00, 'United States', 'Federal Republic', 'George W. Bush', 3813, 'US'),
('UZB', 'Uzbekistan', 'Asia', 'Southern and Central Asia', 447400.00, 1991, 24318000, 63.7, 14194.00, 21300.00, 'Uzbekiston', 'Republic', 'Islam Karimov', 3503, 'UZ'),
('VAT', 'Holy See (Vatican City State)', 'Europe', 'Southern Europe', 0.40, 1929, 1000, NULL, 9.00, NULL, 'Santa Sede/CittÃ  del Vaticano', 'Independent Church State', 'Johannes Paavali II', 3538, 'VA'),
('VCT', 'Saint Vincent and the Grenadines', 'North America', 'Caribbean', 388.00, 1979, 114000, 72.3, 285.00, NULL, 'Saint Vincent and the Grenadines', 'Constitutional Monarchy', 'Elisabeth II', 3066, 'VC'),
('VEN', 'Venezuela', 'South America', 'South America', 912050.00, 1811, 24170000, 73.1, 95023.00, 88434.00, 'Venezuela', 'Federal Republic', 'Hugo ChÃ¡vez FrÃ­as', 3539, 'VE'),
('VGB', 'Virgin Islands, British', 'North America', 'Caribbean', 151.00, NULL, 21000, 75.4, 612.00, 573.00, 'British Virgin Islands', 'Dependent Territory of the UK', 'Elisabeth II', 537, 'VG'),
('VIR', 'Virgin Islands, U.S.', 'North America', 'Caribbean', 347.00, NULL, 93000, 78.1, 0.00, NULL, 'Virgin Islands of the United States', 'US Territory', 'George W. Bush', 4067, 'VI'),
('VNM', 'Vietnam', 'Asia', 'Southeast Asia', 331689.00, 1945, 79832000, 69.3, 21929.00, 22834.00, 'ViÃªt Nam', 'Socialistic Republic', 'TrÃ¢n Duc Luong', 3770, 'VN'),
('VUT', 'Vanuatu', 'Oceania', 'Melanesia', 12189.00, 1980, 190000, 60.6, 261.00, 246.00, 'Vanuatu', 'Republic', 'John Bani', 3537, 'VU'),
('WLF', 'Wallis and Futuna', 'Oceania', 'Polynesia', 200.00, NULL, 15000, NULL, 0.00, NULL, 'Wallis-et-Futuna', 'Nonmetropolitan Territory of France', 'Jacques Chirac', 3536, 'WF'),
('WSM', 'Samoa', 'Oceania', 'Polynesia', 2831.00, 1962, 180000, 69.2, 141.00, 157.00, 'Samoa', 'Parlementary Monarchy', 'Malietoa Tanumafili II', 3169, 'WS'),
('YEM', 'Yemen', 'Asia', 'Middle East', 527968.00, 1918, 18112000, 59.8, 6041.00, 5729.00, 'Al-Yaman', 'Republic', 'Ali Abdallah Salih', 1780, 'YE'),
('YUG', 'Yugoslavia', 'Europe', 'Southern Europe', 102173.00, 1918, 10640000, 72.4, 17000.00, NULL, 'Jugoslavija', 'Federal Republic', 'Vojislav KoÅ¡tunica', 1792, 'YU'),
('ZAF', 'South Africa', 'Africa', 'Southern Africa', 1221037.00, 1910, 40377000, 51.1, 116729.00, 129092.00, 'South Africa', 'Republic', 'Thabo Mbeki', 716, 'ZA'),
('ZMB', 'Zambia', 'Africa', 'Eastern Africa', 752618.00, 1964, 9169000, 37.2, 3377.00, 3922.00, 'Zambia', 'Republic', 'Frederick Chiluba', 3162, 'ZM'),
('ZWE', 'Zimbabwe', 'Africa', 'Eastern Africa', 390757.00, 1980, 11669000, 37.8, 5951.00, 8670.00, 'Zimbabwe', 'Republic', 'Robert G. Mugabe', 4068, 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `education_id` int(11) unsigned NOT NULL auto_increment,
  `resume_id` int(11) default NULL,
  `secondary` varchar(100) default NULL,
  `se_major` varchar(200) NOT NULL,
  `se_insname` varchar(200) NOT NULL,
  `se_result` varchar(30) NOT NULL,
  `se_passyear` year(4) default NULL,
  `higher_secondary` varchar(100) default NULL,
  `hi_major` varchar(200) NOT NULL,
  `hi_insname` varchar(200) NOT NULL,
  `hi_result` varchar(30) NOT NULL,
  `hi_passyear` year(4) default NULL,
  `diploma` varchar(100) default NULL,
  `di_major` varchar(200) default NULL,
  `di_insname` varchar(225) default NULL,
  `di_result` varchar(30) default NULL,
  `di_passyear` year(4) default NULL,
  `bachelor` varchar(200) default NULL,
  `ba_major` varchar(200) default NULL,
  `ba_insname` varchar(225) default NULL,
  `ba_result` varchar(30) default NULL,
  `ba_passyear` year(4) default NULL,
  `masters` varchar(201) default NULL,
  `ma_major` varchar(200) default NULL,
  `ma_insname` varchar(200) default NULL,
  `ma_result` varchar(30) default NULL,
  `ma_passyear` year(4) default NULL,
  PRIMARY KEY  (`education_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`education_id`, `resume_id`, `secondary`, `se_major`, `se_insname`, `se_result`, `se_passyear`, `higher_secondary`, `hi_major`, `hi_insname`, `hi_result`, `hi_passyear`, `diploma`, `di_major`, `di_insname`, `di_result`, `di_passyear`, `bachelor`, `ba_major`, `ba_insname`, `ba_result`, `ba_passyear`, `masters`, `ma_major`, `ma_insname`, `ma_result`, `ma_passyear`) VALUES
(1, 21, 'sfdsd', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000),
(2, 22, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000),
(3, 23, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000, '', '', '', '', 0000);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `email_id` int(11) unsigned NOT NULL auto_increment COMMENT 'Email id',
  `title` varchar(256) NOT NULL,
  `subject` varchar(256) default NULL,
  `body` longtext,
  PRIMARY KEY  (`email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `email`
--


-- --------------------------------------------------------

--
-- Table structure for table `email_configure`
--

CREATE TABLE `email_configure` (
  `email_configure_id` int(10) unsigned NOT NULL auto_increment,
  `email_id` int(11) NOT NULL COMMENT 'Email id',
  `email_type` varchar(100) default NULL,
  `read_status` tinyint(1) NOT NULL COMMENT 'read=0, unread=1',
  `confirmation_flag` tinyint(1) NOT NULL,
  `entry_date` date NOT NULL,
  `admin_id` int(11) NOT NULL COMMENT 'Admin tbl id',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`email_configure_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `email_configure`
--


-- --------------------------------------------------------

--
-- Table structure for table `jobapply`
--

CREATE TABLE `jobapply` (
  `jobapply_id` int(10) unsigned NOT NULL auto_increment,
  `jobinformation_id` int(10) default NULL,
  `resume_id` int(10) default NULL,
  `apply_date` varchar(20) default NULL,
  PRIMARY KEY  (`jobapply_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jobapply`
--

INSERT INTO `jobapply` (`jobapply_id`, `jobinformation_id`, `resume_id`, `apply_date`) VALUES
(1, 94, 23, '2012-02-23'),
(2, 97, 23, '2012-02-23'),
(3, 95, 23, '2012-02-23'),
(4, 90, 23, '2012-02-23'),
(5, 89, 23, '2012-02-23'),
(6, 85, 23, '2012-02-23'),
(7, 5, 23, '2012-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `jobinformation`
--

CREATE TABLE `jobinformation` (
  `jobinformation_id` int(11) unsigned NOT NULL auto_increment COMMENT 'job id',
  `company_id` int(11) NOT NULL default '0',
  `admin_id` int(11) NOT NULL default '0',
  `job_title` varchar(256) NOT NULL,
  `job_vacancies` int(11) default NULL,
  `job_description` text,
  `educational_requirements` text,
  `experience_requirements` text,
  `additional_requirements` text,
  `salary_range` varchar(50) default NULL,
  `other_benefits` text,
  `job_source` varchar(256) default NULL,
  `job_location` varchar(256) default NULL,
  `apply_instruction` text,
  `entry_date` date NOT NULL,
  `posting_date` date NOT NULL,
  `expr_date` date NOT NULL,
  `remark` varchar(256) default NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`jobinformation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=98 ;

--
-- Dumping data for table `jobinformation`
--

INSERT INTO `jobinformation` (`jobinformation_id`, `company_id`, `admin_id`, `job_title`, `job_vacancies`, `job_description`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `salary_range`, `other_benefits`, `job_source`, `job_location`, `apply_instruction`, `entry_date`, `posting_date`, `expr_date`, `remark`, `status`) VALUES
(1, 0, 0, 'Freelancer Business Consultant', 3, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 0),
(4, 0, 0, 'Freelancer Merchandiser (Garments and Textile Goods)', 4, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(5, 0, 0, 'Freelancer Compliance adviser (Garments and Textile Goods)', 2, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(6, 0, 0, 'Freelancer QA adviser (Garments and Textile Goods)', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(9, 0, 0, 'Freelancer Chief operating adviser (Garments and Textile Goods)', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(10, 0, 0, 'Freelancer Commercial adviser (Garments and Textile Goods)', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(11, 0, 0, 'Freelancer planning adviser (Garments and Textile Goods)', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(12, 0, 0, 'Freelancer Fashion Designer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(13, 0, 0, 'Freelancer Fundraising and Event Organizer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(14, 0, 0, 'Freelancer Corporate, Regulatory and Legal Affairs Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(15, 0, 0, 'Freelancer Production Controller (Garments and Textile Goods)', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(16, 0, 0, 'Freelancer Media Relations Specialist', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(17, 0, 0, 'Freelancer Communications Specialist', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(18, 0, 0, 'Freelancer Community Relations Specialist', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(19, 0, 0, 'Freelancer IT Commercial', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(20, 0, 0, 'Freelancer Investment Advisor', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(21, 0, 0, 'Freelancer Investment Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(22, 0, 0, 'Freelancer Banking Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(23, 0, 0, 'Freelancer Insurance & Finance Sales Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(24, 0, 0, 'Freelancer Learning and Development Advisor', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(25, 0, 0, 'Freelancer Company Secretary', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(26, 0, 0, 'Freelancer Mortgage Advisor', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(27, 0, 0, 'Freelancer Logistic Support Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(28, 0, 0, 'Freelancer Materials Controller', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(29, 0, 0, 'Freelance Information Architect', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(30, 0, 0, 'Freelance Business Analyst', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(31, 0, 0, 'Freelance Data Architect Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(32, 0, 0, 'Freelancer Accounting Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(33, 0, 0, 'Freelancer Bookkeeping Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(34, 0, 0, 'Freelancer HR / Payroll Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(35, 0, 0, 'Freelancer Financial Services & Planning Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(36, 0, 0, 'Freelancer Payment Processing Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(37, 0, 0, 'Freelancer Legal Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(38, 0, 0, 'Freelancer Advertising Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(39, 0, 0, 'Freelancer Email Marketing Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(40, 0, 0, 'Freelancer SEO - Search Engine Optimizer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(41, 0, 0, 'Freelancer SMO - Search Engine Marketing Optimizer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(42, 0, 0, 'Freelancer Public Relations Creator', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(43, 0, 0, 'Freelancer Salesman (Telemarketing & Telesales)', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(44, 0, 0, 'Freelancer Business Plans & Marketing Strategy Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(45, 0, 0, 'Freelancer Market Research & Surveys Consultant', 0, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 0),
(46, 0, 0, 'Freelancer Sales & Lead Generation Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(47, 0, 0, 'Freelancer IT Merchandiser', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(48, 0, 0, 'Freelancer Customer Service & Support Executive', 3, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(49, 0, 0, 'Freelancer Technical Support Executive', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(50, 0, 0, 'Freelancer Order Processor', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(51, 0, 0, 'Freelancer Graphic Designer ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(52, 0, 0, 'Freelancer Logo Designer ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(53, 0, 0, 'Freelancer Illustration Designer', 0, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(54, 0, 0, 'Freelancer Printing and Advertiser Designer ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(55, 0, 0, 'Freelancer 3D Modeling & CAD Designer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(56, 0, 0, 'Freelancer Audio Editor ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(57, 0, 0, 'Freelancer Video Editor ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(58, 0, 0, 'Freelancer Animation Designer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(59, 0, 0, 'Freelancer Presentation Designer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(60, 0, 0, 'Freelancer Engineering & Technical Designer ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(61, 0, 0, 'Freelancer 3d Artist ', 3, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(62, 0, 0, 'Freelancer CAD pattern maker', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(63, 0, 0, 'Freelancer Media Planner', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(64, 0, 0, 'Freelancer Data Entry Operator', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(65, 0, 0, 'Freelancer Web Researcher ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(66, 0, 0, 'Freelancer Email Response Handler ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(67, 0, 0, 'Freelancer Transcription Writer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(68, 0, 0, 'Freelancer Technical Writer ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(69, 0, 0, 'Freelancer Website Content Developer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(70, 0, 0, 'Freelancer Blog & Article Writer ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(71, 0, 0, 'Freelancer Copywriter ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(72, 0, 0, 'Freelancer Translator ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(73, 0, 0, 'Freelancer Creative Writer ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(74, 0, 0, 'Freelancer Network Administrator ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(75, 0, 0, 'Freelancer Database Administrator ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(76, 0, 0, 'Freelancer Server Administrator ', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(77, 0, 0, 'Freelancer ERP / CRM Implementation Engineer ', 2, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(78, 0, 0, 'Freelancer Network Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(79, 0, 0, 'Freelancer System Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(80, 0, 0, 'Freelancer Network Designing and planning Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(81, 0, 0, 'Freelancer System Analyst', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(82, 0, 0, 'Freelancer Desktop Application Developer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English • Preferable to have hands-on-experience on C/C--/C++/C#-F/F#/Visual Basic/Visual Basic.NET/Visual C++/Visual C++.Net/Visual C#/Visual Fox Pro/Visual J++Visual J#/Visual Objects/others. ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(83, 0, 0, 'Freelancer Game Developer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(84, 0, 0, 'Freelancer Scripts & Utilities Developer', 3, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 0),
(85, 0, 0, 'Freelancer Software Plug-ins Developer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(86, 0, 0, 'Freelancer Mobile Apps Developer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(87, 0, 0, 'Freelancer Application Interface Designer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(88, 0, 0, 'Freelancer Software Project Maintenance Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(89, 0, 0, 'Freelancer Software QA Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(90, 0, 0, 'Freelancer Software Developer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English • Preferable to have hands-on-experience on C/C--/C++/C#-F/F#/Visual Basic/Visual Basic.NET/Visual C++/Visual C++.Net/Visual C#/Visual Fox Pro/Visual J++Visual J#/Visual Objects/others.  ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(91, 0, 0, 'Freelancer Software Architecture', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1);
INSERT INTO `jobinformation` (`jobinformation_id`, `company_id`, `admin_id`, `job_title`, `job_vacancies`, `job_description`, `educational_requirements`, `experience_requirements`, `additional_requirements`, `salary_range`, `other_benefits`, `job_source`, `job_location`, `apply_instruction`, `entry_date`, `posting_date`, `expr_date`, `remark`, `status`) VALUES
(92, 0, 0, 'Freelancer Web Designer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(93, 0, 0, 'Freelancer Web Programmer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English • Preferable to have hands-on-experience on CSS/JavaScript/JQueer/Ajex/Html/Drupal/Php/Asp.Net/MySql/SqlServer/Oracle/C#/VB.Net/Jromla/wordpress/ Magento / Action Script/DelPhi/Java Script/Jscript/PHP/Python/Ruby/VBScript/others ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(94, 0, 0, 'Freelancer UI Designer', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English • Preferable to have hands-on-experience on  CSS/HTML/Dreamweaver/ Net beans / Zend Studio/ Visual Studio/others. ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(95, 0, 0, 'Freelancer Website QA Consultant', NULL, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', NULL, 'Ask Banglad', NULL, 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(96, 0, 0, 'Freelancer Website Project Maintenance Consultant', 2, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1),
(97, 0, 0, 'Freelancer Web Developer ', 2, 'She or he will be responsible to work at any of the following project under Ask Bangladesh.com: 1. www.sromobazar.com  2. www.loginbd.com 3. www.dressbazar.com 4. www.askbazar.com 5. www.itbidding.com ', 'Applicant must have qualified on related field.', 'Any', '• Must be capable to meet the timeline for assigned Job. • Must have good knowledge on English • Preferable to have hands-on-experience on C/C++/C#/VB6/VB.Net/Asp.Net/F#/Oracle developer/Action Script/Java Script/PHP /Python/Ruby/VBScript/others.  ', 'Negotiable', '', 'Ask Banglad', '', 'or  Send your CV to jobs@askbangladesh.com ', '2012-02-01', '2012-02-01', '0000-00-00', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messages_id` int(11) unsigned NOT NULL auto_increment COMMENT 'messages id',
  `subject` varchar(256) NOT NULL,
  `body` longtext NOT NULL,
  `tomsg` int(11) NOT NULL,
  `frommsg` varchar(256) NOT NULL,
  `isread` tinyint(1) NOT NULL,
  `send_date` date NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`messages_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messages_id`, `subject`, `body`, `tomsg`, `frommsg`, `isread`, `send_date`, `status`) VALUES
(1, 'test', 'hi how r u ? ', 21, 'career.admin@askbangladesh.com', 1, '2012-02-25', 1),
(2, 'test2', ' hi', 21, 'career.admin@askbangladesh.com', 1, '2012-02-25', 0),
(3, 'ffds', ' sdfsdf', 21, 'career.admin@askbangladesh.com', 1, '2012-02-25', 1),
(4, 'sdfs', ' dfdsf', 21, 'career.admin@askbangladesh.com', 1, '2012-02-25', 1),
(5, 'sdfsd', ' sdfsdf', 6, 'career.admin@askbangladesh.com', 0, '2012-02-25', 1),
(6, 'dfgdfgdfg', ' sdfsdfsdfs\ndfsdf f\nds s  \nbsdfs  sf suhfsjdf s fsf sdfjsjd fsifs df\nf sdfs dfsdf sfjsdfj sdfsdfj ssdfsd fjsf sdhfsdjfdsjfjf fsdjf sfw u f e weweiriowerwerwe rweriwer wer wewowewhfdjsfjoir  fisfii', 21, 'career.admin@askbangladesh.com', 1, '2012-02-25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `resume_id` int(11) unsigned NOT NULL auto_increment COMMENT 'resume id',
  `email` varchar(256) NOT NULL,
  `password` varchar(100) NOT NULL default '0',
  `resume_type` int(5) NOT NULL default '0',
  `alt_email` varchar(256) default NULL,
  `full_name` varchar(100) NOT NULL,
  `father_name` varchar(200) default NULL,
  `mother_name` varchar(200) default NULL,
  `gender` varchar(20) NOT NULL,
  `birthday` varchar(50) default NULL,
  `nationality` varchar(200) default NULL,
  `present_address` text,
  `contact_number` varchar(30) default NULL,
  `home_phone` varchar(30) default NULL,
  `country_name` varchar(100) default NULL,
  `position_preference` varchar(50) default NULL,
  `career_summary` longtext,
  `other_qualifications` longtext,
  `picture` varchar(255) default NULL,
  `status` tinyint(1) default '0',
  `city` varchar(256) default NULL,
  `occupation` varchar(256) default NULL,
  PRIMARY KEY  (`resume_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`resume_id`, `email`, `password`, `resume_type`, `alt_email`, `full_name`, `father_name`, `mother_name`, `gender`, `birthday`, `nationality`, `present_address`, `contact_number`, `home_phone`, `country_name`, `position_preference`, `career_summary`, `other_qualifications`, `picture`, `status`, `city`, `occupation`) VALUES
(1, 'moklasur49@gmail.com', '0', 1, NULL, 'Moklasur Rahman', NULL, NULL, '', NULL, NULL, NULL, '1913599040', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(2, 'faridul.islam52@gmail.com', '0', 1, NULL, 'Faridul Islam', NULL, NULL, '', NULL, NULL, NULL, '1923165538', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(3, 'mizanurrahman.rubel@yahoo.com', '0', 1, NULL, 'Mizanur Rahman', NULL, NULL, '', NULL, NULL, NULL, '1912080654', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(4, 'kamru86@yahoo.com', '0', 1, NULL, 'MD. A.S.M KAMRUL AHSAN', NULL, NULL, '', NULL, NULL, NULL, '01911-918082', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(5, 'rimelrydel@hotmail.com ', '0', 1, NULL, 'RAJEEB MAHMUD BABU', NULL, NULL, '', NULL, NULL, NULL, '1918899990', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(6, 'omi_071@yahoo.com', '0', 1, NULL, 'Md. Anwar Ibrahim ', NULL, NULL, '', NULL, NULL, NULL, '1913464628', '7', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Narayongonj', 'Trainee'),
(7, 'monicaghosh2686@yahoo.com', '0', 1, NULL, 'Monika Ghosh', NULL, NULL, '', NULL, NULL, NULL, '1715283467', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(8, 'masudmahfuz@yahoo.com', '0', 1, NULL, 'MD.MAHFUZUR RAHMAN', NULL, NULL, '', NULL, NULL, NULL, '1712884728', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(10, 'nisk15@yahoo.com', '0', 1, NULL, 'SK ASADUZZAMAN', NULL, NULL, '', NULL, NULL, NULL, '10914183428', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(11, 'samiullakhan65@yahoo.com ', '0', 1, NULL, 'SAMIULLAÿKHAN', NULL, NULL, '', NULL, NULL, NULL, '1911240664', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(12, 'Saiful082@gmail.com', '0', 1, NULL, 'Md. Shaiful Islam', NULL, NULL, '', NULL, NULL, NULL, '1914841577', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(13, 'shafiqul_dhaka@yahoo.com', '0', 1, NULL, 'Md. Shafiqul Islam', NULL, NULL, '', NULL, NULL, NULL, '1758068886', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(15, 'msijony@yahoo.com', '0', 1, NULL, 'SAIFUL ISLAM', NULL, NULL, '', NULL, NULL, NULL, '1713635087', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(16, 'shh_saleh@yahoo.com', '0', 1, NULL, 'Shah Mohammad Saleh', NULL, NULL, '', NULL, NULL, NULL, '1817504167', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(17, 'n.poly05@yahoo.com', '0', 1, NULL, 'Nazmon Nahar', NULL, NULL, '', NULL, NULL, NULL, '1674768522', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(18, 'md.kaderali@gmail.com ', '0', 1, NULL, 'MD. KADER ALI', NULL, NULL, '', NULL, NULL, NULL, '1912239095', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(19, 'tarekpstu@gmail.com', '0', 1, NULL, 'Md.Tarek Hossain', NULL, NULL, '', NULL, NULL, NULL, '1552556682', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(20, 'mostofakamal50@yahoo.com', '0', 1, NULL, 'MD.MOSTOFA KAMAL ', NULL, NULL, '', NULL, NULL, NULL, '1717206378', '', 'Bangladesh', NULL, NULL, NULL, NULL, 1, 'Dhaka', 'Trainee'),
(21, 'nur@ask.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 'sdfsdfsd', NULL, NULL, '', '0-0-Year', '', '', 'fsdfsd', '', 'COD', '', 'dfs', '																								', 'profile/4f462b1e90f58ui-icons_ef8c08_256x240.png', 1, NULL, NULL),
(22, '', 'd41d8cd98f00b204e9800998ecf8427e', 0, '', 'sdgf', NULL, NULL, '', '0-0-Year', '', '', 'dfgfd', '', 'ALB', '', '', '', 'profile/4f462b56a4084ui-icons_228ef1_256x240.png', 1, NULL, NULL),
(23, 'nur1@ask.com', 'e10adc3949ba59abbe56e057f20f883e', 0, '', 'tertreterter', NULL, NULL, '', '0-0-Year', '', '', 'tertrettert', '', 'ALB', '', '', '', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `resume_type`
--

CREATE TABLE `resume_type` (
  `resume_type_id` int(10) unsigned NOT NULL auto_increment,
  `title` varchar(256) NOT NULL,
  `description` text,
  PRIMARY KEY  (`resume_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `resume_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `services_id` int(11) unsigned NOT NULL auto_increment,
  `services_name` varchar(256) NOT NULL,
  `description` text,
  `services_type` varchar(100) NOT NULL,
  `remark` text,
  `entry_date` date NOT NULL,
  `admin_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY  (`services_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`services_id`, `services_name`, `description`, `services_type`, `remark`, `entry_date`, `admin_id`, `status`) VALUES
(4, 'sromobazar', '', '', '', '2012-02-16', 1, 0),
(5, 'loginBD', '', '', '', '2012-02-16', 1, 0),
(6, 'loginbd', '', '', '', '2012-02-18', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `workexperience`
--

CREATE TABLE `workexperience` (
  `workexperience_id` int(11) unsigned NOT NULL auto_increment,
  `resume_id` int(11) default NULL,
  `com_name` varchar(200) default NULL,
  `com_address` text,
  `com_type` varchar(100) default NULL,
  `designation` varchar(50) default NULL,
  `position` varchar(20) default NULL,
  `year_experience` varchar(10) default NULL,
  `area_experience` varchar(200) default NULL,
  `salary` varchar(100) default NULL,
  `work_details` longtext,
  `com_name_2` varchar(200) default NULL,
  `com_address_2` text,
  `com_type_2` varchar(100) default NULL,
  `designation_2` varchar(50) default NULL,
  `position_2` varchar(20) default NULL,
  `year_experience_2` varchar(10) default NULL,
  `area_experience_2` varchar(200) default NULL,
  `salary_2` varchar(100) default NULL,
  `work_details_2` longtext,
  PRIMARY KEY  (`workexperience_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `workexperience`
--

INSERT INTO `workexperience` (`workexperience_id`, `resume_id`, `com_name`, `com_address`, `com_type`, `designation`, `position`, `year_experience`, `area_experience`, `salary`, `work_details`, `com_name_2`, `com_address_2`, `com_type_2`, `designation_2`, `position_2`, `year_experience_2`, `area_experience_2`, `salary_2`, `work_details_2`) VALUES
(1, 21, '', 'sdfds', '', '', 'Mid', '    21342', '', NULL, '', '', '', '', '', 'Mid', '    ', '', NULL, ''),
(2, 22, '', '', '', '', 'Mid', '', '', NULL, '', '', '', '', '', 'Mid', '', '', NULL, ''),
(3, 23, '', '', '', '', 'Mid', '234', '', NULL, '', '', '', '', '', 'Mid', '', '', NULL, '');
