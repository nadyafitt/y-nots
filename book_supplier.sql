-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2019 at 07:01 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_supplier`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(100) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `Name`, `Phone`, `Email`) VALUES
(1, 'Ainul', '0177877656', 'ainul@gmail.com'),
(2, 'Farah', '0177866566', 'farah@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(100) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Genre` varchar(200) NOT NULL,
  `PublishYear` datetime NOT NULL,
  `Price` decimal(65,0) NOT NULL,
  `author_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `Title`, `Genre`, `PublishYear`, `Price`, `author_id`) VALUES
(1, 'Puteri Gunung Ledang', 'Fantasy', '2019-05-28 16:15:00', '45', 1),
(2, 'Didi and Friends', 'Cartoon', '2019-05-28 16:17:00', '30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookstores`
--

CREATE TABLE `bookstores` (
  `id` int(100) NOT NULL,
  `Branch` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `TotalBranch` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookstores`
--

INSERT INTO `bookstores` (`id`, `Branch`, `Name`, `TotalBranch`) VALUES
(1, 'Melaka', 'Popular', 2);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(100) NOT NULL,
  `TotalPrice` decimal(65,0) NOT NULL,
  `book_id` int(100) NOT NULL,
  `bookstore_id` int(100) NOT NULL,
  `stock_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `TotalPrice`, `book_id`, `bookstore_id`, `stock_id`) VALUES
(1, '350', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(100) NOT NULL,
  `Quantity` int(50) NOT NULL,
  `DateDeliver` datetime NOT NULL,
  `DateReturn` datetime NOT NULL,
  `book_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `Quantity`, `DateDeliver`, `DateReturn`, `book_id`) VALUES
(1, 4, '2019-05-28 16:20:00', '2020-05-28 16:20:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) UNSIGNED NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Role` varchar(200) NOT NULL,
  `author_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Password`, `Name`, `Phone`, `Email`, `Address`, `Role`, `author_id`) VALUES
(1, '$2y$10$OfDyXsVsGD/ObIRKkXgFrepVTs85BDKh9UnIPB1O/1smUpbKJgqva', 'Syaf', '0177044856', 'ika@gmail.com', 'Parit Pechah', 'Manager', 0),
(2, '$2y$10$XYOdaRSVlAnoSTqRAZOZu.j7ppxmH6n.vXAhamBUXRiMZnEix6Qpa', 'Noorsyafiqah', '0177044575', 'syaff@gmail.com', 'Parit Pechah Darat', 'Accountant', 0),
(3, '$2y$10$xNy9L8PZNRRGtm9/RZA3sOAq5vXxF4vI.q4yboaG1NwhJXsRKHz0O', 'syafiqah', '0126662943', 'syafiqah@gmail.com', 'Selangor', 'Manager 3', 0),
(4, '$2y$10$LyAH/gnVS7xA76bFr9nAr.9ayzyaI8YUNP5GKGxOL3xLxp52rBh92', 'Julia', '0177044655', 'juu@gmail.com', 'Kedah', 'Accountant', 0),
(5, '$2y$10$/DdzEW9wkK2ylS4BdsuUPuqgtKFEgv4Okqlg2EypCilEUFBwUitOO', 'ina', '0174455656', 'ina@gmail.com', 'Kedah', 'Manager', 0),
(6, '$2y$10$VH58o6IhoPa3mEcHB.VLQO0ASnJ5u2RWjkDWLkZa9qIT9PMt6Zhhe', 'Nadia', '0178899878', 'nad97@yahoo.com', 'Pahang', 'Manager 3', 0),
(7, 'nadia', 'Nadia', '0129988787', 'nadia@gmail.com', 'Pahang', 'Manager 2', 0),
(8, '$2y$10$B/gJTEW.dJuqRzR1zweEOOUroUG3fjcxWiltzERMcfL2MFrooPqmi', 'Wan Aminah', '0178855677', 'wan97@gmail.com', 'Kuala Lumpur', 'Accountant 2', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookstores`
--
ALTER TABLE `bookstores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bookstores`
--
ALTER TABLE `bookstores`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
