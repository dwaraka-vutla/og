-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 11:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `desc` varchar(500) NOT NULL,
  `price` float NOT NULL,
  `cover` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `desc`, `price`, `cover`) VALUES
(1, 'Mahabharat', 'The Mahabharata, one of Indias two major Sanskrit epics, chronicles the Kurukshetra War, a clash between two royal cousins, the Pandavas and the Kauravas. Rich in philosophical discussions and mythological stories, it is a literary treasure.', 99, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0wmWzvygc_MvbbKMN0b-Tz0aPE-URnlDa58WRnqDIbdQs-6cq'),
(2, 'Ramayana', 'The Ramayana, an ancient Sanskrit epic, recounts the life of Rama, an exiled prince who rescues his wife Sita from the demon king Ravana, establishing a reign of righteousness. It remains a revered masterpiece of Indian literature.', 99, 'https://cdn.kobo.com/book-images/b0870569-2c21-49f5-b33f-15acacdd3562/353/569/90/False/india-s-epic-ramayana-for-the-youth-and-kids.jpg'),
(3, 'The Art of Happiness', 'In "The Art of Happiness, the Dalai Lama shares his insights on cultivating inner peace and lasting happiness in our daily lives.', 79, 'https://m.media-amazon.com/images/I/81iL+zKO7AL._SL1500_.jpg'),
(4, 'Harry Potter Series','Orphaned Harry Potter discovers he is a wizard and attends Hogwarts School of Witchcraft and Wizardry, where he faces challenges and confronts the dark wizard Lord Voldemort.', 49, 'https://m.media-amazon.com/images/I/81lDy5nEXUL._SL1500_.jpg'),
(5, 'A W S', 'Amazon Web Services (AWS) is a suite of cloud computing services that offer on-demand access to a broad range of IT resources, such as compute power, storage, and networking. ', 79, 'https://m.media-amazon.com/images/I/71Mudt+dTxL._SL1500_.jpg'),
(6, 'Game of Thrones', 'In George R.R. Martin Game of Thrones, noble families clash for power in a land of unpredictable seasons, where alliances are fragile and betrayal lurks around every corner.', 69, 'https://m.media-amazon.com/images/I/71P+4DslKmL._SY466_.jpg'),
(7, 'Redemption at Hacksaw Ridge', 'Redemption at Hacksaw Ridge by Booton Herndon is a biography of Desmond Doss, a conscientious objector who served as a combat medic in World War II.', 69, 'https://m.media-amazon.com/images/I/81aSIhQ1KLL._SL1500_.jpg'),
(8, 'The 3 Mistakes of My Life', 'Amidst religious tensions and business challenges, three friends in Ahmedabad, India, navigate love, friendship, and ambition in Chetan Bhagat The 3 Mistakes of My Life.', 39, 'https://m.media-amazon.com/images/I/71zxX-RW2xL._SL1360_.jpg'),
(9, '2 States', 'Krish, a Punjabi boy from Delhi, falls in love with Ananya, a Tamilian girl from Chennai. Despite their cultural differences, they overcome numerous obstacles, including parental disapproval, to achieve their dream of a happy marriage.', 69, 'https://m.media-amazon.com/images/I/513UI-mvqYL._SY445_SX342_.jpg'),
(10, 'Kalki', 'Avatar of Vishnu," an ordinary village boy embarks on a heroic quest to restore peace and righteousness in a world threatened by darkness.', 99, 'https://m.media-amazon.com/images/I/81ZN3w7Of6L._SL1500_.jpg'),
(11, 'I Am Watching You', 'In Teresa Driscoll captivating thriller I Am Watching You, Ella Longfield maternal instincts are put on high alert when she overhears two men flirting with teenage girls on a train. ', 59, 'https://m.media-amazon.com/images/I/61ufZiWTI+L._SL1014_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(300) NOT NULL,
  `lastName` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(500) NOT NULL,
  `confirmPassword` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `confirmPassword`) VALUES
(1, 'Poorna', 'Seshadri', 'poorna@gmail.com', 'pawankalyan', 'pawankalyan'),
(2, 'Dwaraka', 'Vutla', 'dwaraka@gmail.com', 'maheshbabu', 'maheshbabu');


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

  ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;


-- ORDERS table creation
CREATE TABLE `orders` (
  `orderId` varchar(300) NOT NULL,
  `orderDate` DATE,
  `email` varchar(300) NOT NULL,
  `books` varchar(300) NOT NULL,
  `bookIds` varchar(300) NOT NULL,
  `orderPrice`  float(10,2)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


