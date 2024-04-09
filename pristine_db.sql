-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2024 at 04:24 PM
-- Server version: 5.7.44
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pristine_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_aboutus`
--

CREATE TABLE `tbl_aboutus` (
  `id` int(11) NOT NULL,
  `description` longtext,
  `title` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_aboutus`
--

INSERT INTO `tbl_aboutus` (`id`, `description`, `title`, `status`) VALUES
(1, 'Pristine Cleaning Service was founded in 2020, by Silvina Lopes. I always love to clean, and I enjoy the serenity and peaceful state of feeling that a clean, tidy space brings in me. I am happier, content and relax when the room is immaculate and pristine. My mind is at ease, and I feel relax and peaceful. The idea came to me when I took my mother to the emergency room when she was sick, and we had to wait for more than 6 hours in the emergency waiting room for a room to become available. When I asked the staff reason for the long waiting, they informed that the room was not ready, and they’re facing a shortage of cleaning crew and some of the staff were doing the cleaning them self to expedite the service. I thought what a great idea to start a cleaning service to service the community, and let the local citizens get more valuable and quality time to spend with their loved ones. During the time were facing presented challenge, we seize to provide service and concentrated on learning about the pandemic, how to handle the virus to protect ourselves, our loved one and our customers.<br><br>Pristine Cleaning Service is a small minority, local cleaning service, staff of four crew members dedicating its service to busy homeowners and business owners in North Carolina and South Carolina access to reliable, green products, and professional cleaning services for their living and working spaces. We provide residential and commercial cleaning services using advanced cleaning tools and equipment to ensure a cleaned environment.<br><br>We recognize that each client is unique and possess diverse cleaning requirements. Therefore, we offer all our customers a customizable cleaning services that meets their needs. We use varieties of products including non-harsh cleaning products to minimizing any environmental harm.<br><br>We strive to satisfy our customers by training our team member to the industry to the highest and best standard for a consistence cleaning environment. Our attentiveness for each job is perform with zeal and enthusiasm ensuring our Mission to our customer are met.', 'How Pristine Cleaning Service started', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activatedstatus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`aid`, `username`, `password`, `email`, `updated_at`, `activatedstatus`) VALUES
(1, 'Pristine_cleaning', 'd3d57f73e414e80bf99a74527142ae0a', 'info@pristinecleaningbusiness.com', '2024-02-02 19:02:10', 1),
(2, 'myadmin', 'f4de00fe395b8fbe81f38a64eb17c08d', 'ravi02.agp@gmail.com', '2023-10-12 23:23:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointments`
--

CREATE TABLE `tbl_appointments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residential` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commercial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_appointments`
--

INSERT INTO `tbl_appointments` (`id`, `name`, `email`, `phone`, `date`, `time`, `address`, `residential`, `commercial`, `description`, `status`, `updated_at`) VALUES
(3, 'Mike', 'contact@wxperts.co', '8554696368', '2024-02-11', '09:02', 'California', 'Green Cleaning', 'Office Cleaning', 'Admin Test. ', 1, '2024-02-10 00:32:58'),
(4, 'Maria Lopes', 'smlopes702@gmail.com', '9804309406', '2024-02-14', '10:30', '8623 Pressley oaks Dr', 'SELECT----Residential Cleaning Services', 'Janitorial Cleaning', 'please send an invoice', 1, '2024-02-13 04:26:27'),
(11, 'Smith', 'smith@gmail.com', '6392638652', '2024-03-15', '04:49', 'USA', 'Sanitization & Deep Cleaning', 'Airbnb Cleaning', 'Testing for developer please ignore this message', 1, '2024-03-14 22:20:21'),
(12, 'Max', 'contact@wxperts.co', '855 469 6368', '2024-03-15', '10:00', 'elk grove california', 'Green Cleaning', 'Office Cleaning', 'This is a test \r\n\r\nignore please', 1, '2024-03-14 22:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keyword` longtext,
  `seo_description` longtext,
  `seo_h1` varchar(255) DEFAULT NULL,
  `seo_h2` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `photourl` varchar(255) DEFAULT NULL,
  `alt_name` varchar(255) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `heading` varchar(585) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `seo_title`, `seo_keyword`, `seo_description`, `seo_h1`, `seo_h2`, `title`, `description`, `photourl`, `alt_name`, `date`, `tags`, `alias`, `heading`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Residential& Commercial Cleaning Charlotte NC |Pristine Cleaning Service', 'Residential and Commercial Cleaning in Charlotte, NC, Pristine Cleaning Service in Charlotte, NC, Best Regular Cleaning, Professional Office Cleaning in Charlotte, NC, Post Construction Cleaning in North & South Carolina', 'Experience exceptional residential and commercial cleaning in Charlotte, NC at Pristine Cleaning Service. Discover a new standard of clean with our dedicated team.', 'Residential and Commercial Cleaning near me Charlotte, NC', 'Best Regular Cleaning in Charlotte, NC', 'Pristine Cleaning Services: Your Top Choice for Residential and Commercial Cleaning', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">When it comes to maintaining a clean and organized environment, whether it\'s your home or your workplace, the importance of professional cleaning services cannot be underestimated. Pristine Cleaning Services emerges as a shining beacon in the realm of both Residential and Commercial Cleaning, offering top-notch solutions that ensure your spaces not only look impeccable but also promote a healthy and productive atmosphere.</p><h4 style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 1.5; font-size: 16px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; letter-spacing: -0.5px; background-color: rgb(255, 255, 255);\">Commercial Cleaning Service:</h4><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Pristine Cleaning Services understands the unique needs of commercial spaces. From offices and retail stores to industrial complexes, our <a href=\"http://localhost/pristine/\" target=\"_blank\" style=\"box-sizing: border-box; padding: 0px; margin: 0px; color: rgb(0, 123, 255); text-decoration-line: none; background-color: transparent; transition: all 0.5s ease 0s; font-weight: 600;\">Commercial Cleaning Service</a> is designed to provide a thorough and systematic approach to cleaning. Our experienced and trained staff use advanced cleaning techniques and equipment to tackle even the most challenging tasks. A clean and sanitized workplace not only boosts employee morale but also creates a positive impression on clients and visitors.</p><h4 style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 1.5; font-size: 16px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; letter-spacing: -0.5px; background-color: rgb(255, 255, 255);\">Residential Cleaning Service:</h4><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">A haven of relaxation and comfort, your home deserves the best care. Pristine Cleaning Services\' Residential Cleaning Service is tailored to cater to the specific requirements of your living spaces. Our dedicated team pays attention to every detail, ensuring that your home is not only clean but also a healthy environment for you and your loved ones. We understand that every home is unique, and our flexible cleaning packages are designed to accommodate your preferences.</p><h4 style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 1.5; font-size: 16px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; letter-spacing: -0.5px; background-color: rgb(255, 255, 255);\">Glass Door Cleaning:</h4><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Crystal-clear glass doors can instantly enhance the aesthetics of any space, whether it\'s a commercial establishment or a residential property. Our Glass Door Cleaning service ensures that your glass surfaces remain streak-free and spotless. Using specialized cleaning agents and techniques, we remove dirt, fingerprints, and grime, leaving your glass doors sparkling and inviting.</p><blockquote style=\"box-sizing: border-box; padding: 40px; margin: 30px 0px; background-color: rgb(245, 245, 245); border-left: 4px solid rgb(37, 80, 222); position: relative; z-index: 1; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; font-size: 15px; letter-spacing: -0.2px;\"><div class=\"dots\" style=\"box-sizing: border-box; padding: 0px; margin: 0px;\"></div><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 20px; line-height: 26px; color: rgb(19, 40, 124);\">“I’m a very particular person when it comes to my cleaning routine. Punctuality, cleanliness, and customer service are some of the areas I judge a cleaning company on, but it is safe to say that ”</p><span class=\"quoter\" style=\"box-sizing: border-box; padding: 0px; margin: 20px 0px 0px; display: block; color: rgb(19, 40, 124);\">Pristine Cleaning Service</span></blockquote><h4 style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 1.5; font-size: 16px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; letter-spacing: -0.5px; background-color: rgb(255, 255, 255);\">Best Regular Cleaning:</h4><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Consistency is the key to maintaining a clean and inviting environment. Our <span style=\"box-sizing: border-box; color: rgb(0, 123, 255); transition-duration: 0.5s; transition-property: all; font-weight: 600;\"><a href=\"pristine-cleaning-services-your-top-choice-for-residential-and-commercial-cleaning\">Best Regular Cleaning</a></span> service offers scheduled cleaning sessions that align with your needs. Whether it\'s a daily, weekly, or monthly arrangement, our team will ensure that your space remains consistently clean and organized. Regular cleaning not only contributes to the overall appearance but also extends the life of your furniture and fixtures.</p><h4 style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 1.5; font-size: 16px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; letter-spacing: -0.5px; background-color: rgb(255, 255, 255);\">Best Green Cleaning Service:</h4><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">At Pristine Cleaning Services, we are committed to the well-being of our clients and the environment. Our Best Green Cleaning Service employs eco-friendly cleaning products and practices that minimize the use of harsh chemicals. This not only ensures a safe and healthy space for you, your family, and your employees but also contributes to a sustainable future.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 15px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">In conclusion, Pristine Cleaning Services stands as a reliable and dedicated partner in maintaining the cleanliness and hygiene of your residential and commercial spaces. With a team of skilled professionals, a commitment to quality, and a range of specialized services, we take the burden of cleaning off your shoulders, allowing you to focus on what truly matters. Choose Pristine Cleaning Services and experience the transformation of your spaces into pristine havens of comfort and productivity.</p>', 'uploads/blogs170655596216.jpg', 'Pristine Cleaning Service in Charlotte, NC', '17 AUG, 2023', '<span style=\"color: rgb(37, 39, 41); font-family: Heebo, sans-serif; font-size: 15px; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">#residentialcleaning #commercialcleaning #officecleaning #postconstrunctioncleaning #homecleaning #charlot', 'pristine-cleaning-services-your-top-choice-for-residential-and-commercial-cleaning', NULL, 1, '2024-03-14 18:23:58', '2024-03-14 13:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contactus`
--

CREATE TABLE `tbl_contactus` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone_2` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `yelp` varchar(255) DEFAULT NULL,
  `business_hours` longtext,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `activatedstatus` int(11) NOT NULL DEFAULT '0',
  `email_1` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contactus`
--

INSERT INTO `tbl_contactus` (`id`, `address`, `email`, `phone`, `phone_2`, `facebook`, `yelp`, `business_hours`, `updated_at`, `activatedstatus`, `email_1`) VALUES
(1, 'Charlotte, NC, United States, North Carolina,', 'info@pristinecleaningbusiness.com', '(980) 422-7340', NULL, 'https://www.facebook.com/PristineCleaningBusiness', 'https://www.yelp.com/biz/pristine-cleaning-service-charlotte', '[{\"title\":\"Monday To Friday\",\"value_1\":\" 8:00 am\",\"value_2\":\"- 6:00 pm\",\"value_3\":\"\",\"value_4\":\"\"},{\"title\":\"Saturday\",\"value_1\":\"Closed\",\"value_2\":\"\",\"value_3\":\"\",\"value_4\":\"\"},{\"title\":\"Sunday\",\"value_1\":\"2:00 pm\",\"value_2\":\"- 6:00 pm\",\"value_3\":\"\",\"value_4\":\"\"}]', '2024-03-22 22:26:54', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact_details`
--

CREATE TABLE `tbl_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_contact_details`
--

INSERT INTO `tbl_contact_details` (`id`, `name`, `email`, `phone`, `service`, `description`, `status`, `updated_at`) VALUES
(1, 'smith', 'smith@gmail.com', '9135655655', 'cleaning', 'test', 1, '2024-02-13 19:43:10'),
(3, 'smith', 'smith@gmail.com', '9167236509', 'cleaning', 'testing by developer please ignore this message', 1, '2024-04-09 21:22:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id` int(11) NOT NULL,
  `alt_name_gallery` varchar(255) DEFAULT NULL,
  `alt_name_home` varchar(255) DEFAULT NULL,
  `photourl` varchar(255) DEFAULT NULL,
  `photourl_1` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `homepage` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id`, `alt_name_gallery`, `alt_name_home`, `photourl`, `photourl_1`, `status`, `created_at`, `updated_at`, `homepage`) VALUES
(1, 'Best Regular Cleaning in Charlotte, NC', '', 'uploads/gallerypristine17062001861.jpg', NULL, 1, '2024-01-25 21:59:46', '2024-01-25 16:29:46', 0),
(2, 'Glass Door Cleaning', '', 'uploads/gallerypristine17062002582.jpg', NULL, 1, '2024-01-25 22:00:58', '2024-01-25 16:30:58', 0),
(3, 'Professional Office Cleaning', '', 'uploads/gallerypristine17062003013.jpg', NULL, 1, '2024-01-25 22:01:41', '2024-01-25 16:31:41', NULL),
(4, 'Janitorial Cleaning Service', '', 'uploads/gallerypristine17062003204.jpg', NULL, 1, '2024-01-25 22:02:00', '2024-01-25 16:32:00', NULL),
(5, 'Best Green Cleaning Service', '', 'uploads/gallerypristine17062003405.jpg', NULL, 1, '2024-01-25 22:02:20', '2024-01-25 16:32:20', NULL),
(6, 'anitization & Deep Cleaning Service in North & South Carolina', '', 'uploads/gallerypristine17062003546.jpg', NULL, 1, '2024-01-25 22:02:34', '2024-01-25 16:32:34', 1),
(7, '', 'Maid Services in Charlotte', 'uploads/gallerypristine17062045887.jpg', NULL, 1, '2024-01-25 23:13:07', '2024-01-25 17:43:07', 1),
(8, '', 'Child Safe Cleaning in Charlotte, NC', 'uploads/gallerypristine17062046378.jpg', NULL, 1, '2024-01-25 23:13:57', '2024-01-25 17:43:57', 1),
(9, '', 'Eco/Green Cleaning in Charlotte', 'uploads/gallerypristine17062046549.jpg', NULL, 1, '2024-01-25 23:14:14', '2024-01-25 17:44:14', 1),
(10, '', 'Best Green Cleaning Service', 'uploads/gallerypristine170620468010.jpg', NULL, 1, '2024-01-25 23:14:40', '2024-01-25 17:44:40', 1),
(12, '', 'Professional Move-In Move-Out Cleaning Service in North Carolina,', 'uploads/gallerypristine170620471712.jpg', NULL, 1, '2024-01-25 23:15:17', '2024-01-25 17:45:17', 1),
(13, '', 'Sanitization & Deep Cleaning Service in North & South Carolina', 'uploads/gallerypristine170620475313.jpg', NULL, 1, '2024-01-25 23:15:53', '2024-01-25 17:45:53', 1),
(30, '', '', 'uploads/gallerypristine170750758030.jpg', NULL, 1, '2024-02-09 13:39:40', '2024-02-09 19:39:40', NULL),
(31, '', '', 'uploads/gallerypristine170750759831.jpg', NULL, 1, '2024-02-09 13:39:58', '2024-02-09 19:39:58', NULL),
(32, '', '', 'uploads/gallerypristine170750774432.jpg', NULL, 1, '2024-02-09 13:42:24', '2024-02-09 19:42:24', NULL),
(33, '', '', 'uploads/gallerypristine170750775433.jpg', NULL, 1, '2024-02-09 13:42:34', '2024-02-09 19:42:34', NULL),
(34, '', '', 'uploads/gallerypristine170750780934.jpg', NULL, 1, '2024-02-09 13:43:29', '2024-02-09 19:43:29', NULL),
(35, '', '', 'uploads/gallerypristine170750782035.jpg', NULL, 1, '2024-02-09 13:43:40', '2024-02-09 19:43:40', NULL),
(36, '', '', 'uploads/gallerypristine170750785636.jpg', NULL, 1, '2024-02-09 13:44:16', '2024-02-09 19:44:16', NULL),
(37, '', '', 'uploads/gallerypristine170750786637.jpg', NULL, 1, '2024-02-09 13:44:26', '2024-02-09 19:44:26', NULL),
(38, '', '', 'uploads/gallerypristine170750787438.jpg', NULL, 1, '2024-02-09 13:44:34', '2024-02-09 19:44:34', NULL),
(39, '', '', 'uploads/gallerypristine170750788839.jpg', NULL, 1, '2024-02-09 13:44:48', '2024-02-09 19:44:48', NULL),
(40, '', '', 'uploads/gallerypristine170750793340.jpg', NULL, 1, '2024-02-09 13:45:33', '2024-02-09 19:45:33', NULL),
(41, '', '', 'uploads/gallerypristine170750794441.jpg', NULL, 1, '2024-02-09 13:45:44', '2024-02-09 19:45:44', NULL),
(42, '', '', 'uploads/gallerypristine170750795442.jpg', NULL, 1, '2024-02-09 13:45:54', '2024-02-09 19:45:54', NULL),
(43, '', '', 'uploads/gallerypristine170750796943.jpg', NULL, 1, '2024-02-09 13:46:09', '2024-02-09 19:46:09', NULL),
(44, '', '', 'uploads/gallerypristine170750799844.jpg', NULL, 1, '2024-02-09 13:46:38', '2024-02-09 19:46:38', NULL),
(45, '', '', 'uploads/gallerypristine170750803045.jpg', NULL, 1, '2024-02-09 13:47:10', '2024-02-09 19:47:10', NULL),
(46, '', '', 'uploads/gallerypristine170750803846.jpg', NULL, 1, '2024-02-09 13:47:18', '2024-02-09 19:47:18', NULL),
(48, '', '', 'uploads/gallerypristine170750805348.jpg', NULL, 1, '2024-02-09 13:47:33', '2024-02-09 19:47:33', NULL),
(50, '', '', 'uploads/gallerypristine170750807150.jpg', NULL, 1, '2024-02-09 13:47:51', '2024-02-09 19:47:51', NULL),
(52, '', '', 'uploads/gallerypristine170750809252.jpg', NULL, 1, '2024-02-09 13:48:12', '2024-02-09 19:48:12', NULL),
(53, '', '', 'uploads/gallerypristine170750814353.jpg', NULL, 1, '2024-02-09 13:49:03', '2024-02-09 19:49:03', NULL),
(54, '', '', 'uploads/gallerypristine170750815554.jpg', NULL, 1, '2024-02-09 13:49:15', '2024-02-09 19:49:15', NULL),
(55, '', '', 'uploads/gallerypristine170750817355.jpg', NULL, 1, '2024-02-09 13:49:33', '2024-02-09 19:49:33', NULL),
(56, '', '', 'uploads/gallerypristine170750820156.jpg', NULL, 1, '2024-02-09 13:50:01', '2024-02-09 19:50:01', NULL),
(57, '', '', 'uploads/gallerypristine170750821357.jpg', NULL, 1, '2024-02-09 13:50:13', '2024-02-09 19:50:13', NULL),
(58, '', '', 'uploads/gallerypristine170750822358.jpg', NULL, 1, '2024-02-09 13:50:23', '2024-02-09 19:50:23', NULL),
(59, '', '', 'uploads/gallerypristine170750823259.jpg', NULL, 1, '2024-02-09 13:50:32', '2024-02-09 19:50:32', NULL),
(60, '', '', 'uploads/gallerypristine170750824060.jpg', NULL, 1, '2024-02-09 13:50:40', '2024-02-09 19:50:40', NULL),
(61, '', '', 'uploads/gallerypristine170750824761.jpg', NULL, 1, '2024-02-09 13:50:47', '2024-02-09 19:50:47', NULL),
(62, '', '', 'uploads/gallerypristine170750825562.jpg', NULL, 1, '2024-02-09 13:50:55', '2024-02-09 19:50:55', NULL),
(63, '', '', 'uploads/gallerypristine170750826363.jpg', NULL, 1, '2024-02-09 13:51:03', '2024-02-09 19:51:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_service`
--

CREATE TABLE `tbl_home_service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alt_name` varchar(255) DEFAULT NULL,
  `homepage` int(11) DEFAULT NULL,
  `photourl` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_home_service`
--

INSERT INTO `tbl_home_service` (`id`, `name`, `alt_name`, `homepage`, `photourl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Commercial Cleaning', 'Commercial Cleaning Service in Charlotte, NC', 1, 'uploads/service_homepristine17065447251.jpg', 1, '2024-01-29 21:33:48', '2024-04-06 01:07:18'),
(2, 'Residential Cleaning', 'Residential Cleaning Service in Charlotte, NC', 1, 'uploads/service_homepristine17065447602.jpg', 1, '2024-01-29 21:42:40', '2024-01-29 16:27:26'),
(3, 'Glass Door Cleaning', 'Maid Services in Charlotte, NC', 1, 'uploads/service_homepristine17065447813.jpg', 1, '2024-01-29 21:43:01', '2024-01-29 16:27:28'),
(4, 'Child Safe Cleaning', 'Child Safe Cleaning in Charlotte, NC', 1, 'uploads/service_homepristine17065448034.jpg', 1, '2024-01-29 21:43:23', '2024-01-29 16:27:29'),
(5, 'Maid Services', 'Eco/Green Cleaning in Charlotte, NC', 1, 'uploads/service_homepristine17065448205.jpg', 1, '2024-01-29 21:43:40', '2024-01-29 16:27:31'),
(6, 'Eco/Green Cleaning', 'Pristine Cleaning Service in Charlotte', 1, 'uploads/service_homepristine17065448366.jpg', 1, '2024-01-29 21:43:56', '2024-01-29 16:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mail`
--

CREATE TABLE `tbl_mail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_mail`
--

INSERT INTO `tbl_mail` (`id`, `name`, `email`, `status`, `created_at`) VALUES
(1, '', 'pushpendra639263@gmail.com', 1, '2024-02-22 15:37:23'),
(3, '', 'ghansraj82@gmail.com', 1, '2024-02-22 15:37:52'),
(4, '', 'test@gmail.com', 1, '2024-02-22 16:22:14'),
(7, '', 'hansraj@agpt.in', 1, '2024-02-27 09:47:58'),
(9, '', 'amitpal706@gmail.com', 1, '2024-03-05 13:21:10'),
(10, '', 'ravi02.agp@gmail.com', 1, '2024-03-05 13:37:02'),
(11, '', 'alec.lightwood801@gmail.com', 1, '2024-03-05 13:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_others`
--

CREATE TABLE `tbl_others` (
  `id` int(11) NOT NULL,
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_description` longtext,
  `seo_keyword` longtext,
  `seo_h1` varchar(255) DEFAULT NULL,
  `seo_h2` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `service_provider` longtext,
  `photourl` varchar(255) DEFAULT NULL,
  `alt_name` varchar(500) DEFAULT NULL,
  `homepage` tinyint(4) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_others`
--

INSERT INTO `tbl_others` (`id`, `seo_title`, `seo_description`, `seo_keyword`, `seo_h1`, `seo_h2`, `name`, `description`, `service_provider`, `photourl`, `alt_name`, `homepage`, `alias`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Professional Office Cleaning in Charlotte, NC - Pristine Cleaning Service', 'Elevate your workspace with a professional office cleaning in Charlotte, NC at the Pristine Cleaning Service. Book now for transforming your office into a haven of order and efficiency.', 'Professional Office Cleaning in Charlotte, NC, Best Regular Cleaning in Charlotte, NC, Sanitization & Deep Cleaning Service in North & South Carolina, Best Airbnb Cleaning Service in North Carolina, Eco/Green Cleaning in Charlotte, NC', 'Professional Office Cleaning in Charlotte, NC', 'Office Cleaning in Charlotte, N', 'Office Cleaning', '<h3 class=\"chng-clr\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 45px; font-size: 42px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; color: rgb(22, 117, 14); letter-spacing: -1px; background: -webkit-linear-gradient(90deg, rgb(171, 199, 45) 0%, rgb(109, 179, 63) 100%) text rgb(255, 255, 255); -webkit-text-fill-color: transparent;\">Commercial</h3><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Your working space is the heartbeat of your business. It’s the place where critical decisions are made, game-changing ideas are discussed, and sales targets are met. You should trust Professional Office Cleaning by Pristine Cleaning Service because a clean commercial space breeds productivity, improves team morale, and creates a lasting impression on your clients. But, with most of your day revolving around sales pitches and meetings, who has the time to focus on the cleanliness of your working space? You need Office Cleaning by Pristine Cleaning Service</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Here at Pristine Cleaning Service, we aim to provide you with Professional Office Cleaning Pristine Cleaning Service to ensure that your office always looks sparkly clean. With our expertise and advanced cleaning equipment, we always complete our cleaning projects swiftly and efficiently. Moreover, we also provide customizable cleaning plans, and we also cater to daily, weekly, monthly Office Cleaning Pristine Cleaning Service to get the job done as per your specifications.</p>', '[{\"title\":\"Vacuum loose debris from all floors and carpets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Vacuum loose debris from all floors and carpets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Mopping of hard surface floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Remove dust from desks and furniture\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe down hard surfaces with mild disinfectant\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Empty waste bins and replace liners\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Spray and clean all glass surfaces and mirrors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe down light switches, door handles, and fixtures\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean and sanitize breakrooms and washrooms\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Use spray disinfectant on toilets, doors, sinks, and appliances\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Refill soap dispensers and paper towel holders\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/serviceateampainting17062975961.jpg', 'Professional Move-In Move-Out Cleaning Service in North Carolina', NULL, 'office-cleaning', 1, '2024-01-26 21:02:59', '2024-02-01 20:26:56'),
(2, 'Janitorial Cleaning Service in Charlotte, NC - Pristine Cleaning Service', 'Redefine top-tier janitorial cleaning service in Charlotte, NC with Pristine Cleaning. Experience unmatched attention to detail and a commitment to excellence.', 'Janitorial Cleaning Service in Charlotte, NC, Post Construction Cleaning in North & South Carolina, Best Disinfection Cleaning Company in North Carolina, Professional Move-In Move-Out Cleaning Service in North Carolina, Child Safe Cleaning in Charlotte, NC', 'Janitorial Cleaning Service in Charlotte, NC', 'Child Safe Cleaning in Charlotte, NC', 'Janitorial Cleaning', '<h3 class=\"chng-clr\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 45px; font-size: 42px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; color: rgb(22, 117, 14); letter-spacing: -1px; background: -webkit-linear-gradient(90deg, rgb(171, 199, 45) 0%, rgb(109, 179, 63) 100%) text rgb(255, 255, 255); -webkit-text-fill-color: transparent;\">Commercial</h3><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Janitorial Cleaning – tackles different tasks in professional office environments, including financial facilities, medical, dental, and chiropractic premises, factory offices, etc. Your service providers are typically referred to as cleaners, janitors, or custodians. We are among the best Janitorial Cleaning Service Providers South Carolina has.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">if you’ve considered all the benefits of booking janitorial service and decided that this is the right choice for you. we offer Affordable Janitorial Cleaning Service in North Carolina, here’s what you can expect from your janitorial team:</p>', '[{\"title\":\"Restroom cleaning\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Cleaning of employee breakrooms or kitchens\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Sweeping and mopping of hard surface floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Vacuuming of the carpet.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dusting.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Emptying bins and taking out the trash.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Performing other maintenance tasks essential for a clean, fresh office.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Disinfecting the items your employees come into contact.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/serviceateampainting17062981172.jpg', 'Janitorial Cleaning Service in Charlotte, NC', NULL, 'janitorial-cleaning', 1, '2024-01-27 01:11:57', '2024-02-01 20:29:41'),
(3, 'Best Airbnb Cleaning Service in North Carolina - Pristine Cleaning Service', 'Elevate your guest experience with the best Airbnb cleaning service in North Carolina at Pristine Cleaning. We ensure every corner is meticulously cleaned. Book now!', 'Best Airbnb Cleaning Service in North Carolina, Best Regular Cleaning in Charlotte, NC, Glass Door Cleaning in Charlotte, NC, Maid Services in Charlotte, NC, Eco/Green Cleaning in Charlotte, NC', 'Best Airbnb Cleaning Service in North Carolina', 'Eco/Green Cleaning in Charlotte, NC', 'Airbnb Cleaning', '<h3 class=\"chng-clr\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 45px; font-size: 42px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; color: rgb(22, 117, 14); letter-spacing: -1px; background: -webkit-linear-gradient(90deg, rgb(171, 199, 45) 0%, rgb(109, 179, 63) 100%) text rgb(255, 255, 255); -webkit-text-fill-color: transparent;\">Commercial</h3><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">We provide an all-around Affordable Airbnb Cleaning Service in South Carolina and each room in your home will be serviced differently. When you avail of our Best Airbnb Cleaning Service in North Carolina, we clean, polish, wash, fold and re-stock household items and essentials including:</p>', '[{\"title\":\"Restroom cleaning\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Cleaning of employee breakrooms or kitchens\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Sweeping and mopping of hard surface floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Vacuuming of the carpet.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dusting.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Emptying bins and taking out the trash.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"General cleaning of your office environment\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Disinfecting the items your employees come into contact.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Performing other maintenance tasks essential for a clean, fresh office.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/serviceateampainting17062983063.jpg', 'Best Airbnb Cleaning Service in North Carolina', NULL, 'airbnb-cleaning', 1, '2024-01-27 01:15:06', '2024-02-01 20:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_services`
--

CREATE TABLE `tbl_services` (
  `id` int(11) NOT NULL,
  `seo_title` varchar(500) DEFAULT NULL,
  `seo_description` longtext,
  `seo_keyword` longtext,
  `seo_h1` varchar(255) DEFAULT NULL,
  `seo_h2` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `service_provider` longtext,
  `photourl` varchar(255) DEFAULT NULL,
  `alt_name` varchar(500) DEFAULT NULL,
  `homepage` tinyint(4) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_services`
--

INSERT INTO `tbl_services` (`id`, `seo_title`, `seo_description`, `seo_keyword`, `seo_h1`, `seo_h2`, `name`, `description`, `service_provider`, `photourl`, `alt_name`, `homepage`, `alias`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Best Regular Cleaning in Charlotte, NC - Pristine Cleaning Service', 'Elevate your surroundings with the best regular cleaning in Charlotte, NC at the Pristine Cleaning Service. Discover a new level of cleanliness and consistency. Visit us now!', 'Best Regular Cleaning, Sanitization & Deep Cleaning Service in North & South Carolina, Best Disinfection Cleaning Company in North Carolina, Janitorial Cleaning Service, Best Green Cleaning Service', 'Regular Cleaning', 'Best Green Cleaning Service in Carolina', 'Regular Cleaning', '<h3 class=\"chng-clr\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 45px; font-size: 42px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; color: rgb(22, 117, 14); letter-spacing: -1px; background: -webkit-linear-gradient(90deg, rgb(171, 199, 45) 0%, rgb(109, 179, 63) 100%) text rgb(255, 255, 255); -webkit-text-fill-color: transparent;\">Residential</h3><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Regular Cleaning Pristine Cleaning Business – The service is flexible and affordable. Our service offers the Best Regular Cleaning Pristine Cleaning Business and it is designed to meet your daily needs and facilitate your life on a day-to-day basis. We are professionals and we will take care of your chores.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">If you are looking for the Best Regular Cleaning Pristine Cleaning Business is the answer. Our representatives provide reliable and efficient services for Regular Cleaning Pristine Cleaning Business to our clients by performing the following tasks:</p>', '[{\"title\":\" Dusting Surfaces\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Sweep and Mop Floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Vacuum Carpet and Rugs\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Bathtubs\\/Showers\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Sinks\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean stove top\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dust Windows, Sills, Ledges\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Remove Cobwebs (only reachable areas)\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Baseboards\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Sweep and Mop Floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Toilets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Mirrors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe Countertops & Tables\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Take Out the Trash\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe Outside of Cabinets \\/ Appliances\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Light switches & Doorknobs\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dust Blind\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/serviceateampainting17062231081.jpg', 'Best Regular Cleaning,', 0, 'regular-cleaning', 1, '2024-01-26 04:19:26', '2024-02-01 21:12:26'),
(2, 'Best Green Cleaning Service in Charlotte, NC - Pristine Cleaning Service', 'Get the best green cleaning service in Charlotte, NC at Pristine Cleaning with eco-friendly solutions. Request a free estimate today and embrace a clean, green way of living.', 'Best Green Cleaning Service, Eco/Green Cleaning, Glass Door Cleaning, Best Airbnb Cleaning Service in North Carolina, Janitorial Cleaning Service', 'Best Green Cleaning Service in Charlotte, NC', 'Eco/Green Cleaning Services in North Carolina', 'Green Cleaning', '<p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Regular cleaning agents tend to be caustic, wearing out surfaces and adversely impacting the longevity of your home, in the long run, this is why you need the Best Green Cleaning Service Providers North Carolina has. If you want to protect your family’s health and the environment, then our green cleaning services might be the perfect fit.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Our green cleaning services were developed, keeping our environment a priority. This is why we, as a company offering Professional Green Cleaning Service in South Carolina, are committed to using products that are safe for our surroundings. Be it non-phosphate detergents or recycled paper products; we come prepared to help your home improve its overall impact on the environment without compromising cleaning standards. We work with you extensively to provide solutions that help ensure high-quality cleaning and improved air quality within your living space, thus benefiting your family and guests. When it comes to Green Cleaning Pristine Cleaning Business is the best.</p>', '[{\"title\":\"Sweep and Mop Floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Toilets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Mirrors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe Countertops & Tables\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Take Out the Trash\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe Outside of Cabinets \\/ Appliances\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Clean Light switches & Doorknobs\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dust Blind\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Vacuum Carpet and Rugs\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Bathtubs\\/Showers\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Sinks\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean stovetop\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dust Windows, Sills, Ledges\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Remove Cobwebs (only reachable areas)\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Baseboards\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/serviceateampainting17062950052.jpg', 'Best Green Cleaning Service in Charlotte, NC', NULL, 'green-cleaning', 1, '2024-01-27 00:20:04', '2024-02-01 20:15:21'),
(3, 'Sanitization & Deep Cleaning Service in North Carolina - Pristine Cleaning Service', 'xperience best level of cleanliness with Pristine Cleaning CLT\'s Sanitization and Deep Cleaning services in North Carolina. Book now for top-notch cleaning solutions.', 'Sanitization & Deep Cleaning Service in North & South Carolina, Best Disinfection Cleaning Company in North Carolina, Janitorial Cleaning Service, Child Safe Cleaning, Glass Door Cleaning', 'Sanitization & Deep Cleaning Service in North Carolina', 'Deep Cleaning Service in North Carolina', 'Sanitization & Deep Cleaning', '<h3 class=\"chng-clr\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 45px; font-size: 42px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; color: rgb(22, 117, 14); letter-spacing: -1px; background: -webkit-linear-gradient(90deg, rgb(171, 199, 45) 0%, rgb(109, 179, 63) 100%) text rgb(255, 255, 255); -webkit-text-fill-color: transparent;\">Sanitization & Deep Cleaning (First Time, One-Time, or Special Request Cleaning)</h3><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Deep Cleaning & Sanitizing – It will take away your house’s deep dirt and grime. A Sanitization Deep Cleaning Service in North & South Carolina is much more thorough, as you can see than a standard cleaning service. Most professional cleaning companies (including Pristine Cleaning Service) insist on an initial deep cleaning for new clients’ homes. Why? The Pristine Cleaning Service initial cleaning is more thorough and covers areas not usually included in a regular cleaning that many other cleaning companies miss. We also take more time to make sure your home starts spotless, so it can stay that way moving forward by doing the following tasks in our Sanitization Deep Cleaning Service in North & South Carolina:</p>', '[{\"title\":\"Dusting Surfaces\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Vacuum Carpet and Rugs\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Bathtubs\\/Showers\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Bathtubs\\/Showers\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean stove top\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dust Windows, Sills, Ledges\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Remove Cobwebs (only reachable areas)\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Extra Attention to Outside of Kitchen Appliances\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Baseboards\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"A full-on detailing for your home\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean and shine all sinks, bathtubs, and shower stalls\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" We will try our best to clean under fridge, bed, washer, drier and stove. We do not move the appliance or furniture.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" We will try our best to clean under fridge, bed, washer, drier and stove. We do not move the appliance or furniture.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Sweep and Mop Floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Toilets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean Mirrors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Wipe Countertops & Tables\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Take Out The Trash\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe Outside of Cabinets \\/ Appliances\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe Outside of Cabinets \\/ Appliances\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Extra Attention to Living Room\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Dust Blind\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Remove all loose dust and dirt\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe down window blinds\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe down window blinds\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe down all light switches, doorknobs, and molding\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/serviceateampainting17062954693.jpg', 'Sanitization & Deep Cleaning Service in North & South Carolina', NULL, 'sanitization-amp-deep-cleaning', 1, '2024-01-27 00:27:49', '2024-02-01 20:18:41'),
(4, 'Professional Move-In Move-Out Cleaning Service - Pristine Cleaning Service', 'The pristine Cleaning Service provides you Professional Move-In Move-Out Cleaning Service with spotless experience. Book now to embrace our exceptional cleaning solutions.', 'Professional Move-In Move-Out Cleaning Service in North Carolina, Residential Cleaning Service, Sanitization & Deep Cleaning Service in North & South Carolina, Pristine Cleaning Service, Glass Door Cleaning', 'Professional Move-In/Move-out cleaning in North Carolina', 'Best Airbnb Cleaning Service in North Carolina', 'Move-In/Move-out Cleaning', '<h3 class=\"chng-clr\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 45px; font-size: 42px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; color: rgb(22, 117, 14); letter-spacing: -1px; background: -webkit-linear-gradient(90deg, rgb(171, 199, 45) 0%, rgb(109, 179, 63) 100%) text rgb(255, 255, 255); -webkit-text-fill-color: transparent;\">Residential</h3><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Moving in or out of a home can seem like a daunting task. Think about it. Finding a new place, packing, discarding the waste, and finalizing legal work – there’s an awful lot to do, and many succumb to the pressure. But, that doesn’t mean that your moving experience always has to be so tiresome, especially if you’re working with us. we offer Professional Move-In Move-Out Cleaning Service in North Carolina.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">While you’re moving, you can depend on us to make your moving adventure safe, secure, and seamless. With our experienced and professional cleaning staff at the core of our operations, we can take over your cleaning duties while you focus on more important matters as your Move-In Move-Out Cleaning Service Providers in South Carolina.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Our cleaners are well-versed in the cleaning regimens, which means they have the required skill set and expertise to make this life-changing transition a little easier.</p>', '[{\"title\":\"A full detailing cleaning of your home\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Remove all loose dust and dirt\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean and shine all sinks, bathtubs, and shower stalls\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"We will try our best to clean under fridge, bed, washer, drier and stove. We do not move the appliance or furniture.\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Vacuum or mop all floors and carpets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Wipe down all light switches, doorknobs, and molding\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Detailed Blind Cleaning\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Clean all microwave and toaster\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Spot wipe walls and baseboards\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Inside Fridge \\/ Oven\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Patio\\/Balcony Cleaning\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Interior Cabinet Cleaning\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Extra Attention to Shower & Bathroom\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Extra Attention to Outside of Kitchen Appliances\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Extra Attention to Living Room\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/serviceateampainting17062961094.jpg', 'Professional Move-In Move-Out Cleaning Service in North Carolina', NULL, 'move-in-move-out-cleaning', 1, '2024-01-27 00:33:35', '2024-02-01 20:21:05'),
(5, 'Professional Move-In Move-Out Cleaning Service - Pristine Cleaning Service', 'The pristine Cleaning Service provides you Professional Move-In Move-Out Cleaning Service with spotless experience. Book now to embrace our exceptional cleaning solutions.', 'Professional Move-In Move-Out Cleaning Service in North Carolina, Residential Cleaning Service, Sanitization & Deep Cleaning Service in North & South Carolina, Pristine Cleaning Service, Glass Door Cleaning', 'Professional Move-In/Move-out cleaning in North Carolina', 'Best Airbnb Cleaning Service in North Carolina', 'Disinfection Cleaning', '<h3 class=\"chng-clr\" style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 10px; line-height: 45px; font-size: 42px; font-family: Heebo, sans-serif; -webkit-font-smoothing: antialiased; color: rgb(22, 117, 14); letter-spacing: -1px; background: -webkit-linear-gradient(90deg, rgb(171, 199, 45) 0%, rgb(109, 179, 63) 100%) text rgb(255, 255, 255); -webkit-text-fill-color: transparent;\">Residential</h3><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Coronavirus has changed the world overnight and the need for Affordable Disinfection Cleaning Service in South Carolina has multiplied. Everyone is paying extra attention to who they come in contact with and what they touch. Since germs are left behind on everything we touch, it is easy for the virus to spread everywhere. To make matters worse, people can be contagious even before they start showing any symptoms, and this is one of the many reasons why we should be mindful of our cleaning habits and rely on only the Best Disinfection Cleaning Company North Carolina has.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Here at Pristine Cleaning Service, the Best Disinfection Cleaning Company in North Carolina, we provide our residential customers with top-of-the-line disinfection services. Our powerful and effective disinfectant formula quickly wipes off surfaces from pathogens and viruses, thus leaving your home safe and healthy.</p><p style=\"box-sizing: border-box; padding: 0px; margin: 0px 0px 20px; font-size: 15px; line-height: 26px; color: rgb(37, 39, 41); font-family: Heebo, sans-serif; letter-spacing: -0.2px; background-color: rgb(255, 255, 255);\">Moreover, our disinfectant solutions are EPA registered and low in toxicity, making them safe around family, pets, and employees. We care deeply about our customers’ and employees’ safety and well-being, which is why our disinfection team for Affordable Disinfection Cleaning Service in South Carolina comes equipped with high-quality personal protective equipment and sprayers to do the job safely and swiftly. That is what makes Pristine Disinfection Cleaning Service number one.</p>', '[{\"title\":\"Handrails\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Door handles\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Floors\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Toilets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Faucets\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Sinks\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Tables and Chairs\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Countertops\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\"Switches and Buttons\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null},{\"title\":\" Other common surfaces\",\"value_1\":null,\"value_2\":null,\"value_3\":null,\"value_4\":null}]', 'uploads/servicepristine17068157145.jpg', 'Professional Move-In Move-Out Cleaning Service - Pristine Cleaning Service', NULL, 'disinfection-cleaning', 1, '2024-01-27 00:41:55', '2024-02-01 20:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonials`
--

CREATE TABLE `tbl_testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `alt_name` varchar(255) DEFAULT NULL,
  `photourl` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_testimonials`
--

INSERT INTO `tbl_testimonials` (`id`, `name`, `description`, `alt_name`, `photourl`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Richard Williams', 'We love &lt;strong&gt;Pristine Cleaning Service&lt;/strong&gt;! They always go the extra mile to ensure that their customers are always happy with their services. I own a business that is usually very lively and energetic, but their staff has always cleaned our office with minimal disturbances. I owe a lot to them for keeping my office’s hygiene standards in check and ensuring that they are cleaned efficiently and regularly.', 'Child Safe Cleaning North Carolina', 'uploads/17063109851.png', 1, '2023-10-21 04:24:04', '2023-10-20 22:54:04'),
(2, 'Amelia Brown', '&lt;strong&gt;Pristine Cleaning Service&lt;/strong&gt; has been cleaning my apartment for a while now, and they understand our demands and needs. Their team is genuinely friendly and always has time to say hello, even when they’re busy working. We are extremely happy with the quality of their work, reliability, and the way they respect our belongings.', 'Glass Door Cleaning in North Carolina', 'uploads/17063109762.png', 1, '2023-10-21 04:24:28', '2023-10-20 22:54:28'),
(3, 'Olivia Smith', 'I have tried multiple cleaning services, but I was let down all the time. The cleaning crews never arrived on time and were inconsistent with their cleaning routine. Luckily, a friend recommended &lt;strong&gt;Pristine Cleaning Service&lt;/strong&gt; to me, and since then, my experience with cleaning companies has changed for the better. In over 20 visits to my home, they have always arrived on time and have cleaned my house in the most economical and environmentally appropriate manner possible. I recommend them for their easy quotations, professionalism, and service-oriented approach to meeting their customer’s needs.', 'Residential Cleaning Service in North Carolina', 'uploads/17063109683.png', 1, '2023-10-21 04:24:50', '2023-10-20 22:54:50'),
(4, 'Julia Sparks', 'I’m a very particular person when it comes to my cleaning routine. Punctuality, cleanliness, and customer service are some of the areas I judge a cleaning company on, but it is safe to say that &lt;strong&gt;Pristine Cleaning Service&lt;/strong&gt; exceeded my expectations! Their crew arrived on time and accomplished everything so quickly. I loved their service and would happily recommend it to others too!', 'Best Disinfection Cleaning Company', 'uploads/17063109604.png', 1, '2023-10-21 04:25:11', '2023-10-20 22:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_welcome`
--

CREATE TABLE `tbl_welcome` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `description_1` longtext,
  `description_2` longtext,
  `photourl` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_welcome`
--

INSERT INTO `tbl_welcome` (`id`, `title`, `description`, `description_1`, `description_2`, `photourl`, `updated_at`, `status`) VALUES
(1, '', 'Mission We\'re committed to providing the highest quality of residential and commercial cleaning services, exceeding our clients\' expectations. Vision To become game-changers in the cleaning industry, providing commercial and residential customers with top-of-the-line and affordable cleaning solutions.', 'Keeping your home clean and neatly organized amidst all of your personal and professional commitments can be overwhelming. With a career and family to juggle between, you may sometimes end up sacrificing hygiene to keep your personal life in check. What if we told you that we had a solution for all your troubles? You can take full advantage of our residential cleaning services to ensure that your residential space is tidy all year long.', 'Your working space is the heartbeat of your business. It’s the place where critical decisions are made, game-changing ideas are discussed, and sales targets are met. A clean commercial space breeds productivity, improves team morale and creates a lasting impression on your clients. Our commercial cleaning services are perfect for ensuring that your offices, schools, gyms, and construction sites are kept speck-free!', NULL, '2024-02-01 19:51:21', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contactus`
--
ALTER TABLE `tbl_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact_details`
--
ALTER TABLE `tbl_contact_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_home_service`
--
ALTER TABLE `tbl_home_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_others`
--
ALTER TABLE `tbl_others`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_welcome`
--
ALTER TABLE `tbl_welcome`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_aboutus`
--
ALTER TABLE `tbl_aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_appointments`
--
ALTER TABLE `tbl_appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_contactus`
--
ALTER TABLE `tbl_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_contact_details`
--
ALTER TABLE `tbl_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tbl_home_service`
--
ALTER TABLE `tbl_home_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_mail`
--
ALTER TABLE `tbl_mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_others`
--
ALTER TABLE `tbl_others`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_testimonials`
--
ALTER TABLE `tbl_testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_welcome`
--
ALTER TABLE `tbl_welcome`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
