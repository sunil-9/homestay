-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2019 at 04:10 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homestay_nepal`
--

-- --------------------------------------------------------

--
-- Table structure for table `allowed`
--

CREATE TABLE `allowed` (
  `id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `include` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `allowed`
--

INSERT INTO `allowed` (`id`, `h_id`, `include`) VALUES
(3, 1, 'male\r\n'),
(4, 1, 'family'),
(5, 1, '\r\nstudents'),
(6, 1, 'couples\r\n'),
(7, 1, '\r\nfemale\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `star` int(11) NOT NULL,
  `title` varchar(65) NOT NULL,
  `text` text NOT NULL,
  `user_id` varchar(65) NOT NULL,
  `homestay_id` varchar(65) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `star`, `title`, `text`, `user_id`, `homestay_id`, `timestamp`) VALUES
(1, 4, 'WORTH TO COME AGAIN', 'Sed tempus vestibulum lacus blandit faucibus. Nunc Sed tempus vestibulum lacus blandit faucibus. Nunc imperdiet, diam nec rhoncus ullamcorper, nisl nulla suscipit ligula, at imperdiet urna.\n\n', '1', '1', '2019-07-26 10:45:23'),
(2, 3, 'test', 'lkasjfia ksjfoijafj skjfisjaoifjoa sdfkjasfjoasi fjoasfaslkdfsjdfoijas ofaosdjflksdkljf sdifjsnfksakdfj aisofklsclksijdscoi fsd', '1', '1', '2019-07-26 10:45:23');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phoneno` int(10) DEFAULT NULL,
  `email` text,
  `cdate` date DEFAULT NULL,
  `approval` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `id` int(11) NOT NULL,
  `name` varchar(65) NOT NULL,
  `relation` varchar(65) NOT NULL,
  `about` text NOT NULL,
  `social link` varchar(65) NOT NULL,
  `pic` varchar(65) NOT NULL,
  `H_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `name`, `relation`, `about`, `social link`, `pic`, `H_id`) VALUES
