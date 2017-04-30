-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2017 at 07:28 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uiid`
--

-- --------------------------------------------------------

--
-- Table structure for table `uiid`
--

CREATE TABLE `uiid` (
  `id` int(100) NOT NULL,
  `user_type` varchar(20) NOT NULL,
  `url` varchar(200) NOT NULL,
  `content` varchar(200) NOT NULL,
  `rating` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uiid`
--

INSERT INTO `uiid` (`id`, `user_type`, `url`, `content`, `rating`) VALUES
(1, 'Farmer', 'https://climatekids.nasa.gov/career-farmers-market/', '', 0),
(3, 'Farmer', 'https://earthobservatory.nasa.gov/Features/PrecisionFarming/precision_farming2.php', '', 0),
(7, 'Farmer', 'https://earthobservatory.nasa.gov/Features/PrecisionFarming/', '', 0),
(8, 'Farmer', 'https://www.nasa.gov/feature/farming-in-martian-gardens', '', 0),
(11, 'Farmer', 'https://spinoff.nasa.gov/Spinoff2016/ee_2.html', '', 0),
(12, 'Geologist', 'http://gcmd.nasa.gov/KeywordSearch/RedirectAction.do?target=S6cqF6vMwKwavJ84n%2FWMxUkx9CbJXSmZ', '', 0),
(13, 'Geologist', 'https://mars.nasa.gov/programmissions/science/goal3/', '', 0),
(14, 'Geologist', 'http://gcmd.nasa.gov/KeywordSearch/RedirectAction.do?target=S6cqF6vMwKze%2BQxiHdV5T0EF1dxCGtauPuIqvD2gyn8%3D', '', 0),
(15, 'Geologist', 'https://www.nasa.gov/audience/forstudents/k-4/dictionary/Geology.html', '', 0),
(16, 'Geologist', 'https://gcmd.nasa.gov/KeywordSearch/RedirectAction.do?target=XHvDNaIR840ia7D0B0NH0tBd68gcDNpmzDSXmauT0Vw%3D', '', 0),
(17, 'Astronomer', 'https://www.nasa.gov/audience/forstudents/k-4/dictionary/Astronomer.html', '', 0),
(18, 'Astronomer', 'https://imagine.gsfc.nasa.gov/ask_astro/profession.html', '', 0),
(19, 'Astronomer', 'https://apod.nasa.gov/', '', 0),
(20, 'Astronomer', 'https://www.nasa.gov/audience/forstudents/k-4/dictionary/Astronomy.html', '', 0),
(21, 'Alien Hunter', 'https://famelab.arc.nasa.gov/bio/seth-shostak/', '', 0),
(22, 'Alien Hunter', 'https://exoplanets.nasa.gov/', '', 0),
(23, 'Alien Hunter', 'https://informal.jpl.nasa.gov/museum/content/rocketeer-academy-summer-camps', '', 0),
(24, 'Alien Hunter', 'https://nai.nasa.gov/education-and.../seti-institutes-seth-shostak-on-colbert-report/', '', 0),
(25, 'Alien Hunter', 'https://nai.nasa.gov/education-and-outreach/highlights/', '', 0),
(26, 'Stargazer', 'https://www.nasa.gov/image.../pegasus-xl-mated-to-l-1011-stargazer-carrier-aircraft', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uiid`
--
ALTER TABLE `uiid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uiid`
--
ALTER TABLE `uiid`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
