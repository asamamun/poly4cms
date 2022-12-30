-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 05:47 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web4cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(512) NOT NULL,
  `description` text NOT NULL,
  `images` varchar(512) NOT NULL,
  `active` set('0','1') NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `tags` varchar(128) NOT NULL,
  `op1` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `description`, `images`, `active`, `user_id`, `tags`, `op1`, `created_at`, `deleted_at`) VALUES
(3, 7, 'test title', 'test desc', '63ad9f3340070.png', '1', 1, 'asd,345', '', '2022-12-29 14:07:47', NULL),
(4, 2, 'প্রথম দিনে মেট্রোতে চড়েছেন ৩,৮৫৭ যাত্রী', 'মেট্রোরেল উদ্বোধনের পর আজ ছিল প্রথম দিন। এদিন মেট্রোরেলে উঠতে স্টেশনগুলোতে ভিড় করেন হাজার হাজার মানুষ। প্রথম দিন ৩ হাজার ৮৫৭ যাত্রী মেট্রোতে চড়েছেন। আজ রাজধানীর উত্তরার দিয়াবাড়ী-আগারগাঁও রুটের ১০টি ট্রেনে এসব যাত্রী যাতায়াত করেন। আর সরকার প্রথম দিনে যাত্রীদের কাছ থেকে ভাড়া বাবদ আদায় করেছে দুই লাখ ২৫ হাজার ৩৬০ টাকা। মেট্রোরেল সংশ্লিষ্ট কর্মকর্তারা এসব তথ্য জানিয়েছেন। তারা জানান, দিয়াবাড়ী থেকে সকাল ৮টায় যাত্রী নিয়ে প্রথম ট্রেন আগারগাঁওয়ের উদ্দেশে ছেড়ে যায়। আর আগারগাঁও থেকে দিয়াবাড়ীর উদ্দেশে প্রথম ট্রেনটি ছাড়ে সকাল ৮টা ১৫ মিনিটে। প্রথমদিকে সকাল ৮টা থেকে দুপুর ১২টা পর্যন্ত চলছে মেট্রো। \r\n\r\nঢাকা ম্যাস ট্রানজিট কোম্পানি লিমিটেডের (ডিএমটিসিএল) ডেপুটি সেক্রেটারি (জনসংযোগ) নজরুল ইসলাম ভূঁইয়া বলেন, যাত্রী নিয়ে চলাচল করার প্রথম দিনে মেট্রোরেলে সিঙ্গেল জার্নি ও এমআরটি পাস নিয়ে ভ্রমণ করেছেন ৩ হাজার ৮৫৫ জন। এর মধ্যে ৩ হাজার ৭৫৬ জন সিঙ্গেল জার্নির টিকিট কিনেছেন।', '63ada030449a8.png', '1', 1, '', '', '2022-12-29 14:12:00', NULL),
(5, 2, 'পর্যটনের জন্য বিশ্বের \'সেরা গ্রাম\' কোনটা হলো জানেন ?', 'মহামারী শুরু হওয়ার পর থেকে ভ্রমণের সংজ্ঞা অনেকটাই পরিবর্তিত হয়েছে, তবে  ভাল একটি পরিবর্তন হল গ্রামীণ পর্যটনের দিকে নতুন ঝোঁক বেড়েছে । লকডাউনে আমরা অনেকেই দুর্দান্ত আউটডোরের স্বপ্ন দেখেছি। এবার হয়তো তা বাস্তবের রূপ নিতে চলেছে। ওয়ার্ল্ড ট্যুরিজম অর্গানাইজেশন (UNWTO) সারা বিশ্বের মধ্যে  \"সেরা\" গ্রামের  তালিকা তৈরি করেছে। যেখানে জায়গা করে নিয়েছে ৩২ টি নতুন গ্রামীণ স্থান  ।  UNWTO হল একটি জাতিসংঘের সংস্থা যা দায়িত্বশীল পর্যটনের উপর দৃষ্টি নিবদ্ধ করে। UNWTO একটি বিবৃতিতে বলেছে: গ্রামগুলিকে বেছে নেওয়া হয়েছে কিভাবে তারা দর্শনার্থীদের সংখ্যা বৃদ্ধি করছে তা দেখে নয় , বরং দর্শকরা কি দেখতে সেখানে আসছেন। \'\'   গ্রামীণ গন্তব্যগুলি কিভাবে পর্যটনকে উন্নয়নের চালিকা এবং চাকরি ও আয়ের নতুন সুযোগ হিসাবে গ্রহণ করছে সেই দেখে তাদের প্রশংসা করেছে UNWTO ।   পাশাপাশি .অর্থনৈতিক, সামাজিক এবং পরিবেশগত উন্নয়নের সাথে সামঞ্জস্য রেখে পর্যটন বিকাশের উপর গ্রামগুলি কিভাবে ফোকাস করেছে সেটিও বিচার করা হয়েছে  ।', '63ada0f13d6c3.png', '1', 1, '', '', '2022-12-29 14:15:13', NULL),
(6, 3, 'মার্কিন নিষেধাজ্ঞার কবলে থাকা জাহাজ গ্রহণে রাশিয়ার চাপ-হুমকি, প্রত্যাখ্যান বাংলাদেশের', 'মার্কিন নিষেধাজ্ঞার কবলে থাকা একটি জাহাজকে গ্রহণে ঢাকাকে ক্রমাগত চাপ দিচ্ছে মস্কো। ১০ দিন ধরে স্পার্টা-৩ নামের রাশিয়ান জাহাজটি গভীর সমুদ্রে (আন্তর্জাতিক জলসীমায়) অপেক্ষমাণ। এটি মোংলা পোর্টে নোঙ্গর করতে চায়। জাহাজটি রূপপুর পারমাণবিক বিদ্যুৎ কেন্দ্র নির্মাণের মালামাল নিয়ে এসেছে। সেগুনবাগিচা জানিয়েছে, নতুন করে মার্কিন নিষেধাজ্ঞার মুখে পড়ার আশঙ্কায় রাশিয়ার ওই জাহাজকে বাংলাদেশের জলসীমায় ঢুকতে না দেয়ার সিদ্ধান্ত নিয়েছে ঢাকা। এ অবস্থায় জাহাজটিকে গ্রহণ না করলে দ্বিপক্ষীয় সম্পর্ক নষ্টের হুমকি দিয়েছে রাশিয়া। অবশ্য হুমকি সংক্রান্ত রাশিয়ার পত্র (নোট ভারবাল) পাওয়ার কয়েকঘণ্টার মধ্যেই রাষ্ট্রদূতকে তলব করা হয় এবং কোন অবস্থাতেই যে বাংলাদেশ নিষেধাজ্ঞার আওতায় থাকা (যদিও নাম ও কালার বদল করা হয়েছে) জাহাজটিকে গ্রহণ করছে না, তা স্পষ্ট জানিয়ে দেয়া হয়। বাংলাদেশ প্রশ্নে যুক্তরাষ্ট্র ও রাশিয়ান দূতাবাসের পাল্টাপাল্টির (টুইট-পাল্টা টুইট) মধ্যেই মোংলা পোর্ট অভিমুখে রাশিয়ান এমন জাহাজ আসার খবর দেয় ওয়াশিংটন। গত ২০ শে ডিসেম্বর ঢাকাস্থ মার্কিন দূতাবাসের এ সংক্রান্ত বার্তায় নড়েচড়ে বসে সরকার। শীর্ষ মহলে খবরটি পাঠানো হলে চটজলদি জাহাজটি ফিরিয়ে দেয়ার ব্যবস্থা নিতে সংশ্লিষ্ট নির্দেশ দেয়া হয়।\r\n\r\n', '63ada41e0e07b.png', '1', 1, '', '', '2022-12-29 14:28:46', NULL),
(7, 2, 'aziz-acharki-y44xv-A5syg-unsplash', 'A shadow is a dark area where light from a light source is blocked by an opaque object', '63ada55783a55.png', '1', 2, '', '', '2022-12-29 14:33:59', NULL),
(8, 1, 'My article-1 (masum) 123123123', '123 123 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '63ada57cb107d.png', '1', 11, 'sports, world cup, ball', '', '2022-12-29 14:34:36', NULL),
(9, 7, 'My article-2 (masum)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '63ada5cd19b28.png', '1', 11, '', '', '2022-12-29 14:35:57', NULL),
(10, 3, 'Become a Web Desinger', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '63ada61fcd4ca.png', '1', 7, '', '', '2022-12-29 14:37:19', NULL),
(11, 1, 'My article-3 (masum)', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '63ada62638ee9.png', '1', 11, '', '', '2022-12-29 14:37:26', NULL),
(12, 2, 'Young men style Shoe', ' The quality is depend on the price, we have thousands of products, we can\'t promise that all the products have the same quality, for we need to satisfy different customer\'s requirements, some one needs high quality, some one needs low price.', '63ada70700aa8.png', '1', 2, '', '', '2022-12-29 14:41:11', NULL),
(13, 2, 'kit', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque ad facilis iure inventore ratione, officiis dolores voluptate consequatur sed! Inventore dolor aspernatur aperiam voluptatum sit aliquam obcaecati qui sapiente quos?', '63aec283c5e03.png', '1', 10, '', '', '2022-12-30 10:50:43', NULL),
(14, 8, 'leaf', 'Leaves are constructed of three major parts: the petiole, the base, and the blade (Figure 1A). Generally, the largest portion of the leaf is the blade. The base is the region of the blade that attaches to the petiole, a stalk-like structure that connects the blade of the leaf to the stem of the plant', '63aec2868c5dc.png', '1', 2, '#bd ', '', '2022-12-30 10:50:46', NULL),
(15, 1, 'minecraft', 'In Minecraft, players explore a blocky, procedurally generated 3D world with virtually infinite terrain and may discover and extract raw materials, craft tools and items, and build structures, earthworks, and simple machines.', '63aec451325ca.png', '1', 2, '#bd minecraft', '', '2022-12-30 10:58:25', NULL),
(16, 1, 'minecraft', 'In Minecraft, players explore a blocky, procedurally generated 3D world with virtually infinite terrain and may discover and extract raw materials, craft tools and items, and build structures, earthworks, and simple machines.', '63aec473a4559.png', '1', 2, '#bd minecraft', '', '2022-12-30 10:58:59', NULL),
(17, 6, 'politics', 'Politics is the set of activities that are associated with making decisions in groups, or other forms of power relations among individuals,', '63aec71d2fbc4.png', '1', 2, '#bd ', '', '2022-12-30 11:10:21', NULL),
(18, 5, 'food', 'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.', '63aec76626f6b.png', '1', 2, '#bd ', '', '2022-12-30 11:11:34', NULL),
(19, 4, 'Programmers', 'Programmers write code for computer programs and mobile applications. They also are involved in maintaining, debugging and troubleshooting systems and software to ensure that everything is running smoothly.', '63aec7b5ee0b9.png', '1', 2, '#bd ', '', '2022-12-30 11:12:53', NULL),
(20, 5, 'food', 'food, substance consisting essentially of protein, carbohydrate, fat, and other nutrients used in the body of an organism to sustain growth and vital processes and to furnish energy. The absorption and utilization of food by the body is fundamental to nutrition and is facilitated by digestion.', '63aec9aec9037.png', '0', 2, '#bd ', '', '2022-12-30 11:21:18', '2022-12-30 11:32:04'),
(21, 1, 'minecraft', 'In Minecraft, players explore a blocky, procedurally generated 3D world with virtually infinite terrain and may discover and extract raw materials, craft tools and items, and build structures, earthworks, and simple machines.', '63aec9cd2e962.png', '1', 2, '#bd ', '', '2022-12-30 11:21:49', NULL),
(22, 1, 'minecraft', 'In Minecraft, players explore a blocky, procedurally generated 3D world with virtually infinite terrain and may discover and extract raw materials, craft tools and items, and build structures, earthworks, and simple machines.', '63aec9d80f279.png', '1', 2, '#bd ', '', '2022-12-30 11:22:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `id` int(11) NOT NULL,
  `image` varchar(256) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(512) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `icon` varchar(64) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `icon`, `created_at`) VALUES
(1, 'Sports', 'sports', 'xbox', '2022-12-29 13:29:13'),
(2, 'Fashion', 'fashion', 'clipboard2-pulse-fill', '2022-12-29 13:29:26'),
(3, 'Web Design', 'web design', 'cloud-drizzle', '2022-12-29 13:29:51'),
(4, 'Programming', 'programming', 'columns-gap', '2022-12-29 13:30:04'),
(5, 'Food', 'food', 'cup-hot', '2022-12-29 13:30:29'),
(6, 'Politics', 'politics', 'diagram-3', '2022-12-29 14:30:12'),
(7, 'Technology', 'technology', 'dropbox', '2022-12-29 14:30:29'),
(8, 'Bangladesh', 'bangladesh', 'flag', '2022-12-29 14:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(512) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `article_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `active` set('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role` set('1','2','3') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'super admin', 'admin@gmail.com', '$2y$10$R/CsOd4QbEUFEzK0cNpHou9GcoYUtPlHVksunLyMWAEddPGNNQ7mW', '2', '2022-12-27 05:17:14'),
(2, 'Najmul Islam', 'najmul@gmail.com', '$2y$10$ISzBc/N4AC8wgoA6mLqVkOe0mV7e6cT5DA3uQIIhunzN/rmkqsQxu', '2', '2022-12-27 05:32:08'),
(3, 'Masum Hossain', 'masumhossain.dev@gmail.com', '$2y$10$MgdPIhurr4pIswU.zYkAi.2qEcMe6WWfW9bFji9CJN5KYFuYe3G2O', '2', '2022-12-27 05:32:16'),
(4, 'Mehedi  Hasan', 'Mehedi.info@gmail.com', '$2y$10$MiwCQMgHKajtc/MeMKHSMORa7egLV6Libr5tXP94Bs2v4fk5n.BIa', '2', '2022-12-27 05:44:17'),
(6, 'Mehedi Hasan', 'Mehedi.info@gamil.com', '$2y$10$ZOKuEwfw6.KYuKbF52uYoeuZJk7YOQXccEOD/hiBvUe/TopuqErP.', '2', '2022-12-29 13:19:48'),
(7, 'Bellal Hossain', 'bellal@gmail.com', '$2y$10$3FwNdx1NBgkE05DM3Ae0JuIsrkYu5Cp6BTW4HIqrxrKrBqwyJUXHi', '2', '2022-12-29 14:32:04'),
(8, 'Md Fahim', 'fahim10@gmail.com', '$2y$10$0X9sXAYYQ2QYlJBt5PThw.fFDxlNG0KtJYiHuiBfKfCvEvHXQDjZy', '2', '2022-12-29 14:32:11'),
(10, 'mosarof hossain rafi', 'rafitopoder34@gmail.com', '$2y$10$FtIzFXGICO1QevkTV8THJ.WQluVQ2eSdHeMbAulIGPde172eDjbs6', '2', '2022-12-29 14:33:07'),
(11, 'Masum Hazi', 'user@gmail.com', '$2y$10$d82utrhJtm5FzyD5VCUSjeNKWDK8Tbe2/pIq0HvQTKkgpjI1o/lAa', '2', '2022-12-29 14:33:12'),
(12, 'jahidul Islam', 'jahidulislamsifat@gmail.com', '$2y$10$TKCfJ.ahrUlWKw5IU.BpCONQXWTevcqWGqaDHXUDRQllZ93gyWkrO', '1', '2022-12-30 09:34:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `articles_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
