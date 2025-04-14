-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 27, 2025 at 12:40 AM
-- Server version: 8.0.35
-- PHP Version: 8.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `bio` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `email`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'F. Scott Fitzgerald', 'fitzgerald@example.com', 'F. Scott Fitzgerald (1896–1940) was an American novelist best known for The Great Gatsby. A key voice of the Jazz Age, he explored wealth, ambition, and disillusionment. His works, though overlooked in his time, are now literary classics.', '2024-03-08 12:57:32', '2024-03-08 12:57:32'),
(2, 'Harper Lee', 'harper.Lee@example.com', 'Harper Lee (1926–2016) was an American novelist best known for To Kill a Mockingbird. Her Pulitzer Prize-winning book explores race and justice in the Deep South and remains a classic of modern literature.', '2024-03-08 12:57:32', '2024-03-08 12:57:32'),
(3, 'George Orwell', 'bigbrother@example.com', 'George Orwell (1903–1950) was a British writer known for 1984 and Animal Farm. His works explore totalitarianism, surveillance, and political corruption, making him one of the 20th century’s most influential authors.', '2024-03-08 12:57:32', '2024-03-08 12:57:32'),
(4, 'Jane Austen', 'austen@example.com', 'Jane Austen (1775–1817) was an English novelist known for Pride and Prejudice and Sense and Sensibility. Her works explore love, class, and society with wit and keen social insight, making her a literary icon.', '2024-03-08 12:57:32', '2024-03-08 12:57:32'),
(5, 'J. D. Salinger', 'salinger@example.com', 'J.D. Salinger (1919–2010) was an American writer best known for The Catcher in the Rye. His works explore themes of alienation and identity, and his reclusive nature added to his literary mystique.', '2024-03-08 12:57:32', '2024-03-08 12:57:32'),
(6, 'J. R. R. Tolkien', 'tolkien@example.com', 'J.R.R. Tolkien (1892–1973) was a British writer and professor best known for The Hobbit and The Lord of the Rings. His epic fantasy works shaped modern fantasy literature and continue to inspire readers worldwide.', '2024-03-08 12:57:32', '2024-03-08 12:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `author_id` int NOT NULL,
  `published_date` date NOT NULL,
  `book_image` varchar(125) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author_id`, `published_date`, `book_image`, `created_at`, `updated_at`) VALUES
(1, 'The Great Gatsby', 1, '1925-04-10', 'the_great_gatsby.jpg', '2024-03-07 21:20:36', '2024-03-07 21:20:36'),
(2, 'To Kill a Mockingbird', 2, '1960-07-11', 'to_kill_a_mockingbird.jpg', '2024-03-07 21:20:36', '2024-03-07 21:20:36'),
(3, '1984', 3, '1949-06-08', '1984.jpg', '2024-03-07 21:20:36', '2024-03-07 21:20:36'),
(4, 'Pride and Prejudice', 4, '1813-01-28', 'pride_and_prejudice.jpg', '2024-03-07 21:20:36', '2024-03-07 21:20:36'),
(5, 'The Catcher in the Rye', 5, '1951-07-16', 'the_catcher_in_the_rye.jpg', '2024-03-07 21:20:36', '2024-03-07 21:20:36'),
(6, 'The Hobbit', 6, '1937-09-21', 'the_hobbit.jpg', '2024-03-07 21:20:36', '2024-03-07 21:20:36');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
