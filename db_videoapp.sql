-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 09, 2018 at 07:16 AM
-- Server version: 5.7.19
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adultimg`
--

DROP TABLE IF EXISTS `tbl_adultimg`;
CREATE TABLE IF NOT EXISTS `tbl_adultimg` (
  `img_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_path` varchar(100) NOT NULL,
  `video_path` varchar(100) NOT NULL,
  `img_desc` varchar(1000) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_adultimg`
--

INSERT INTO `tbl_adultimg` (`img_id`, `img_path`, `video_path`, `img_desc`) VALUES
(1, 'images/adult/Sleepless.png', 'videos/adults/sleepless.jpg', 'Sleepless in Seattle is a 1993 American romantic comedy-drama film directed and co-written by Nora Ephron, based on a story by Jeff Arch. It stars Tom Hanks and Meg Ryan, alongside a supporting cast featuring Bill Pullman, Ross Malinger, Rob Reiner, Rosie O\'Donnell, Gaby Hoffmann, Victor Garber, and Rita Wilson.'),
(2, 'images/adult/Ghost.png', 'videos/adults/ghost.mp4', 'Drama · After a young man is murdered, his spirit stays behind to warn his lover of impending danger, with the help of a reluctant psychic. ..... Trivia. This is one of the few supernatural themed films to be nominated for Best Picture. See more » ... Emergency Room Ghost: [seeing Sam\'s body] Shot, huh? That\'ll do it every time.'),
(3, 'images/adult/JM.png', 'videos/adults/JM.jpg', 'Comedy · When a sports agent has a moral epiphany and is fired for expressing it, he decides to put his new philosophy to the test as an independent agent with the only athlete who stays with him and his former secretary.'),
(4, 'images/adult/Notebook.png', 'videos/adults/Notebook.mp4', 'A poor yet passionate young man falls in love with a rich young woman, giving her a sense of freedom, but they are soon separated because of their social differences.'),
(5, 'images/adult/Pretty Woman.png\r\n', 'videos/adults/pw.jpg', 'A man in a legal but hurtful business needs an escort for some social events, and hires a beautiful prostitute he meets... only to fall in love.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_indeximg`
--

DROP TABLE IF EXISTS `tbl_indeximg`;
CREATE TABLE IF NOT EXISTS `tbl_indeximg` (
  `img_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_path` varchar(100) NOT NULL,
  `video_path` varchar(100) NOT NULL,
  `img_desc` varchar(1000) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_indeximg`
--

INSERT INTO `tbl_indeximg` (`img_id`, `img_path`, `video_path`, `img_desc`) VALUES
(1, 'images/index/elvis.png', 'videos/index/elvis.jpg', 'Music :  Elvis Aaron Presley was an American singer, musician, and actor. Regarded as one of the most significant cultural icons of the 20th century, he is often referred to as the \"King of Rock and Roll\" or simply \"the King\".'),
(2, 'images/index/FlashDance.png', 'videos/index/flashdance.mp4', 'Artist: Irene Cara Album: What a Feelin\' Released: 1983 Nominations: Grammy Award for Record of the Year Awards: Grammy Award for Best Female Pop Vocal Performance'),
(3, 'images/index/Friends.png\r\n', 'videos/index/friends.mp4', 'Follows the personal and professional lives of six 20 to 30-something-year-old friends living in Manhattan. Creators: David Crane, Marta Kauffman Stars: Jennifer Aniston, Courteney Cox, Lisa Kudrow , David Schwimmer, Matt LeBlanc and Matthew Perry'),
(4, 'images/index/gbu.png', 'videos/index/gbu.jpg', 'Western · A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.'),
(5, 'images/index/tin.png', 'videos/index/tin.jpg', 'The adventures of the young reporter, his faithful dog and friends as they travel around the world on adventures.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kidimg`
--

DROP TABLE IF EXISTS `tbl_kidimg`;
CREATE TABLE IF NOT EXISTS `tbl_kidimg` (
  `img_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_path` varchar(100) NOT NULL,
  `video_path` varchar(100) NOT NULL,
  `img_desc` varchar(1000) NOT NULL,
  `genre` varchar(30) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kidimg`
--

INSERT INTO `tbl_kidimg` (`img_id`, `img_path`, `video_path`, `img_desc`, `genre`) VALUES
(1, 'images/kids/Britney.png', 'videos/kids/britney.png', 'Baby One More Time is the debut studio album by American singer Britney Spears. It was released on January 12, 1999 through Jive Records.', 'fav'),
(2, 'images/kids/HomeAlone.png', 'videos/kids/HomeAlone.mp4', 'Comedy · An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', 'fav'),
(3, 'images/kids/Aladdin.png', 'videos/kids/Aladdin.mp4', 'Animation · When a street urchin vies for the love of a beautiful princess, he uses a genie\'s magic power to make himself off as a prince in order to marry her.', 'fav'),
(4, 'images/kids/Rugrats.png', 'videos/kids/rugrats.jpg', '\"Rugrats\" reveals the world from a baby\'s point of view. Everything looks bigger, more mysterious and uncontrollable. Angelica, the oldest, likes to terrorize her cousin, Tommy, and his friends, and is famous for screaming, \"You stupid babies!\" The adults in the series are often clueless.', 'fav'),
(5, 'images/kids/MyGirl.png', 'videos/kids/myGirl.mp4', 'Comedy · A young girl, on the threshold of her teen years, finds her life turning upside down, when she is accompanied by an unlikely friend.', 'fav');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kidimgadv`
--

DROP TABLE IF EXISTS `tbl_kidimgadv`;
CREATE TABLE IF NOT EXISTS `tbl_kidimgadv` (
  `img_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `img_path` varchar(100) NOT NULL,
  `video_path` varchar(100) NOT NULL,
  `img_desc` varchar(1000) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kidimgadv`
--

INSERT INTO `tbl_kidimgadv` (`img_id`, `img_path`, `video_path`, `img_desc`) VALUES
(1, 'images/kids/toy.png', 'videos/kidsadv/toy.mp4', 'Animation · A cowboy doll is profoundly threatened and jealous when a new spaceman figure supplants him as top toy in a boy\'s room.'),
(2, 'images/kids/wild.png', 'videos/kidsadv/wild.jpg', 'Eccentric family has adventures in natural surroundings.'),
(3, 'images/kids/scooby.png', 'videos/kidsadv/scooby.mp4', 'Scooby-Doo is an American animated cartoon franchise, comprising many animated television series produced from 1969 to the present day.'),
(4, 'images/kids/stuart.png', 'videos/kidsadv/stuart.mp4', 'Adventure · The Little family adopt a charming young mouse named Stuart, but the family cat wants rid of him'),
(5, 'images/kids/dora.png\r\n', 'videos/kidsadv/dora.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` int(11) NOT NULL,
  `user_permission` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
