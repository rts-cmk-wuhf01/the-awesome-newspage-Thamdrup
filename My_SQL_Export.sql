-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 07, 2019 at 01:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_image` varchar(64) NOT NULL,
  `fk_category_id` int(11) NOT NULL,
  `fk_author_id` int(11) NOT NULL,
  `article_text` varchar(3000) NOT NULL,
  `article_tags` varchar(300) NOT NULL,
  `article_title` varchar(128) NOT NULL,
  `article_postdate` datetime NOT NULL,
  `article_likes` int(11) NOT NULL,
  `article_summary` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`article_id`, `article_image`, `fk_category_id`, `fk_author_id`, `article_text`, `article_tags`, `article_title`, `article_postdate`, `article_likes`, `article_summary`) VALUES
(1, 'politics.png', 1, 1, 'Labour has held on to the marginal seat of Peterborough, overturning predictions that the contest could deliver a first byelection victory for Nigel Farage’s Brexit party.\r\n\r\nThe victorious Labour candidate, Lisa Forbes, told her supporters after the count early on Friday: “Tonight’s result is significant because it shows that the politics of division will never win.”\r\n\r\nForbes won 10,484 votes, beating the Brexit party’s Mike Greene, who took 9,801 votes, a margin of 683. The Conservatives were beaten into third place with 7,243 votes. Turnout was 48%.\r\n\r\nFarage left the count through a backdoor minutes before the result was announced.', '', 'Peterborough byelection result: Labour scrapes past Brexit party to hold seat', '2019-06-20 09:12:00', 282, 'Labour’s Lisa Forbes says result shows ‘the politics of division will never win’'),
(2, 'politics2.jpg', 1, 1, 'ATLANTA — After two days of intense criticism, Joseph R. Biden Jr. reversed himself Thursday night on one of the issues most important to Democratic voters, saying he no longer supports a measure that bans federal funding for most abortions.\r\n\r\nAs recently as Wednesday, Mr. Biden’s campaign had said he supported the measure, known as the Hyde Amendment. His decision to change positions illustrates the intense pressure he faces as the presumed front-runner for the Democratic nomination for president.\r\n\r\n[What is the Hyde Amendment? Here’s a look at what it does, and why the politics have shifted.]\r\n\r\nHis turnaround was abrupt, particularly because Mr. Biden has grappled for decades with his views on abortion rights. While he has said he supports Roe v. Wade, the Supreme Court ruling that made abortion legal nationwide, he has opposed members of his own party on a number of abortion measures, ascribing his reluctance to his Roman Catholic faith.\r\n\r\nIn a speech at a gala hosted by the Democratic National Committee in Atlanta on Thursday night, Mr. Biden credited the change, in part, to recent efforts by Republicans to roll back abortion access in states including Georgia and across the country — especially in the South — calling them “extreme laws.”', '', 'Joe Biden Denounces Hyde Amendment, Reversing His Position', '2019-06-04 08:15:00', 0, 'Joseph R. Biden Jr. has publicly grappled with his positions on abortion rights for decades.');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` int(11) NOT NULL,
  `author_image` varchar(64) NOT NULL,
  `author_name` varchar(64) NOT NULL,
  `author_title` varchar(32) NOT NULL,
  `author_description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `author_image`, `author_name`, `author_title`, `author_description`) VALUES
(1, 't1.jpg', 'Rick Mofina', 'Extreme Author', 'Rick Mofina is a former journalist who has interviewed murderers on death row, flown over L.A. with the LAPD and patrolled with the Royal Canadian Mounted Police near the Arctic. He’s also reported from the Caribbean, Africa and Kuwait’s border with Iraq. His books have been published in nearly 30 c'),
(2, 't2.jpg', 'Glynnis Campbell', 'Children writer', 'GLYNNIS CAMPBELL is a USA Today bestselling author of swashbuckling action-adventure romance. She’s the wife of a rock star, and the mother of two young adults, but she’s also been a ballerina, a typographer, a film composer, a piano player, a singer in an all-girl rock band, and a voice in those vi'),
(3, 't4.jpg', 'John Scalzi', 'Science fiction writer', 'John Scalzi writes books, which, considering where you’re reading this, makes perfect sense. He’s best known for writing science fiction, including the New York Times bestseller Redshirts, which won the Hugo Award for Best Novel.'),
(4, 't3.jpg', 'Courtney Milan', 'Bestselling author', 'Courtney Milan is a New York Times and USA Today bestselling author of historical romance. Her books have received starred reviews in Publishers Weekly and Booklist.'),
(5, 't7.jpg', 'Laurelin Paige', 'Bestselling author', 'Laurelin Paige is the NY Times, Wall Street Journal, and USA Today Bestselling Author of the Fixed Trilogy. She’s a sucker for a good romance and gets giddy anytime there’s kissing, much to the embarrassment of her three daughters.'),
(6, 't5.jpg', 'Michael Siemsen', 'Novel author', 'Michael Siemsen is the USA Today Bestselling author of 6 novels, including The Dig, A Warm Place to Call Home (a demon’s story), and Exigency. He lives in Northern California with “the wife,” “the kids,” “the dog,” “that cat,” and he occasionally wears pants. His latest release, RETURN, is the third'),
(7, 't6.jpg', 'Claire Delacroix', 'Romance author', 'Bestselling author Claire Delacroix published her first romance novel — a medieval romance called THE ROMANCE OF THE ROSE — in 1993. Since then, she has published over fifty romance novels and numerous novellas, including time travel romances, contemporary romances and paranormal romances'),
(8, 't8.jpg', 'Adam Silvera', 'Sports author', 'Adam Silvera was born and raised in the Bronx, New York. He was a bookseller before shifting to children’s publishing where he worked at a literary development company, a creative writing website for teens, and as a book reviewer of children’s and young adult novels. He lives in New York City and is');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'Politics'),
(2, 'Breaking News'),
(3, 'Business'),
(4, 'Technology'),
(5, 'Health'),
(6, 'Travel'),
(7, 'Sports');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_postdate` datetime NOT NULL,
  `comment_text` varchar(1000) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `fk_article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `contact_id` int(11) NOT NULL,
  `contact_mail` varchar(64) NOT NULL,
  `contact_phone` varchar(64) NOT NULL,
  `contact_adress` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_mail` varchar(64) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_image` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(64) NOT NULL,
  `video_link` varchar(64) NOT NULL,
  `video_picture` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
