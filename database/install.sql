-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 04:42 PM
-- Server version: 10.11.7-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u687661449_wham5`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `role` varchar(999) DEFAULT 'admin',
  `password` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uid`, `email`, `role`, `password`, `createdAt`) VALUES
(1, '5QnEKMP7lbzObMlLJNAxdcIhNb4qYIQBX', 'admin@admin.com', 'admin', '$2b$10$OUmfMxfNYQOw4yGtYWzQV./vpMHKYDXzkn6q2FK58hO8uzYuqdFcq', '2024-05-05 08:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `broadcast`
--

CREATE TABLE `broadcast` (
  `id` int(11) NOT NULL,
  `broadcast_id` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `templet` longtext DEFAULT NULL,
  `phonebook` varchar(999) DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `schedule` datetime DEFAULT NULL,
  `timezone` varchar(999) DEFAULT NULL,
  `instance_id` longtext DEFAULT NULL,
  `delay_from` varchar(999) DEFAULT NULL,
  `delay_to` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `broadcast_log`
--

CREATE TABLE `broadcast_log` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `broadcast_id` varchar(999) DEFAULT NULL,
  `templet_name` varchar(999) DEFAULT NULL,
  `is_read` int(1) DEFAULT 0,
  `msg_id` varchar(999) DEFAULT NULL,
  `send_to` varchar(999) DEFAULT NULL,
  `delivery_status` varchar(999) DEFAULT 'PENDING',
  `delivery_time` varchar(999) DEFAULT NULL,
  `err` longtext DEFAULT NULL,
  `contact` longtext DEFAULT NULL,
  `instance_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `for_all` int(1) DEFAULT 1,
  `prevent_book_id` varchar(999) DEFAULT NULL,
  `flow` varchar(999) DEFAULT NULL,
  `active` int(1) DEFAULT 1,
  `instance_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `chat_id` longtext DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `last_message_came` longtext DEFAULT NULL,
  `chat_note` longtext DEFAULT NULL,
  `chat_tags` longtext DEFAULT NULL,
  `sender_name` varchar(999) DEFAULT NULL,
  `sender_mobile` varchar(999) DEFAULT NULL,
  `sender_jid` varchar(999) DEFAULT NULL,
  `chat_status` varchar(999) DEFAULT 'open',
  `is_opened` int(1) DEFAULT 0,
  `last_message` longtext DEFAULT NULL,
  `instance_id` longtext DEFAULT NULL,
  `profile_image` varchar(999) DEFAULT NULL,
  `group_data` longtext DEFAULT NULL,
  `can_reply` int(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `phonebook_name` varchar(999) DEFAULT NULL,
  `phonebook_id` varchar(999) DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `var_one` longtext DEFAULT NULL,
  `var_two` longtext DEFAULT NULL,
  `var_three` longtext DEFAULT NULL,
  `var_four` longtext DEFAULT NULL,
  `var_five` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `email` varchar(999) DEFAULT NULL,
  `name` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `email`, `name`, `mobile`, `content`, `createdAt`) VALUES
(1, 'email@gmail.com', 'John do', '+91999999999', 'hello, what are the charges', '2024-02-28 07:57:12'),
(5, 'john@email.com', 'John', '8888888', 'hey there boss', '2024-05-09 06:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `createdAt`) VALUES
(5, 'Can I use my existing WhatsApp number?', 'Yes, you can use an existing WhatsApp number. However, before onboarding, you must first delete the WhatsApp account linked to that number. If you wish to back up your WhatsApp text messages so that you can restore to WhatsCRM, you can use our Chat backup plugin', '2024-02-27 11:20:52'),
(6, 'Can I use my existing WhatsApp number?', 'Yes, you can use an existing WhatsApp number. However, before onboarding, you must first delete the WhatsApp account linked to that number. If you wish to back up your WhatsApp text messages so that you can restore to WhatsCRM, you can use our Chat backup plugin', '2024-02-27 11:20:57'),
(7, 'Can I use my existing WhatsApp number?', 'Yes, you can use an existing WhatsApp number. However, before onboarding, you must first delete the WhatsApp account linked to that number. If you wish to back up your WhatsApp text messages so that you can restore to WhatsCRM, you can use our Chat backup plugin', '2024-02-27 11:21:05');

-- --------------------------------------------------------

--
-- Table structure for table `flow`
--

CREATE TABLE `flow` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `flow_id` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instance`
--

CREATE TABLE `instance` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `instance_id` longtext DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `qr` longtext DEFAULT NULL,
  `status` varchar(999) DEFAULT NULL,
  `webhook` varchar(999) DEFAULT NULL,
  `userData` longtext DEFAULT NULL,
  `jid` varchar(999) DEFAULT NULL,
  `a_status` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `payment_mode` varchar(999) DEFAULT NULL,
  `amount` varchar(999) DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `s_token` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `slug` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `image` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `permanent` int(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `slug`, `title`, `image`, `content`, `permanent`, `createdAt`) VALUES
(3, 'privacy-policy', 'Privacy policy', 'undraw_Images_re_0kll.png', '<p>hey i am privacy policya</p>', 1, '2024-02-28 09:21:17'),
(4, 'terms-and-conditions', 'termns', 'undraw_Images_re_0kll.png', '<p>Terms Pagea</p>', 1, '2024-02-28 09:26:11'),
(12, 'unlocking-growth-potential', 'Unlocking Growth Potential', 'undraw_Images_re_0kll.png', '<p>In the fast-paced world of business, staying ahead of the competition requires innovative strategies that prioritize customer engagement and satisfaction. Cloud-Based WhatsApp CRM emerges as a game-changer, offering businesses a powerful platform to connect with customers, streamline operations, and drive growth. Let\'s delve into how Cloud-Based WhatsApp CRM solutions can unlock the full potential of your business and propel it towards success.</p><p><span style=\"color: var(--tw-prose-bold);\">Revolutionizing Customer Engagement with Cloud-Based WhatsApp CRM:</span></p><p><br></p><p><br></p><ol><li><span style=\"color: var(--tw-prose-bold);\">Seamless Communication:</span>&nbsp;Break down communication barriers and connect with customers in real-time through WhatsApp\'s intuitive messaging interface, fostering instant engagement and responsiveness.</li><li><span style=\"color: var(--tw-prose-bold);\">Automated Workflows:</span>&nbsp;Streamline routine tasks and workflows with automated features, such as chatbots and broadcast messages, allowing businesses to focus on high-value activities and strategic initiatives.</li><li><span style=\"color: var(--tw-prose-bold);\">Personalized Interactions:</span>&nbsp;Tailor messages and offers to individual customer preferences, leveraging data insights and segmentation to deliver hyper-targeted content that resonates with your audience.</li><li><span style=\"color: var(--tw-prose-bold);\">Multi-Channel Integration:</span>&nbsp;Integrate WhatsApp CRM with existing communication channels, such as email and social media, to create a unified customer experience across touchpoints and channels.</li><li><span style=\"color: var(--tw-prose-bold);\">Actionable Analytics:</span>&nbsp;Gain valuable insights into customer behavior, campaign performance, and ROI through advanced analytics and reporting, enabling data-driven decision-making and continuous improvement.</li></ol><p><span style=\"color: var(--tw-prose-bold);\">Key Benefits of Cloud-Based WhatsApp CRM for Business Success:</span></p><p><br></p><p><br></p><ul><li><span style=\"color: var(--tw-prose-bold);\">Scalability:</span>&nbsp;Scale your operations effortlessly to meet growing customer demand, with the flexibility to add new features and functionalities as your business evolves.</li><li><span style=\"color: var(--tw-prose-bold);\">Efficiency:</span>&nbsp;Streamline processes and workflows, reduce manual intervention, and increase operational efficiency, allowing your team to focus on strategic objectives and business growth.</li><li><span style=\"color: var(--tw-prose-bold);\">Customer Satisfaction:</span>&nbsp;Deliver exceptional service and support through personalized interactions, proactive communication, and timely responses, earning customer loyalty and trust.</li><li><span style=\"color: var(--tw-prose-bold);\">Competitive Advantage:</span>&nbsp;Stay ahead of the competition by leveraging innovative technology solutions that enhance customer engagement, drive innovation, and position your business as an industry leader.</li></ul><p><span style=\"color: var(--tw-prose-bold);\">Unlock Your Business Potential with Cloud-Based WhatsApp CRM:</span></p><p>Embrace the power of Cloud-Based WhatsApp CRM solutions to transform the way you engage with customers, streamline operations, and drive business growth. By harnessing the capabilities of WhatsApp CRM, businesses can unlock new opportunities, cultivate meaningful relationships with customers, and achieve sustainable success in today\'s dynamic marketplace. Take the next step towards business excellence and unleash your growth potential with Cloud-Based WhatsApp CRM.</p>', 0, '2024-03-08 04:28:29'),
(13, 'unlocking-business-potential', 'Unlocking Business Potential', 'undraw_Images_re_0kll.png', '<p>In today\'s digital age, staying connected with customers is paramount for businesses across industries. With the widespread use of messaging platforms like WhatsApp, leveraging a Cloud-Based WhatsApp CRM (Customer Relationship Management) solution has become essential for organizations looking to streamline communication, enhance customer engagement, and drive growth.</p><p>At the forefront of this revolution is cloud-based WhatsApp CRM technology, offering a comprehensive suite of features designed to empower businesses with advanced communication capabilities. From broadcasting messages to managing online chats and deploying chatbots, these solutions provide a centralized platform for businesses to interact with customers efficiently and effectively.</p><p><span style=\"color: var(--tw-prose-bold);\">Key Features of Cloud-Based WhatsApp CRM Solutions:</span></p><p><br></p><p><br></p><ol><li><span style=\"color: var(--tw-prose-bold);\">Broadcast Messaging:</span>&nbsp;Reach a large audience instantly with broadcast messages, allowing businesses to disseminate important updates, promotions, and announcements seamlessly.</li><li><span style=\"color: var(--tw-prose-bold);\">Online Chat Management:</span>&nbsp;Manage customer inquiries and support requests in real-time through WhatsApp\'s popular chat interface, ensuring swift responses and excellent customer service.</li><li><span style=\"color: var(--tw-prose-bold);\">Chatbot Integration:</span>&nbsp;Automate routine interactions and FAQs using intelligent chatbots, enabling businesses to handle a high volume of inquiries while reducing manual workload.</li><li><span style=\"color: var(--tw-prose-bold);\">CRM Integration:</span>&nbsp;Integrate with existing CRM systems to centralize customer data and interactions, providing valuable insights into customer behavior and preferences.</li><li><span style=\"color: var(--tw-prose-bold);\">Analytics and Reporting:</span>&nbsp;Gain valuable insights into campaign performance, chat metrics, and customer engagement through advanced analytics and reporting tools.</li></ol><p><span style=\"color: var(--tw-prose-bold);\">Benefits of Cloud-Based WhatsApp CRM Solutions:</span></p><p><br></p><p><br></p><ul><li><span style=\"color: var(--tw-prose-bold);\">Enhanced Customer Engagement:</span>&nbsp;Build stronger relationships with customers through personalized communication and timely responses.</li><li><span style=\"color: var(--tw-prose-bold);\">Increased Efficiency:</span>&nbsp;Streamline communication workflows, automate repetitive tasks, and optimize resource allocation for improved operational efficiency.</li><li><span style=\"color: var(--tw-prose-bold);\">Scalability:</span>&nbsp;Scale your communication efforts effortlessly to accommodate business growth and evolving customer needs.</li><li><span style=\"color: var(--tw-prose-bold);\">Cost-Effectiveness:</span>&nbsp;Reduce overhead costs associated with traditional communication channels while maximizing ROI through targeted messaging and automation.</li></ul><p><span style=\"color: var(--tw-prose-bold);\">Unlock Your Business Potential with Cloud-Based WhatsApp CRM Solutions:</span></p><p>Whether you\'re a small business looking to enhance customer service or a large enterprise seeking to streamline communication processes, cloud-based WhatsApp CRM solutions offer a powerful platform to elevate your business to new heights. Embrace the future of customer engagement and harness the full potential of WhatsApp as a business communication tool with innovative cloud-based CRM solutions tailored to your needs.</p>', 0, '2024-03-08 04:28:50'),
(14, 'customer-experience', 'Customer Experience', 'undraw_Images_re_0kll.png', '<p>In the digital era, customer experience reigns supreme, and businesses are continually seeking innovative ways to engage with their audience effectively. Enter Cloud-Based WhatsApp CRM solutions, revolutionizing the way businesses interact with customers and deliver exceptional service. Let\'s explore how these cutting-edge solutions are transforming customer experience across industries.</p><p><span style=\"color: var(--tw-prose-bold);\">Transforming Customer Experience with Cloud-Based WhatsApp CRM:</span></p><p><br></p><p><br></p><ol><li><span style=\"color: var(--tw-prose-bold);\">Personalized Communication:</span>&nbsp;Leverage the power of WhatsApp\'s familiar chat interface to engage customers on a personal level, fostering stronger connections and loyalty.</li><li><span style=\"color: var(--tw-prose-bold);\">Instant Responsiveness:</span>&nbsp;With real-time notifications and alerts, businesses can respond to customer inquiries promptly, ensuring a seamless and frictionless experience.</li><li><span style=\"color: var(--tw-prose-bold);\">Omnichannel Integration:</span>&nbsp;Integrate WhatsApp CRM with other communication channels, such as email and SMS, to provide customers with multiple touchpoints for communication.</li><li><span style=\"color: var(--tw-prose-bold);\">AI-Powered Insights:</span>&nbsp;Harness the potential of artificial intelligence (AI) to analyze customer interactions, sentiment, and preferences, enabling personalized recommendations and targeted marketing campaigns.</li><li><span style=\"color: var(--tw-prose-bold);\">Interactive Chatbots:</span>&nbsp;Deploy intelligent chatbots to handle routine inquiries, guide customers through the buying process, and provide round-the-clock support, enhancing efficiency and customer satisfaction.</li></ol><p><span style=\"color: var(--tw-prose-bold);\">Benefits of Cloud-Based WhatsApp CRM for Customer Experience:</span></p><p><br></p><p><br></p><ul><li><span style=\"color: var(--tw-prose-bold);\">Enhanced Engagement:</span>&nbsp;Connect with customers on their preferred messaging platform, delivering tailored messages and offers that resonate with their needs and interests.</li><li><span style=\"color: var(--tw-prose-bold);\">Effortless Communication:</span>&nbsp;Seamlessly transition between chats, calls, and multimedia sharing within the WhatsApp ecosystem, simplifying communication for both businesses and customers.</li><li><span style=\"color: var(--tw-prose-bold);\">Data-Driven Insights:</span>&nbsp;Gain valuable insights into customer behavior, preferences, and trends through advanced analytics, enabling informed decision-making and targeted marketing strategies.</li><li><span style=\"color: var(--tw-prose-bold);\">Brand Loyalty:</span>&nbsp;By providing exceptional service and personalized interactions, businesses can build long-lasting relationships with customers, fostering loyalty and advocacy.</li></ul><p><span style=\"color: var(--tw-prose-bold);\">Elevate Your Customer Experience with Cloud-Based WhatsApp CRM:</span></p><p>In today\'s competitive landscape, delivering exceptional customer experience is no longer optional—it\'s imperative. By harnessing the power of Cloud-Based WhatsApp CRM solutions, businesses can elevate their customer experience to new heights, delighting customers at every touchpoint and driving sustainable growth. Embrace the future of customer engagement with innovative WhatsApp CRM solutions tailored to your business needs, and embark on a journey to create memorable experiences that keep customers coming back for more.</p>', 0, '2024-03-08 04:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `filename` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `filename`, `createdAt`) VALUES
(51, 'Qs5Xc1Idh3YgzffSjAkoChpOSKJSH1IT.png', '2024-05-06 14:34:48'),
(52, 'xsLlR0QGKFXx6P33fU5Mg1QkkpIZO4h1.png', '2024-05-06 14:34:51'),
(53, '7NVSm7PSRcbLYAgFZClMPwFiD5omnEZm.png', '2024-05-06 14:34:53'),
(54, 'isdDjIGz1c9FskzUvIdmxPO5sbLfW9JG.png', '2024-05-06 14:34:55'),
(55, 'Z9c5VxCTx8ZlkD1YDSB5e6FqnmWIeGDX.png', '2024-05-06 14:34:58'),
(56, 'BpeO1zY5irSszcY0UmG4uwYCLQTClEmi.png', '2024-05-06 14:35:00'),
(57, 'nOId7i2HvURDHZd2gZ1k80BGEknJY87f.png', '2024-05-06 14:35:02'),
(58, 'y5WuhsLBwGV5VmrYrDH8CPP2P4VRWQQQ.png', '2024-05-06 14:35:06'),
(59, 'hkV9oQdnPgZcCMSnaMIaMzCHKimbStt7.png', '2024-05-06 14:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `phonebook_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `price` varchar(999) DEFAULT NULL,
  `price_crosed` varchar(999) DEFAULT NULL,
  `days` varchar(999) DEFAULT NULL,
  `des` longtext DEFAULT NULL,
  `phonebook_contact_limit` varchar(999) DEFAULT NULL,
  `allow_chat_tags` int(1) DEFAULT 1,
  `allow_chat_note` int(1) DEFAULT 1,
  `chatbot` int(1) DEFAULT 1,
  `api_access` int(1) DEFAULT 1,
  `wa_account` varchar(999) DEFAULT NULL,
  `wa_warmer` int(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `title`, `price`, `price_crosed`, `days`, `des`, `phonebook_contact_limit`, `allow_chat_tags`, `allow_chat_note`, `chatbot`, `api_access`, `wa_account`, `wa_warmer`, `createdAt`) VALUES
(5, 'Everything', '39', '3999', '39', 'this plan has everything', '399', 1, 1, 1, 1, '10', 1, '2024-05-06 09:11:11'),
(6, 'Trial', '0', '0', '10', 'This is a trial plan', '999', 1, 1, 1, 1, '99', 1, '2024-05-07 10:42:02'),
(7, 'Basic', '19', '99', '30', 'this is a basic plan', '99', 1, 1, 1, 1, '1', 1, '2024-05-07 10:42:23');

-- --------------------------------------------------------

--
-- Table structure for table `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `msg_id` varchar(999) DEFAULT NULL,
  `vote_option` longtext DEFAULT NULL,
  `voter` longtext DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `socket_id` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `smtp`
--

CREATE TABLE `smtp` (
  `id` int(11) NOT NULL,
  `email` varchar(999) DEFAULT NULL,
  `host` varchar(999) DEFAULT NULL,
  `port` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp`
--

INSERT INTO `smtp` (`id`, `email`, `host`, `port`, `password`, `createdAt`) VALUES
(1, 'email@gmail.com', 'smtp@gmail.com', '465', 'password', '2024-02-28 16:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `templet`
--

CREATE TABLE `templet` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `type` varchar(999) DEFAULT NULL,
  `title` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `title` varchar(999) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `reviewer_name` varchar(999) DEFAULT NULL,
  `reviewer_position` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `title`, `description`, `reviewer_name`, `reviewer_position`, `createdAt`) VALUES
(3, '\"Cutting-edge and Intuitive Communication Solution\"', '\"At our design studio, effective communication is key to delivering exceptional results for our clients. WhatsCRm has revolutionized our workflow by streamlining communication channels and allowing our team to collaborate seamlessly. With its intuitive interface and customizable features, we can effortlessly manage client inquiries, share project updates, and ensure timely responses. WhatsCRm has become an indispensable tool for enhancing productivity and client satisfaction.\"', 'Sophia Chen', 'Creative Director', '2024-03-01 15:44:21'),
(4, '\"Efficient and Versatile Messaging Platform\"', '\n\"Efficient and Versatile Messaging Platform\"\n\n\"Being in the real estate industry demands constant communication with clients and prospects. WhatsCRm has been a game-changer for our agency, providing us with an efficient and versatile messaging platform. We can easily organize client conversations, schedule property viewings, and follow up on leads all in one place. Its user-friendly interface and robust features have significantly boosted our team\'s productivity and client engagement.\"', 'Jonathan Rodriguez', 'Real Estate Agent', '2024-03-01 15:45:07');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `role` varchar(999) DEFAULT 'user',
  `name` varchar(999) DEFAULT NULL,
  `email` varchar(999) DEFAULT NULL,
  `mobile` varchar(999) DEFAULT NULL,
  `password` varchar(999) DEFAULT NULL,
  `opened_chat_instance` varchar(999) DEFAULT NULL,
  `token` longtext DEFAULT NULL,
  `trial` int(1) DEFAULT 0,
  `plan` longtext DEFAULT NULL,
  `plan_expire` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `uid`, `role`, `name`, `email`, `mobile`, `password`, `opened_chat_instance`, `token`, `trial`, `plan`, `plan_expire`, `createdAt`) VALUES
(2, 'NAxdcIhNb4qYIQBXweRz2t7gwWxveFEi', 'user', 'Paul', 'user@user.com', '91888378782', '$2b$10$OUmfMxfNYQOw4yGtYWzQV./vpMHKYDXzkn6q2FK58hO8uzYuqdFcq', 'eyJ1aWQiOiJOQXhkY0loTmI0cVlJUUJYd2VSejJ0N2d3V3h2ZUZFaSIsImNsaWVudF9pZCI6ImhleSJ9', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiJOQXhkY0loTmI0cVlJUUJYd2VSejJ0N2d3V3h2ZUZFaSIsInJvbGUiOiJ1c2VyIiwiaWF0IjoxNzE0NzExODk5fQ._oQl9pjK5QtiPu9x93rYvVd9wwQJuPy8nFORbTPH4lg', 1, '{\"id\":5,\"title\":\"Everything\",\"price\":\"39\",\"price_crosed\":\"3999\",\"days\":\"39\",\"des\":\"this plan has everything\",\"phonebook_contact_limit\":\"399\",\"allow_chat_tags\":1,\"allow_chat_note\":1,\"chatbot\":1,\"api_access\":1,\"wa_account\":\"10\",\"wa_warmer\":1,\"createdAt\":\"2024-05-06T03:41:11.000Z\"}', '1720175740901', '2024-03-27 06:34:47');

-- --------------------------------------------------------

--
-- Table structure for table `warmers`
--

CREATE TABLE `warmers` (
  `id` int(11) NOT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `instances` longtext DEFAULT NULL,
  `is_active` int(1) DEFAULT 1,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warmer_script`
--

CREATE TABLE `warmer_script` (
  `id` int(11) NOT NULL,
  `message` longtext DEFAULT NULL,
  `uid` varchar(999) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `web_private`
--

CREATE TABLE `web_private` (
  `id` int(11) NOT NULL,
  `pay_offline_id` varchar(999) DEFAULT NULL,
  `pay_offline_key` longtext DEFAULT NULL,
  `offline_active` int(1) DEFAULT 0,
  `pay_stripe_id` varchar(999) DEFAULT NULL,
  `pay_stripe_key` varchar(999) DEFAULT NULL,
  `stripe_active` int(1) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_private`
--

INSERT INTO `web_private` (`id`, `pay_offline_id`, `pay_offline_key`, `offline_active`, `pay_stripe_id`, `pay_stripe_key`, `stripe_active`, `createdAt`) VALUES
(1, 'Pay offline', 'Pay offline on this account number xxxxxxxxx\nand send a screenshot to us on this email xxx@xxx.com', 1, 'pk_test_51NGI3WSJ7RHyuQ0ARpYwHAK6WJYygcXmJTwwcVZsvusgQUSDMybxIpwt86U8uSp5RFBhAn3O9obhyxr1L9unfzST00i3FXbGG6', 'sk_test_51NGI3WSJ7RHyuQ0AG7eC7wD7kJrpTFKCnNaj3IwIIUVbJcPxE33YonYSyjJt9fEqEfEHWtpZ72Hy0TWjbWXVEp2i00SrdDbux1', 1, '2024-02-26 17:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `web_public`
--

CREATE TABLE `web_public` (
  `id` int(11) NOT NULL,
  `currency_code` varchar(999) DEFAULT NULL,
  `logo` varchar(999) DEFAULT NULL,
  `app_name` varchar(999) DEFAULT NULL,
  `custom_home` varchar(999) DEFAULT NULL,
  `is_custom_home` int(1) DEFAULT 0,
  `meta_description` longtext DEFAULT NULL,
  `currency_symbol` varchar(999) DEFAULT NULL,
  `chatbot_screen_tutorial` varchar(999) DEFAULT NULL,
  `broadcast_screen_tutorial` varchar(999) DEFAULT NULL,
  `home_page_tutorial` varchar(999) DEFAULT NULL,
  `login_header_footer` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_public`
--

INSERT INTO `web_public` (`id`, `currency_code`, `logo`, `app_name`, `custom_home`, `is_custom_home`, `meta_description`, `currency_symbol`, `chatbot_screen_tutorial`, `broadcast_screen_tutorial`, `home_page_tutorial`, `login_header_footer`) VALUES
(1, 'USD', '5jMsO01k9ry9ntLL4rCkxl14xnAoWW6y.png', 'whatsCRM', 'https://google.com', 0, 'des updated', '$', 'https://youtu.be/Wg_23HLxdHc?si=yv5aIMY1OsnwUrNy', 'https://youtu.be/Wg_23HLxdHc?si=yv5aIMY1OsnwUrNy', 'https://youtu.be/Wg_23HLxdHc?si=yv5aIMY1OsnwUrNy', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broadcast`
--
ALTER TABLE `broadcast`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broadcast_log`
--
ALTER TABLE `broadcast_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flow`
--
ALTER TABLE `flow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instance`
--
ALTER TABLE `instance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smtp`
--
ALTER TABLE `smtp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templet`
--
ALTER TABLE `templet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warmers`
--
ALTER TABLE `warmers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warmer_script`
--
ALTER TABLE `warmer_script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_private`
--
ALTER TABLE `web_private`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `web_public`
--
ALTER TABLE `web_public`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `broadcast`
--
ALTER TABLE `broadcast`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `broadcast_log`
--
ALTER TABLE `broadcast_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flow`
--
ALTER TABLE `flow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `instance`
--
ALTER TABLE `instance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT for table `smtp`
--
ALTER TABLE `smtp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `templet`
--
ALTER TABLE `templet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `warmers`
--
ALTER TABLE `warmers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `warmer_script`
--
ALTER TABLE `warmer_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `web_private`
--
ALTER TABLE `web_private`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `web_public`
--
ALTER TABLE `web_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
