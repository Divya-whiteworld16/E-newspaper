-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2021 at 05:23 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

DROP TABLE IF EXISTS `admin_login`;
CREATE TABLE `admin_login` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `name`, `email`, `password`) VALUES
(1, 'divya', 'mishra.divya2607@gmail.com', '1234569'),
(2, 'arshad khan', 'arshad21@gmail.com', 'y6566'),
(3, 'garima', 'garima77@gmail.com', '@676878'),
(10, 'test', 'test@jhh.com', 'nbsjbnjsk'),
(12, 'Jam', 'noreply@gmail.com', '345#$'),
(17, 'rashmi', 'rashmi@gmail.com', '4567'),
(20, 'vasu', 'vasu@gmail.com', '1289');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=REDUNDANT;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `des`) VALUES
(1, 'World', 'World'),
(2, 'Technology', 'Technology'),
(3, 'Culture', 'Culture'),
(4, 'Business', 'Business'),
(5, 'Politics', 'Politics'),
(6, 'Science', 'Science'),
(7, 'Style', 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `comment`) VALUES
(2, 'divya mishra', 'mishra.divya2607@gmail.com', 'hi , can you tell my city news'),
(3, 'garima', 'garimag701@gmail.com', 'Hi, can you add lifestyle category also.');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `category` varchar(100) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `admin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `date`, `category`, `thumbnail`, `admin`) VALUES
(1, 'UK will be exposed to paying pandemic cost risks for decades: Report', 'The British government will be exposed to financial risks from its 372 billion pound pandemic spending for decades, according to lawmakers\' reports on Sunday that also said more than 2 billion pounds had been spent on unusable protective equipment.\r\n\r\n', '2021-07-16', 'World', 'Screenshot (25).png', ' Garima'),
(2, 'PM\'s Mann ki Baat: Must move forward with \'nation first, always first\' mantra, says Narendra Modi', 'Modi noted that on the coming 15 August, India will enter its 75th year of Independence and highlighted that Amrit Mahotsav is being celebrated throughout the country to mark that year.In his monthly Mann Ki Baat radio broadcast, he noted that on the coming 15 August, India will enter its 75th year of Independence and highlighted that Amrit Mahotsav is being celebrated throughout the country to mark that year. ', '2021-07-21', 'Politics', 'Screenshot (7).png', 'divya'),
(3, ' 12 dead, 5 injured as torrential rains flood subway in China’s Zhengzhou; hundreds rescued', ' Beijing: Twelve people died after torrential rains flooded a subway in the central Chinese city of Zhengzhou, authorities said Wednesday, as shocking images showed passengers struggling against chest-high water inside a train carriage.\r\n\r\nSoldiers are leading the rescue in the city of more than 10 million people in Henan province, which has been hit by record rains which inundated the streets and the subway.\r\n\r\nThe city has experienced \"a series of rare and heavy rainstorms, causing water to accumulate in Zhengzhou metro\", city officials said in a Weibo post.\r\n\r\nThe post said 12 people died and five were injured, while hundreds were rescued from the subway. ', '2021-07-22', 'World', 'Screenshot (9).png', 'Arshad'),
(4, 'Putin talks of \'lethal strike\' during Russian warship parade', 'Russian President Vladimir Putin spoke of Russian navy\'s capability of a \'lethal strike\' as he spoke during a parade of warships in port city of St Petersburg. His words have come just a day after military officials announced test of new advanced weapons. Some of these weapons come from the arsenal Putin said was \'invincible\' \"The Russian navy today has everything it needs to guarantee the protection of our country and our national interests,\" he said.', '2021-07-25', 'World', 'Screenshot (21).png', 'divya'),
(5, 'BOSE SLEEPBUDS II WITH IMPROVED NOISE MASKING LAUNCHED IN INDIA AT RS 22,900', 'Bose Sleepbuds II with improved noise-masking over its predecessor, launched in India. The earbuds are priced at Rs 22,900, and can be purchased from the authorised dealer of Bose in India, Savex Technologies Pvt Ltd, Bose stores or from online shopping platforms including Amazon, Flipkart, Tata CLiQ, Reliance Digital, Croma and Vijay Sales. The Bose Sleepbuds II come with 35 in-built tracks, which includes 15 Naturescapes, 14 noise-masking tracks, and 10 Tranquilities. The IPX4 technology makes the Sleepbuds II sweat and water resistant. The earbuds are only a quarter-inch deep which reduces irritating contact even if the user is resting on the side. Sleepbuds II have anti-friction coating.It is powered by NiMH (Nickel-metal Hydride) battery to offer 10 hours of run time. Sleepbuds II come with a charging case of anodized aluminum and provide 30 hours of battery life.', '2021-07-20', 'Technology', 'Screenshot (11).png', 'Naina'),
(6, 'INSTAGRAM ADDS \'TEXT TRANSLATION\' FEATURE FOR STORIES; SUPPORTS HINDI, ARABIC AND 88 OTHER LANGUAGES\r\n', 'Instagram today, 22 July has announced a new feature for Stories. The new update of the popular photo and video sharing platform will allow automatic translation of texts in Stories. While the posts, captions, and bios on the app already have the translation feature since 2016, the new update will make it easier for users to share stories with people outside of their linguistic sphere as well. As per the new update, the app will display a “See Translation” option on the top left of the screen once it detects a foreign language in the post. Users can tap the option to see the translation of a story.\r\n\r\n', '2021-07-22', 'Technology', 'Screenshot (13).png', 'Garima'),
(7, '3 Zodiac signs advised to avoid conflicts today', 'Gemini, Sagittarius and Capricorn people need to centre within themselves and not participate actively in the humdrum and chaos of family life. This will help them to avoid blowing regular conflicts into big fights. What should be your approach? Read your daily horoscope to know: Gemini sign people will remain caught up in familial conflicts and misunderstandings. A lot of your time is likely to get wasted in overcoming the unpleasantness and cussedness created by the misplaced expectations of your family members.', '2021-07-21', 'Culture', 'Screenshot (15).png', 'Arshad'),
(8, 'Malaika Arora’s Sun-Kissed Selfie Leaves Fans Smitten, See Photo', 'Typhoon In-fa Hits China\'s East Coast; Death Toll in Henan Flooding Mounts to…\r\nTokyo Olympics shooting: Bajwa in with a chance to secure finals berth in skeet\r\n\r\nMorning sun is important and is something Malaika Arora simply cannot do without. The gorgeous diva is known for her ultra stunning no-filter photos and fans simply adore them. An effortless dancer, a fitness enthusiast and a fashion icon, one can hardly come across anything that Malaika cannot ace. During the lockdown last year, she swept her fans off their feet with her sun-kissed selfies. Today, it’s a ‘Sun’s out…Buns out’ mood for the beauty and it’s breathtaking. On Saturday morning, Malaika uploaded another lovely photo on her Instagram stories. Soaking some essential Vitamin-D, she strikes a pose. The 47-year-old is wearing a white cropped tank top and shorts. With her hair swept back in a casual hairdo, she put on a delicate necklace.', '2021-07-20', 'Style', 'Screenshot (19).png', 'Arshad'),
(9, 'Rockslide kills nine tourists, injures three in Himachal Pradesh', 'Nine persons died on the spot while three are injured when a boulder fell on their car at Himachal Pradesh”s Kinnaur district. The rockslide has damaged a Bailey bridge and part of the highway. Superintendent of Police S.R. Rana said the rescue operation is on and the road has been closed for the traffic. The accident caused nearly 50 vehicles to remain stranded on the road stretch. Two of the injured have been shifted to a nearby hospital where they are undergoing treatment for serious injuries.', '2021-07-25', 'World', 'Air-pollution-pti-620x400.jpg', 'Naina'),
(10, 'Tokyo Olympics: IOC allows 30 seconds of maskless time for medal-winning athletes on podium', 'The IOC relaxed the stringent rule after recognizing that athletes want to smile and show emotion. The maskless time can be used by the athletes for photographs. Health protocols agreed to ahead of the Tokyo Olympics to control Covid-19 infections had made wearing of masks mandatory for the athletes even during the medal ceremonies.', '2021-07-24', 'World', 'Screenshot (17).png', 'divya'),
(11, 'Bildungsroman (& Other Stories) | Areez Katki on first solo show, and using art to explore notions of home, identity', 'These cloths, besides being a family archive, are also symbols of togetherness and familiarity within the Parsi community, appealing to the two strands that lent themselves to the exhibit’s nameAs an 8-year-old child, artist Areez Katki started to process art as a visual and experiential medium, through attentively observing the way the women of his family participated in textile weaving, embroidery, hand knitting, and more. The arts generally deemed as belonging to the domestic, or women’s sphere, were deemed as lower art. Growing up in New Zealand, in school he was then exposed to American and European frameworks of art, understanding it from the Western, post-colonial dynamic, which then led on to a Bachelors of Arts in Art History at the University of Auckland. Combining the two has allowed him to develop his unique visual language that challenge the Western, heterosexual, and patriarchal conceptions of art..', '2021-07-23', 'Culture', 'Screenshot (7).png', 'divya'),
(12, 'Amazon Prime Day 2021: Top offers and deals on iPhones, iPads and more', 'Amazon Prime Day 2021 in India is set to take place on July 26 and continue till July 27. This two-day sale which is exclusive to Prime members will offer tons of deals and offers on products across various categories on Amazon India. Products like smartphones, laptops, ACs, TVs, smartwatches, accessories and more have been teased with discounts and offers for Prime Day 2021.', '2021-07-24', 'Business', 'Screenshot (23).png', 'divya'),
(29, 'This is the first deep-sea fish known to be a mouthbreeder', 'The study described in this news article was retracted on October 29, 2020. Prompted by a study posted at preprints.org questioning the origin of the eggs found in the mouth of a Parazen pacificus, the authors reanalyzed the samples and confirmed that the eggs were crab eggs, not the fish’s own fertilized eggs. “While the breeding ecology of Parazen pacificus remains unknown and the species appears to be exapted for mouthbrooding, we find that the original data is not sufficient to confirm that this species is a mouthbrooder,” the authors write.', '2021-07-05', 'Science', 'Screenshot (41).png', 'divya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
