-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 20 août 2021 à 12:50
-- Version du serveur :  8.0.21
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `uni`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Informatique', '202cb962ac59075b964b07152d234b70'),
(2, 'Gestion', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Structure de la table `attn`
--

DROP TABLE IF EXISTS `attn`;
CREATE TABLE IF NOT EXISTS `attn` (
  `id` int NOT NULL AUTO_INCREMENT,
  `st_id` int NOT NULL,
  `atten` varchar(50) NOT NULL,
  `at_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `at_student`
--

DROP TABLE IF EXISTS `at_student`;
CREATE TABLE IF NOT EXISTS `at_student` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `st_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `at_student`
--

INSERT INTO `at_student` (`id`, `name`, `st_id`) VALUES
(29, 'Robert Speer', 12103072),
(30, 'Mariea Moore', 13103072),
(31, 'Pamela A Reed', 13203072),
(32, 'Stephen D Skaggs', 14103053),
(33, 'Evelyn K Ambrose', 14203072),
(34, 'Bruno Den', 1454540),
(35, 'Amy Billington', 17699619);

-- --------------------------------------------------------

--
-- Structure de la table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `education` varchar(100) DEFAULT NULL,
  `contact` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `faculty`
--

INSERT INTO `faculty` (`id`, `username`, `password`, `name`, `email`, `birthday`, `gender`, `education`, `contact`, `address`) VALUES
(1, 'robinson', '202cb962ac59075b964b07152d234b70', 'Terry Robinson', 'terryr@gmail.com', '1986-04-01', 'Male', 'BIT, MIT', 900248750, '3962  Elk Rd Little'),
(13, 'will', '202cb962ac59075b964b07152d234b70', 'Will Williams', 'will@gmail.com', '1985-12-12', 'Male', 'MIT, PhD', 124785450, '3308  Valley Drive');

-- --------------------------------------------------------

--
-- Structure de la table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int NOT NULL AUTO_INCREMENT,
  `st_id` int NOT NULL,
  `marks` int NOT NULL,
  `sub` varchar(50) NOT NULL,
  `semester` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `st_info`
--

DROP TABLE IF EXISTS `st_info`;
CREATE TABLE IF NOT EXISTS `st_info` (
  `st_id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `program` varchar(10) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`st_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `st_info`
--

INSERT INTO `st_info` (`st_id`, `name`, `password`, `email`, `bday`, `program`, `contact`, `gender`, `address`, `img`) VALUES
(12103072, 'Robert Speer', '250cf8b51c773f3f8dc8b4be867a9a02', 'robert@gmail.com', '1995-10-10', 'BIT', '7548884541', 'male', '950  Leo Street', 'F34FEDE2-0BE0-400A-82CC-2FCC984A21C4.png'),
(13103072, 'Mariea Moore', '123', 'moremar@mail.com', '1995-10-10', 'BIT', '2457778450', 'female', '3983  Burnside Avenue', '7E230FB0-C157-4544-B270-97F3C8FDB1AA.png'),
(13203072, 'Pamela A Reed', '123', 'reedpar@mail.com', '1995-10-10', 'MsCIT', '4570002480', 'female', '2526  Riverwood Drive', '20DE853C-35DC-4D91-BB0F-BBAEB2388294.png'),
(14103053, 'Stephen D Skaggs', '202cb962ac59075b964b07152d234b70', 'stephensk@mail.com', '1996-08-09', 'MIT', '97410000002', 'Male', '2684  Linden Avenue', 'FB637BF3-101A-4B7F-B365-5645CDF14AE4.png'),
(14203072, 'Evelyn K Ambrose', '123', 'ambrose@mail.com', '1995-10-10', 'BCSE', '3457854445', 'female', '1568  Sugar Camp Road', 'A048670B-178D-4D31-B802-B5B7DBF00E78.png'),
(15103023, 'Gail A Jones', '202cb962ac59075b964b07152d234b70', 'jonesgail@mail.com', '1996-08-09', 'BsCIT', '7541112450', 'Male', '3444  Tree Top Lane', 'FFE697B5-F021-41FA-8267-53496890A002.png'),
(15103033, 'Sam Wilson', '202cb962ac59075b964b07152d234b70', 'wilsons@mail.com', '1996-08-09', 'MIT', '2145785550', 'Male', '292  Canis Heights Drive', 'C6F031D6-2249-4CDC-B513-DC16D9F2325E.png'),
(15103052, 'Sam A Ramirez', '123', 'ramirez@mail.com', '1995-10-10', 'BCSE', '8542145780', 'Male', '272  Shady Pines Drive', 'C9E6BD3E-8306-4385-BFE1-517DF1ACC505.png'),
(15103053, 'Thomas Bryant', '202cb962ac59075b964b07152d234b70', 'thoyant@mail.com', '1996-08-09', 'BIT', '1547854555', 'Male', '1937  Chapmans Lane', '70C5DB91-B97E-44D0-9B5D-298105F3FBE4.png'),
(15103057, 'Timothy Wilcher', '347602146a923872538f3803eb5f3cef', 'timothy@gmail.com', '1996-04-12', 'BIT', '7547854650', 'Male', '3435  Cabell Avenue', '0AD69827-DDEF-485F-8721-E18F29C9A1DE.png'),
(15103058, 'Bruno Den', '202cb962ac59075b964b07152d234b70', 'brunoden@gmail.com', '1996-10-28', 'MIT', '3124578450', 'Male', '919  Winding Way', '94E5BBB2-A0FF-4F19-BA12-C07F0C4C617A.png'),
(15103092, 'Rachel Johnson', '123', 'rachhel@mail.com', '1995-10-10', 'BCSE', '3457856969', 'female', '919  Winding Way', '2112827E-7215-4CB3-BC87-590B2B848955.png'),
(16303053, 'Emma Farrell', '202cb962ac59075b964b07152d234b70', 'emmafck6@mail.com', '1996-08-09', 'MIT', '7531598520', 'female', '431  Clover Drive', 'F6417D01-7D58-406A-B781-867ED93BACC0.png'),
(17699619, 'Amy Billington', '5f4dcc3b5aa765d61d8327deb882cf99', 'amy@gmail.com', '1995-04-01', 'BIT', '7410000058', 'Female', '2825 Alpaca Way', 'E2EB3AB3-379F-49E2-A558-E7CE535778A0.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