(1, 'suresh sapkota', 'father', 'my name is suresh sapkota. and im running    this home stay for 5 years now', 'facebook.com', 'suresh.jpg', 1),
(2, 'dhana sapkota', 'mother', 'my name is dhana sapkota. and im running    this home stay for 5 years by now. thank you.!', 'facebook.com', 'dhana.jpg', 1),
(3, 'sunil sapkota', 'son', 'hello there my name is sunil sapkota thank you.', 'facebook.com', 'sunil.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `featured_homestay`
--

CREATE TABLE `featured_homestay` (
  `id` int(10) UNSIGNED NOT NULL,
  `homestay` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `featured_homestay`
--

INSERT INTO `featured_homestay` (`id`, `homestay`) VALUES
(2, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `h_id` int(11) NOT NULL,
  `Features` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `h_id`, `Features`) VALUES
(1, 1, 'bike for use'),
(2, 1, 'laundry'),
(3, 1, 'parking'),
(4, 1, 'breakfast');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `homestay_id` int(11) NOT NULL,
  `pic_name` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `homestay_id`, `pic_name`) VALUES
(1, 1, 'a.jpg'),
(2, 2, 'b.jpg'),
(3, 1, 'a.jpg'),
(4, 2, 'b.jpg'),
(5, 1, 'a.jpg'),
(6, 1, 'a.jpg'),
(7, 1, 'a.jpg'),
(8, 2, 'b.jpg'),
(9, 1, 'a.jpg'),
(10, 1, 'a.jpg'),
(11, 1, 'a.jpg'),
(12, 1, 'a.jpg'),
(13, 1, 'a.jpg'),
(14, 1, 'a.jpg'),
(15, 1, 'a.jpg'),
(16, 1, 'a.jpg'),
(17, 0, '1564200514-66511303_369679910374100_1920999267883810816_n.jpg'),
(18, 0, '1564200599-dilo aaio gilo aaio.jpg'),
(19, 0, '1564200960-64735722_891685634503034_986357686410936320_n.jpg'),
(20, 0, '1564201046-20141117_161647.jpg'),
(21, 1, '1564224360-Homestay-Eco-Resort-Chitwan-Nepal-889x528.jpg'),
(22, 1, '1564225226-Homestay-Eco-Resort-Chitwan-Nepal-889x528.jpg'),
(23, 1, 'Homestay-Eco-Resort-Chitwan-Nepal-889x528.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `homestay_info`
--

CREATE TABLE `homestay_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(190) NOT NULL,
  `tags` varchar(40) NOT NULL,
  `owner_name` varchar(65) NOT NULL,
  `icon` varchar(65) NOT NULL,
  `content` longtext NOT NULL,
  `photo` varchar(50) NOT NULL,
  `location` text NOT NULL,
  `posted` varchar(40) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(40) DEFAULT NULL,
  `category` varchar(40) NOT NULL,
  `meals` text NOT NULL,
  `video_link` text NOT NULL,
  `rules` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homestay_info`
--

INSERT INTO `homestay_info` (`id`, `title`, `tags`, `owner_name`, `icon`, `content`, `photo`, `location`, `posted`, `date`, `author`, `category`, `meals`, `video_link`, `rules`) VALUES
(1, 'Mustang(Thini)', 'Best memories starts here.', 

  'sunil99', 
  'Homestay-Eco-Resort-Chitwan-Nepal-889x528.jpg', 
  'It takes 30 minutes’ walk from Jomsom. The name of this village originates from Tibetan word Thin (lit. base or root). It is the oldest village in Panch Gaun (lit. five villages) region. Historically, Thini was an important village in the valley where famous king Thang Mig Chen used to rule over. As such every village had to pay tribute to Thini (either produce or labour). The village still has Kot Ghar (arsenal) where artilleries are preserved. It is also a gateway to Tilicho Lake, which is about two days walk. Other attractions include Thini Bonpo Gompa, Thini Bhadra Festival and Bhomo Ama Festival. Thini Bonpo Gompa having its affiliation with Lubra Gompa is currently looked after by the monks of Kuchep Terenga Gompa, belonging to Nyingma-Pa sect. Idols of Bon deities are placed at altar of the monastery. Thini Bhadra festival falling in August/September lasts for three days. The festival is celebrated with religious plays and is supposed to bring happiness to the village. Bhomo Ama is major festival of Thini and falls in April in every 12 years’ time for about 15 days. There are many Homestays in Thini which provides various facilities for the people.\n\n',
   'Homestay-Eco-Resort-Chitwan-Nepal-889x528.jpg',
    '<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14064.061429000583!2d83.9760808!3d28.206846!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x6eeff1f9febe0a28!2sLa+grandee+international+college!5e0!3m2!1sen!2sua!4v1563893544965!5m2!1sen!2sua" width="715" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>',
     'draft', NULL, NULL, '7',
      'Hosts can offer a complimentary light breakfast at their discretion. All other meals will incur an additional cost. Meals and any additional payment should be arranged directly with your host.', 
      '<iframe width="640" height="360" src="https://www.youtube.com/embed/ObUlz88BEfA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>',
       'Please stay clean, please try to leave the room in the same condition as you take. \nPlease smoke outside and away from the room. \nInform us in advance when you are not having meal, if you go out (bars, restaurant, visit someone) let us know, where you will plan to go and in case of emergency we will know where we can find you,\n\n(:- Thank you.\n\nSmoking is not allowed.'),
(2, 'Ghandruk', 'Check into another World.', '', '', '.This is a popular weeklong package that offers you the panoramic beauty of mountains in Annapurna range, while you also get to immerse yourself in the warm hospitality and unique culture of indigenous Gurung people. \r\n\r\nGhandruk village lies on the lap of majestic Mt. Macchapucchre (popularly known as fishtail mountain) accompanied by Mt. Himchuli. This village has a little over thousand individual households and one will be quite amazed to see the local architecture, cultural practices and way of life. The food served is entirely home-made, authentic and organic. \r\n\r\nOne can also see the south side of Mt. Annapurna from this vantage point. This is also the route towards Annapurna Base Camp and Poon Hill another popular tourist destination. The sight of blooming rhododendrons, picturesque mountains, traditional villages and kind and welcoming people will amalgamate into an immemorable experience, one that enriches your soul.  \r\n\r\n\r\n\r\n\r\n', '19292400_1524780270.jpg', '', 'publish', '2018-04-26 18:15:00', 'admin', '2', '', '', ''),
(3, 'Kaskikot Village', 'Experience the passion of hospitality.', '', '', 'Kaskikot Village Homestay is always a good idea for your vacation in Nepal because it leaves you speechless, then turns you into a storyteller. Kasikot village had its history about 350 years ago when the king of Kaski built a palace here and named it Kasikot. Since then the village has flourished as a traditional heritage located near Pokhara in the Kaski district.  Kaskikot Homestay lies about 13 km west of Pokhara which can be accessed either by vehicle or by hiking for about 3 hours. The route to Kasikot village intersects with many other trekking routes around the Annapurna region. Hence, it can be included as a start point or an endpoint to the trekking route in the Annapurna region.\r\nYou can also hike up to Kasikot hilltop to witness the ruins of the old palace. The hilltop also provides a magnificent view of the sunrise over the Annapurna and Dhaulagiri in the far-west and a clear view of the Pokhara city and Fewa Lake in the East.\r\n\r\n', '46981800_1524780339.jpg', '', 'publish', '2018-04-26 18:15:00', 'admin', '3', '', '', ''),
(4, 'Dhampus', 'Feel the luxury of being yourself.', '', '', 'Dhampus is a traditional village located in Kaski District, within the Annapurna Himalayas. Hikes there start early, with a drive to Phedi, about 30 minutes from Pokhara. Right at the beginning we were rewarded by the view of Machhapuchhre (Fishtail Mountain) glowing shades of yellow and orange in a mesmerizing display of sunrise Alpenglow.\r\nIt is the best destination for the short trekking. There are various homestays which provides best hospitality.\r\n\r\n\r\n', '98308700_1524790852.jpg', '', 'publish', '2018-04-26 18:15:00', 'admin', '2', '', '', ''),
(5, 'Sikles', 'Stay with us and feel like home.', '', '', 'Sikles Trekking in spectacular short trek with great Mountain Views. Sikles Trek leads the wilderness away from traditional Gurung Villages. This trekking route offers wonderful view of the Machhapuchhre, Annapurna, Lamjung Himal and Manaslu ranges of the Nepal Himalayas. Rhododendron flower, bamboo forest, Rivers, big Tamang Villages and their typical cultures, Local Handicraft production etc. are the main attractions in this trek. Sikles trek, we start from beautiful city of Pokhara toward north and end at Pokhara. Sikles trek as a Home Stay to know and feel local peoples and their culture direct yourself.', '57894000_1524856026.jpg', '', 'publish', '2018-04-26 18:15:00', 'etemesi', '6', '', '', ''),
(6, 'Ghale Gaun', 'Live the Life and enjoy the moment.', '', '', 'Ghale gaun trekking is newly open trekking trail in Annapurna region. Ghale gaun trekking offers superb breathtaking view of majestic western Himalayas including Machhapuchhare (6693m) Annapurna (8091m), Annapurna II (7939m) Annapurna IV (7525m), Lamjung Himal, Bouddha Himal ((6974m), Himalchuli (6747m) and many smaller peaks. Ghalegaun, situated at the foot of Lamjung Himal in north central Nepal, is an exotic pristine village endowed with an unparallel scenic grandeur and a home to world famous Gurkha soldiers- the Gurungs. \r\nGhale Gaun is not only to explore local life of Nepali people, it is also offering a superb breathtaking views of the mountain including Annapurna I, Annapurna II, Himalchuli, Mahhapuchhare, Annapurna IV, Bouddha Himal etc. Villagers were welcoming with warm greetings by wearing their traditional customs to the tourist. Local food, handicraft, Gurung Museum, Gurung Culture, spectacular mountains view ', '30278600_1524856225.jpg', '', 'draft', '2018-04-26 18:15:00', 'etemesi', '7', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `facebook` varchar(40) DEFAULT NULL,
  `twitter` varchar(40) DEFAULT NULL,
  `googleplus` varchar(40) DEFAULT NULL,
  `pinterest` varchar(40) DEFAULT NULL,
  `dribble` varchar(40) DEFAULT NULL,
  `comments_script` text,
  `sharing_script` text,
  `javascript` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `facebook`, `twitter`, `googleplus`, `pinterest`, `dribble`, `comments_script`, `sharing_script`, `javascript`) VALUES
(1, 'https://www.facebook.com/Homestay-nepal-', 'http://www.twitter.com', 'http://www.plus.google.com', 'http://www.pinterest.com', 'http://www.dribble.com', '<div class="fb-comments container" data-href="http://www.uoecu.org/newsview.php?id=<?php echo $row[''id''];?>" data-numposts="20" width="100%"></div>', '<div class="addthis_sharing_toolbox"></div>', '<script>(function(d, s, id) {\n		var js, fjs = d.getElementsByTagName(s)[0];\n		if (d.getElementById(id)) return;\n		js = d.createElement(s); js.id = id;\n		js.src = ''https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.11&appId=298807240601869'';\n		fjs.parentNode.insertBefore(js, fjs);\n	}(document, ''script'', ''facebook-jssdk''));</script>\n<script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-57587edcb1479678"></script>');

-- --------------------------------------------------------

--
-- Table structure for table `local_activities`
--

CREATE TABLE `local_activities` (
  `id` int(11) NOT NULL,
  `title` varchar(65) DEFAULT NULL,
  `picture` varchar(65) NOT NULL,
  `keyword` varchar(65) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `local_activities`
--

INSERT INTO `local_activities` (`id`, `title`, `picture`, `keyword`, `about`) VALUES
(1, 'holi', 'holi.jpg', 'celebrate with colors', 'Holi is the festival of love or colors that signifies the victory of superior over immoral. Holi festival is commemorate on February end or starting March.'),
(2, 'diwali', 'diwali.jpg', 'Dipavali is the festival of lights', 'Deepavali (also: Diwali) is one of India''s biggest festivals. The word ''Deepawali'' means rows of lighted lamps. '),
(3, NULL, '', 'lsja;fljlasjfc', 'dsfafadsfdsfds'),
(4, NULL, '', 'lsja;fljlasjfc', 'dsfafadsfdsfds'),
(5, 'eddesdfsdf', 'dsfsdf', 'sdfsdf', 'dfvsdf'),
(6, 'eddesdfsdf', 'dsfsdf', 'sdfsdf', 'dfvsdf');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `name`) VALUES
(1, 'pokhara'),
(2, 'kathmandu'),
(3, 'biratnagar'),
(6, 'baglung'),
(7, 'palpa');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `full_name` varchar(65) DEFAULT NULL,
  `email` varchar(56) DEFAULT NULL,
  `c_date` date DEFAULT NULL,
  `approval` varchar(65) DEFAULT NULL,
  `user_name` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `full_name`, `email`, `c_date`, `approval`, `user_name`) VALUES
(1, 'sunil sapkota', 'sajilochat@gmail.com', '2019-07-13', 'Allowed', 'sunil99'),
(4, 'sunil sapkota', 'sajilochat@gmail.com', '2019-07-19', 'Not Allowed', 'sunil99'),
(5, 'sunil sapkota', 'sunilsapkota9@gmail.com', '2019-07-25', 'Not Allowed', 'sunil99'),
(6, NULL, 'sajilochat@gmail.com', NULL, NULL, ''),
(7, 'sunil sapkota', 'sajilochat@gmail.com', '2019-07-27', 'Not Allowed', ''),
(8, 'sunil sapkota', 'sajilochat@gmail.com', '2019-07-27', 'Not Allowed', '');

-- --------------------------------------------------------

--
-- Table structure for table `owner_info`
--

CREATE TABLE `owner_info` (
  `id` int(11) NOT NULL,
  `full_name` varchar(65) NOT NULL,
  `email` varchar(65) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `profile_pic` varchar(65) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner_info`
--

INSERT INTO `owner_info` (`id`, `full_name`, `email`, `phone`, `profile_pic`, `about`) VALUES
(1, 'Sunil Sapkota', 'sunil@gmail.com', 554445, 'sunil.jpg', 'Hello! I am Sunil Sapkota. web Developer, python Developer, Ethical Hacker, Network Pentester\r\n\r\nI''m currently working in Hemja Bhupu Co-opetarive ltd. and also a student at LA Grandee international College. Currently I''m studying BCA(Bachelors in Computer Application ). I''m intrested in ethical hacking and cyber security. Find Me On Facebook');

-- --------------------------------------------------------

--
-- Table structure for table `page_hits`
--

CREATE TABLE `page_hits` (
  `page` varchar(255) NOT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_hits`
--

INSERT INTO `page_hits` (`page`, `count`) VALUES
('test', 2),
('Newest homestay nepal', 2),
('Newest homestay nepal', 2),
('newest homestay', 120),
('Newest homestay nepal1', 2),
('Newest homestay nepal3', 7),
('Newest homestay nepal4', 3),
('Newest homestay nepal2', 1),
('Newest homestay nepal5', 8),
('', 1),
('Ghale Gaun', 14),
('Sikles', 3),
('Ghandruk', 3),
('Mustang(Thini)', 61),
('Dhampus', 2),
('Kaskikot Village', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) DEFAULT NULL,
  `title` varchar(5) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `troom` varchar(30) DEFAULT NULL,
  `tbed` varchar(30) DEFAULT NULL,
  `nroom` int(11) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `ttot` double(8,2) DEFAULT NULL,
  `fintot` double(8,2) DEFAULT NULL,
  `mepr` double(8,2) DEFAULT NULL,
  `meal` varchar(30) DEFAULT NULL,
  `btot` double(8,2) DEFAULT NULL,
  `noofdays` int(11) DEFAULT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `title`, `fname`, `lname`, `troom`, `tbed`, `nroom`, `cin`, `cout`, `ttot`, `fintot`, `mepr`, `meal`, `btot`, `noofdays`, `owner`) VALUES
(1, 'Dr.', 'sunil', 'sapkota', 'Superior Room', 'Single', 7, '2019-07-16', '2019-07-19', 6720.00, 6729.60, 0.00, 'Room only', 9.60, 3, 0),
(2, 'Dr.', 'sunil', 'sapkota', 'Superior Room', 'Single', 2, '2019-07-25', '2019-07-24', -640.00, -643.20, 0.00, 'Room only', -3.20, -1, 0),
(3, 'Dr.', 'sunil444', 'sapkota444', 'Superior Room', 'Single', 2, '2019-07-17', '2019-07-26', 5760.00, 5846.40, 57.60, 'Breakfast', 28.80, 9, 0),
(5, 'Mrs.', 'sunil', 'sapkota', 'Deluxe Room', 'Triple', 4, '2019-07-16', '2019-07-26', 8800.00, 8998.00, 132.00, 'Breakfast', 66.00, 10, 0),
(6, 'Mr.', 'sunil', 'sapkota', 'Deluxe Room', 'Double', 2, '2019-07-16', '2019-07-26', 4400.00, 4532.00, 88.00, 'Breakfast', 44.00, 10, 0),
(7, 'Dr.', 'sunil', 'sapkota', 'Deluxe Room', 'Single', 3, '2019-07-14', '2019-07-24', 6600.00, 6622.00, 0.00, 'Room only', 22.00, 10, 0),
(8, 'Dr.', 'sunil', 'sapkota', 'Single Room', 'Single', 1, '2019-07-17', '2019-07-25', 1200.00, 1236.00, 24.00, 'Breakfast', 12.00, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(15) DEFAULT NULL,
  `bedding` varchar(10) DEFAULT NULL,
  `place` varchar(10) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `no_of_room` int(11) NOT NULL,
  `cusid` int(11) DEFAULT NULL,
  `H_id` int(11) NOT NULL,
  `owner` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `type`, `bedding`, `place`, `price`, `no_of_room`, `cusid`, `H_id`, `owner`) VALUES
(39, 'Single Room', 'Quad', 'Free', 768, 5, NULL, 1, 'sunil99'),
(41, 'Deluxe Room', 'Single', 'Free', 223, 4, NULL, 1, 'sunil99'),
(42, 'Deluxe Room', 'Triple', 'Free', 678, 3, NULL, 1, 'sunil99'),
(43, 'Single Room', 'Double', 'Free', 879, 5, NULL, 1, 'sunil99'),
(44, 'Deluxe Room', 'Quad', 'Free', 9878, 7, NULL, 1, 'sunil99'),
(45, 'Deluxe Room', 'Double', 'Free', 900, 6, NULL, 1, 'sunil99');

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(5) DEFAULT NULL,
  `FName` text,
  `LName` text,
  `Email` varchar(50) DEFAULT NULL,
  `National` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Phone` text,
  `TRoom` varchar(20) DEFAULT NULL,
  `Bed` varchar(10) DEFAULT NULL,
  `NRoom` varchar(2) DEFAULT NULL,
  `Meal` varchar(15) DEFAULT NULL,
  `cin` date DEFAULT NULL,
  `cout` date DEFAULT NULL,
  `stat` varchar(15) DEFAULT NULL,
  `nodays` int(11) DEFAULT NULL,
  `homestay_id` int(11) NOT NULL,
  `voucher_pic` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `titles`
--

CREATE TABLE `titles` (
  `id` int(10) UNSIGNED NOT NULL,
  `website_name` varchar(40) DEFAULT NULL,
  `tagline` varchar(40) DEFAULT NULL,
  `icon` varchar(40) DEFAULT NULL,
  `keywords` varchar(220) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `bannertext1` varchar(150) DEFAULT NULL,
  `bannertext2` varchar(150) DEFAULT NULL,
  `bannertext3` varchar(150) DEFAULT NULL,
  `bannertext4` varchar(150) DEFAULT NULL,
  `detailed_description` text,
  `address` varchar(40) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `googlemap` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `titles`
--

INSERT INTO `titles` (`id`, `website_name`, `tagline`, `icon`, `keywords`, `short_description`, `bannertext1`, `bannertext2`, `bannertext3`, `bannertext4`, `detailed_description`, `address`, `email`, `phone`, `googlemap`) VALUES
(1, 'Homestay Nepal', 'A home far from Home', 'homestay_nepal.ico', 'homestay,best homestay nepal, online nepal homesaty', 'This is an online homesaty management system that has enlisted all the homestay of nepal with their facilities and price along with visitors reviews.', 'Feel like home <span>stay happy :)</span>', 'To be an ideal guest <span>Stay at home</span>', 'A home far from <span>home</span>', 'To feel at home <span>at home</span>', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodoconsequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur.', 'Pokhara,Nepal', 'info@homesataynepal.com', '+977-980-6705494', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3516.015357823248!2d83.97389211454805!3d28.20684598258768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39959557ec44ec37%3A0x6eeff1f9febe0a28!2sLa+grandee+international+college!5e0!3m2!1sen!2sua!4v1562550795436!5m2!1sen!2suahttps://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3516.015357823248!2d83.97389211454805!3d28.20684598258768!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39959557ec44ec37%3A0x6eeff1f9febe0a28!2sLa+grandee+international+college!5e0!3m2!1sen!2sua!4v1562550795436!5m2!1sen!2sua');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `full_name` varchar(65) NOT NULL,
  `username` varchar(65) NOT NULL,
  `password` varchar(65) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `aproval` varchar(65) NOT NULL,
  `c_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `full_name`, `username`, `password`, `owner_id`, `aproval`, `c_date`) VALUES
(1, 'sunil sapkota', 'sunil99', '$2y$10$OVE04L50dQ8S/RM3Y434OeSKwRLcDi2zXbL5ynI8PWiJGc0Mxztni', 1, '', '2019-07-24 17:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_info`
--

CREATE TABLE `visitor_info` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(65) NOT NULL,
  `user_agent` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor_info`
--

INSERT INTO `visitor_info` (`id`, `ip_address`, `user_agent`) VALUES
(1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(2, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(3, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(4, '192.168.195.40', 'Mozilla/5.0 (Linux; Android 7.0; Redmi Note 4) AppleWebKit/537.36'),
(5, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(7, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(8, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(9, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(10, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(11, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(12, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(13, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(14, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(15, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(16, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(17, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(18, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(19, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(21, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(22, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(23, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(24, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(25, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(26, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(27, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(28, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(29, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(30, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(31, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(32, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(33, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(34, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(35, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(36, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(37, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(38, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(39, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(40, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(41, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(42, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(43, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(44, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(45, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(46, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(47, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(48, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(49, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(50, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(51, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(52, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(53, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(54, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(55, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(56, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(57, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(58, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(59, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(60, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(61, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(62, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(63, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(64, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(65, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(66, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(67, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(68, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(69, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(70, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(71, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(72, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(73, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(74, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(75, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(76, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(77, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(78, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(79, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(80, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(81, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(82, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(83, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(84, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(85, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(86, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(87, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(88, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(89, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(90, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(91, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(92, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(93, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(94, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(95, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(96, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(97, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(98, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(99, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(100, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(101, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(105, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(106, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(107, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(108, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(109, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(110, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(111, '::1', 'Mozilla/5.0 (Linux; Android 4.1.1; Nexus 7 Build/JRO03D) AppleWeb'),
(112, '::1', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) App'),
(113, '::1', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) App'),
(114, '::1', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) App'),
(115, '::1', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) App'),
(116, '::1', 'Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) App'),
(117, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(118, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(119, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(120, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(121, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(122, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(123, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(124, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(125, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(126, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(127, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(128, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(129, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(130, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(132, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(133, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(134, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(135, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(136, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(137, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(138, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(139, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(140, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(142, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(143, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(144, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(145, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(146, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(147, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(148, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(149, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(150, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(151, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(152, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(153, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(154, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(155, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(156, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(157, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(158, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(159, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(160, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(161, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(162, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(163, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(164, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(165, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(166, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(167, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(168, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(169, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(170, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(171, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(172, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(173, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(174, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(175, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(176, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(177, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(179, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(181, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(182, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(183, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(184, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(185, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(186, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(187, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(188, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(190, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(191, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(192, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(193, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(194, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(195, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(196, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(198, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(199, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(200, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(202, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(203, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(204, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(205, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(207, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(208, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(209, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(210, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(212, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(213, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(214, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(215, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(216, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(217, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT'),
(218, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowed`
--
ALTER TABLE `allowed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_homestay`
--
ALTER TABLE `featured_homestay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog` (`homestay`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homestay_info`
--
ALTER TABLE `homestay_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `local_activities`
--
ALTER TABLE `local_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner_info`
--
ALTER TABLE `owner_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `visitor_info`
--
ALTER TABLE `visitor_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowed`
--
ALTER TABLE `allowed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `featured_homestay`
--
ALTER TABLE `featured_homestay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `homestay_info`
--
ALTER TABLE `homestay_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `local_activities`
--
ALTER TABLE `local_activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `owner_info`
--
ALTER TABLE `owner_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `roombook`
--
ALTER TABLE `roombook`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `visitor_info`
--
ALTER TABLE `visitor_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
