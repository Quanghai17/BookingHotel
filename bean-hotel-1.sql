-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 03:50 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bean-hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `index` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `type`, `link`, `index`) VALUES
(10, 'Home banner 1', 'Chào mừng bạn đến với The King hotel', 'banners\\August2023\\4wURkbIgbsZ33EhMszrV.jpg', '2023-08-04 18:27:00', '2023-08-07 23:58:07', 'home_banner', NULL, 1),
(11, 'Home banner 2', 'Nền tảng hoàn hảo cho bạn', 'banners\\August2023\\mlJdknMZksHx79LE2Ef5.jpg', '2023-08-04 18:28:00', '2023-08-07 23:59:05', 'home_banner', NULL, 2),
(12, 'Home banner', 'Tận hưởng những khoảnh khắc đẹp nhất của cuộc sống', 'banners\\August2023\\trcSvmdyNHkozIGEIbZM.jpg', '2023-08-04 18:28:00', '2023-08-07 23:58:31', 'home_banner', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `fromDate` varchar(255) DEFAULT NULL,
  `toDate` varchar(255) DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `phone`, `fromDate`, `toDate`, `adult`, `children`, `status`, `email`, `created_at`, `updated_at`, `room`, `content`) VALUES
(27, 'Nguyen Quang Hai', 359808267, '2023-08-14 00:00:00', '2023-08-21 00:00:00', 2, 1, 'dat-phong', 'admin@admin.com', '2023-07-08 02:04:00', '2023-08-11 20:24:59', 'PHÒNG PREMIUM', 'a'),
(28, 'Nguyễn Thị Thúy', 98627842, '08/13/2023', '08/14/2023', 2, 1, 'dat-phong', 'content@gmail.com', '2023-08-11 20:23:11', '2023-08-11 20:23:11', 'PHÒNG PREMIUM', NULL),
(29, 'Nguyễn Văn Nam', 97347735, '08/25/2023', '08/28/2023', 3, 3, 'dat-phong', 'ponno1@admin.com', '2023-08-11 20:28:47', '2023-08-11 20:28:47', 'PHÒNG LUXURY', 'a'),
(30, 'Nguyen Thi Hoa', 359808356, '2023-08-16 00:00:00', '2023-08-18 00:00:00', 2, 2, 'dat-phong', 'HoaIT@gmail.com', '2023-06-13 17:54:00', '2023-08-13 18:41:12', 'PHÒNG PRESTIGE SUITE', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Hội nghị - Cưới hỏi', 'hoi-nghi', '2023-02-20 09:15:44', '2023-05-31 18:32:59'),
(2, NULL, 1, 'Sức khỏe - Làm đẹp', 'suc-khoe', '2023-02-20 09:15:44', '2023-05-31 18:33:25'),
(3, NULL, 1, 'Tin Tức', 'tin-tuc', '2023-05-31 18:42:10', '2023-05-31 18:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

CREATE TABLE `collections` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collections`
--

INSERT INTO `collections` (`id`, `title`, `slug`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Phòng đơn', 'phong-don', NULL, NULL, '2023-05-20 01:41:28', '2023-05-20 01:41:28'),
(3, 'Phòng đôi', 'phong-doi', NULL, NULL, '2023-05-20 01:41:40', '2023-05-20 01:41:40'),
(4, 'Phòng vip', 'phong-vip', NULL, NULL, '2023-05-20 01:41:58', '2023-05-20 01:41:58');

-- --------------------------------------------------------

--
-- Table structure for table `collection_product`
--

CREATE TABLE `collection_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `collection_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collection_product`
--

INSERT INTO `collection_product` (`id`, `collection_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 10),
(7, 2, 11),
(8, 2, 12),
(9, 2, 13),
(10, 3, 14),
(11, 3, 15),
(12, 3, 16),
(13, 3, 17),
(14, 4, 18),
(15, 4, 19),
(16, 4, 20),
(17, 4, 21),
(18, 4, 22),
(19, 4, 24),
(20, 2, 25),
(21, 2, 26),
(22, 2, 27),
(23, 2, 28),
(24, 2, 29),
(25, 2, 30);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Quang Hai', 'admin@admin.com', '0359808267', 'a', 'a', '2023-08-07 18:26:32', '2023-08-07 18:26:32'),
(2, 'Nguyen Quang Hai', 'admin@admin.com', '0359808267', 'a', NULL, '2023-08-07 18:35:28', '2023-08-07 18:35:28');

-- --------------------------------------------------------

--
-- Table structure for table `cuisines`
--

CREATE TABLE `cuisines` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cuisines`
--

INSERT INTO `cuisines` (`id`, `title`, `desc`, `price`, `content`, `image`, `status`, `category_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Mì Xào Bò', 'Đĩa mì xào thơm ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 80000, '<p>M&igrave; x&agrave;o b&ograve;&nbsp;l&agrave; m&oacute;n ăn được chế biến kết hợp từ nhiều loại thực phẩm kh&aacute;c nhau. Đ&oacute; l&agrave; trứng, thịt, rau v&agrave; gia vị. V&igrave; kết hợp nhiều nguy&ecirc;n liệu n&ecirc;n m&oacute;n ăn n&agrave;y c&oacute; hương vị thơm ngon, hấp dẫn. V&agrave; chế biến nhanh, đơn giản n&ecirc;n được nhiều gia đ&igrave;nh lựa chọn cho bữa s&aacute;ng.</p>\n<p>Nhiều người kh&aacute; lăn tăn về h&agrave;m lượng calo trong một đĩa m&igrave; x&agrave;o . Bởi m&oacute;n ăn l&agrave; sự kết hợp của nhiều gia vị, nguy&ecirc;n liệu. Do đ&oacute; để ch&iacute;nh x&aacute;c một đĩa m&igrave; n&agrave;y chứa bao nhi&ecirc;u calo l&agrave; rất kh&oacute;. Nhưng theo bảng t&iacute;nh gi&aacute; trị calo của thực phẩm n&oacute;i chung th&igrave;&nbsp;một đĩa m&igrave; x&agrave;o b&ograve; c&oacute; khoảng 638 calo.</p>\n<p>H&agrave;m lượng calo trong&nbsp;m&igrave; t&ocirc;m x&agrave;o b&ograve;&nbsp;l&agrave; kh&aacute; cao. Nếu như bạn đang giảm c&acirc;n hoặc thể trạng b&eacute;o, h&atilde;y hạn chế ăn m&oacute;n n&agrave;y nh&eacute;. Ngo&agrave;i ra, ăn nhiều m&oacute;n ăn n&agrave;y cũng dẫn đến g&acirc;y n&oacute;ng, nổi mụn, sỏi thận, dễ bị lo&atilde;ng xương, răng yếu,&hellip; D&ugrave;&nbsp;m&oacute;n m&igrave; x&agrave;o b&ograve;&nbsp;thơm ngon, dễ ăn, chế biến kh&ocirc;ng cầu kỳ nhưng bạn cũng kh&ocirc;ng n&ecirc;n ăn qu&aacute; nhiều. V&igrave; bổ sung nhiều năng lượng n&ecirc;n m&oacute;n&nbsp;m&igrave; x&agrave;o b&ograve;&nbsp;bạn c&oacute; thể chế biến v&agrave;o bữa s&aacute;ng để cả ng&agrave;y tr&agrave;n đầy năng lượng l&agrave;m việc.</p>\n<p>M&igrave; g&oacute;i x&agrave;o b&ograve;&nbsp;l&agrave; m&oacute;n ăn nhanh gọn, nhưng chế biến thế n&agrave;o để vừa thơm ngon m&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian. C&ugrave;ng tham khảo ngay c&aacute;ch chế biến m&igrave; x&agrave;o b&ograve; dưới đ&acirc;y.</p>', 'cuisines\\May2023\\U5o1awxw6zHPQoedkmim.png', 'ACTIVE', 'Food', '2023-05-21 19:16:00', '2023-08-08 00:55:50', 'stir-fried-noodles-with-beef'),
(2, 'Bún Xào Thịt Heo', 'Tô bún xào thịt heo ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 75000, '<p>B&uacute;n l&agrave; một m&oacute;n ăn v&ocirc; c&ugrave;ng th&acirc;n quen với người Việt. Dạo v&ograve;ng quanh c&aacute;c con đường, bạn sẽ bắt gặp v&ocirc; số hương vị kh&aacute;c nhau mặc d&ugrave; chỉ l&agrave; m&oacute;n b&uacute;n, c&oacute; thể kể đến như: B&uacute;n b&ograve; Huế, b&uacute;n c&aacute; l&oacute;c, b&uacute;n ri&ecirc;u, b&uacute;n cua, b&uacute;n chả&hellip; Trong đ&oacute;, b&uacute;n x&agrave;o thịt heo l&agrave; một m&oacute;n ăn cũng rất được ưa chuộng cho bữa s&aacute;ng</p>\n<div><strong>Nguy&ecirc;n liệu l&agrave;m b&uacute;n x&agrave;o thịt heo</strong></div>\n<p>- 300g thịt heo</p>\n<p>- 200g b&uacute;n</p>\n<p>- H&agrave;nh t&acirc;y</p>\n<p>- H&agrave;nh l&aacute;, ớt</p>\n<p>- Tỏi, h&agrave;nh t&iacute;m</p>\n<p>- Rau gi&aacute;, rau thơm, dưa chuột</p>\n<p>- Hạt n&ecirc;m, mắm, muối, đường</p>\n<p><img title=\"bun-thit-xao bun-thit-xao\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; bun thit xao\"></p>\n<div><strong>C&aacute;ch chế biến b&uacute;n x&agrave;o thịt heo</strong></div>\n<h4>Bước 1: Sơ chế&nbsp;c&aacute;c nguy&ecirc;n liệu</h4>\n<p>- Thịt heo sau khi mua về bạn cạo sạch l&ocirc;ng, rửa qua nước sạch rồi cắt thịt th&agrave;nh c&aacute;c miếng mỏng vừa ăn.</p>\n<p>- H&agrave;nh t&acirc;y b&oacute;c sạch vỏ rồi th&aacute;i m&uacute;i cau.</p>\n<p>- H&agrave;nh l&aacute; nhặt sạch rễ rồi rửa sạch, băm nhuyễn.</p>\n<p>- Tỏi v&agrave; h&agrave;nh t&iacute;m b&oacute;c vỏ, rồi băm nhuyễn.</p>\n<p>- Ớt rửa sạch, th&aacute;i nhỏ.</p>\n<p>- Rau gi&aacute; v&agrave; rau thơm rửa sạch với nước rồi ng&acirc;m v&agrave;o nước muối, rửa sạch lại rồi để r&aacute;o nước.</p>\n<h4>Bước 2: Ướp thịt</h4>\n<p>- Bạn cho phần thịt heo v&agrave;o t&ocirc; rồi ướp thịt với 1 muỗng đường, 1 muỗng hạt n&ecirc;m, 1 ch&uacute;t nước mắm, 1 muỗng bột ngột, &iacute;t tỏi v&agrave; h&agrave;nh l&aacute; băm c&ugrave;ng hạt ti&ecirc;u xay. Sau đ&oacute;, trộn đều v&agrave; ướp khoảng 30 ph&uacute;t để thịt ngấm đều gia vị.</p>\n<p><img title=\"cach-lam-bun-xao-thit-heo2-e1570606838191 cach-lam-bun-xao-thit-heo2-e1570606838191\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191.jpg\" sizes=\"(max-width: 654px) 100vw, 654px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191.jpg 543w, https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191-300x193.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; cach lam bun xao thit heo2 e1570606838191\"></p>\n<h4>Bước 3: Chần b&uacute;n</h4>\n<p>- Bạn cho nước v&agrave;o nồi rồi mở lửa lớn, khi nước s&ocirc;i, bạn cho b&uacute;n v&agrave;o chần sơ để b&uacute;n tơi ra. Lưu &yacute;, chần thật nhanh rồi vớt b&uacute;n ra rổ để b&uacute;n kh&ocirc;ng bị n&aacute;t nhừ.</p>\n<h4>Bước 4: X&agrave;o thịt với b&uacute;n</h4>\n<p>- Bạn cho một &iacute;t dầu ăn v&agrave;o chảo, rồi cho tỏi v&agrave; h&agrave;nh t&iacute;m băm v&agrave;o phi thơm. Tiếp đến, cho thịt heo v&agrave;o đảo đều, đến khi thịt ch&iacute;n bạn cho thịt ra đĩa ri&ecirc;ng. Tiếp theo, bạn tiếp tục cho dầu tỏi v&agrave;o chảo phi thơm, rồi cho gi&aacute; đỗ, h&agrave;nh t&acirc;y v&atilde;o &ograve;a sơ, n&ecirc;n nếm với hạt n&ecirc;m, bột ngọt, đường cho vừa ăn. X&agrave;o đến khi nguy&ecirc;n liệu ch&iacute;n th&igrave; bạn cho đĩa thịt x&agrave;o v&agrave;o đảo đều tay th&igrave; tắt bếp.</p>\n<p><img title=\"cach-lam-bun-xao-thit-heo104-e1570606886986 cach-lam-bun-xao-thit-heo104-e1570606886986\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986.jpg\" sizes=\"(max-width: 621px) 100vw, 621px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986.jpg 497w, https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986-300x201.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; cach lam bun xao thit heo104 e1570606886986\"></p>\n<h4>Bước 5: Ho&agrave;n th&agrave;nh</h4>\n<p>- Bạn cho b&uacute;n v&agrave;o t&ocirc;, rồi cho phần thịt heo, h&agrave;nh t&acirc;y, gi&aacute; đỗ v&agrave;o, trộn đều l&ecirc;n v&agrave; chan nước tương v&agrave;o l&agrave; thưởng thức được rồi đấy. Để m&oacute;n b&uacute;n ngon hơn nữa, th&igrave; c&aacute;ch l&agrave;m nước tương ăn b&uacute;n cũng rất quan trọng. Do đ&oacute;, tham khảo c&aacute;ch l&agrave;m nước tương ăn b&uacute;n sau đ&acirc;y để c&oacute; được m&oacute;n b&uacute;n x&agrave;o thịt heo trọn vị.</p>\n<p>Lưu &yacute;: Với m&oacute;n ăn n&agrave;y, bạn c&oacute; thể d&ugrave;ng thịt băm thay thế cho thịt miếng. Đối với thịt băm, bạn ướp thịt băm với hạt n&ecirc;m, tỏi, h&agrave;nh l&aacute;, bột ngọt, đường v&agrave; cũng thực hiện như c&aacute;c bước l&agrave;m b&uacute;n x&agrave;o thịt heo như tr&ecirc;n l&agrave; được.</p>\n<p><img title=\"AGF-1644-bun-thit-xao-sa-ot1 AGF-1644-bun-thit-xao-sa-ot1\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1.png\" sizes=\"(max-width: 627px) 100vw, 627px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1.png 540w, https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1-300x200.png 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; AGF 1644 bun thit xao sa ot1\"></p>\n<div>C&aacute;ch pha nước tương ăn b&uacute;n ngon</div>\n<h3>Nguy&ecirc;n liệu cần chuẩn bị&nbsp;pha nước tương</h3>\n<p>- 1/2 tr&aacute;i thơm</p>\n<p>- Nước tương đậm</p>\n<p>- Nước dừa tươi</p>\n<p>- 3 muỗng đường</p>\n<p>- 1 muỗng muối</p>\n<p>- Ớt bằm</p>\n<p><img title=\"nuoc-tuong-an-bun nuoc-tuong-an-bun\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; nuoc tuong an bun\"></p>\n<div><strong>C&aacute;ch l&agrave;m nước tương ăn b&uacute;n</strong></div>\n<p>-&nbsp;Bước 1:&nbsp;Thơm gọt sạch vỏ, cắt bỏ mắt rồi băm nhuyễn hoặc cho v&agrave;o cối sinh tố xay nhuyễn. Sau đ&oacute;, bạn vắt lấy nước.</p>\n<p>-&nbsp;Bước 2:&nbsp;Bạn cho nước dừa tươi, đường v&agrave; muối v&agrave;o t&ocirc;, rồi d&ugrave;ng muỗng khuấy đến khi nguy&ecirc;n liệu h&ograve;a tan.</p>\n<p>-&nbsp;Bước 3:&nbsp;Bạn cho nước thơm v&agrave;o chảo rồi cho tiếp nước dừa v&agrave;o nấu s&ocirc;i. Sau đ&oacute;, bạn cho tiếp nước tương v&agrave;o, n&ecirc;m nếm cho vừa ăn rồi tắt bếp.</p>\n<p>-&nbsp;Bước 4:&nbsp;Khi nước tương nguội hẳn, bạn băm nhuyễn tỏi, ớt rồi cho v&agrave;o nước tương để tạo vị cay cay ngon miệng.</p>\n<p><img title=\"bun-gao-xao-thit-heo-1 bun-gao-xao-thit-heo-1\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; bun gao xao thit heo 1\"></p>\n<p>Ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng sẽ c&oacute; 1 bữa ăn thật ngon miệng nh&eacute;!.</p>', 'cuisines\\May2023\\1YvojuC9jNiXU36qKZ0M.png', 'ACTIVE', 'Food', '2023-05-21 19:30:00', '2023-08-08 00:55:25', 'stir-fried-noodle'),
(4, 'Mì Xào Thịt Heo', 'Đĩa Mì xào thịt heo ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 85000, '<p>Chỉ nh&igrave;n th&ocirc;i cũng đ&atilde; thấy th&egrave;m đĩa m&igrave; x&agrave;o thịt heo n&oacute;ng hổi kia rồi. Từng sợi m&igrave; dai ngon kết hợp với thịt heo chi&ecirc;n gi&ograve;n, b&eacute;o ngậy quyện trong nước d&ugrave;ng g&agrave;, hương vị đậm đ&agrave; l&agrave;m cho m&oacute;n m&igrave; x&agrave;o thịt heo th&ecirc;m ngon miệng v&agrave; hấp dẫn hơn bao giờ hết.</p>\n<p>Mỗi ng&agrave;y cơ thể cần nhiều loại chất dinh dưỡng thiết yếu kh&aacute;c nhau như: chất đạm, chất b&eacute;o, chất bột đường v&agrave; c&aacute;c vitamin, kho&aacute;ng chất v&agrave; nước. Ngo&agrave;i ra, b&igrave;nh qu&acirc;n nhu cầu năng lượng hằng ng&agrave;y của một người trưởng th&agrave;nh l&agrave; 2,300 &ndash; 2,700 Kcal (nam) v&agrave; 2,200 &ndash; 2,300 Kcal (nữ).<br>Do đ&oacute;, tuỳ thuộc v&agrave;o tuổi, giới t&iacute;nh v&agrave; t&iacute;nh chất lao động m&agrave; cơ thể cần bổ sung nhiều loại thực phẩm kh&aacute;c nhau để đảm bảo đầy đủ dinh dưỡng v&agrave; cung cấp đủ năng lượng cho cơ thể hoạt động mỗi ng&agrave;y.</p>\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', 'cuisines\\May2023\\t25iAvjX1yibo6CeNivK.png', 'ACTIVE', 'Food', '2023-05-21 19:34:00', '2023-08-08 00:53:48', 'stir-fried-noodles'),
(6, 'Bánh Mì Bò Kho', 'Tô bánh mì bò kho ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 70000, '<p>1 t&ocirc;&nbsp;b&aacute;nh m&igrave; b&ograve; kho nhiều chứa rất nhiều th&agrave;nh phần dinh dưỡng, c&oacute; khoảng tr&ecirc;n 385,1 calo trong 1 ổ b&aacute;nh m&igrave; trứng kh&ocirc;ng, nếu c&oacute; th&ecirc;m pate th&igrave; c&oacute; khoảng 704,2 calo chưa kể c&aacute;c th&agrave;nh phần rau hay gia vị. V&igrave; thế b&aacute;nh m&igrave; ốp la kh&ocirc;ng chỉ l&agrave; một m&oacute;n ăn ngon thu h&uacute;t thực kh&aacute;ch m&agrave; đ&acirc;y c&ograve;n l&agrave; m&oacute;n ăn gi&agrave;u dinh dưỡng.</p>\n<div id=\"Ăn_b&aacute;nh_m&igrave;_trứng_c&oacute;_tăng_c&acirc;n_kh&ocirc;ng\" title=\"Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?\"><strong>Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?</strong></div>\n<p>Ngo&agrave;i vấn đề&nbsp;<strong>1 ổ b&aacute;nh m&igrave; trứng bao nhi&ecirc;u calo</strong>&nbsp;th&igrave; c&acirc;u hỏi ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng cũng được rất nhiều người quan t&acirc;m. Nh&igrave;n lại th&agrave;nh phần dinh dưỡng c&oacute; trong 1 ổ b&aacute;nh m&igrave; trứng ch&uacute;ng ta thấy, con số calo m&agrave; một b&aacute;nh m&igrave; trứng mang lại l&agrave; tương đối cao. Nếu chỉ ăn 1 ổ b&aacute;nh m&igrave; trứng, bạn đ&atilde; nạp v&agrave;o cơ thể khoảng 385,1 calo, nếu ăn k&egrave;m th&ecirc;m một số gia vị hay một v&agrave;i th&agrave;nh phần kh&aacute;c th&igrave; 1 ổ b&aacute;nh m&igrave; trứng c&oacute; thể khiến bạn tăng c&acirc;n.</p>\n<p>Ngo&agrave;i ra ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n hay kh&ocirc;ng c&ograve;n phụ thuộc v&agrave;o c&aacute;ch bạn ăn, số lượng v&agrave; thời điểm bạn ăn.</p>\n<p>Nếu bạn ăn b&aacute;nh m&igrave; trứng v&agrave;o buổi s&aacute;ng, cơ thể sẽ được cung cấp một nguồn năng lượng cần thiết sau 1 đ&ecirc;m d&agrave;i. C&ocirc;ng th&ecirc;m việc bạn phải hoạt động kh&ocirc;ng ngừng trong một ng&agrave;y th&igrave; b&aacute;nh m&igrave; trứng sẽ kh&ocirc;ng thể khiến bạn tăng c&acirc;n.</p>\n<p>Nhưng ngược lại nếu bạn ăn v&agrave;o buổi tối m&agrave; nhất l&agrave; ăn trước khi đi ngủ, cơ thể kh&ocirc;ng kịp chuyển h&oacute;a năng lượng v&agrave; sẽ bị t&iacute;ch tụ lại tạo n&ecirc;n mỡ thừa. Đấy l&agrave; l&iacute; do tại sao bạn n&ecirc;n ăn b&aacute;nh m&igrave; đ&uacute;ng thời điểm.</p>\n<p>Hơn thế nữa, nếu chỉ ăn một ổ b&aacute;nh m&igrave; trứng mỗi ng&agrave;y th&igrave; chẳng thể l&agrave;m bạn tăng c&acirc;n được, nhưng ăn từ 2-3 ổ trở l&ecirc;n th&igrave; lại l&agrave; một trường hợp kh&aacute;c. N&ecirc;n kết hợp ăn b&aacute;nh m&igrave; trứng với c&aacute;c thực phẩm &iacute;t năng lượng như rau xanh, nộm đu đủ sẽ khiến b&aacute;nh m&igrave; vừa ngon lại gi&uacute;p duy tr&igrave; c&acirc;n nặng.</p>\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', 'cuisines\\May2023\\XVR9tXIf2CqmR4zr8vZD.png', 'ACTIVE', 'Food', '2023-05-21 19:37:00', '2023-08-08 00:52:40', 'beef-soup-break'),
(7, 'Bún Bò - Heo', 'Bún bò - heo ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 80000, '<p>B&uacute;n b&ograve; - heo l&agrave; một m&oacute;n ăn được rất nhiều người ưa chuộng thậm ch&iacute; c&ograve;n ghiền nặng bởi hương vị m&agrave; n&oacute; mang lại. Thưởng thức một b&aacute;t B&uacute;n b&ograve; - heo v&agrave;o một s&aacute;ng thảnh thơi sau đ&oacute; nh&acirc;m nhi ch&uacute;t tr&agrave; đ&aacute; th&igrave; chẳng c&ograve;n g&igrave; tuyệt vời hơn cho một ng&agrave;y cuối tuần.</p>\n<div><strong>B&uacute;n b&ograve; - heo ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</strong></div>\n<p>Với những &ldquo;t&iacute;n đồ&rdquo; của B&uacute;n b&ograve; - heo, những ai đ&atilde; v&agrave; đang ghiền m&oacute;n ăn n&agrave;y m&agrave; lại l&agrave; đối tượng đang c&oacute; &yacute; định giảm c&acirc;n, x&acirc;y dựng chế độ dinh dưỡng hợp l&yacute; sẽ c&oacute; c&ugrave;ng thắc mắc rằng, ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</p>\n<p>Theo c&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra rằng, trung b&igrave;nh một người phụ nữ sẽ cần khoảng 1300 calo v&agrave; nam giới sẽ cần tới 1650 calo mỗi ng&agrave;y để duy tr&igrave; sự sống cho n&ecirc;n, nếu như lượng calo ti&ecirc;u thụ trong 1 ng&agrave;y vượt ngưỡng tr&ecirc;n th&igrave; cơ thể sẽ b&eacute;o l&ecirc;n đặc biệt l&agrave; đối với những c&aacute; nh&acirc;n c&oacute; cơ địa hấp thụ tốt.</p>\n<p>Việc bạn ti&ecirc;u thụ 534 calo cho một bữa nhưng lại biết tiết chế lượng thức ăn ở những bữa kh&aacute;c trong ng&agrave;y sẽ l&agrave;m giảm nguy cơ tăng c&acirc;n. Ngược lại, nếu như bạn ăn qu&aacute; nhiều B&uacute;n b&ograve; - heo trong ng&agrave;y v&agrave; trong tuần sẽ c&oacute; thể ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n dẫn tới t&igrave;nh trạng thừa c&acirc;n bởi lẽ, hầu hết tất cả những g&igrave; &ldquo;qu&aacute;&rdquo; đều kh&ocirc;ng tốt cho cơ thể.</p>\n<p>Từ đ&acirc;y c&oacute; thể đưa ra c&acirc;u trả lời cho thắc mắc &ldquo;Ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?&rdquo; rằng, nếu như bạn biết tiết chế lượng thức ăn mỗi ng&agrave;y, ăn vừa phải, c&oacute; thể 1 tuần chỉ n&ecirc;n thưởng thức 1 &ndash; 2 b&aacute;t b&uacute;n th&igrave; khả năng tăng c&acirc;n l&agrave; kh&oacute; c&oacute; thể xảy ra.</p>\n<p>Ngược lại, nếu như ng&agrave;y n&agrave;o bạn cũng ti&ecirc;u thụ hết 534 calo của 1 b&aacute;t B&uacute;n b&ograve; - heo c&ugrave;ng với v&ocirc; v&agrave;n lượng thức ăn gi&agrave;u calo kh&aacute;c trong ng&agrave;y v&agrave; lười vận động th&igrave; chắc chắn sẽ b&eacute;o. T&oacute;m lại, ăn qu&aacute; nhiều B&uacute;n b&ograve; - heo c&ugrave;ng với những thực phẩm nhiều calo kh&aacute;c trong ng&agrave;y k&egrave;m theo lười vận động sẽ tăng khả năng tăng c&acirc;n v&agrave; đ&acirc;y l&agrave; điều bạn n&ecirc;n lưu &yacute;.</p>\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', 'cuisines\\May2023\\ezQpdFdjbDFdfeS0I2T5.png', 'ACTIVE', 'Food', '2023-05-21 19:38:00', '2023-08-08 00:51:37', 'beef-noodles-pork');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Nguyễn Quang Hải', 'admin@admin.com', NULL, NULL, '$2y$10$ewDZDIc7yuh.6.kDG3hYv.mdeCdJseljza3LxJeGf2BSOPhCtNota', NULL, NULL, '2023-05-31 19:59:33', '2023-08-11 17:58:17'),
(8, NULL, 'Nguyễn Thị Thúy', 'content@gmail.com', NULL, NULL, '$2y$10$oRyZ1YUJgeKiEofzCbsfXewIPablj4uxvHJ0PbAw.wBoq6yJBovSa', NULL, NULL, '2023-08-11 18:38:34', '2023-08-11 18:38:34'),
(9, NULL, 'Trương van hải', 'ponno@admin.com', NULL, NULL, '$2y$10$L/96LrGHfEWwsQK96m/TieC91EyHJ1/5L.3ESxyKq5ANR.GP57Ss2', NULL, NULL, '2023-08-11 19:03:04', '2023-08-11 19:03:04'),
(10, NULL, 'Nguyễn Văn Nam', 'ponno1@admin.com', NULL, NULL, '$2y$10$RM0XgxUmkQUVR/8Zy.//ueBmP8PPhUaK6/fQQc8ZbuvPNLqKe20J2', NULL, NULL, '2023-08-11 20:28:08', '2023-08-11 20:28:08'),
(11, NULL, 'Nguyen Thi Hoa', 'HoaIT@gmail.com', NULL, NULL, '$2y$10$LBMN6VM51xsM6lzxloIN8ueEL1kka2dS6FfKI//sgaCkXOMBmLmBO', NULL, NULL, '2023-08-13 17:52:05', '2023-08-13 17:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(31, 5, 'category_id', 'text', 'Category', 1, 0, 1, 1, 1, 0, NULL, 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, NULL, 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(45, 6, 'author_id', 'text', 'Tác giả', 1, 0, 0, 0, 0, 0, '{}', 2),
(46, 6, 'title', 'text', 'Tiêu đề', 1, 1, 1, 1, 1, 1, '{}', 3),
(47, 6, 'excerpt', 'text_area', 'Giới thiệu', 0, 0, 1, 1, 1, 1, '{}', 4),
(48, 6, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 8),
(52, 6, 'status', 'select_dropdown', 'Trạng thái', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(55, 6, 'image', 'image', 'Hình ảnh ', 0, 1, 1, 1, 1, 1, '{}', 12),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'role_id', 'text', 'Role Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(58, 7, 'name', 'text', 'Tên', 1, 1, 1, 0, 1, 1, '{}', 3),
(59, 7, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'password', 'password', 'Mật khẩu', 1, 0, 0, 1, 1, 0, '{}', 7),
(63, 7, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 7, 'settings', 'text', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 9),
(65, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 10),
(66, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 11),
(67, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(68, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 3),
(70, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(73, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 9, 'title', 'text', 'Loại phòng', 1, 1, 1, 1, 1, 1, '{}', 2),
(75, 9, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(76, 9, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(77, 9, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(78, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(79, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(80, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(81, 10, 'title', 'text', 'Tên phòng', 1, 1, 1, 1, 1, 1, '{}', 2),
(82, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}', 3),
(83, 10, 'description', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(84, 10, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(85, 10, 'image', 'image', 'Hình ảnh', 1, 1, 1, 1, 1, 1, '{}', 7),
(86, 10, 'images', 'multiple_images', 'Thêm hình ảnh', 0, 0, 1, 1, 1, 1, '{}', 8),
(87, 10, 'price', 'number', 'Giá phòng', 1, 1, 1, 1, 1, 1, '{}', 10),
(88, 10, 'promotion', 'number', 'Số lượng người lớn', 0, 0, 1, 1, 1, 1, '{}', 11),
(89, 10, 'sold', 'number', 'Số lượng trẻ em', 0, 0, 1, 1, 1, 1, '{}', 12),
(90, 10, 'stock', 'number', 'Stock', 0, 0, 1, 1, 1, 1, '{}', 13),
(91, 10, 'status', 'checkbox', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"on\":\"Ph\\u00f2ng tr\\u1ed1ng\",\"off\":\"C\\u00f3 kh\\u00e1ch \\u0111\\u1eb7t\",\"checked\":true}', 14),
(92, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 15),
(93, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 16),
(94, 10, 'product_belongstomany_collection_relationship', 'relationship', 'Loại phòng', 0, 0, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Collection\",\"table\":\"collections\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"collection_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 17),
(95, 8, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 8),
(96, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(97, 8, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 9),
(98, 9, 'collection_belongstomany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"collection_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 8),
(99, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 12, 'title', 'text', 'Tên đồ dùng', 0, 1, 1, 1, 1, 1, '{}', 2),
(101, 12, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(102, 12, 'price', 'text', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 5),
(103, 12, 'content', 'rich_text_box', 'Mô tả sản phẩm', 0, 0, 1, 1, 1, 1, '{}', 6),
(105, 12, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 8),
(106, 12, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(107, 12, 'category_id', 'select_dropdown', 'Danh mục', 0, 1, 1, 1, 1, 1, '{\"default\":\"Food\",\"options\":{\"Food\":\"\\u0110\\u1ed3 \\u0103n\",\"drink\":\"\\u0110\\u1ed3 u\\u1ed1ng\",\"cake\":\"B\\u00e1nh ng\\u1ecdt\"}}', 10),
(108, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 11),
(109, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 12),
(111, 12, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:cuisines,slug\"}}', 3),
(112, 6, 'type', 'text', 'Type', 0, 0, 1, 1, 1, 1, '{}', 14),
(113, 6, 'image_2', 'image', 'Hình ảnh thêm', 0, 0, 1, 1, 1, 1, '{}', 13),
(114, 6, 'icon', 'image', 'Icon', 0, 0, 1, 1, 1, 1, '{}', 15),
(116, 10, 'category_id', 'text', 'Category Id', 0, 1, 1, 1, 1, 1, '{}', 18),
(117, 10, 'product_belongsto_collection_relationship', 'relationship', 'Loại phòng', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Collection\",\"table\":\"collections\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(120, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 14, 'title', 'text', 'Tên dịch vụ', 0, 1, 1, 1, 1, 1, '{}', 2),
(122, 14, 'image', 'image', 'Hình ảnh', 0, 0, 1, 1, 1, 1, '{}', 4),
(123, 14, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 5),
(124, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(125, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(126, 10, 'product_belongstomany_service_relationship', 'relationship', 'Dịch vụ đi kèm', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Service\",\"table\":\"services\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"service_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 20),
(127, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(128, 15, 'name', 'text', 'Họ Tên', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 2),
(129, 15, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 3),
(130, 15, 'fromDate', 'timestamp', 'Ngày đến', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 5),
(131, 15, 'toDate', 'timestamp', 'Ngày đi', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 6),
(133, 15, 'adult', 'text', 'Người lớn', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 8),
(134, 15, 'children', 'text', 'Trẻ em', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\"}}', 9),
(136, 15, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"dat-phong\",\"options\":{\"dat-phong\":\"\\u0110\\u1eb7t ph\\u00f2ng\",\"dang-thue\":\"\\u0110ang thu\\u00ea\",\"da-tra-phong\":\"\\u0110\\u00e3 tr\\u1ea3 ph\\u00f2ng\",\"huy-phong\":\"H\\u1ee7y ph\\u00f2ng\"},\"display\":{\"width\":\"6\"}}', 11),
(138, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{\"display\":{\"width\":\"6\"}}', 13),
(139, 15, 'updated_at', 'timestamp', 'Ngày đặt', 0, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"6\"}}', 14),
(142, 15, 'room', 'text', 'Tên phòng', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\"}}', 4),
(143, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(144, 16, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(145, 16, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 3),
(146, 16, 'desc', 'text_area', 'Mô tả', 0, 1, 1, 1, 1, 1, '{}', 4),
(147, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(148, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(149, 8, 'index', 'text', 'Index', 0, 1, 1, 1, 1, 1, '{}', 2),
(150, 14, 'icon', 'text', 'Icon', 0, 1, 1, 1, 1, 1, '{}', 3),
(151, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(152, 17, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(153, 17, 'slug', 'text', 'Slug', 0, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:utilities,slug\"}}', 3),
(154, 17, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(155, 17, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 5),
(156, 17, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 6),
(157, 17, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 7),
(158, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 8),
(159, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(160, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(161, 18, 'title', 'text', 'Tiêu đề', 0, 1, 1, 1, 1, 1, '{}', 2),
(162, 18, 'slug', 'text', 'Slug', 0, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:offers,slug\"}}', 3),
(163, 18, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(164, 18, 'image', 'image', 'Hình ảnh', 0, 1, 1, 1, 1, 1, '{}', 6),
(165, 18, 'body', 'rich_text_box', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 7),
(166, 18, 'status', 'select_dropdown', 'Trạng thái', 0, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 8),
(167, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 1, 0, 1, '{}', 9),
(168, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(169, 18, 'discount', 'text', 'Giảm giá', 0, 1, 1, 1, 1, 1, '{}', 5),
(170, 15, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 9),
(171, 15, 'content', 'text', 'Nội Dung', 0, 0, 1, 1, 1, 1, '{}', 13),
(172, 19, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(173, 19, 'name', 'text', 'Tên', 0, 1, 1, 1, 1, 1, '{}', 2),
(174, 19, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, '{}', 3),
(175, 19, 'phone', 'text', 'Số điện thoại', 0, 1, 1, 1, 1, 1, '{}', 4),
(176, 19, 'subject', 'text', 'Nội dung', 0, 0, 1, 1, 1, 1, '{}', 5),
(177, 19, 'comment', 'text_area', 'Chi tiết', 0, 0, 1, 1, 1, 1, '{}', 6),
(178, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(179, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'App\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, NULL, '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', '', '', 1, 0, NULL, '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-02-20 09:15:45', '2023-05-21 20:32:49'),
(7, 'customers', 'customers', 'Khách hàng', 'Khách hàng', 'voyager-people', 'App\\Models\\Customer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-02-21 02:58:44', '2023-02-21 02:58:44'),
(8, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-21 03:06:35', '2023-08-04 18:37:41'),
(9, 'collections', 'collections', 'Loại phòng', 'Loại phòng', 'voyager-buy', 'App\\Models\\Collection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-21 03:16:44', '2023-05-20 01:39:27'),
(10, 'products', 'products', 'Phòng nghỉ', 'Phòng nghỉ', 'voyager-diamond', 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-21 03:20:06', '2023-08-08 00:25:23'),
(12, 'cuisines', 'cuisines', 'Ẩm thực', 'Ẩm thực', NULL, 'App\\Models\\Cuisine', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-21 18:58:54', '2023-08-07 21:16:01'),
(14, 'services', 'services', 'Dịch vụ phòng', 'Dịch vụ phòng', 'voyager-documentation', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-23 00:42:37', '2023-08-04 19:02:14'),
(15, 'books', 'books', 'Quản lý đặt phòng', 'Quản lý đặt phòng', 'voyager-new', 'App\\Models\\Book', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-30 23:53:30', '2023-08-11 20:24:33'),
(16, 'galleries', 'galleries', 'Thư viện ảnh', 'Thư viện ảnh', 'voyager-photos', 'App\\Models\\Gallery', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-05-31 19:38:06', '2023-05-31 19:38:06'),
(17, 'utilities', 'utilities', 'Tiện ích', 'Tiện ích', 'voyager-crop', 'App\\Models\\Utility', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-08-04 23:52:54', '2023-08-04 23:52:54'),
(18, 'offers', 'offers', 'Ưu đãi', 'Ưu đãi', 'voyager-bell', 'App\\Models\\Offer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-08-05 00:34:30', '2023-08-05 00:35:15'),
(19, 'contacts', 'contacts', 'Contact', 'Contacts', 'voyager-paper-plane', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2023-08-07 18:25:51', '2023-08-07 18:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Hình 1', 'galleries\\June2023\\zYSyIMvmLXHtyhIb9JRA.jpg', NULL, '2023-05-31 19:38:39', '2023-05-31 19:38:39'),
(2, 'Hình 2', 'galleries\\June2023\\seuM2Dt7d5ehNZ3hX0Gv.jpg', NULL, '2023-05-31 19:38:58', '2023-05-31 19:38:58'),
(3, 'Hình 3', 'galleries\\June2023\\BqFul3Ro9My0kiDATjtx.jpg', NULL, '2023-05-31 19:39:08', '2023-05-31 19:39:08'),
(4, 'Hình 4', 'galleries\\June2023\\nqTygdFVxZZMry7aJC9U.jpg', NULL, '2023-05-31 19:39:32', '2023-05-31 19:39:32'),
(5, 'Hình 5', 'galleries\\June2023\\3BqkMZ6gy0GvfOtSoE92.jpg', NULL, '2023-05-31 19:39:48', '2023-05-31 19:39:48'),
(7, 'Hình 7', 'galleries\\June2023\\2uAyCHU4PaA9k3xqOA6L.jpg', NULL, '2023-05-31 19:40:00', '2023-05-31 19:40:30'),
(8, 'Hình 7', 'galleries\\June2023\\7Y9YxGZpOvdvUGHz8Suf.jpg', NULL, '2023-05-31 19:40:20', '2023-05-31 19:40:20'),
(9, 'Hình 8', 'galleries\\June2023\\8gFntlyY4qz7mVSebUAG.jpg', NULL, '2023-05-31 19:40:52', '2023-05-31 19:40:52'),
(10, 'Image 10', 'galleries\\August2023\\CAo1SufsyrxSN6IoTdnu.jpg', NULL, '2023-08-05 00:24:24', '2023-08-05 00:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(2, 'home_menu', '2023-05-22 00:11:48', '2023-05-22 00:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Thống kê báo cáo', '', '_self', 'voyager-dashboard', '#000000', NULL, 1, '2023-02-20 09:13:34', '2023-08-11 19:24:39', 'voyager.dashboard', 'null'),
(2, 1, 'Đa phương tiện', '', '_self', 'voyager-images', '#000000', NULL, 9, '2023-02-20 09:13:34', '2023-08-13 18:38:21', 'voyager.media.index', 'null'),
(3, 1, 'Tài khoản quản trị', '', '_self', 'voyager-person', '#000000', 15, 1, '2023-02-20 09:13:34', '2023-02-21 02:59:38', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 15, 2, '2023-02-20 09:13:34', '2023-02-21 02:59:53', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2023-02-20 09:13:34', '2023-08-13 18:38:21', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.bread.index', NULL),
(10, 1, 'Cấu hình', '', '_self', 'voyager-settings', '#000000', NULL, 11, '2023-02-20 09:13:34', '2023-08-13 18:38:21', 'voyager.settings.index', 'null'),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-window-list', '#000000', 17, 4, '2023-02-20 09:15:44', '2023-05-31 19:38:19', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', 17, 3, '2023-02-20 09:15:45', '2023-05-31 19:38:19', 'voyager.posts.index', 'null'),
(13, 1, 'Trang', '', '_self', 'voyager-file-text', '#000000', 17, 5, '2023-02-20 09:15:45', '2023-05-31 19:38:19', 'voyager.pages.index', 'null'),
(15, 1, 'Tài khoản', '', '_self', 'voyager-data', '#000000', NULL, 8, '2023-02-21 02:54:21', '2023-08-13 18:38:21', NULL, ''),
(16, 1, 'Khách hàng', '', '_self', 'voyager-people', NULL, 15, 3, '2023-02-21 02:58:44', '2023-02-21 02:59:20', 'voyager.customers.index', NULL),
(17, 1, 'Nội dung', '', '_self', 'voyager-pen', '#000000', NULL, 7, '2023-02-21 03:03:50', '2023-08-13 18:38:21', NULL, ''),
(18, 1, 'Banners', '', '_self', 'voyager-images', '#000000', 17, 1, '2023-02-21 03:06:35', '2023-02-21 03:07:31', 'voyager.banners.index', 'null'),
(19, 1, 'Danh mục sản phẩm', '', '_self', 'voyager-boat', '#000000', 21, 2, '2023-02-21 03:16:44', '2023-02-21 08:13:18', 'voyager.collections.index', 'null'),
(20, 1, 'Sản phẩm', '', '_self', 'voyager-pizza', '#000000', 21, 1, '2023-02-21 03:20:06', '2023-02-21 08:12:58', 'voyager.products.index', 'null'),
(22, 1, 'Phòng nghỉ', '', '_self', 'voyager-diamond', '#000000', 24, 2, '2023-05-20 00:45:40', '2023-05-20 01:41:02', 'voyager.products.index', 'null'),
(23, 1, 'Loại phòng', '', '_self', 'voyager-params', '#000000', 24, 1, '2023-05-20 01:40:19', '2023-05-22 01:35:57', 'voyager.collections.index', 'null'),
(24, 1, 'Quản lý phòng nghỉ', '', '_self', 'voyager-categories', '#000000', NULL, 2, '2023-05-20 01:40:51', '2023-05-20 01:40:59', NULL, ''),
(26, 1, 'Ẩm thực', '', '_self', 'voyager-bug', '#000000', 17, 6, '2023-05-21 18:58:54', '2023-08-13 18:00:28', 'voyager.cuisines.index', 'null'),
(28, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2023-05-22 00:12:35', '2023-05-22 00:13:30', NULL, ''),
(29, 2, 'Giới thiệu', '/about', '_self', NULL, '#000000', NULL, 2, '2023-05-22 00:13:05', '2023-05-22 00:13:30', NULL, ''),
(30, 2, 'Phòng Nghỉ', '/rooms', '_self', NULL, '#000000', NULL, 4, '2023-05-22 00:13:18', '2023-08-04 18:48:09', NULL, ''),
(31, 2, 'PHÒNG PREMIUM', '/rooms/phong-premium', '_self', NULL, '#000000', 30, 1, '2023-05-22 00:13:27', '2023-08-08 01:21:19', NULL, ''),
(32, 2, 'PHÒNG PRESTIGE SUITE', '/rooms/phong-prestige-suite', '_self', NULL, '#000000', 30, 2, '2023-05-22 00:13:37', '2023-08-08 01:21:41', NULL, ''),
(33, 2, 'PHÒNG LUXURY', '/rooms/phong-luxury', '_self', NULL, '#000000', 30, 3, '2023-05-22 00:13:48', '2023-08-08 01:21:54', NULL, ''),
(34, 2, 'Ẩm thực', '/cuisines', '_self', NULL, '#000000', NULL, 3, '2023-05-22 00:14:07', '2023-08-04 18:47:47', NULL, ''),
(41, 2, 'Thư viện ảnh', '/galleries', '_self', NULL, '#000000', NULL, 5, '2023-05-22 23:40:45', '2023-08-06 20:38:41', NULL, ''),
(42, 1, 'Dịch vụ phòng', '', '_self', 'voyager-documentation', NULL, 24, 3, '2023-05-23 00:42:37', '2023-05-23 00:47:10', 'voyager.services.index', NULL),
(43, 1, 'Quản lý đặt phòng', '', '_self', 'voyager-new', NULL, NULL, 3, '2023-05-30 23:53:30', '2023-08-13 18:38:21', 'voyager.books.index', NULL),
(44, 1, 'Thư viện ảnh', '', '_self', 'voyager-photos', NULL, 17, 2, '2023-05-31 19:38:06', '2023-05-31 19:38:19', 'voyager.galleries.index', NULL),
(45, 2, 'Liên hệ', '/contact', '_self', NULL, '#000000', NULL, 7, '2023-08-04 18:48:46', '2023-08-06 20:46:31', NULL, ''),
(46, 2, 'Bài viết', '/posts', '_self', NULL, '#000000', NULL, 6, '2023-08-04 20:47:57', '2023-08-06 21:23:10', NULL, ''),
(47, 1, 'Tiện ích', '', '_self', 'voyager-crop', NULL, NULL, 4, '2023-08-04 23:52:55', '2023-08-13 18:38:21', 'voyager.utilities.index', NULL),
(48, 1, 'Ưu đãi', '', '_self', 'voyager-bell', NULL, NULL, 5, '2023-08-05 00:34:30', '2023-08-13 18:38:21', 'voyager.offers.index', NULL),
(49, 2, 'PHÒNG GRAND LUXURY', '/rooms/phong-grand-luxury', '_self', NULL, '#000000', 30, 4, '2023-08-06 20:38:37', '2023-08-08 01:22:10', NULL, ''),
(50, 2, 'PHÒNG APARTMENT', '/rooms/phong-apartment', '_self', NULL, '#000000', 30, 5, '2023-08-06 20:39:16', '2023-08-08 01:22:29', NULL, ''),
(51, 2, 'PHÒNG PRESIDENT', '/rooms/phong-president', '_self', NULL, '#000000', 30, 6, '2023-08-06 20:40:05', '2023-08-08 01:22:45', NULL, ''),
(52, 1, 'Liên hệ', '', '_self', 'voyager-paper-plane', '#000000', NULL, 6, '2023-08-07 18:25:52', '2023-08-13 18:38:21', 'voyager.contacts.index', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2016_01_01_000000_create_pages_table', 2),
(26, '2016_01_01_000000_create_posts_table', 2),
(27, '2016_02_15_204651_create_categories_table', 2),
(28, '2017_04_11_000000_alter_post_nullable_fields_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `slug`, `desc`, `image`, `body`, `status`, `created_at`, `updated_at`, `discount`) VALUES
(1, 'ƯU ĐÃI NGHỈ DƯỠNG ẨM THỰC TẠI THE KING HOTEL', 'food-offer-at-the-king-hotel', 'Còn gì tuyệt vời hơn khi bạn muốn tránh xa những bộn bề cuộc sống thường ngày mà lại không cần phải đi đâu đó quá xa!', 'offers\\August2023\\ODfN6ophXo63OIjln5XO.jpg', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', 'ACTIVE', '2023-08-05 00:43:00', '2023-08-08 01:03:48', 30),
(2, 'ƯU ĐÃI GIẢM -30% NHÂN DỊP KHAI TRƯƠNG KHÁCH SẠN', 'discount-30-on-occasion-of-hotel-opening', 'Dành tặng bản thân và người thân yêu một kỳ nghỉ đáng nhớ ngay trong thành phố với những ưu đãi đầy hấp dẫn từ gói nghỉ dưỡng  tại khách sạn The King Hotel ', 'offers\\August2023\\uNfSqY69TFyxfWGqagmx.jpg', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', 'ACTIVE', '2023-08-05 00:46:00', '2023-08-08 01:03:07', 30),
(3, 'ƯU ĐÃI LƯU TRÚ DÀI HẠN TẠI THE KING HOTEL', 'promotion-for-long-term-stay-at-the-king-hotel', 'Còn gì tuyệt vời hơn khi bạn muốn tránh xa những bộn bề cuộc sống thường ngày mà lại không cần phải đi đâu đó quá xa!', 'offers\\August2023\\wv4vtm604PQHGhCNK0hL.jpg', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', 'ACTIVE', '2023-08-05 00:47:00', '2023-08-08 01:02:37', 15),
(4, 'PHÒNG NGỦ VÀ BỮA SÁNG', 'bed-and-breakfast', 'Khách sạn THEKING cung cấp các lựa chọn đồ ăn và thức uống khó quên. Một kỳ nghỉ đáng nhớ.', 'offers\\August2023\\NFUPBnYfe761V3ZwLFr3.jpg', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', 'ACTIVE', '2023-08-05 00:48:00', '2023-08-08 01:02:02', 25);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `image_2` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`, `type`, `image_2`, `icon`) VALUES
(5, 1, 'Tận hưởng Trải nghiệm Sang trọng', 'The full utility system is located in The King Hotel building. You can enjoy delicious buffet breakfast or a variety of lunch and dinner with Asian - European cuisine, dishes with delicious traditional flavors. Also on the same premises, you can relax with your favorite cocktail at the hotel\'s bar as a good choice.', '<p>Với dịch vụ đẳng cấp 4 sao, King Hotel c&oacute; 40 ph&ograve;ng nghỉ mang đến cho qu&yacute; kh&aacute;ch sự thoải m&aacute;i, thư gi&atilde;n nhất. Tất cả c&aacute;c ph&ograve;ng đều c&oacute; TV m&agrave;n h&igrave;nh rộng, k&eacute;t sắt nhỏ v&agrave; mini bar, m&aacute;y t&iacute;nh bảng. Mỗi ph&ograve;ng đều c&oacute; khu vực ph&ograve;ng kh&aacute;ch hiện đại, ph&ograve;ng ngủ trang bị giường đ&ocirc;i cao cấp, ph&ograve;ng tắm hiện đại, một số ph&ograve;ng cao cấp với bồn tăm ri&ecirc;ng đặt tại v&iacute; tr&iacute; đẹp nhất trong ph&ograve;ng để bạn c&oacute; thể vừa ng&acirc;m m&igrave;nh, vừa ngắm nh&igrave;n th&agrave;nh phố. C&oacute; tổng cộng 6 loại ph&ograve;ng bao gồm: ph&ograve;ng tổng thống ti&ecirc;u chuẩn d&agrave;nh cho nguy&ecirc;n thủ Quốc Gia, ph&ograve;ng Luxury cao cấp thiết kế tường k&iacute;nh hiện đại, ph&ograve;ng Grand Luxury 2 ph&ograve;ng đ&ocirc;i rộng r&atilde;i, tiện &iacute;ch, ph&ograve;ng Premium, ph&ograve;ng Grand Premium đ&aacute;p ứng đầy đủ ti&ecirc;u chuẩn ph&ograve;ng nghỉ đẳng cấp, Ph&ograve;ng Prestige, ph&ograve;ng Grand Prestige, ph&ugrave; hợp cho nhu cầu nghỉ ngơi tuyệt vời của du kh&aacute;ch. Kh&aacute;ch sạn c&oacute; wifi miễn ph&iacute; cho tất cả c&aacute;c ph&ograve;ng v&agrave; d&acirc;y c&aacute;p mạng cho những kh&aacute;ch cần.</p>\n<p>Hệ thống tiện &iacute;ch đầy đủ nằm ngay trong t&ograve;a nh&agrave; King Hotel. Qu&yacute; kh&aacute;ch c&oacute; thể thưởng thức Buffet s&aacute;ng thơm ngon hay bữa trưa v&agrave; bữa tối đa dạng với ẩm thực &Aacute; &ndash; &Acirc;u, những m&oacute;n ăn phong vị truyền thống ngon miệng. Cũng trong khu&ocirc;n vi&ecirc;n ấy, chill với ly coktail y&ecirc;u th&iacute;ch tại quầy bar của kh&aacute;ch sạn cũng l&agrave; lựa chọn kh&ocirc;ng tồi.</p>\n<p>Nếu qu&yacute; kh&aacute;ch th&iacute;ch kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng để ngắm nh&igrave;n th&agrave;nh phố v&agrave; h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh với thật nhiều c&acirc;y xanh, Coffee Garden l&agrave; nơi th&iacute;ch hợp để thưởng thức một t&aacute;ch c&agrave; ph&ecirc; ngon v&agrave; c&aacute;c m&oacute;n ăn nhẹ trong kh&ocirc;ng gian thư th&aacute;i. Những bản nhạc tuyệt vời sẽ được ban nhạc tại King Hotel thể hiện xuất sắc, v&agrave; thật tuyệt nếu qu&yacute; kh&aacute;ch c&oacute; thể ca c&ugrave;ng ch&uacute;ng t&ocirc;i đ&ocirc;i ba lời.</p>\n<p>Ngo&agrave;i ra, qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng c&aacute;c b&agrave;i tập đốt ch&aacute;y năng lượng thừa trong suốt thời gian lưu tr&uacute; tại ph&ograve;ng tập thể dục. King Hotel trang bị đầy đủ m&aacute;y m&oacute;c, trang thiết bị hiện đại phục vụ cho nhu cầu của kh&aacute;ch h&agrave;ng như: m&aacute;y chạy, tạ, Yoga, x&ocirc;ng hơi n&oacute;ng lạnh, gym, boxing,&hellip;</p>\n<p>Hồ bơi v&ocirc; cực cũng l&agrave; gợi &yacute; tuyệt vời để qu&yacute; kh&aacute;ch thư gi&atilde;n, luyện tập sức khỏe hay đơn giản l&agrave; ng&acirc;m m&igrave;nh trong l&agrave;n nước trong vắt, tận hưởng ly đồ uống thơm m&aacute;t, ch&uacute;t đồ ăn nhẹ được nh&acirc;n vi&ecirc;n King Hotel phục vụ tận nơi v&agrave; thả mắt ngắm nh&igrave;n th&agrave;nh phố tấp nập.&nbsp; Bể bơi rộng tới 200m2, hệ thống n&oacute;ng lạnh đảm bảo c&oacute; thể phục vụ qu&yacute; kh&aacute;ch 4 m&ugrave;a với c&aacute;c thiết bị sục massage, bơi ngược d&ograve;ng.</p>\n<p>Kh&ocirc;ng chỉ thế, King Hotel c&ograve;n đ&aacute;p ứng dịch vụ tổ chức sự kiện với 3 ph&ograve;ng họp &amp; hội nghị sức chứa từ 20 đến 150 kh&aacute;ch. Mỗi ph&ograve;ng đều trang bị đầy đủ m&aacute;t chiếu, &acirc;m thanh, h&igrave;nh ảnh chất lượng, thiết kế hiện đại, sang trọng thỏa m&atilde;n mọi nhu cầu của qu&yacute; kh&aacute;ch.</p>\n<p>King Hotel rất h&acirc;n hạnh được phục vụ qu&yacute; kh&aacute;ch với những dịch vụ tốt nhất, những trải nghiệm tuyệt vời cho chuyến nghỉ dưỡng, c&ocirc;ng t&aacute;c trải qua thật ho&agrave;n hảo!</p>', 'pages\\August2023\\wVGZpITs729e4LTAJO8c.jpg', 've-chung-toi', NULL, NULL, 'ACTIVE', '2023-05-22 00:35:11', '2023-08-08 00:09:21', NULL, NULL, NULL),
(6, 1, 'Trải Nghiệm Sang Trọng Tại Khách Sạn TheKing Của Chúng Tôi', 'The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious breakfast Join us in celebrating the new year with a little special surprise from our end.', '', 'pages\\August2023\\9KQQgc6Q1bKA8NLHLjrz.jpg', 'rooms', NULL, NULL, 'ACTIVE', '2023-08-04 19:25:44', '2023-08-08 00:16:15', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(2, 'browse_bread', NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(3, 'browse_database', NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(4, 'browse_media', NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(5, 'browse_compass', NULL, '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(6, 'browse_menus', 'menus', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(7, 'read_menus', 'menus', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(8, 'edit_menus', 'menus', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(9, 'add_menus', 'menus', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(10, 'delete_menus', 'menus', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(11, 'browse_roles', 'roles', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(12, 'read_roles', 'roles', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(13, 'edit_roles', 'roles', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(14, 'add_roles', 'roles', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(15, 'delete_roles', 'roles', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(16, 'browse_users', 'users', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(17, 'read_users', 'users', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(18, 'edit_users', 'users', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(19, 'add_users', 'users', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(20, 'delete_users', 'users', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(21, 'browse_settings', 'settings', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(22, 'read_settings', 'settings', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(23, 'edit_settings', 'settings', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(24, 'add_settings', 'settings', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(25, 'delete_settings', 'settings', '2023-02-20 09:13:35', '2023-02-20 09:13:35'),
(26, 'browse_categories', 'categories', '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(27, 'read_categories', 'categories', '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(28, 'edit_categories', 'categories', '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(29, 'add_categories', 'categories', '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(30, 'delete_categories', 'categories', '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(31, 'browse_posts', 'posts', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(32, 'read_posts', 'posts', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(33, 'edit_posts', 'posts', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(34, 'add_posts', 'posts', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(35, 'delete_posts', 'posts', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(36, 'browse_pages', 'pages', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(37, 'read_pages', 'pages', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(38, 'edit_pages', 'pages', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(39, 'add_pages', 'pages', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(40, 'delete_pages', 'pages', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(41, 'browse_customers', 'customers', '2023-02-21 02:58:44', '2023-02-21 02:58:44'),
(42, 'read_customers', 'customers', '2023-02-21 02:58:44', '2023-02-21 02:58:44'),
(43, 'edit_customers', 'customers', '2023-02-21 02:58:44', '2023-02-21 02:58:44'),
(44, 'add_customers', 'customers', '2023-02-21 02:58:44', '2023-02-21 02:58:44'),
(45, 'delete_customers', 'customers', '2023-02-21 02:58:44', '2023-02-21 02:58:44'),
(46, 'browse_banners', 'banners', '2023-02-21 03:06:35', '2023-02-21 03:06:35'),
(47, 'read_banners', 'banners', '2023-02-21 03:06:35', '2023-02-21 03:06:35'),
(48, 'edit_banners', 'banners', '2023-02-21 03:06:35', '2023-02-21 03:06:35'),
(49, 'add_banners', 'banners', '2023-02-21 03:06:35', '2023-02-21 03:06:35'),
(50, 'delete_banners', 'banners', '2023-02-21 03:06:35', '2023-02-21 03:06:35'),
(51, 'browse_collections', 'collections', '2023-02-21 03:16:44', '2023-02-21 03:16:44'),
(52, 'read_collections', 'collections', '2023-02-21 03:16:44', '2023-02-21 03:16:44'),
(53, 'edit_collections', 'collections', '2023-02-21 03:16:44', '2023-02-21 03:16:44'),
(54, 'add_collections', 'collections', '2023-02-21 03:16:44', '2023-02-21 03:16:44'),
(55, 'delete_collections', 'collections', '2023-02-21 03:16:44', '2023-02-21 03:16:44'),
(56, 'browse_products', 'products', '2023-02-21 03:20:06', '2023-02-21 03:20:06'),
(57, 'read_products', 'products', '2023-02-21 03:20:06', '2023-02-21 03:20:06'),
(58, 'edit_products', 'products', '2023-02-21 03:20:06', '2023-02-21 03:20:06'),
(59, 'add_products', 'products', '2023-02-21 03:20:06', '2023-02-21 03:20:06'),
(60, 'delete_products', 'products', '2023-02-21 03:20:06', '2023-02-21 03:20:06'),
(66, 'browse_cuisines', 'cuisines', '2023-05-21 18:58:54', '2023-05-21 18:58:54'),
(67, 'read_cuisines', 'cuisines', '2023-05-21 18:58:54', '2023-05-21 18:58:54'),
(68, 'edit_cuisines', 'cuisines', '2023-05-21 18:58:54', '2023-05-21 18:58:54'),
(69, 'add_cuisines', 'cuisines', '2023-05-21 18:58:54', '2023-05-21 18:58:54'),
(70, 'delete_cuisines', 'cuisines', '2023-05-21 18:58:54', '2023-05-21 18:58:54'),
(76, 'browse_services', 'services', '2023-05-23 00:42:37', '2023-05-23 00:42:37'),
(77, 'read_services', 'services', '2023-05-23 00:42:37', '2023-05-23 00:42:37'),
(78, 'edit_services', 'services', '2023-05-23 00:42:37', '2023-05-23 00:42:37'),
(79, 'add_services', 'services', '2023-05-23 00:42:37', '2023-05-23 00:42:37'),
(80, 'delete_services', 'services', '2023-05-23 00:42:37', '2023-05-23 00:42:37'),
(81, 'browse_books', 'books', '2023-05-30 23:53:30', '2023-05-30 23:53:30'),
(82, 'read_books', 'books', '2023-05-30 23:53:30', '2023-05-30 23:53:30'),
(83, 'edit_books', 'books', '2023-05-30 23:53:30', '2023-05-30 23:53:30'),
(84, 'add_books', 'books', '2023-05-30 23:53:30', '2023-05-30 23:53:30'),
(85, 'delete_books', 'books', '2023-05-30 23:53:30', '2023-05-30 23:53:30'),
(86, 'browse_galleries', 'galleries', '2023-05-31 19:38:06', '2023-05-31 19:38:06'),
(87, 'read_galleries', 'galleries', '2023-05-31 19:38:06', '2023-05-31 19:38:06'),
(88, 'edit_galleries', 'galleries', '2023-05-31 19:38:06', '2023-05-31 19:38:06'),
(89, 'add_galleries', 'galleries', '2023-05-31 19:38:06', '2023-05-31 19:38:06'),
(90, 'delete_galleries', 'galleries', '2023-05-31 19:38:06', '2023-05-31 19:38:06'),
(91, 'browse_utilities', 'utilities', '2023-08-04 23:52:54', '2023-08-04 23:52:54'),
(92, 'read_utilities', 'utilities', '2023-08-04 23:52:54', '2023-08-04 23:52:54'),
(93, 'edit_utilities', 'utilities', '2023-08-04 23:52:54', '2023-08-04 23:52:54'),
(94, 'add_utilities', 'utilities', '2023-08-04 23:52:54', '2023-08-04 23:52:54'),
(95, 'delete_utilities', 'utilities', '2023-08-04 23:52:54', '2023-08-04 23:52:54'),
(96, 'browse_offers', 'offers', '2023-08-05 00:34:30', '2023-08-05 00:34:30'),
(97, 'read_offers', 'offers', '2023-08-05 00:34:30', '2023-08-05 00:34:30'),
(98, 'edit_offers', 'offers', '2023-08-05 00:34:30', '2023-08-05 00:34:30'),
(99, 'add_offers', 'offers', '2023-08-05 00:34:30', '2023-08-05 00:34:30'),
(100, 'delete_offers', 'offers', '2023-08-05 00:34:30', '2023-08-05 00:34:30'),
(101, 'browse_contacts', 'contacts', '2023-08-07 18:25:52', '2023-08-07 18:25:52'),
(102, 'read_contacts', 'contacts', '2023-08-07 18:25:52', '2023-08-07 18:25:52'),
(103, 'edit_contacts', 'contacts', '2023-08-07 18:25:52', '2023-08-07 18:25:52'),
(104, 'add_contacts', 'contacts', '2023-08-07 18:25:52', '2023-08-07 18:25:52'),
(105, 'delete_contacts', 'contacts', '2023-08-07 18:25:52', '2023-08-07 18:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(54, 3),
(55, 1),
(55, 3),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(59, 3),
(60, 1),
(60, 3),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(69, 3),
(70, 1),
(70, 3),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(79, 3),
(80, 1),
(80, 3),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(84, 3),
(85, 1),
(85, 3),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(88, 3),
(89, 1),
(89, 3),
(90, 1),
(90, 3),
(91, 1),
(91, 3),
(92, 1),
(92, 3),
(93, 1),
(93, 3),
(94, 1),
(94, 3),
(95, 1),
(95, 3),
(96, 1),
(96, 3),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1),
(100, 3),
(101, 1),
(101, 3),
(102, 1),
(102, 3),
(103, 1),
(103, 3),
(104, 1),
(104, 3),
(105, 1),
(105, 3);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(5, 1, 3, '10 xu hướng thịnh hành trong ngành khách sạn 2022', '', 'Không gian ngoài trời mở rộng hơn, nâng cấp công nghệ để hạn chế tối đa tiếp xúc là những xu hướng mới nhiều khách sạn áp dụng.\n\nDưới đây là một số xu hướng trong khách sạn mà du khách có thể bắt gặp trong năm 2021, theo các dữ liệu và phân tích từ GlobalData.\n\nVấn đề vệ sinh luôn đặt lên hàng đầu', '<p>Kh&ocirc;ng gian ngo&agrave;i trời mở rộng hơn, n&acirc;ng cấp c&ocirc;ng nghệ để hạn chế tối đa tiếp x&uacute;c l&agrave; những xu hướng mới nhiều kh&aacute;ch sạn &aacute;p dụng.</p>\n<article>\n<p>Dưới đ&acirc;y l&agrave; một số xu hướng trong kh&aacute;ch sạn m&agrave; du kh&aacute;ch c&oacute; thể bắt gặp trong năm 2021, theo c&aacute;c dữ liệu v&agrave; ph&acirc;n t&iacute;ch từ&nbsp;GlobalData.</p>\n<p>Vấn đề vệ sinh lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu</p>\n<p>Ng&agrave;nh kh&aacute;ch sạn đ&atilde; nhanh ch&oacute;ng thực hiện c&aacute;c quy tr&igrave;nh an to&agrave;n v&agrave; vệ sinh chuy&ecirc;n s&acirc;u trong đại dịch. Năm 2022, c&aacute;c cơ sở lưu tr&uacute; tr&ecirc;n to&agrave;n thế giới c&oacute; thể tiếp tục x&acirc;y dựng v&agrave; cải thiện c&aacute;c chương tr&igrave;nh vệ sinh, nhằm hạn chế tối đa sự l&acirc;y lan của dịch bệnh, thu h&uacute;t kh&aacute;ch đặt ph&ograve;ng.</p>\n<br>\n<p><strong>Kh&aacute;ch thu&ecirc; ph&ograve;ng d&agrave;i ng&agrave;y hơn</strong></p>\n<p>Nhiều kh&aacute;ch sạn, khu nghỉ dưỡng đ&atilde; giới thiệu c&aacute;c chương tr&igrave;nh, g&oacute;i lưu tr&uacute; k&eacute;o d&agrave;i v&agrave;o năm 2021 v&agrave; xu hướng đ&oacute; sẽ tiếp tục trong năm nay. L&yacute; do l&agrave; đại dịch vẫn diễn biến phức tạp, du kh&aacute;ch c&oacute; xu hướng lưu tr&uacute; tại một nơi d&agrave;i ng&agrave;y hơn.</p>\n<p>Nh&agrave; ph&acirc;n t&iacute;ch du lịch v&agrave; lữ h&agrave;nh Ralph Hollister của GlobalData cho biết du kh&aacute;ch c&oacute; thể &iacute;t đi du lịch hơn nhưng họ sẽ lưu tr&uacute; l&acirc;u hơn. Sự phức tạp của dịch bệnh sẽ khiến nhiều người dốc to&agrave;n lực để đầu tư một chuyến đi lớn, thay v&igrave; mạo hiểm với những chuyến đi nhỏ lẻ, c&oacute; thể bị hủy bỏ.</p>\n<p><strong>Ph&ograve;ng kh&aacute;ch sạn tạo điều kiện thuận lợi cho người l&agrave;m từ xa</strong></p>\n<p>Khi du lịch d&agrave;i ng&agrave;y hơn, du kh&aacute;ch cũng kh&ocirc;ng muốn c&ocirc;ng việc bị ảnh hưởng. Đ&oacute; l&agrave; l&yacute; do họ sẽ vừa nghỉ dưỡng, vừa l&agrave;m việc từ xa. Do đ&oacute;, một căn ph&ograve;ng kh&aacute;ch h&agrave;ng cần l&agrave; nơi vừa c&oacute; thể l&agrave;m việc thoải m&aacute;i, vừa tận hưởng những gi&acirc;y ph&uacute;t thư gi&atilde;n ri&ecirc;ng tư. Wi-Fi trong ph&ograve;ng nhanh cũng l&agrave; một điểm cộng, v&agrave; đ&ocirc;i khi c&oacute; thể l&agrave; yếu tố quyết định đối với nhiều du kh&aacute;ch muốn du lịch c&ocirc;ng vụ trong năm 2022.</p>\n<p><strong>Tăng cường &aacute;p dụng c&ocirc;ng nghệ</strong></p>\n<p>Kh&aacute;ch sạn giống như s&acirc;n bay, nh&agrave; h&agrave;ng... đều l&agrave; những nơi c&oacute; nhiều người qua lại. Do đ&oacute;, n&acirc;ng cao v&agrave; &aacute;p dụng triệt để c&ocirc;ng nghệ, hạn chế tiếp x&uacute;c l&agrave; mục ti&ecirc;u ch&iacute;nh của ng&agrave;nh du lịch của năm nay. Thay v&igrave; thanh to&aacute;n trực tiếp, du kh&aacute;ch c&oacute; thể trả tiền ph&ograve;ng qua c&aacute;c ứng dụng di động, m&atilde; QR... để giảm nguy cơ l&acirc;y nhiễm virus.</p>\n<p>\"Trong năm 2022, c&aacute;c kh&aacute;ch sạn sẽ tăng cường &aacute;p dụng c&ocirc;ng nghệ để giảm tiếp x&uacute;c. Những điều sẽ dần phổ biến hơn phải kể đến việc kh&aacute;ch h&agrave;ng c&oacute; thể check-in v&agrave; check-out trực tuyến, mở cửa ph&ograve;ng bằng ch&igrave;a kh&oacute;a tr&ecirc;n điện thoại, điều khiển c&aacute;c thiết bị trong ph&ograve;ng bằng c&ocirc;ng nghệ IoT... Sử dụng IoT c&ograve;n cho ph&eacute;p kh&aacute;ch sạn thu thập th&ecirc;m dữ liệu về kh&aacute;ch h&agrave;ng, từ đ&oacute; c&aacute; nh&acirc;n h&oacute;a trải nghiệm cho kh&aacute;ch h&agrave;ng khi họ trở lại\", Hollister nhận định.</p>\n<p><strong>Phục vụ ẩm thực kh&ocirc;ng tiếp x&uacute;c</strong></p>\n<p>Giảm tiếp x&uacute;c bằng c&ocirc;ng nghệ c&oacute; nghĩa l&agrave; hạn chế tiếp x&uacute;c giữa người với người trong cả dịch vụ ăn uống. Những giải ph&aacute;p kh&aacute;ch sạn đưa ra l&agrave; t&ugrave;y chọn cho kh&aacute;ch mua đồ ăn mang đi tại sảnh, nh&acirc;n vi&ecirc;n đặt bữa ăn ở cửa ph&ograve;ng kh&aacute;ch hoặc đặt m&oacute;n qua điện thoại bằng m&atilde; QR.</p>\n<p><strong>Ch&iacute;nh s&aacute;ch ho&agrave;n, hủy linh hoạt</strong></p>\n<p>Những kh&aacute;ch sạn c&oacute; ch&iacute;nh s&aacute;ch ho&agrave;n tiền đặt ph&ograve;ng 100% khi kh&aacute;ch hủy v&agrave;o ph&uacute;t ch&oacute;t, c&ugrave;ng với c&aacute;c ch&iacute;nh s&aacute;ch giảm thiểu rủi ro kh&aacute;c sẽ được đa số lựa chọn.</p>\n<p>Kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch những nơi ri&ecirc;ng tư</p>\n<p>Kh&aacute;ch du lịch sẽ t&igrave;m kiếm kh&ocirc;ng gian ri&ecirc;ng tư nhiều hơn trong năm nay. Do đ&oacute;, dịch vụ thu&ecirc; ph&ograve;ng ngắn hạn th&ocirc;ng qua c&aacute;c ứng dụng như Airbnb, Vrbo... cũng như c&aacute;c kỳ nghỉ tại một biệt thự ri&ecirc;ng biệt sẽ được nhiều du kh&aacute;ch hướng tới. L&yacute; do l&agrave; những nơi n&agrave;y mang tới kh&ocirc;ng gian ri&ecirc;ng tư nhiều hơn kh&aacute;ch sạn, nh&agrave; nghỉ. Đ&acirc;y cũng l&agrave; năm m&agrave; c&aacute;c cơ sở lưu tr&uacute;, h&agrave;ng qu&aacute;n ở những nơi hẻo l&aacute;nh, xa x&ocirc;i c&oacute; cơ hội tiếp đ&oacute;n nhiều kh&aacute;ch h&agrave;ng hơn, bởi tại đ&acirc;y họ &iacute;t phải lo lắng về c&aacute;c lệnh hạn chế đi lại,</p>\n<p><strong>Kh&ocirc;ng gian ngo&agrave;i trời được ưu &aacute;i hơn</strong></p>\n<p>Du kh&aacute;ch sẽ cảm thấy an to&agrave;n hơn khi d&agrave;nh thời gian ở ngo&agrave;i trời so với kh&ocirc;ng gian k&iacute;n ở nơi c&ocirc;ng cộng. Do đ&oacute;, c&aacute;c kh&aacute;ch sạn sẽ t&igrave;m c&aacute;ch kết hợp nhiều hơn nữa kh&ocirc;ng gian ngo&agrave;i trời v&agrave;o c&aacute;c trải nghiệm như tập yoga, c&agrave; ph&ecirc;, ăn uống, spa...</p>\n<img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-2tt1.jpg?v=1623927239024\" data-thumb=\"original\">\n<p><strong>Ph&aacute;t triển du lịch bền vững</strong></p>\n<p>C&aacute;c khu nghỉ dưỡng đ&atilde; trở n&ecirc;n th&acirc;n thiện với m&ocirc;i trường hơn sau thời gian d&agrave;i vắng kh&aacute;ch. Xu hướng đ&oacute; c&oacute; thể tiếp tục trong năm nay khi nhiều kh&aacute;ch du lịch t&igrave;m c&aacute;ch hạn chế t&aacute;c động của họ đến m&ocirc;i trường v&agrave; văn h&oacute;a địa phương. Tiết kiệm nước, giảm thiểu chất thải, cũng như t&igrave;m nguồn cung ứng thực phẩm địa phương trong c&aacute;c qu&aacute;n bar, nh&agrave; h&agrave;ng... vẫn l&agrave; chiến lược của nhiều kh&aacute;ch sạn muốn tạo sự kh&aacute;c biệt trong tương lai.</p>\n<p><strong>Kh&aacute;ch du lịch chi ti&ecirc;u nhiều hơn</strong></p>\n<p>Nhiều người sẽ phải đối mặt với ng&acirc;n s&aacute;ch du lịch hạn chế, v&igrave; vậy c&aacute;c cơ sở lưu tr&uacute; cần thu h&uacute;t những kh&aacute;ch h&agrave;ng ở tầng lớp trung lưu. Họ l&agrave; những người sẽ t&igrave;m kiếm mức gi&aacute; thu&ecirc; ph&ograve;ng thấp, nhưng cũng sẵn s&agrave;ng chi ti&ecirc;u nhiều hơn nếu chất lượng dịch vụ xứng đ&aacute;ng với số tiền họ bỏ ra.</p>\n</article>', 'posts\\June2023\\nHkKZm27jrsZO5XKNLoJ.jpg', '10-xu-huong-thinh-hanh-trong-nganh-khach-san-2022', '', '', 'PUBLISHED', 0, '2023-05-21 23:50:02', '2023-05-31 19:19:03'),
(6, 1, 3, 'Những điều kiêng kị khi ở khách sạn mà bạn nên biết', '', 'Để không gặp nhiều phiền toái và giữ an toàn cho chính bản thân trong mỗi chuyến đi, bạn nên cẩn thận tìm hiểu một số kinh nghiệm, lưu ý cần thiết khi thuê và ở khách sạn.', '<p>Để kh&ocirc;ng gặp nhiều phiền to&aacute;i v&agrave; giữ an to&agrave;n cho ch&iacute;nh bản th&acirc;n trong mỗi chuyến đi, bạn n&ecirc;n cẩn thận t&igrave;m hiểu một số kinh nghiệm, lưu &yacute; cần thiết khi thu&ecirc; v&agrave; ở kh&aacute;ch sạn.</p>\n<p>Kh&aacute;ch sạn l&agrave; nơi c&oacute; rất nhiều người nghỉ qua đ&ecirc;m, n&ecirc;n theo c&aacute;c chuy&ecirc;n gia c&oacute; kinh nghiệm, c&oacute; một số điều gọi l&agrave; &ldquo;thủ tục&rdquo; v&agrave; v&agrave;i h&agrave;nh động ki&ecirc;ng kị khi nghỉ qua đ&ecirc;m ở bất kỳ một kh&aacute;ch sạn n&agrave;o m&agrave; bạn cần phải hết sức lưu &yacute;.&nbsp;</p>\n<p>1. D&ugrave;ng họ, t&ecirc;n đệm khi nhận ph&ograve;ng: Một trong những c&aacute;ch đơn giản nhất để giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n l&agrave; tr&aacute;nh d&ugrave;ng t&ecirc;n khi nhận ph&ograve;ng, bạn n&ecirc;n d&ugrave;ng chữ c&aacute;i đầu v&agrave; họ của m&igrave;nh. Nữ giới đi du lịch một m&igrave;nh n&ecirc;n d&ugrave;ng chức danh &ldquo;Mrs.&rdquo; (B&agrave; - người đ&atilde; kết h&ocirc;n) để tạo ấn tượng rằng bạn đi c&ugrave;ng với &iacute;t nhất một người nữa.</p>\n<p>2. \"Nhập gia t&ugrave;y tục\": Người xưa c&oacute; c&acirc;u \"Nhập gia t&ugrave;y tục\". Do vậy khi ở kh&aacute;ch sạn, bạn n&ecirc;n đọc kỹ nội quy ph&ograve;ng để tr&aacute;nh gặp phải những phiền phức kh&ocirc;ng đ&aacute;ng c&oacute; khiến chuyến du lịch mất vui, nhất l&agrave; khi du lịch nước ngo&agrave;i. Ở một số nơi, nếu bạn xem tivi v&agrave; sử dụng internet hoặc điện thoại b&agrave;n sẽ bị t&iacute;nh ph&iacute; rất cao. Đ&oacute; l&agrave; l&yacute; do bạn cần \"đọc kỹ hướng dẫn trước khi sử dụng\".</p>\n<p>3. Đừng bao giờ hỏi nh&acirc;n vi&ecirc;n lễ t&acirc;n phục vụ ca đ&ecirc;m về nhu cầu &ldquo;t&igrave;m người bạn t&acirc;m sự&rdquo; hay cho ph&eacute;p nh&acirc;n vi&ecirc;n kh&ocirc;ng c&oacute; chức năng v&agrave;o ph&ograve;ng v&igrave; c&oacute; thể bạn sẽ gặp rắc rối lớn khi bị kiểm tra đột xuất của kh&aacute;ch sạn hay ch&iacute;nh quyền.</p>\n<p>4. Kiểm tra ph&ograve;ng: Ngay khi bước v&agrave;o ph&ograve;ng, bạn n&ecirc;n kiểm tra kh&oacute;a thật kỹ xem c&oacute; an to&agrave;n kh&ocirc;ng. Tiếp đến, bạn đi quanh ph&ograve;ng v&agrave; kiểm tra kỹ cửa sổ, ph&ograve;ng tắm, tủ quần &aacute;o... xem c&oacute; g&igrave; bất thường. Nếu c&oacute;, lập tức b&aacute;o ngay cho nh&acirc;n vi&ecirc;n kh&aacute;ch sạn để nhờ xử l&yacute; hoặc xin đổi ph&ograve;ng. Bạn cũng h&atilde;y nhớ kiểm tra số lượng vật dụng trong ph&ograve;ng c&oacute; đ&uacute;ng như bản k&ecirc; khai kh&ocirc;ng.</p>\n<p>5. Kiểm tra quầy lễ t&acirc;n: Sau khi nhận ph&ograve;ng, bạn n&ecirc;n sử dụng điện thoại di động gọi cho quầy lễ t&acirc;n, hỏi xem họ c&oacute; thể n&oacute;i chuyện với m&igrave;nh kh&ocirc;ng. Nếu họ cho biết số ph&ograve;ng của bạn, đ&oacute; l&agrave; t&iacute;n hiệu kh&ocirc;ng tốt. C&acirc;u trả lời bạn mong muốn sẽ l&agrave;: &ldquo;Để t&ocirc;i nối m&aacute;y cho bạn&rdquo;.</p>\n<p>6. Đặt biển &ldquo;Miễn l&agrave;m phiền&rdquo; ngo&agrave;i cửa khi rời ph&ograve;ng: Khi phải ra ngo&agrave;i, bạn c&oacute; thể đặt biển &ldquo;Miễn l&agrave;m phiền&rdquo; v&agrave; bật ti-vi để c&oacute; &acirc;m thanh trong ph&ograve;ng.</p>\n<p>7. Ở ph&ograve;ng tầng từ 4 đến 6: Ph&ograve;ng cao nhất thang cứu hỏa c&oacute; thể vươn tới khi c&oacute; hỏa hoạn thường l&agrave; từ tầng 4 tới tầng 6. Cẩn thận hơn, bạn c&oacute; thể chọn ph&ograve;ng gần cầu thang bộ.</p>\n<p>8. G&otilde; cửa trước khi v&agrave;o ph&ograve;ng kh&aacute;ch sạn: Theo quan niệm phong thủy, khi bước v&agrave;o ph&ograve;ng nghỉ tại kh&aacute;ch sạn bạn n&ecirc;n g&otilde; cửa 3 c&aacute;i để đ&aacute;nh đuổi điềm xấu m&agrave; người ở trước để lại. Sau đ&oacute; mới mở cửa v&agrave; đứng n&eacute;p sang một b&ecirc;n, đợi khoảng 1 ph&uacute;t mới bước v&agrave;o v&agrave; đ&oacute;ng của lại. Việc bước v&agrave;o ph&ograve;ng v&agrave; đ&oacute;ng cửa ngay lập tức l&agrave; điều tối kỵ.</p>\n<p>9. Cất giữ những đồ d&ugrave;ng c&oacute; gi&aacute; trị thật cẩn thận: Kh&aacute;ch sạn l&agrave; nơi c&oacute; rất nhiều người qua lại hơn nữa l&agrave; một nơi kh&aacute; lạ, bạn sẽ kh&ocirc;ng thể biết được ai tốt ai xấu. Do vậy, cẩn tắc v&ocirc; &aacute;y n&aacute;y, n&ecirc;n cất giữ những đồ d&ugrave;ng c&oacute; gi&aacute; trị thật cẩn thận. Trườg hợp đi ra ngo&agrave;i kh&ocirc;ng tiện mang c&aacute;c đồ gi&aacute; trị theo, bạn c&oacute; thể gửi ở nh&acirc;n vi&ecirc;n lễ t&acirc;n v&agrave; k&yacute; nhận.</p>\n<p>10. Đừng viết t&ecirc;n tr&ecirc;n b&igrave;a treo cửa: Nếu kh&aacute;ch sạn đưa cho bạn b&igrave;a treo cửa để y&ecirc;u cầu lấy th&ecirc;m đồ ăn hay dọn ph&ograve;ng, bạn kh&ocirc;ng n&ecirc;n viết t&ecirc;n m&igrave;nh l&ecirc;n đ&oacute;, tr&aacute;nh bị nhận diện.</p>\n<p>11. C&aacute;c lỗ nh&igrave;n l&eacute;n: Bạn đ&atilde; từng bao giờ c&oacute; cảm gi&aacute;c bị theo d&otilde;i khi ở trong ph&ograve;ng kh&aacute;ch sạn? Bất cứ khi n&agrave;o c&oacute; cảm gi&aacute;c kh&ocirc;ng an to&agrave;n, bạn n&ecirc;n y&ecirc;u cầu thay đổi ph&ograve;ng. Nghe c&oacute; vẻ kh&oacute; tin, nhưng c&oacute; những kh&aacute;ch sạn giấu m&aacute;y ảnh nhỏ để c&oacute; thể quay phim tất cả mọi thứ xảy ra trong ph&ograve;ng. Nếu kh&ocirc;ng c&oacute; ph&ograve;ng c&oacute; sẵn kh&aacute;c, h&atilde;y che c&aacute;c lỗ đ&aacute;ng ngờ bằng một mảnh giấy.</p>\n<p>12. Kh&ocirc;ng n&ecirc;n cắt m&oacute;ng tay m&oacute;ng ch&acirc;n v&agrave;o nửa đ&ecirc;m: Ở trong kh&aacute;ch sạn cũng ki&ecirc;ng kị việc cắt m&oacute;ng tay sau nửa đ&ecirc;m, đặc biệt l&agrave; m&oacute;ng tay trẻ con v&igrave; điều n&agrave;y sẽ ảnh hưởng đến sức khỏe của c&aacute;c th&agrave;nh vi&ecirc;n trong chuyến đi.</p>\n<p>13. Xem đ&aacute;nh gi&aacute; kh&aacute;ch sạn: Khi t&igrave;m nơi nghỉ, bạn n&ecirc;n để &yacute; tới c&aacute;c đ&aacute;nh gi&aacute; về vấn đề an ninh. Đ&aacute;nh gi&aacute; của kh&aacute;ch từng ở sẽ gi&uacute;p bạn biết th&ecirc;m về an ninh trong khu vực, kh&aacute;ch sạn c&oacute; m&aacute;y quay gi&aacute;m s&aacute;t v&agrave; biện ph&aacute;p để bảo vệ an to&agrave;n th&ocirc;ng tin cho kh&aacute;ch hay kh&ocirc;ng.</p>\n<p>14. T&igrave;m lối tho&aacute;t hiểm: Ngay khi nhận ph&ograve;ng kh&aacute;ch sạn bạn n&ecirc;n đọc hướng dẫn tho&aacute;t hiểm được d&aacute;n ở cửa ch&iacute;nh của ph&ograve;ng. Sau đ&oacute; t&igrave;m kiếm lối tho&aacute;t hiểm hoặc cầu thang bộ gần nhất. Tuy việc n&agrave;y chỉ để đề ph&ograve;ng trường hợp xảy ra hỏa hoạn hoặc sự cố bất ngờ nhưng rất quan trọng. Biết trước v&agrave; biết r&otilde; lối tho&aacute;t hiểm sẽ tăng cơ hội sống s&oacute;t của bạn trong những t&igrave;nh huống bất trắc.</p>\n<p>Lựa chọn kh&aacute;ch sạn trong k&igrave; nghỉ lu&ocirc;n l&agrave; vấn đề kh&oacute; khăn của hầu hết mọi người, bởi bạn lu&ocirc;n ph&acirc;n v&acirc;n kh&ocirc;ng biết chọn nơi n&agrave;o l&agrave; an to&agrave;n. Đ&ocirc;i khi cẩn thận l&agrave; kh&ocirc;ng thừa, chị em ch&uacute;ng ta cần lưu &yacute; những điều tr&ecirc;n đ&acirc;y để chuyến đi du lịch được thuận lợi, vui vẻ nh&eacute;!</p>', 'posts\\June2023\\0w4pAjIINlnMuHIQlKvS.jpg', 'nhung-dieu-kieng-ki-khi-o-khach-san-ma-ban-nen-biet', '', '', 'PUBLISHED', 0, '2023-05-21 23:51:09', '2023-05-31 19:19:56'),
(7, 1, 3, 'Ý nghĩa việc khách sạn để chocolate lên gối khi dọn phòng', '', 'Đầu những năm 1950, nam diễn viên Mỹ gốc Anh Cary Grant hẹn gặp nhân tình tại khách sạn Mayfair ở St Louist, bang Missouri, Mỹ. Biết cô gái đến trước, Grant yêu cầu khách sạn xếp chocolate thành một vệt dài từ phòng khách vào phòng ngủ, kết thúc trên một chiếc gối. Bên gối là một mảnh giấy nhắn mà Grant để lại cho người tình, có ghi tên cô.', '<p>C&aacute;c quản l&yacute; kh&aacute;ch sạn ph&aacute;t hiện ra dịch vụ n&agrave;y nhận được nhiều lời khen từ kh&aacute;ch thu&ecirc; ph&ograve;ng hơn bất kỳ hoạt động n&agrave;o kh&aacute;c.</p>\n<p>Đầu những năm 1950, nam diễn vi&ecirc;n Mỹ gốc Anh Cary Grant hẹn gặp nh&acirc;n t&igrave;nh tại kh&aacute;ch sạn Mayfair ở St Louist, bang Missouri, Mỹ. Biết c&ocirc; g&aacute;i đến trước, Grant y&ecirc;u cầu kh&aacute;ch sạn xếp chocolate th&agrave;nh một vệt d&agrave;i từ ph&ograve;ng kh&aacute;ch v&agrave;o ph&ograve;ng ngủ, kết th&uacute;c tr&ecirc;n một chiếc gối. B&ecirc;n gối l&agrave; một mảnh giấy nhắn m&agrave; Grant để lại cho người t&igrave;nh, c&oacute; ghi t&ecirc;n c&ocirc;.</p>\n<p><img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-1-tt3.jpg?v=1623927350639\" data-thumb=\"original\"></p>\n<p>Nguồn ảnh: sưu tầm</p>\n<p>Việc quyến rũ, t&aacute;n tỉnh của Grant đến nay vẫn kh&ocirc;ng ai biết kết quả thế n&agrave;o, nhưng người quản l&yacute; kh&aacute;ch sạn khi đ&oacute; đ&atilde; nảy ra một &yacute; tưởng. Người n&agrave;y sau đ&oacute; đ&atilde; y&ecirc;u cầu đặt những vi&ecirc;n chocolate l&ecirc;n gối cho dịch vụ Turndown trong kh&aacute;ch sạn, v&agrave; nhiều nơi tr&ecirc;n thế giới đ&atilde; học theo c&aacute;ch n&agrave;y.</p>\n<p>Turndown Service được hiểu l&agrave; dịch vụ dọn ph&ograve;ng v&agrave;o buổi chiều tối (khoảng 18-19h). Phục vụ ph&ograve;ng sau khi sắp xếp ngăn nắp sẽ để lại một lời ch&uacute;c tốt đẹp cho kh&aacute;ch v&agrave;o buổi tối, k&egrave;m chocolate. Một số nơi c&ograve;n phục vụ th&ecirc;m cocktail. Dịch vụ n&agrave;y tạo cho kh&aacute;ch cảm gi&aacute;c thoải m&aacute;i, h&agrave;i l&ograve;ng trước khi ngủ, thường &aacute;p dụng tại c&aacute;c kh&aacute;ch sạn 4-5 sao.</p>\n<p>Kh&aacute;ch sạn Grant thu&ecirc; ph&ograve;ng hẹn h&ograve; với t&igrave;nh nh&acirc;n ng&agrave;y nay được đổi t&ecirc;n th&agrave;nh Magnolia Hotel St. Louis v&agrave; những người quản l&yacute; ở đ&acirc;y vẫn tiếp tục truyền thống đặt chocolate l&ecirc;n gối trong c&aacute;c căn ph&ograve;ng.</p>\n<p>Một c&acirc;u hỏi được nhiều người đặt ra l&agrave; tại sao c&aacute;c kh&aacute;ch sạn lại học h&agrave;nh động n&agrave;y? Việc nạp một m&oacute;n ăn c&oacute; nhiều calo, đường v&agrave; chất b&eacute;o trước giờ đi ngủ kh&ocirc;ng phải &yacute; tưởng hay. Nhưng ngay cả khi sự thật l&agrave; như thế, c&aacute;c nh&agrave; quản l&yacute; vẫn ph&aacute;t hiện ra dịch vụ n&agrave;y nhận được nhiều lời khen ngợi từ kh&aacute;ch thu&ecirc; ph&ograve;ng hơn bất kỳ hoạt động n&agrave;o kh&aacute;c. V&agrave; hơn thế, chi ph&iacute; để đổi lấy sự h&agrave;i l&ograve;ng từ kh&aacute;ch h&agrave;ng lại rất nhỏ, khi gi&aacute; th&agrave;nh của chocolate kh&ocirc;ng đắt đỏ.</p>', 'posts\\June2023\\FW7VAw1lsPAbIcXAffkF.jpg', 'y-ngh-a-viec-khach-san-de-chocolate-len-goi-khi-don-phong', '', '', 'PUBLISHED', 0, '2023-05-21 23:52:02', '2023-05-31 19:19:35'),
(8, 1, 1, 'Tổ chức tiệc hội nghị, hội thảo cao cấp', '', '', '<p>Tổ chức&nbsp;<strong>tiệc hội nghị</strong>, hội thảo l&agrave; một hoạt động thường ni&ecirc;n của c&aacute;c c&aacute;c cơ quan, doanh nghiệp hay c&aacute;c tổ chức, đặc biệt l&agrave; trong khu vực thủ đ&ocirc; Hồ Ch&iacute; Minh. Tiệc hội nghị kh&ocirc;ng đơn giản chỉ l&agrave; một cuộc họp h&agrave;ng năm của c&ocirc;ng ty hay một tổ chức m&agrave; n&oacute; c&ograve;n l&agrave; cơ hội giao lưu giữa mọi người với nhau. Ch&iacute;nh v&igrave; vậy, việc lựa chọn một địa điểm ngo&agrave;i nơi l&agrave;m việc để tổ chức bữa tiệc hội nghị đ&oacute;, nghĩa l&agrave; kết hợp giữa c&aacute;c cuộc họp v&agrave; c&aacute;c buổi li&ecirc;n hoan l&agrave; hết sức cần thiết.</p>\n<p>Bạn muốn một bữa ti&ecirc;c hội nghị như &yacute; trong một kh&ocirc;ng gian sang trọng, m&oacute;n ăn ngon với chi ph&iacute; hợp l&iacute; để tổ chức tiệc cho c&ocirc;ng ty, tiếp kh&aacute;ch hay bữa tiệc ấm c&uacute;ng d&agrave;nh cho gia đ&igrave;nh v&agrave; những người th&acirc;n y&ecirc;u? Alper Hotel&nbsp;sẽ l&agrave; địa điểm l&agrave;m bạn h&agrave;i l&ograve;ng.</p>\n<p>Kh&ocirc;ng gian sang trọng với ph&ograve;ng tiệc hội nghị c&oacute; sức chứa l&ecirc;n tới 800 kh&aacute;ch c&ugrave;ng m&oacute;n ăn thơm ngon hấp dẫn được c&aacute;c đầu bếp gi&agrave;u kinh nghiệm chế biến, nh&agrave; h&agrave;ng Hương Sen mang đến dịch vụ tổ chức tiệc hội nghị cho c&aacute;c c&aacute; nh&acirc;n, tổ chức một c&aacute;ch chuy&ecirc;n nghiệp nhất.</p>\n<p>Bạn cũng c&oacute; thể tham khảo một v&agrave;i đơn vị với nhiều quy m&ocirc; từ lớn đến nhỏ, từ doanh nghiệp trong nước v&agrave; ngo&agrave;i nước đ&atilde; tổ chức hội nghị th&agrave;nh c&ocirc;ng</p>', 'posts\\June2023\\TKCjfoLBHRT8pU89wgRB.jpg', 'to-chuc-tiec-hoi-nghi-hoi-thao-cao-cap', '', '', 'PUBLISHED', 0, '2023-05-31 18:44:18', '2023-05-31 18:44:18'),
(9, 1, 1, 'Tổ chức tiệc cưới - kết nối nhân duyên', '', '', '<p>Bất cứ cặp đ&ocirc;i uy&ecirc;n ương n&agrave;o cũng đều mong muốn tổ chức một buổi tiệc cưới ho&agrave;n hảo cho sự kiện trọng đại của cuộc đời m&igrave;nh. Nhưng l&agrave;m thế n&agrave;o để khiến sự kiện ấy trở n&ecirc;n thật long trọng, đ&aacute;ng nhớ v&agrave; để lại nhiều dấu ấn tốt đẹp trong l&ograve;ng quan kh&aacute;ch l&agrave; điều m&agrave; c&aacute;c c&ocirc; d&acirc;u ch&uacute; rể đặc biệt quan t&acirc;m. Việc lựa&nbsp;chọn địa điểm tổ chức đ&aacute;m cưới vừa sang trọng, kh&ocirc;ng gian rộng r&atilde;i, m&oacute;n ăn ngon v&agrave; phục vụ chuy&ecirc;n nghiệp, trọn g&oacute;i m&agrave; lại ph&ugrave; hợp với khả năng kinh tế khiến Qu&yacute; kh&aacute;ch đau đầu? Đừng lo, Nh&agrave; H&agrave;ng Tiệc Cưới Alper chắc chắn sẽ l&agrave; lựa chọn đ&uacute;ng đắn nhất&nbsp;c&oacute; thể&nbsp;đ&aacute;p ứng tốt&nbsp;tất cả những băn khoăn tr&ecirc;n.&nbsp;&nbsp;</p>\n<p><strong>Kh&ocirc;ng Gian Nh&agrave; H&agrave;ng Bean C&ugrave;ng Đội Ngũ Phục Vụ</strong></p>\n<p>- Sảnh Chờ Tiệc Cưới được thiết kế theo lối kiến tr&uacute;c ch&acirc;u &Acirc;u rộng r&atilde;i, tho&aacute;ng đ&atilde;ng</p>\n<p>- Cơ Sở Hạ Tầng hiện đại: Kh&ocirc;ng gian tầng 2 phục vụ tiệc cưới với nhiều ph&ograve;ng đ&aacute;p ứng được nhu cầu của qu&yacute; kh&aacute;ch từ 80 &ndash; 800 kh&aacute;ch.</p>\n<p>- S&acirc;n Khấu được đầu tư hệ thống &acirc;m thanh &aacute;nh s&aacute;ng ti&ecirc;u chuẩn 4 sao</p>\n<p>- Đội ngũ nh&acirc;n vi&ecirc;n được đ&agrave;o tạo b&agrave;i bản nhiệt t&igrave;nh, chuy&ecirc;n nghiệp.</p>', 'posts\\June2023\\ku0pAcwBKrbXW72FhXzk.jpg', 'to-chuc-tiec-cuoi-ket-noi-nhan-duyen', '', '', 'PUBLISHED', 0, '2023-05-31 18:45:04', '2023-05-31 18:45:04'),
(10, 1, 1, 'Tổ chức tiệc cưới - hỏi ngoài trời', '', '', '<p>Tổ chức tiệc cưới - hỏi ngo&agrave;i trời kh&ocirc;ng chỉ v&igrave; kh&ocirc;ng gian tho&aacute;ng đ&atilde;ng, dễ chịu, b&ecirc;n cạnh đ&oacute;, c&ocirc; d&acirc;u ch&uacute; rể cũng c&oacute; thể trang tr&iacute; tiệc theo phong c&aacute;ch mới lạ để ghi dấu ấn đặc biệt cho ng&agrave;y quan trọng nhất đời m&igrave;nh.</p>\n<p>C&ocirc; d&acirc;u Ch&uacute; rể cũng c&oacute; thể trang tr&iacute; tiệc cưới theo phong c&aacute;ch mới lạ để ghi dấu ấn đặc biệt cho ng&agrave;y quan trọng nhất đời m&igrave;nh.</p>\n<p>Với kh&ocirc;ng gian t&aacute;ch biệt, thảm cỏ đẹp, c&acirc;y cối xanh tươi, kh&ocirc;ng gian rộng r&atilde;i. C&oacute; nhiều kh&ocirc;ng gian ri&ecirc;ng biệt với lối kiến tr&uacute;c cổ điển, ph&ugrave; hợp tổ chức</p>', 'posts\\June2023\\L2wYhJUYoLuvWU1Mkf6m.jpg', 'to-chuc-tiec-cuoi-hoi-ngoai-troi', '', '', 'PUBLISHED', 0, '2023-05-31 18:45:55', '2023-05-31 18:45:55'),
(11, 1, 1, 'Gói hội nghị, hội thảo tổ chức trong ngày', '', '', '<p>Để thuận tiện cho c&aacute;c buổi họp c&ocirc;ng việc của qu&yacute; kh&aacute;ch, ch&uacute;ng t&ocirc;i đ&atilde; thiết lập c&aacute;c g&oacute;i hội nghị đặc biệt v&agrave; đa dạng.</p>\n<p><strong>G&oacute;i hội nghị nửa ng&agrave;y bao gồm:</strong></p>\n<p>- Ph&ograve;ng họp, m&agrave;n h&igrave;nh chiếu, bảng flip chart, bảng l&oacute;t, b&uacute;t viết, nước suối</p>\n<p>- Tr&agrave; v&agrave; c&agrave; ph&ecirc; v&agrave;o giữa buổi s&aacute;ng &ndash; với nhiều loại tr&aacute;i c&acirc;y, b&aacute;nh ngọt v&agrave; b&aacute;nh quy</p>\n<p>- Ăn trưa dạng buffet hoặc thực đơn c&oacute; sẵn ngay trong ph&ograve;ng họp hoặc trong c&aacute;c nh&agrave; h&agrave;ng như Alpre Hotel</p>\n<p>- Kết nối internet Wi-Fi (vui l&ograve;ng th&ocirc;ng b&aacute;o trước 24 tiếng nếu qu&yacute; kh&aacute;ch c&oacute; y&ecirc;u cầu n&agrave;y)</p>\n<p><strong>G&oacute;i hội nghị cả ng&agrave;y bao gồm:</strong></p>\n<p>- Ph&ograve;ng họp, m&agrave;n h&igrave;nh chiếu, bảng flip chart, bảng l&oacute;t, b&uacute;t viết, nước suối</p>\n<p>- C&agrave; ph&ecirc; s&aacute;ng v&agrave; chiều &ndash; với nhiều loại tr&aacute;i c&acirc;y, b&aacute;nh ngọt v&agrave; b&aacute;nh quy</p>\n<p>- Ăn trưa dạng buffet hoặc thực đơn c&oacute; sẵn ngay trong ph&ograve;ng họp hoặc trong c&aacute;c nh&agrave; h&agrave;ng như Alpre Hotel</p>\n<p>- Kết nối internet Wi-Fi (vui l&ograve;ng th&ocirc;ng b&aacute;o trước 24 tiếng nếu qu&yacute; kh&aacute;ch c&oacute; y&ecirc;u cầu n&agrave;y)</p>\n<p>- Nếu c&oacute; y&ecirc;u cầu tổ chức hội nghị tại Alpre Hotel, vui l&ograve;ng li&ecirc;n hệ bộ phận đặt tiệc của ch&uacute;ng t&ocirc;i</p>', 'posts\\June2023\\IysWmbnrBlJMXyQ2tRcp.jpg', 'goi-hoi-nghi-hoi-thao-to-chuc-trong-ngay', '', '', 'PUBLISHED', 0, '2023-05-31 18:46:30', '2023-05-31 18:46:30'),
(12, 1, 2, 'Nghỉ dưỡng kết hợp massage thư giãn với đá nóng', '', '', '<p>Mang đến một kh&ocirc;ng gian thư gi&atilde;n với h&agrave;ng loạt liệu tr&igrave;nh chăm s&oacute;c cơ thể v&agrave; l&agrave;m đẹp cho kh&aacute;ch h&agrave;ng. Khu l&agrave;m đẹp được thiết kế cho cả kh&aacute;ch nam v&agrave; kh&aacute;ch nữ, t&iacute;ch hợp c&aacute;c phương ph&aacute;p v&agrave; thảo dược Việt Nam, Ấn Độ, v&agrave; Trung Hoa, được t&igrave;m thấy trong v&ugrave;ng Đ&ocirc;ng &Aacute;, hứa hẹn sẽ mang đến cho kh&aacute;ch h&agrave;ng những trải nghiệm chưa từng c&oacute; v&agrave; kh&oacute; qu&ecirc;n.</p>\n<p>Massage thư gi&atilde;n l&uacute;c&nbsp;du lịch đi nghỉ dưỡng thường muốn sử dụng liệu ph&aacute;p xoa b&oacute;p để giảm đau nhức cơ &ndash; như một liều thuốc giảm đau tự nhi&ecirc;n, đồng thời cũng gi&uacute;p giảm stress v&agrave; gi&uacute;p tăng cường hệ thống miễn dịch.</p>', 'posts\\June2023\\FfVn8lWwqgMCUszJzXiZ.jpg', 'nghi-duong-ket-hop-massage-thu-gian-voi-da-nong', '', '', 'PUBLISHED', 0, '2023-05-31 18:52:58', '2023-05-31 18:52:58'),
(13, 1, 2, 'Tắm trắng và kết hợp dưỡng da toàn thân', '', '', '<p dir=\"ltr\">Th&ocirc;ng qua liệu tr&igrave;nh tắm trắng cho ph&eacute;p loại bỏ đi lớp xỉn m&agrave;u, hạn chế sự ph&aacute;t triển của melanin &ndash; yếu tố khiến da bị đen. Kh&ocirc;ng chỉ dừng lại đ&oacute;, khi tắm trắng đ&uacute;ng phương ph&aacute;p, sử dụng c&aacute;c loại dược liệu thi&ecirc;n nhi&ecirc;n ph&ugrave; hợp c&ograve;n c&oacute; thể mang lại hiệu quả bất ngờ. Nhờ n&oacute; m&agrave; l&agrave;n da của bạn sẽ được chăm s&oacute;c s&acirc;u b&ecirc;n trong, khỏe mạnh chống lại việc oxy h&oacute;a, mang lại l&agrave; một l&agrave;n da trắng hồng, mịn m&agrave;ng.</p>\n<p dir=\"ltr\">Cũng trong một số nghi&ecirc;n cứu đ&atilde; chứng minh được rằng, tắm trắng c&oacute; thể nu&ocirc;i dưỡng c&aacute;c tế b&agrave;o ở tầng thượng b&igrave;, gi&uacute;p da ngăn chặn được c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại từ b&ecirc;n ngo&agrave;i như bụi bẩn, &aacute;nh nắng mặt trời&hellip;</p>', 'posts\\June2023\\XEOyECWWjPteT3EHKo7L.jpg', 'tam-trang-va-ket-hop-duong-da-toan-than', '', '', 'PUBLISHED', 0, '2023-05-31 18:55:06', '2023-05-31 18:57:03'),
(14, 1, 2, 'Massage body toàn thân bằng tinh dầu và hơi nước', '', '', '<p>Dầu massage được biết đến l&agrave; một liệu ph&aacute;p được sử dụng gi&uacute;p mang lại cảm gi&aacute;c thoải m&aacute;i v&agrave; thư gi&atilde;n về tinh thần, hỗ trợ đ&agrave;o thải độc tố để n&acirc;ng cao thể lực. Mặc d&ugrave; vậy, c&oacute; một thực tế l&agrave; kh&ocirc;ng nhiều người biết r&otilde; về c&aacute;ch chọn tinh dầu massage body sao cho ph&ugrave; hợp với cơ thể. Ch&iacute;nh v&igrave; vậy, trong b&agrave;i viết dưới đ&acirc;y ch&uacute;ng t&ocirc;i sẽ chia sẻ với bạn đọc một số th&ocirc;ng tin về tinh dầu massage cũng như những hướng dẫn massage tại nh&agrave; tốt cho sức khỏe được tư vấn từ c&aacute;c chuy&ecirc;n gia.</p>\n<p>T&igrave;nh dầu massage c&oacute; nhiều loại kh&aacute;c nhau để ph&ugrave; hợp sử dụng cho v&ugrave;ng mặt, ch&acirc;n tay, massage to&agrave;n th&acirc;n hay thậm ch&iacute; l&agrave; d&ugrave;ng để chăm s&oacute;c t&oacute;c. Theo một số nghi&ecirc;n cứu, dầu massage c&oacute; thể đem lại cho người sử dụng nhiều lợi &iacute;ch bao gồm: Thư gi&atilde;n đầu &oacute;c, giảm căng thẳng stress, cải thiện t&igrave;nh trạng đau nhức cơ thể, thanh lọc v&agrave; loại bỏ c&aacute;c độc tố. Kh&ocirc;ng chỉ vậy, tinh dầu massage c&ograve;n hỗ trợ th&uacute;c đẩy qu&aacute; tr&igrave;nh m&aacute;u lưu th&ocirc;ng, gi&uacute;p ngủ ngon hơn đồng thời dưỡng da để ngăn ngừa l&atilde;o h&oacute;a.</p>\n<p>Hấu hết c&aacute;c loại dầu massage chất lượng tốt đều c&oacute; qu&aacute; tr&igrave;nh chưng cất tương đối cầu kỳ, do đ&oacute; sẽ kh&ocirc;ng bị lẫn c&aacute;c loại tạp chất. Hơn nữa, sản phẩm cũng c&oacute; hương thơm c&ugrave;ng m&agrave;u sắc tự nhi&ecirc;n, kh&ocirc;ng g&acirc;y độc hại nếu nắm được c&aacute;ch chọn v&agrave; sử dụng đ&uacute;ng c&aacute;ch.</p>', 'posts\\June2023\\aorMI4fs1CYFo8AEz17q.png', 'massage-body-toan-than-bang-tinh-dau-va-hoi-nuoc', '', '', 'PUBLISHED', 0, '2023-05-31 18:56:22', '2023-05-31 18:56:22'),
(15, 1, 2, 'Tẩy da chết toàn thân bằng tinh chất cám gạo, ngũ cốc', '', '', '<p>C&aacute;m gạo được sử dụng với nhiều mục đ&iacute;ch kh&aacute;c nhau, tuy nhi&ecirc;n đối với việc chăm s&oacute;c sức khỏe l&agrave;n da, đặc biệt l&agrave; tẩy tế b&agrave;o chết bằng c&aacute;m gạo th&igrave; c&aacute;m phải được l&agrave;m thật kĩ hơn so với c&aacute;m th&ocirc; th&ocirc;ng thường. Đ&oacute; l&agrave; phải được tạo ra kỳ c&ocirc;ng hơn, phải sấy nhiều lần để lớp c&aacute;m đ&oacute; thật mịn v&agrave; kh&ocirc;ng c&ograve;n lẫn trấu. Nếu kh&ocirc;ng trong khi sử dụng c&aacute;m gạo tẩy tế b&agrave;o chết, phần trấu c&ograve;n dư sẽ dễ l&agrave;m trầy, xước da của bạn g&acirc;y n&ecirc;n dị ứng, mẫn đỏ. Bạn cũng n&ecirc;n lưu &yacute; chi tiết n&agrave;y để c&oacute; thể mua c&aacute;m gạo chuẩn.</p>\n<p>C&aacute;m gạo l&agrave; một loại nguy&ecirc;n liệu m&agrave; thi&ecirc;n nhi&ecirc;n đ&atilde; ban tặng cho ch&uacute;ng ta. Loại c&aacute;m n&agrave;y được tạo th&agrave;nh c&ugrave;ng với hạt gạo m&agrave; ch&uacute;ng ta ăn h&agrave;ng ng&agrave;y, v&igrave; vậy bạn c&oacute; thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m về mức độ an to&agrave;n của n&oacute; cũng như c&ocirc;ng dụng của việc tẩy tế b&agrave;o chết bằng c&aacute;m gạo.</p>\n<p>Kh&ocirc;ng những vậy, những vitamin c&oacute; trong c&aacute;m như vitamin E, vitamin B, kali, phylate, chất b&eacute;o omega 3 sẽ l&agrave; những chất dinh dưỡng nu&ocirc;i l&agrave;n da bạn trắng mịn, gi&uacute;p da lu&ocirc;n c&oacute; độ đ&agrave;n hồi, tươi trẻ v&agrave; khỏe mạnh.</p>\n<p>Ngo&agrave;i th&agrave;nh phần l&agrave; bột c&aacute;m gạo nguy&ecirc;n chất c&ograve;n c&oacute; sự kết hợp nhiều th&agrave;nh phần tự nhi&ecirc;n kh&aacute;c như bột yến mạch USA, bột l&aacute; neem Ấn Độ, bột tr&agrave; xanh matcha Nhật Bản, bột ngọc trai cao cấp, tinh bột đậu đỏ, tinh bột đậu xanh v&agrave; c&aacute;c loại tinh bột ngũ cốc kh&aacute;c kh&ocirc;ng chỉ gi&uacute;p bạn tẩy tế b&agrave;o chết, gi&uacute;p da trắng s&aacute;ng mịn m&agrave;ng, m&agrave; c&ograve;n nhiều c&ocirc;ng dụng kh&aacute;c như thải độc tố cho da, t&aacute;i tạo da, gi&uacute;p da sạch s&acirc;u, giảm dầu nhờn, kiềm khuẩn, chống l&atilde;o h&oacute;a, trẻ h&oacute;a l&agrave;n da, cản thiện mụn, mờ vết th&acirc;m,&hellip;</p>', 'posts\\June2023\\ZqKE82qx3D64kSoX34m5.jpg', 'tay-da-chet-toan-than-bang-tinh-chat-cam-gao-ng-coc', '', '', 'PUBLISHED', 0, '2023-05-31 18:58:19', '2023-05-31 18:58:19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `promotion` decimal(10,0) DEFAULT NULL,
  `sold` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `body`, `image`, `images`, `price`, `promotion`, `sold`, `stock`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(21, 'Phòng hạng sang', 'phong-hang-sang', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Mang đến cho Qu&yacute; kh&aacute;ch những trải nghiệm tiện nghi, thoải m&aacute;i.Ph&ograve;ng hạng sang hai giường đều c&oacute; kết cấu&nbsp;tiện nghi&nbsp;với ghế sofa thoải m&aacute;i c&ugrave;ng kh&ocirc;ng gian tối giản ấm c&uacute;ng hướng n&uacute;i.&nbsp;Mỗi ph&ograve;ng đều được trang bị TV m&agrave;n h&igrave;nh phẳng 32&rdquo;, kết nối Internet Wifi miễn ph&iacute; tại ph&ograve;ng v&agrave; nh&agrave; tắm đứng rộng r&atilde;i.&nbsp;</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất tự h&agrave;o&nbsp;khi đ&atilde; được đồng h&agrave;nh v&agrave; chia sẽ những khoảnh khắc đ&oacute; ngay tại kh&aacute;ch sạn của ch&uacute;ng t&ocirc;i !</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\aHtaE9lUQPNF5g1DjCx2.png', NULL, 3500000, 2, 1, NULL, 0, '2023-05-21 18:18:00', '2023-05-23 00:57:35', '4'),
(22, 'Phòng đôi nối liền', 'phong-doi-noi-lien', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Ph&ograve;ng c&oacute; thiết kế sang trọng v&agrave; kh&ocirc;ng gian sinh hoạt rộng r&atilde;i nhất, tiện nghi như ở nh&agrave; với kh&ocirc;ng gian nấu ăn bao gồm bếp từ, bồn rửa ch&eacute;n, dụng cụ nấu bếp, b&agrave;n l&agrave;m việc cỡ lớn, ba giường ngủ v&agrave; sofa hướng ra s&acirc;n vườn v&agrave; view th&agrave;nh phố.</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất tự h&agrave;o&nbsp;khi đ&atilde; được đồng h&agrave;nh v&agrave; chia sẽ những khoảnh khắc đ&oacute; ngay tại kh&aacute;ch sạn của ch&uacute;ng t&ocirc;i !</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\br0ttqm4BXfWETv7y6ty.png', NULL, 4000000, 2, 1, NULL, 0, '2023-05-21 18:19:00', '2023-05-23 00:57:49', '4'),
(25, 'PHÒNG PREMIUM', 'phong-premium', 'Thiết bị vệ sinh hoàn toàn tự động, đồ dùng cá nhân đầy đủ, chất lượng, thay mới thường xuyên.', '<ul>\n<li class=\"MsoNormal\">Tiện &iacute;ch đầy đủ, thiết bị điện tử tự động</li>\n<li class=\"MsoNormal\">ph&ograve;ng ngủ được ph&acirc;n t&aacute;ch r&otilde; r&agrave;ng được trang bị giường đ&ocirc;i cỡ lớn.</li>\n<li class=\"MsoNormal\">Thiết bị vệ sinh ho&agrave;n to&agrave;n tự động, đồ d&ugrave;ng c&aacute; nh&acirc;n đầy đủ, chất lượng, thay mới thường xuy&ecirc;n.</li>\n<li class=\"MsoNormal\">Ph&ograve;ng kh&aacute;ch rộng r&atilde;i, sofa &ecirc;m &aacute;i&nbsp;</li>\n<li class=\"MsoNormal\">Mini bar ngay tại ph&ograve;ng</li>\n<li class=\"MsoNormal\">Trang bị tivi m&agrave;n h&igrave;nh lớn, k&eacute;t sắt c&aacute; nh&acirc;n.</li>\n<li class=\"MsoNormal\">Wifi trong ph&ograve;ng v&agrave; khu vực c&ocirc;ng cộng.</li>\n<li class=\"MsoNormal\">Hưởng quyền lợi đặc biệt d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng tại kh&aacute;ch sạn: bể bơi v&ocirc; cực, ph&ograve;ng gym hiện đại, cinemax... c&ugrave;ng những tiện &iacute;ch kh&aacute;c</li>\n</ul>', 'products\\August2023\\BFB7sCPY1kXK53yudVNz.jpg', NULL, 910000, NULL, NULL, NULL, 1, '2023-08-04 20:24:00', '2023-08-08 00:32:52', '2'),
(26, 'PHÒNG PRESTIGE SUITE', 'phong-prestige-suite', 'Thiết bị vệ sinh hoàn toàn tự động, đồ dùng cá nhân đầy đủ, chất lượng, thay mới thường xuyên.', '<ul>\n<li>Tiện &iacute;ch đầy đủ, thiết bị điện tử tự động .</li>\n<li>&nbsp;Ph&ograve;ng ngủ ngăn c&aacute;ch với kh&ocirc;ng gian kh&aacute;c được trang bị giường đ&ocirc;i cỡ lớn.</li>\n<li>Thiết bị vệ sinh ho&agrave;n to&agrave;n tự động, đồ d&ugrave;ng c&aacute; nh&acirc;n đầy đủ, chất lượng, thay mới thường xuy&ecirc;n.</li>\n<li>Ph&ograve;ng kh&aacute;ch rộng r&atilde;i, sofa &ecirc;m &aacute;i&nbsp;</li>\n<li>Mini bar ngay tại ph&ograve;ng</li>\n<li>Trang bị tivi m&agrave;n h&igrave;nh lớn, k&eacute;t sắt c&aacute; nh&acirc;n.</li>\n<li>Wifi trong ph&ograve;ng v&agrave; khu vực c&ocirc;ng cộng.</li>\n<li>Hưởng quyền lợi đặc biệt d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng tại kh&aacute;ch sạn: bể bơi v&ocirc; cực, ph&ograve;ng gym hiện đại,... c&ugrave;ng những tiện &iacute;ch kh&aacute;c</li>\n</ul>', 'products\\August2023\\TR51gonoLkJLnEbd8awm.jpg', NULL, 1040000, NULL, NULL, NULL, 1, '2023-08-04 20:28:00', '2023-08-08 00:32:09', '2'),
(27, 'PHÒNG LUXURY', 'phong-luxury', 'Phòng khách rộng rãi sofa êm ái và mini bar ngay tại phòng', '<ul>\n<li class=\"MsoNormal\">Tiện &iacute;ch đầy đủ, thiết bị điện tử tự động điều khiển bằng m&aacute;y t&iacute;nh bảng, c&oacute; b&agrave;n l&agrave; hơi&nbsp; tại ph&ograve;ng&nbsp;</li>\n<li class=\"MsoNormal\">Một ph&ograve;ng trang bị 1giường đ&ocirc;i cỡ lớn, lựa chọn loại đệm cao cấp, &ecirc;m &aacute;i, đưa kh&aacute;ch h&agrave;ng nhẹ nh&agrave;ng v&agrave;o giấc ngủ</li>\n<li class=\"MsoNormal\">Ph&ograve;ng tắm ri&ecirc;ng, bồn tắm lớn, với khoảng nh&igrave;n tuyệt đẹp để qu&yacute; kh&aacute;ch c&oacute; thể ng&acirc;m m&igrave;nh thư gi&atilde;n v&agrave; ngắm &aacute;nh đ&egrave;n lung linh</li>\n<li class=\"MsoNormal\">Thiết bị vệ sinh ho&agrave;n to&agrave;n tự động, đồ d&ugrave;ng c&aacute; nh&acirc;n đầy đủ, chất lượng, thay mới thường xuy&ecirc;n.</li>\n<li class=\"MsoNormal\">Ph&ograve;ng kh&aacute;ch rộng r&atilde;i sofa &ecirc;m &aacute;i v&agrave; mini bar ngay tại ph&ograve;ng</li>\n<li class=\"MsoNormal\">Wifi trong ph&ograve;ng v&agrave; khu vực c&ocirc;ng cộng.</li>\n<li class=\"MsoNormal\">Hưởng quyền lợi đặc biệt d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng tại kh&aacute;ch sạn: bể bơi v&ocirc; cực, ph&ograve;ng gym hiện đại, cinemax... c&ugrave;ng những tiện &iacute;ch kh&aacute;c</li>\n</ul>', 'products\\August2023\\gcEo3zrBGzI6E9i9HVV9.jpg', NULL, 1560000, NULL, NULL, NULL, 1, '2023-08-04 20:30:00', '2023-08-08 00:31:21', '2'),
(28, 'PHÒNG GRAND LUXURY', 'phong-grand-luxury', 'Hưởng quyền lợi đặc biệt dành riêng cho khách hàng tại khách sạn: bể bơi vô cực, phòng gym hiện đại,cinemax... cùng những tiện ích khác', '<ul>\n<li>Tiện &iacute;ch đầy đủ, thiết bị điện tử tự động , trang bị latop tại ph&ograve;ng , ph&ograve;ng nghi c&oacute; trang bị b&agrave;n l&agrave; hơi&nbsp;</li>\n<li>1 ph&ograve;ng ngủ được ph&acirc;n t&aacute;ch r&otilde; r&agrave;ng được trang bị giường đ&ocirc;i cỡ lớn.</li>\n<li>Thiết bị vệ sinh ho&agrave;n to&agrave;n tự động, đồ d&ugrave;ng c&aacute; nh&acirc;n đầy đủ, chất lượng, thay mới thường xuy&ecirc;n.</li>\n<li>Ph&ograve;ng kh&aacute;ch rộng r&atilde;i, sofa &ecirc;m &aacute;i&nbsp;</li>\n<li>Mini bar ngay tại ph&ograve;ng</li>\n<li>Trang bị tivi m&agrave;n h&igrave;nh lớn, k&eacute;t sắt c&aacute; nh&acirc;n.</li>\n<li>Wifi trong ph&ograve;ng v&agrave; khu vực c&ocirc;ng cộng.</li>\n<li>Hưởng quyền lợi đặc biệt d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng tại kh&aacute;ch sạn: bể bơi v&ocirc; cực, ph&ograve;ng gym hiện đại,cinemax... c&ugrave;ng những tiện &iacute;ch kh&aacute;c</li>\n</ul>', 'products\\August2023\\V0r3pk9aoId0VeVXf8HV.jpg', NULL, 1950000, NULL, NULL, NULL, 1, '2023-08-04 20:31:00', '2023-08-08 00:30:29', '2'),
(29, 'PHÒNG APARTMENT', 'phong-apartment', 'Hưởng quyền lợi đặc biệt dành riêng cho khách hàng tại khách sạn: bể bơi vô cực, phòng gym hiện đại cinemax,... cùng những tiện ích khác', '<ul>\n<li>Tiện &iacute;ch đầy đủ, thiết bị điện tử tự động</li>\n<li>1 Giường đ&ocirc;i cỡ lớn</li>\n<li>Kh&ocirc;ng gian ph&ograve;ng kh&ocirc;ng ngăn c&aacute;ch</li>\n<li>Khu vực ph&ograve;ng kh&aacute;ch rộng r&atilde;i, sofa &ecirc;m &aacute;i&nbsp;</li>\n<li>Thiết bị vệ sinh ho&agrave;n to&agrave;n tự động, đồ d&ugrave;ng c&aacute; nh&acirc;n đầy đủ, chất lượng, thay mới thường xuy&ecirc;n.</li>\n<li>Mini bar ngay tại ph&ograve;ng</li>\n<li>Trang bị tivi m&agrave;n h&igrave;nh lớn, k&eacute;t sắt c&aacute; nh&acirc;n.</li>\n<li>Wifi trong ph&ograve;ng v&agrave; khu vực c&ocirc;ng cộng.</li>\n<li>Hưởng quyền lợi đặc biệt d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng tại kh&aacute;ch sạn: bể bơi v&ocirc; cực, ph&ograve;ng gym hiện đại cinemax,... c&ugrave;ng những tiện &iacute;ch kh&aacute;c</li>\n</ul>', 'products\\August2023\\oA3xZ23PrHyPo19qOlH3.jpg', NULL, 1350000, NULL, NULL, NULL, 1, '2023-08-04 20:32:00', '2023-08-08 00:29:28', '2'),
(30, 'PHÒNG PRESIDENT', 'phong-president', 'Phòng khách rộng rãi, sofa cao cấp, bàn làm việc riêng và mini bar ngay tại phòng', '<ul>\n<li>Diện t&iacute;ch hơn 100m2,&nbsp;</li>\n<li>Giường ngủ tr&ograve;n size lớn cao cấp mang đến giấc ngủ thoải m&aacute;i nhất</li>\n<li>Trang bị tivi th&ocirc;ng minh 75 inch</li>\n<li>Trang bị laptop l&agrave;m việc ri&ecirc;ng, b&agrave;n l&agrave; hơi</li>\n<li>Ph&ograve;ng kh&aacute;ch rộng r&atilde;i, sofa cao cấp, b&agrave;n l&agrave;m việc ri&ecirc;ng v&agrave; mini bar ngay tại ph&ograve;ng</li>\n<li>Wifi trong ph&ograve;ng v&agrave; khu vực c&ocirc;ng cộng</li>\n<li>Ph&ograve;ng tắm ri&ecirc;ng với bồn tắm cao cấp</li>\n<li>&nbsp;Thiết bị vệ sinh ho&agrave;n to&agrave;n tự động, đồ d&ugrave;ng c&aacute; nh&acirc;n đầy đủ, chất lượng, thay mới thường xuy&ecirc;n.</li>\n<li>Đội ngũ phục vụ ri&ecirc;ng ngay tại ph&ograve;ng.</li>\n<li>Hưởng quyền lợi đặc biệt d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng tại kh&aacute;ch sạn: bể bơi v&ocirc; cực, ph&ograve;ng gym hiện đại cenimac,... c&ugrave;ng những tiện &iacute;ch kh&aacute;c.</li>\n</ul>', 'products\\August2023\\qpeRLzO1WB7MFQefrLF9.jpg', NULL, 5000000, NULL, NULL, NULL, 1, '2023-08-04 20:34:00', '2023-08-08 00:28:17', '2');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(2, 'user', 'Normal User', '2023-02-20 09:13:34', '2023-02-20 09:13:34'),
(3, 'staff', 'staff', '2023-08-11 21:09:54', '2023-08-11 21:09:54');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `image`, `desc`, `created_at`, `updated_at`, `icon`) VALUES
(6, 'Xe đưa đón', NULL, '', '2023-08-04 19:02:00', '2023-08-08 00:04:23', 'flaticon-taxi'),
(7, 'Bãi đỗ xe', NULL, '', '2023-08-04 19:02:00', '2023-08-08 00:04:02', 'flaticon-garage'),
(8, 'Bữa sáng', NULL, '', '2023-08-04 19:03:00', '2023-08-08 00:03:49', 'flaticon-breakfast'),
(9, 'Bể bơi vô cực', NULL, '', '2023-08-04 19:03:00', '2023-08-08 00:03:38', 'flaticon-swimming-pool'),
(10, 'Miễn phí wifi', NULL, '', '2023-08-04 19:03:00', '2023-08-08 00:03:22', 'flaticon-wifi-router'),
(11, 'Quầy bar', NULL, '', '2023-08-04 19:03:00', '2023-08-08 00:02:52', 'flaticon-bar-counter');

-- --------------------------------------------------------

--
-- Table structure for table `service_product`
--

CREATE TABLE `service_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_product`
--

INSERT INTO `service_product` (`id`, `service_id`, `product_id`) VALUES
(1, 1, 22),
(2, 2, 22),
(3, 4, 22),
(4, 5, 22),
(5, 1, 21),
(6, 2, 21),
(7, 4, 21),
(8, 5, 21),
(9, 1, 20),
(10, 2, 20),
(11, 4, 20),
(12, 5, 20),
(13, 1, 19),
(14, 3, 19),
(15, 4, 19),
(16, 5, 19),
(17, 1, 18),
(18, 2, 18),
(19, 4, 18),
(20, 5, 18),
(21, 1, 17),
(22, 2, 17),
(23, 4, 17),
(24, 5, 17),
(25, 1, 16),
(26, 2, 16),
(27, 4, 16),
(28, 5, 16),
(29, 1, 15),
(30, 3, 15),
(31, 4, 15),
(32, 5, 15),
(33, 1, 14),
(34, 3, 14),
(35, 4, 14),
(36, 5, 14),
(37, 1, 13),
(38, 2, 13),
(39, 4, 13),
(40, 5, 13),
(41, 1, 12),
(42, 2, 12),
(43, 4, 12),
(44, 5, 12),
(45, 1, 11),
(46, 3, 11),
(47, 4, 11),
(48, 5, 11),
(49, 1, 10),
(50, 2, 10),
(51, 4, 10),
(52, 5, 10),
(53, 1, 24),
(54, 2, 24),
(55, 3, 24),
(56, 4, 24),
(57, 5, 24),
(58, 6, 25),
(59, 7, 25),
(60, 8, 25),
(61, 9, 25),
(62, 10, 25),
(63, 6, 26),
(64, 7, 26),
(65, 9, 26),
(66, 8, 26),
(67, 10, 26),
(68, 6, 27),
(69, 7, 27),
(70, 8, 27),
(71, 9, 27),
(72, 10, 27),
(73, 6, 28),
(74, 7, 28),
(75, 8, 28),
(76, 9, 28),
(77, 10, 28),
(78, 6, 29),
(79, 7, 29),
(80, 8, 29),
(81, 9, 29),
(82, 10, 29),
(83, 6, 30),
(84, 7, 30),
(85, 8, 30),
(86, 9, 30),
(87, 10, 30);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'TheKing Hotel', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Chào mừng quý khách hàng đến với THE KING HOTEL, khách sạn 4 sao sang trọng bậc nhất tại Thái Nguyên.', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\August2023\\UOVbB1WaozyxYGrjOlTK.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\May2023\\lwBtfWGqHVmWLDonLnp5.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'TheKing hotel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Bean hotel. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.phone', 'phone', '0399.215.877', NULL, 'text', 6, 'Site'),
(12, 'site.email', 'email', 'thekinghotel@gmail.com', NULL, 'text', 7, 'Site'),
(13, 'site.address', 'address', 'No. 99, Bac Son Street, Group 11, Hoang Van Thu Ward, Thai Nguyen City', NULL, 'text', 8, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2023-02-20 09:15:45', '2023-02-20 09:15:45'),
(31, 'menu_items', 'title', 1, 'en', 'Dashboard', '2023-02-21 02:52:21', '2023-02-21 02:52:21'),
(32, 'menu_items', 'title', 3, 'en', 'Admin', '2023-02-21 02:52:37', '2023-02-21 02:52:37'),
(33, 'menu_items', 'title', 2, 'en', 'Media', '2023-02-21 02:52:51', '2023-02-21 02:52:51'),
(34, 'menu_items', 'title', 12, 'en', 'Posts', '2023-02-21 02:52:58', '2023-02-21 02:52:58'),
(35, 'menu_items', 'title', 13, 'en', 'Pages', '2023-02-21 02:53:04', '2023-02-21 02:53:04'),
(36, 'menu_items', 'title', 11, 'en', 'Categories', '2023-02-21 02:53:14', '2023-02-21 02:53:14'),
(38, 'menu_items', 'title', 15, 'en', 'Tài khoản', '2023-02-21 02:55:47', '2023-02-21 02:55:47'),
(39, 'menu_items', 'title', 4, 'en', 'Roles', '2023-02-21 02:56:05', '2023-02-21 02:56:05'),
(40, 'menu_items', 'title', 10, 'en', 'Settings', '2023-02-21 02:59:16', '2023-02-21 02:59:16'),
(41, 'menu_items', 'title', 17, 'en', 'Content', '2023-02-21 03:03:50', '2023-02-21 03:03:50'),
(42, 'menu_items', 'title', 18, 'en', 'Banners', '2023-02-21 03:07:31', '2023-02-21 03:07:31'),
(43, 'data_rows', 'display_name', 67, 'en', 'Id', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(44, 'data_rows', 'display_name', 68, 'en', 'Title', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(45, 'data_rows', 'display_name', 69, 'en', 'Slug', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(46, 'data_rows', 'display_name', 70, 'en', 'Image', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(47, 'data_rows', 'display_name', 71, 'en', 'Created At', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(48, 'data_rows', 'display_name', 72, 'en', 'Updated At', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(49, 'data_types', 'display_name_singular', 8, 'en', 'Banner', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(50, 'data_types', 'display_name_plural', 8, 'en', 'Banners', '2023-02-21 03:24:29', '2023-02-21 03:24:29'),
(51, 'data_rows', 'display_name', 95, 'en', 'Type', '2023-02-21 03:28:13', '2023-02-21 03:28:13'),
(52, 'data_rows', 'display_name', 80, 'en', 'Id', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(53, 'data_rows', 'display_name', 81, 'en', 'Title', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(54, 'data_rows', 'display_name', 82, 'en', 'Slug', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(55, 'data_rows', 'display_name', 83, 'en', 'Description', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(56, 'data_rows', 'display_name', 84, 'en', 'Body', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(57, 'data_rows', 'display_name', 85, 'en', 'Image', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(58, 'data_rows', 'display_name', 86, 'en', 'Images', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(59, 'data_rows', 'display_name', 87, 'en', 'Price', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(60, 'data_rows', 'display_name', 88, 'en', 'Promotion', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(61, 'data_rows', 'display_name', 89, 'en', 'Sold', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(62, 'data_rows', 'display_name', 90, 'en', 'Stock', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(63, 'data_rows', 'display_name', 91, 'en', 'Status', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(64, 'data_rows', 'display_name', 92, 'en', 'Created At', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(65, 'data_rows', 'display_name', 93, 'en', 'Updated At', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(66, 'data_rows', 'display_name', 94, 'en', 'collections', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(67, 'data_types', 'display_name_singular', 10, 'en', 'Sản phẩm', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(68, 'data_types', 'display_name_plural', 10, 'en', 'Sản phẩm', '2023-02-21 03:48:50', '2023-02-21 03:48:50'),
(69, 'data_rows', 'display_name', 73, 'en', 'Id', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(70, 'data_rows', 'display_name', 74, 'en', 'Title', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(71, 'data_rows', 'display_name', 75, 'en', 'Slug', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(72, 'data_rows', 'display_name', 76, 'en', 'Description', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(73, 'data_rows', 'display_name', 77, 'en', 'Image', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(74, 'data_rows', 'display_name', 78, 'en', 'Created At', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(75, 'data_rows', 'display_name', 79, 'en', 'Updated At', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(76, 'data_rows', 'display_name', 98, 'en', 'products', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(77, 'data_types', 'display_name_singular', 9, 'en', 'Danh mục sản phẩm', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(78, 'data_types', 'display_name_plural', 9, 'en', 'Danh mục sản phẩm', '2023-02-21 03:52:31', '2023-02-21 03:52:31'),
(80, 'menu_items', 'title', 20, 'en', 'Sản phẩm', '2023-02-21 08:12:58', '2023-02-21 08:12:58'),
(81, 'menu_items', 'title', 19, 'en', 'Danh mục sản phẩm', '2023-02-21 08:13:18', '2023-02-21 08:13:18'),
(82, 'data_rows', 'display_name', 99, 'en', 'Id', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(83, 'data_rows', 'display_name', 100, 'en', 'Tên đồ dùng', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(84, 'data_rows', 'display_name', 101, 'en', 'Mô tả', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(85, 'data_rows', 'display_name', 102, 'en', 'Giá', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(86, 'data_rows', 'display_name', 103, 'en', 'Mô tả sản phẩm', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(87, 'data_rows', 'display_name', 104, 'en', 'Chính sách đổ trả', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(88, 'data_rows', 'display_name', 105, 'en', 'Hình ảnh', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(89, 'data_rows', 'display_name', 106, 'en', 'Trạng thái', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(90, 'data_rows', 'display_name', 107, 'en', 'Category Id', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(91, 'data_rows', 'display_name', 108, 'en', 'Created At', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(92, 'data_rows', 'display_name', 109, 'en', 'Updated At', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(93, 'data_types', 'display_name_singular', 12, 'en', 'Ẩm thực', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(94, 'data_types', 'display_name_plural', 12, 'en', 'Ẩm thực', '2023-05-21 19:06:44', '2023-05-21 19:06:44'),
(95, 'menu_items', 'title', 26, 'en', 'Ẩm thực', '2023-05-21 19:21:14', '2023-05-21 19:21:14'),
(96, 'data_rows', 'display_name', 44, 'en', 'ID', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(97, 'data_rows', 'display_name', 45, 'en', 'Author', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(98, 'data_rows', 'display_name', 46, 'en', 'Title', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(99, 'data_rows', 'display_name', 47, 'en', 'Excerpt', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(100, 'data_rows', 'display_name', 48, 'en', 'Body', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(101, 'data_rows', 'display_name', 55, 'en', 'Page Image', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(102, 'data_rows', 'display_name', 49, 'en', 'Slug', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(103, 'data_rows', 'display_name', 50, 'en', 'Meta Description', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(104, 'data_rows', 'display_name', 51, 'en', 'Meta Keywords', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(105, 'data_rows', 'display_name', 52, 'en', 'Status', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(106, 'data_rows', 'display_name', 53, 'en', 'Created At', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(107, 'data_rows', 'display_name', 54, 'en', 'Updated At', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(108, 'data_types', 'display_name_singular', 6, 'en', 'Page', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(109, 'data_types', 'display_name_plural', 6, 'en', 'Pages', '2023-05-21 20:08:30', '2023-05-21 20:08:30'),
(110, 'data_rows', 'display_name', 112, 'en', 'Type', '2023-05-21 20:13:54', '2023-05-21 20:13:54'),
(120, 'data_rows', 'display_name', 113, 'en', 'Hình ảnh thêm', '2023-05-21 20:31:25', '2023-05-21 20:31:25'),
(121, 'data_rows', 'display_name', 114, 'en', 'Icon', '2023-05-21 20:32:49', '2023-05-21 20:32:49'),
(122, 'pages', 'title', 5, 'en', 'Enjoy a Luxury Experience', '2023-05-22 00:36:43', '2023-08-04 19:18:04'),
(123, 'pages', 'body', 5, 'en', '<p>With 4-star service, King Hotel has 60 rooms to bring you the most comfort and relaxation. All rooms have a wide-screen TV, a small safe and a mini bar and tablet. Each room has a convenient living room area, a bedroom equipped with a high-class double bed, a modern bathroom, some high-class rooms with a private bath located in the best position in the room so you can just soak as well as looking at the city. There are a total of 6 room types including: Standard presidential room for heads of state, Luxury room with modern glass wall design, Grand Luxury room with 2 spacious &amp; utility double rooms, Apartment room with fully furnished as a high-class apartment, Premium room fully meets high-class rooms standard, Prestige Room for the great rest needs of visitors. The hotel has free wifi for all rooms and network cable for guests who need it.</p>\n<p>If you like the open space to see the city and breathe the fresh air with lots of green trees, Coffee Garden is the right place to enjoy a good cup of coffee and snacks in a relaxed atmosphere. The band at King Hotel will play great music and certainly, you could sing a few words with us.</p>\n<p>Alternatively, guests can enjoy energy-burning exercises during their stay at the gym. The King Hotel is fully equipped with modern machinery and equipment to serve the needs of customers such as running machines, weights, Yoga, hot and cold sauna, gym, boxing, etc.</p>', '2023-05-22 00:36:43', '2023-08-08 00:13:47'),
(124, 'pages', 'slug', 5, 'en', 've-chung-toi', '2023-05-22 00:36:43', '2023-05-22 00:36:43'),
(125, 'menu_items', 'title', 23, 'en', 'Loại phòng', '2023-05-22 01:35:57', '2023-05-22 01:35:57'),
(126, 'data_rows', 'display_name', 115, 'en', 'collections', '2023-05-22 01:39:51', '2023-05-22 01:39:51'),
(127, 'data_rows', 'display_name', 116, 'en', 'Category Id', '2023-05-22 01:45:30', '2023-05-22 01:45:30'),
(128, 'data_rows', 'display_name', 117, 'en', 'collections', '2023-05-22 01:49:59', '2023-05-22 01:49:59'),
(129, 'menu_items', 'title', 31, 'en', 'PREMIUM ROOM', '2023-05-22 01:58:49', '2023-08-06 20:30:49'),
(130, 'menu_items', 'title', 32, 'en', 'PRESTIGE SUITE ROOM', '2023-05-22 01:58:59', '2023-08-06 20:31:47'),
(131, 'menu_items', 'title', 33, 'en', 'LUXURY ROOM', '2023-05-22 01:59:09', '2023-08-06 20:32:58'),
(132, 'menu_items', 'title', 30, 'en', 'Rooms', '2023-05-22 01:59:30', '2023-08-06 20:29:54'),
(134, 'data_rows', 'display_name', 118, 'en', 'Tiện ích', '2023-05-23 00:19:23', '2023-05-23 00:19:23'),
(135, 'data_rows', 'display_name', 119, 'en', 'Diện tích phòng', '2023-05-23 00:19:23', '2023-05-23 00:19:23'),
(136, 'data_rows', 'display_name', 120, 'en', 'Id', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(137, 'data_rows', 'display_name', 121, 'en', 'Tên dịch vụ', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(138, 'data_rows', 'display_name', 122, 'en', 'Hình ảnh', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(139, 'data_rows', 'display_name', 123, 'en', 'Mô tả', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(140, 'data_rows', 'display_name', 124, 'en', 'Created At', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(141, 'data_rows', 'display_name', 125, 'en', 'Updated At', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(142, 'data_types', 'display_name_singular', 14, 'en', 'Dịch vụ phòng', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(143, 'data_types', 'display_name_plural', 14, 'en', 'Dịch vụ phòng', '2023-05-23 00:49:13', '2023-05-23 00:49:13'),
(144, 'data_rows', 'display_name', 126, 'en', 'services', '2023-05-23 00:53:46', '2023-05-23 00:53:46'),
(145, 'data_rows', 'display_name', 127, 'en', 'Id', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(146, 'data_rows', 'display_name', 128, 'en', 'Họ Tên', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(147, 'data_rows', 'display_name', 129, 'en', 'Số điện thoại', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(148, 'data_rows', 'display_name', 130, 'en', 'Ngày đến', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(149, 'data_rows', 'display_name', 131, 'en', 'Ngày đi', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(150, 'data_rows', 'display_name', 132, 'en', 'Số ngày ở', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(151, 'data_rows', 'display_name', 133, 'en', 'Người lớn', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(152, 'data_rows', 'display_name', 134, 'en', 'Trẻ em', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(153, 'data_rows', 'display_name', 135, 'en', 'Phòng', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(154, 'data_rows', 'display_name', 136, 'en', 'Trạng thái', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(155, 'data_rows', 'display_name', 137, 'en', 'Giá tiền', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(156, 'data_rows', 'display_name', 138, 'en', 'Created At', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(157, 'data_rows', 'display_name', 139, 'en', 'Updated At', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(158, 'data_types', 'display_name_singular', 15, 'en', 'Quản lý đặt phòng', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(159, 'data_types', 'display_name_plural', 15, 'en', 'Quản lý đặt phòng', '2023-05-31 00:00:13', '2023-05-31 00:00:13'),
(160, 'data_rows', 'display_name', 140, 'en', 'products', '2023-05-31 00:03:04', '2023-05-31 00:03:04'),
(161, 'data_rows', 'display_name', 141, 'en', 'Room Id', '2023-05-31 00:03:50', '2023-05-31 00:03:50'),
(162, 'data_rows', 'display_name', 142, 'en', 'Tên phòng', '2023-05-31 02:11:54', '2023-05-31 02:11:54'),
(163, 'menu_items', 'title', 34, 'en', 'Cuisine', '2023-05-31 17:57:48', '2023-08-06 20:29:41'),
(165, 'categories', 'name', 1, 'en', 'Category 1', '2023-05-31 18:32:50', '2023-05-31 18:32:50'),
(166, 'categories', 'slug', 1, 'en', 'category-1', '2023-05-31 18:32:50', '2023-05-31 18:32:50'),
(167, 'categories', 'name', 2, 'en', 'Category 2', '2023-05-31 18:33:25', '2023-05-31 18:33:25'),
(168, 'categories', 'slug', 2, 'en', 'category-2', '2023-05-31 18:33:25', '2023-05-31 18:33:25'),
(169, 'posts', 'title', 7, 'en', 'Ý nghĩa việc khách sạn để chocolate lên gối khi dọn phòng', '2023-05-31 18:42:19', '2023-05-31 18:42:19'),
(170, 'posts', 'excerpt', 7, 'en', 'Đầu những năm 1950, nam diễn viên Mỹ gốc Anh Cary Grant hẹn gặp nhân tình tại khách sạn Mayfair ở St Louist, bang Missouri, Mỹ. Biết cô gái đến trước, Grant yêu cầu khách sạn xếp chocolate thành một vệt dài từ phòng khách vào phòng ngủ, kết thúc trên một chiếc gối. Bên gối là một mảnh giấy nhắn mà Grant để lại cho người tình, có ghi tên cô.', '2023-05-31 18:42:19', '2023-05-31 18:42:19'),
(171, 'posts', 'body', 7, 'en', '<p>C&aacute;c quản l&yacute; kh&aacute;ch sạn ph&aacute;t hiện ra dịch vụ n&agrave;y nhận được nhiều lời khen từ kh&aacute;ch thu&ecirc; ph&ograve;ng hơn bất kỳ hoạt động n&agrave;o kh&aacute;c.</p>\n<p>Đầu những năm 1950, nam diễn vi&ecirc;n Mỹ gốc Anh Cary Grant hẹn gặp nh&acirc;n t&igrave;nh tại kh&aacute;ch sạn Mayfair ở St Louist, bang Missouri, Mỹ. Biết c&ocirc; g&aacute;i đến trước, Grant y&ecirc;u cầu kh&aacute;ch sạn xếp chocolate th&agrave;nh một vệt d&agrave;i từ ph&ograve;ng kh&aacute;ch v&agrave;o ph&ograve;ng ngủ, kết th&uacute;c tr&ecirc;n một chiếc gối. B&ecirc;n gối l&agrave; một mảnh giấy nhắn m&agrave; Grant để lại cho người t&igrave;nh, c&oacute; ghi t&ecirc;n c&ocirc;.</p>\n<p><img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-1-tt3.jpg?v=1623927350639\" data-thumb=\"original\"></p>\n<p>Nguồn ảnh: sưu tầm</p>\n<p>Việc quyến rũ, t&aacute;n tỉnh của Grant đến nay vẫn kh&ocirc;ng ai biết kết quả thế n&agrave;o, nhưng người quản l&yacute; kh&aacute;ch sạn khi đ&oacute; đ&atilde; nảy ra một &yacute; tưởng. Người n&agrave;y sau đ&oacute; đ&atilde; y&ecirc;u cầu đặt những vi&ecirc;n chocolate l&ecirc;n gối cho dịch vụ Turndown trong kh&aacute;ch sạn, v&agrave; nhiều nơi tr&ecirc;n thế giới đ&atilde; học theo c&aacute;ch n&agrave;y.</p>\n<p>Turndown Service được hiểu l&agrave; dịch vụ dọn ph&ograve;ng v&agrave;o buổi chiều tối (khoảng 18-19h). Phục vụ ph&ograve;ng sau khi sắp xếp ngăn nắp sẽ để lại một lời ch&uacute;c tốt đẹp cho kh&aacute;ch v&agrave;o buổi tối, k&egrave;m chocolate. Một số nơi c&ograve;n phục vụ th&ecirc;m cocktail. Dịch vụ n&agrave;y tạo cho kh&aacute;ch cảm gi&aacute;c thoải m&aacute;i, h&agrave;i l&ograve;ng trước khi ngủ, thường &aacute;p dụng tại c&aacute;c kh&aacute;ch sạn 4-5 sao.</p>\n<p>Kh&aacute;ch sạn Grant thu&ecirc; ph&ograve;ng hẹn h&ograve; với t&igrave;nh nh&acirc;n ng&agrave;y nay được đổi t&ecirc;n th&agrave;nh Magnolia Hotel St. Louis v&agrave; những người quản l&yacute; ở đ&acirc;y vẫn tiếp tục truyền thống đặt chocolate l&ecirc;n gối trong c&aacute;c căn ph&ograve;ng.</p>\n<p>Một c&acirc;u hỏi được nhiều người đặt ra l&agrave; tại sao c&aacute;c kh&aacute;ch sạn lại học h&agrave;nh động n&agrave;y? Việc nạp một m&oacute;n ăn c&oacute; nhiều calo, đường v&agrave; chất b&eacute;o trước giờ đi ngủ kh&ocirc;ng phải &yacute; tưởng hay. Nhưng ngay cả khi sự thật l&agrave; như thế, c&aacute;c nh&agrave; quản l&yacute; vẫn ph&aacute;t hiện ra dịch vụ n&agrave;y nhận được nhiều lời khen ngợi từ kh&aacute;ch thu&ecirc; ph&ograve;ng hơn bất kỳ hoạt động n&agrave;o kh&aacute;c. V&agrave; hơn thế, chi ph&iacute; để đổi lấy sự h&agrave;i l&ograve;ng từ kh&aacute;ch h&agrave;ng lại rất nhỏ, khi gi&aacute; th&agrave;nh của chocolate kh&ocirc;ng đắt đỏ.</p>', '2023-05-31 18:42:19', '2023-05-31 18:42:19'),
(172, 'posts', 'slug', 7, 'en', 'y-ngh-a-viec-khach-san-de-chocolate-len-goi-khi-don-phong', '2023-05-31 18:42:19', '2023-05-31 18:42:19'),
(173, 'posts', 'title', 6, 'en', 'Những điều kiêng kị khi ở khách sạn mà bạn nên biết', '2023-05-31 18:42:25', '2023-05-31 18:42:25'),
(174, 'posts', 'excerpt', 6, 'en', 'Để không gặp nhiều phiền toái và giữ an toàn cho chính bản thân trong mỗi chuyến đi, bạn nên cẩn thận tìm hiểu một số kinh nghiệm, lưu ý cần thiết khi thuê và ở khách sạn.', '2023-05-31 18:42:25', '2023-05-31 18:42:25'),
(175, 'posts', 'body', 6, 'en', '<p>Để kh&ocirc;ng gặp nhiều phiền to&aacute;i v&agrave; giữ an to&agrave;n cho ch&iacute;nh bản th&acirc;n trong mỗi chuyến đi, bạn n&ecirc;n cẩn thận t&igrave;m hiểu một số kinh nghiệm, lưu &yacute; cần thiết khi thu&ecirc; v&agrave; ở kh&aacute;ch sạn.</p>\n<p>Kh&aacute;ch sạn l&agrave; nơi c&oacute; rất nhiều người nghỉ qua đ&ecirc;m, n&ecirc;n theo c&aacute;c chuy&ecirc;n gia c&oacute; kinh nghiệm, c&oacute; một số điều gọi l&agrave; &ldquo;thủ tục&rdquo; v&agrave; v&agrave;i h&agrave;nh động ki&ecirc;ng kị khi nghỉ qua đ&ecirc;m ở bất kỳ một kh&aacute;ch sạn n&agrave;o m&agrave; bạn cần phải hết sức lưu &yacute;.&nbsp;</p>\n<p>1. D&ugrave;ng họ, t&ecirc;n đệm khi nhận ph&ograve;ng: Một trong những c&aacute;ch đơn giản nhất để giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n l&agrave; tr&aacute;nh d&ugrave;ng t&ecirc;n khi nhận ph&ograve;ng, bạn n&ecirc;n d&ugrave;ng chữ c&aacute;i đầu v&agrave; họ của m&igrave;nh. Nữ giới đi du lịch một m&igrave;nh n&ecirc;n d&ugrave;ng chức danh &ldquo;Mrs.&rdquo; (B&agrave; - người đ&atilde; kết h&ocirc;n) để tạo ấn tượng rằng bạn đi c&ugrave;ng với &iacute;t nhất một người nữa.</p>\n<p>2. \"Nhập gia t&ugrave;y tục\": Người xưa c&oacute; c&acirc;u \"Nhập gia t&ugrave;y tục\". Do vậy khi ở kh&aacute;ch sạn, bạn n&ecirc;n đọc kỹ nội quy ph&ograve;ng để tr&aacute;nh gặp phải những phiền phức kh&ocirc;ng đ&aacute;ng c&oacute; khiến chuyến du lịch mất vui, nhất l&agrave; khi du lịch nước ngo&agrave;i. Ở một số nơi, nếu bạn xem tivi v&agrave; sử dụng internet hoặc điện thoại b&agrave;n sẽ bị t&iacute;nh ph&iacute; rất cao. Đ&oacute; l&agrave; l&yacute; do bạn cần \"đọc kỹ hướng dẫn trước khi sử dụng\".</p>\n<p>3. Đừng bao giờ hỏi nh&acirc;n vi&ecirc;n lễ t&acirc;n phục vụ ca đ&ecirc;m về nhu cầu &ldquo;t&igrave;m người bạn t&acirc;m sự&rdquo; hay cho ph&eacute;p nh&acirc;n vi&ecirc;n kh&ocirc;ng c&oacute; chức năng v&agrave;o ph&ograve;ng v&igrave; c&oacute; thể bạn sẽ gặp rắc rối lớn khi bị kiểm tra đột xuất của kh&aacute;ch sạn hay ch&iacute;nh quyền.</p>\n<p>4. Kiểm tra ph&ograve;ng: Ngay khi bước v&agrave;o ph&ograve;ng, bạn n&ecirc;n kiểm tra kh&oacute;a thật kỹ xem c&oacute; an to&agrave;n kh&ocirc;ng. Tiếp đến, bạn đi quanh ph&ograve;ng v&agrave; kiểm tra kỹ cửa sổ, ph&ograve;ng tắm, tủ quần &aacute;o... xem c&oacute; g&igrave; bất thường. Nếu c&oacute;, lập tức b&aacute;o ngay cho nh&acirc;n vi&ecirc;n kh&aacute;ch sạn để nhờ xử l&yacute; hoặc xin đổi ph&ograve;ng. Bạn cũng h&atilde;y nhớ kiểm tra số lượng vật dụng trong ph&ograve;ng c&oacute; đ&uacute;ng như bản k&ecirc; khai kh&ocirc;ng.</p>\n<p>5. Kiểm tra quầy lễ t&acirc;n: Sau khi nhận ph&ograve;ng, bạn n&ecirc;n sử dụng điện thoại di động gọi cho quầy lễ t&acirc;n, hỏi xem họ c&oacute; thể n&oacute;i chuyện với m&igrave;nh kh&ocirc;ng. Nếu họ cho biết số ph&ograve;ng của bạn, đ&oacute; l&agrave; t&iacute;n hiệu kh&ocirc;ng tốt. C&acirc;u trả lời bạn mong muốn sẽ l&agrave;: &ldquo;Để t&ocirc;i nối m&aacute;y cho bạn&rdquo;.</p>\n<p>6. Đặt biển &ldquo;Miễn l&agrave;m phiền&rdquo; ngo&agrave;i cửa khi rời ph&ograve;ng: Khi phải ra ngo&agrave;i, bạn c&oacute; thể đặt biển &ldquo;Miễn l&agrave;m phiền&rdquo; v&agrave; bật ti-vi để c&oacute; &acirc;m thanh trong ph&ograve;ng.</p>\n<p>7. Ở ph&ograve;ng tầng từ 4 đến 6: Ph&ograve;ng cao nhất thang cứu hỏa c&oacute; thể vươn tới khi c&oacute; hỏa hoạn thường l&agrave; từ tầng 4 tới tầng 6. Cẩn thận hơn, bạn c&oacute; thể chọn ph&ograve;ng gần cầu thang bộ.</p>\n<p>8. G&otilde; cửa trước khi v&agrave;o ph&ograve;ng kh&aacute;ch sạn: Theo quan niệm phong thủy, khi bước v&agrave;o ph&ograve;ng nghỉ tại kh&aacute;ch sạn bạn n&ecirc;n g&otilde; cửa 3 c&aacute;i để đ&aacute;nh đuổi điềm xấu m&agrave; người ở trước để lại. Sau đ&oacute; mới mở cửa v&agrave; đứng n&eacute;p sang một b&ecirc;n, đợi khoảng 1 ph&uacute;t mới bước v&agrave;o v&agrave; đ&oacute;ng của lại. Việc bước v&agrave;o ph&ograve;ng v&agrave; đ&oacute;ng cửa ngay lập tức l&agrave; điều tối kỵ.</p>\n<p>9. Cất giữ những đồ d&ugrave;ng c&oacute; gi&aacute; trị thật cẩn thận: Kh&aacute;ch sạn l&agrave; nơi c&oacute; rất nhiều người qua lại hơn nữa l&agrave; một nơi kh&aacute; lạ, bạn sẽ kh&ocirc;ng thể biết được ai tốt ai xấu. Do vậy, cẩn tắc v&ocirc; &aacute;y n&aacute;y, n&ecirc;n cất giữ những đồ d&ugrave;ng c&oacute; gi&aacute; trị thật cẩn thận. Trườg hợp đi ra ngo&agrave;i kh&ocirc;ng tiện mang c&aacute;c đồ gi&aacute; trị theo, bạn c&oacute; thể gửi ở nh&acirc;n vi&ecirc;n lễ t&acirc;n v&agrave; k&yacute; nhận.</p>\n<p>10. Đừng viết t&ecirc;n tr&ecirc;n b&igrave;a treo cửa: Nếu kh&aacute;ch sạn đưa cho bạn b&igrave;a treo cửa để y&ecirc;u cầu lấy th&ecirc;m đồ ăn hay dọn ph&ograve;ng, bạn kh&ocirc;ng n&ecirc;n viết t&ecirc;n m&igrave;nh l&ecirc;n đ&oacute;, tr&aacute;nh bị nhận diện.</p>\n<p>11. C&aacute;c lỗ nh&igrave;n l&eacute;n: Bạn đ&atilde; từng bao giờ c&oacute; cảm gi&aacute;c bị theo d&otilde;i khi ở trong ph&ograve;ng kh&aacute;ch sạn? Bất cứ khi n&agrave;o c&oacute; cảm gi&aacute;c kh&ocirc;ng an to&agrave;n, bạn n&ecirc;n y&ecirc;u cầu thay đổi ph&ograve;ng. Nghe c&oacute; vẻ kh&oacute; tin, nhưng c&oacute; những kh&aacute;ch sạn giấu m&aacute;y ảnh nhỏ để c&oacute; thể quay phim tất cả mọi thứ xảy ra trong ph&ograve;ng. Nếu kh&ocirc;ng c&oacute; ph&ograve;ng c&oacute; sẵn kh&aacute;c, h&atilde;y che c&aacute;c lỗ đ&aacute;ng ngờ bằng một mảnh giấy.</p>\n<p>12. Kh&ocirc;ng n&ecirc;n cắt m&oacute;ng tay m&oacute;ng ch&acirc;n v&agrave;o nửa đ&ecirc;m: Ở trong kh&aacute;ch sạn cũng ki&ecirc;ng kị việc cắt m&oacute;ng tay sau nửa đ&ecirc;m, đặc biệt l&agrave; m&oacute;ng tay trẻ con v&igrave; điều n&agrave;y sẽ ảnh hưởng đến sức khỏe của c&aacute;c th&agrave;nh vi&ecirc;n trong chuyến đi.</p>\n<p>13. Xem đ&aacute;nh gi&aacute; kh&aacute;ch sạn: Khi t&igrave;m nơi nghỉ, bạn n&ecirc;n để &yacute; tới c&aacute;c đ&aacute;nh gi&aacute; về vấn đề an ninh. Đ&aacute;nh gi&aacute; của kh&aacute;ch từng ở sẽ gi&uacute;p bạn biết th&ecirc;m về an ninh trong khu vực, kh&aacute;ch sạn c&oacute; m&aacute;y quay gi&aacute;m s&aacute;t v&agrave; biện ph&aacute;p để bảo vệ an to&agrave;n th&ocirc;ng tin cho kh&aacute;ch hay kh&ocirc;ng.</p>\n<p>14. T&igrave;m lối tho&aacute;t hiểm: Ngay khi nhận ph&ograve;ng kh&aacute;ch sạn bạn n&ecirc;n đọc hướng dẫn tho&aacute;t hiểm được d&aacute;n ở cửa ch&iacute;nh của ph&ograve;ng. Sau đ&oacute; t&igrave;m kiếm lối tho&aacute;t hiểm hoặc cầu thang bộ gần nhất. Tuy việc n&agrave;y chỉ để đề ph&ograve;ng trường hợp xảy ra hỏa hoạn hoặc sự cố bất ngờ nhưng rất quan trọng. Biết trước v&agrave; biết r&otilde; lối tho&aacute;t hiểm sẽ tăng cơ hội sống s&oacute;t của bạn trong những t&igrave;nh huống bất trắc.</p>\n<p>Lựa chọn kh&aacute;ch sạn trong k&igrave; nghỉ lu&ocirc;n l&agrave; vấn đề kh&oacute; khăn của hầu hết mọi người, bởi bạn lu&ocirc;n ph&acirc;n v&acirc;n kh&ocirc;ng biết chọn nơi n&agrave;o l&agrave; an to&agrave;n. Đ&ocirc;i khi cẩn thận l&agrave; kh&ocirc;ng thừa, chị em ch&uacute;ng ta cần lưu &yacute; những điều tr&ecirc;n đ&acirc;y để chuyến đi du lịch được thuận lợi, vui vẻ nh&eacute;!</p>', '2023-05-31 18:42:25', '2023-05-31 18:42:25'),
(176, 'posts', 'slug', 6, 'en', 'nhung-dieu-kieng-ki-khi-o-khach-san-ma-ban-nen-biet', '2023-05-31 18:42:25', '2023-05-31 18:42:25'),
(177, 'posts', 'title', 5, 'en', '10 xu hướng thịnh hành trong ngành khách sạn 2022', '2023-05-31 18:42:30', '2023-05-31 18:42:30'),
(178, 'posts', 'excerpt', 5, 'en', 'Không gian ngoài trời mở rộng hơn, nâng cấp công nghệ để hạn chế tối đa tiếp xúc là những xu hướng mới nhiều khách sạn áp dụng.\n\nDưới đây là một số xu hướng trong khách sạn mà du khách có thể bắt gặp trong năm 2021, theo các dữ liệu và phân tích từ GlobalData.\n\nVấn đề vệ sinh luôn đặt lên hàng đầu', '2023-05-31 18:42:30', '2023-05-31 18:42:30'),
(179, 'posts', 'body', 5, 'en', '<p>Kh&ocirc;ng gian ngo&agrave;i trời mở rộng hơn, n&acirc;ng cấp c&ocirc;ng nghệ để hạn chế tối đa tiếp x&uacute;c l&agrave; những xu hướng mới nhiều kh&aacute;ch sạn &aacute;p dụng.</p>\n<article>\n<p>Dưới đ&acirc;y l&agrave; một số xu hướng trong kh&aacute;ch sạn m&agrave; du kh&aacute;ch c&oacute; thể bắt gặp trong năm 2021, theo c&aacute;c dữ liệu v&agrave; ph&acirc;n t&iacute;ch từ&nbsp;GlobalData.</p>\n<p>Vấn đề vệ sinh lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu</p>\n<p>Ng&agrave;nh kh&aacute;ch sạn đ&atilde; nhanh ch&oacute;ng thực hiện c&aacute;c quy tr&igrave;nh an to&agrave;n v&agrave; vệ sinh chuy&ecirc;n s&acirc;u trong đại dịch. Năm 2022, c&aacute;c cơ sở lưu tr&uacute; tr&ecirc;n to&agrave;n thế giới c&oacute; thể tiếp tục x&acirc;y dựng v&agrave; cải thiện c&aacute;c chương tr&igrave;nh vệ sinh, nhằm hạn chế tối đa sự l&acirc;y lan của dịch bệnh, thu h&uacute;t kh&aacute;ch đặt ph&ograve;ng.</p>\n<img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-tt1.jpg?v=1623927227398\" data-thumb=\"original\">\n<p><strong>Kh&aacute;ch thu&ecirc; ph&ograve;ng d&agrave;i ng&agrave;y hơn</strong></p>\n<p>Nhiều kh&aacute;ch sạn, khu nghỉ dưỡng đ&atilde; giới thiệu c&aacute;c chương tr&igrave;nh, g&oacute;i lưu tr&uacute; k&eacute;o d&agrave;i v&agrave;o năm 2021 v&agrave; xu hướng đ&oacute; sẽ tiếp tục trong năm nay. L&yacute; do l&agrave; đại dịch vẫn diễn biến phức tạp, du kh&aacute;ch c&oacute; xu hướng lưu tr&uacute; tại một nơi d&agrave;i ng&agrave;y hơn.</p>\n<p>Nh&agrave; ph&acirc;n t&iacute;ch du lịch v&agrave; lữ h&agrave;nh Ralph Hollister của GlobalData cho biết du kh&aacute;ch c&oacute; thể &iacute;t đi du lịch hơn nhưng họ sẽ lưu tr&uacute; l&acirc;u hơn. Sự phức tạp của dịch bệnh sẽ khiến nhiều người dốc to&agrave;n lực để đầu tư một chuyến đi lớn, thay v&igrave; mạo hiểm với những chuyến đi nhỏ lẻ, c&oacute; thể bị hủy bỏ.</p>\n<p><strong>Ph&ograve;ng kh&aacute;ch sạn tạo điều kiện thuận lợi cho người l&agrave;m từ xa</strong></p>\n<p>Khi du lịch d&agrave;i ng&agrave;y hơn, du kh&aacute;ch cũng kh&ocirc;ng muốn c&ocirc;ng việc bị ảnh hưởng. Đ&oacute; l&agrave; l&yacute; do họ sẽ vừa nghỉ dưỡng, vừa l&agrave;m việc từ xa. Do đ&oacute;, một căn ph&ograve;ng kh&aacute;ch h&agrave;ng cần l&agrave; nơi vừa c&oacute; thể l&agrave;m việc thoải m&aacute;i, vừa tận hưởng những gi&acirc;y ph&uacute;t thư gi&atilde;n ri&ecirc;ng tư. Wi-Fi trong ph&ograve;ng nhanh cũng l&agrave; một điểm cộng, v&agrave; đ&ocirc;i khi c&oacute; thể l&agrave; yếu tố quyết định đối với nhiều du kh&aacute;ch muốn du lịch c&ocirc;ng vụ trong năm 2022.</p>\n<p><strong>Tăng cường &aacute;p dụng c&ocirc;ng nghệ</strong></p>\n<p>Kh&aacute;ch sạn giống như s&acirc;n bay, nh&agrave; h&agrave;ng... đều l&agrave; những nơi c&oacute; nhiều người qua lại. Do đ&oacute;, n&acirc;ng cao v&agrave; &aacute;p dụng triệt để c&ocirc;ng nghệ, hạn chế tiếp x&uacute;c l&agrave; mục ti&ecirc;u ch&iacute;nh của ng&agrave;nh du lịch của năm nay. Thay v&igrave; thanh to&aacute;n trực tiếp, du kh&aacute;ch c&oacute; thể trả tiền ph&ograve;ng qua c&aacute;c ứng dụng di động, m&atilde; QR... để giảm nguy cơ l&acirc;y nhiễm virus.</p>\n<p>\"Trong năm 2022, c&aacute;c kh&aacute;ch sạn sẽ tăng cường &aacute;p dụng c&ocirc;ng nghệ để giảm tiếp x&uacute;c. Những điều sẽ dần phổ biến hơn phải kể đến việc kh&aacute;ch h&agrave;ng c&oacute; thể check-in v&agrave; check-out trực tuyến, mở cửa ph&ograve;ng bằng ch&igrave;a kh&oacute;a tr&ecirc;n điện thoại, điều khiển c&aacute;c thiết bị trong ph&ograve;ng bằng c&ocirc;ng nghệ IoT... Sử dụng IoT c&ograve;n cho ph&eacute;p kh&aacute;ch sạn thu thập th&ecirc;m dữ liệu về kh&aacute;ch h&agrave;ng, từ đ&oacute; c&aacute; nh&acirc;n h&oacute;a trải nghiệm cho kh&aacute;ch h&agrave;ng khi họ trở lại\", Hollister nhận định.</p>\n<p><strong>Phục vụ ẩm thực kh&ocirc;ng tiếp x&uacute;c</strong></p>\n<p>Giảm tiếp x&uacute;c bằng c&ocirc;ng nghệ c&oacute; nghĩa l&agrave; hạn chế tiếp x&uacute;c giữa người với người trong cả dịch vụ ăn uống. Những giải ph&aacute;p kh&aacute;ch sạn đưa ra l&agrave; t&ugrave;y chọn cho kh&aacute;ch mua đồ ăn mang đi tại sảnh, nh&acirc;n vi&ecirc;n đặt bữa ăn ở cửa ph&ograve;ng kh&aacute;ch hoặc đặt m&oacute;n qua điện thoại bằng m&atilde; QR.</p>\n<p><strong>Ch&iacute;nh s&aacute;ch ho&agrave;n, hủy linh hoạt</strong></p>\n<p>Những kh&aacute;ch sạn c&oacute; ch&iacute;nh s&aacute;ch ho&agrave;n tiền đặt ph&ograve;ng 100% khi kh&aacute;ch hủy v&agrave;o ph&uacute;t ch&oacute;t, c&ugrave;ng với c&aacute;c ch&iacute;nh s&aacute;ch giảm thiểu rủi ro kh&aacute;c sẽ được đa số lựa chọn.</p>\n<p>Kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch những nơi ri&ecirc;ng tư</p>\n<p>Kh&aacute;ch du lịch sẽ t&igrave;m kiếm kh&ocirc;ng gian ri&ecirc;ng tư nhiều hơn trong năm nay. Do đ&oacute;, dịch vụ thu&ecirc; ph&ograve;ng ngắn hạn th&ocirc;ng qua c&aacute;c ứng dụng như Airbnb, Vrbo... cũng như c&aacute;c kỳ nghỉ tại một biệt thự ri&ecirc;ng biệt sẽ được nhiều du kh&aacute;ch hướng tới. L&yacute; do l&agrave; những nơi n&agrave;y mang tới kh&ocirc;ng gian ri&ecirc;ng tư nhiều hơn kh&aacute;ch sạn, nh&agrave; nghỉ. Đ&acirc;y cũng l&agrave; năm m&agrave; c&aacute;c cơ sở lưu tr&uacute;, h&agrave;ng qu&aacute;n ở những nơi hẻo l&aacute;nh, xa x&ocirc;i c&oacute; cơ hội tiếp đ&oacute;n nhiều kh&aacute;ch h&agrave;ng hơn, bởi tại đ&acirc;y họ &iacute;t phải lo lắng về c&aacute;c lệnh hạn chế đi lại,</p>\n<p><strong>Kh&ocirc;ng gian ngo&agrave;i trời được ưu &aacute;i hơn</strong></p>\n<p>Du kh&aacute;ch sẽ cảm thấy an to&agrave;n hơn khi d&agrave;nh thời gian ở ngo&agrave;i trời so với kh&ocirc;ng gian k&iacute;n ở nơi c&ocirc;ng cộng. Do đ&oacute;, c&aacute;c kh&aacute;ch sạn sẽ t&igrave;m c&aacute;ch kết hợp nhiều hơn nữa kh&ocirc;ng gian ngo&agrave;i trời v&agrave;o c&aacute;c trải nghiệm như tập yoga, c&agrave; ph&ecirc;, ăn uống, spa...</p>\n<img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-2tt1.jpg?v=1623927239024\" data-thumb=\"original\">\n<p><strong>Ph&aacute;t triển du lịch bền vững</strong></p>\n<p>C&aacute;c khu nghỉ dưỡng đ&atilde; trở n&ecirc;n th&acirc;n thiện với m&ocirc;i trường hơn sau thời gian d&agrave;i vắng kh&aacute;ch. Xu hướng đ&oacute; c&oacute; thể tiếp tục trong năm nay khi nhiều kh&aacute;ch du lịch t&igrave;m c&aacute;ch hạn chế t&aacute;c động của họ đến m&ocirc;i trường v&agrave; văn h&oacute;a địa phương. Tiết kiệm nước, giảm thiểu chất thải, cũng như t&igrave;m nguồn cung ứng thực phẩm địa phương trong c&aacute;c qu&aacute;n bar, nh&agrave; h&agrave;ng... vẫn l&agrave; chiến lược của nhiều kh&aacute;ch sạn muốn tạo sự kh&aacute;c biệt trong tương lai.</p>\n<p><strong>Kh&aacute;ch du lịch chi ti&ecirc;u nhiều hơn</strong></p>\n<p>Nhiều người sẽ phải đối mặt với ng&acirc;n s&aacute;ch du lịch hạn chế, v&igrave; vậy c&aacute;c cơ sở lưu tr&uacute; cần thu h&uacute;t những kh&aacute;ch h&agrave;ng ở tầng lớp trung lưu. Họ l&agrave; những người sẽ t&igrave;m kiếm mức gi&aacute; thu&ecirc; ph&ograve;ng thấp, nhưng cũng sẵn s&agrave;ng chi ti&ecirc;u nhiều hơn nếu chất lượng dịch vụ xứng đ&aacute;ng với số tiền họ bỏ ra.</p>\n</article>', '2023-05-31 18:42:30', '2023-05-31 18:42:30'),
(180, 'posts', 'slug', 5, 'en', '10-xu-huong-thinh-hanh-trong-nganh-khach-san-2022', '2023-05-31 18:42:30', '2023-05-31 18:42:30'),
(181, 'posts', 'title', 13, 'en', 'Tắm trắng và kết hợp dưỡng da toàn thân', '2023-05-31 18:57:03', '2023-05-31 18:57:03'),
(182, 'posts', 'body', 13, 'en', '<p dir=\"ltr\">Th&ocirc;ng qua liệu tr&igrave;nh tắm trắng cho ph&eacute;p loại bỏ đi lớp xỉn m&agrave;u, hạn chế sự ph&aacute;t triển của melanin &ndash; yếu tố khiến da bị đen. Kh&ocirc;ng chỉ dừng lại đ&oacute;, khi tắm trắng đ&uacute;ng phương ph&aacute;p, sử dụng c&aacute;c loại dược liệu thi&ecirc;n nhi&ecirc;n ph&ugrave; hợp c&ograve;n c&oacute; thể mang lại hiệu quả bất ngờ. Nhờ n&oacute; m&agrave; l&agrave;n da của bạn sẽ được chăm s&oacute;c s&acirc;u b&ecirc;n trong, khỏe mạnh chống lại việc oxy h&oacute;a, mang lại l&agrave; một l&agrave;n da trắng hồng, mịn m&agrave;ng.</p>\n<p dir=\"ltr\">Cũng trong một số nghi&ecirc;n cứu đ&atilde; chứng minh được rằng, tắm trắng c&oacute; thể nu&ocirc;i dưỡng c&aacute;c tế b&agrave;o ở tầng thượng b&igrave;, gi&uacute;p da ngăn chặn được c&aacute;c t&aacute;c nh&acirc;n g&acirc;y hại từ b&ecirc;n ngo&agrave;i như bụi bẩn, &aacute;nh nắng mặt trời&hellip;</p>', '2023-05-31 18:57:03', '2023-05-31 18:57:03'),
(183, 'posts', 'slug', 13, 'en', 'tam-trang-va-ket-hop-duong-da-toan-than', '2023-05-31 18:57:03', '2023-05-31 18:57:03'),
(184, 'menu_items', 'title', 41, 'en', 'Gallery', '2023-05-31 19:35:38', '2023-08-06 20:45:44'),
(185, 'data_rows', 'display_name', 96, 'en', 'Description', '2023-08-04 18:37:41', '2023-08-04 18:37:41'),
(186, 'data_rows', 'display_name', 97, 'en', 'Link', '2023-08-04 18:37:41', '2023-08-04 18:37:41'),
(187, 'pages', 'title', 6, 'en', 'Experience Luxury At Our Theking Hotel', '2023-08-04 19:26:14', '2023-08-08 00:16:15'),
(188, 'pages', 'slug', 6, 'en', 'rooms', '2023-08-04 19:26:14', '2023-08-04 19:26:14'),
(189, 'data_rows', 'display_name', 160, 'en', 'Id', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(190, 'data_rows', 'display_name', 161, 'en', 'Tiêu đề', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(191, 'data_rows', 'display_name', 162, 'en', 'Slug', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(192, 'data_rows', 'display_name', 163, 'en', 'Mô tả', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(193, 'data_rows', 'display_name', 164, 'en', 'Hình ảnh', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(194, 'data_rows', 'display_name', 165, 'en', 'Nội dung', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(195, 'data_rows', 'display_name', 166, 'en', 'Trạng thái', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(196, 'data_rows', 'display_name', 167, 'en', 'Created At', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(197, 'data_rows', 'display_name', 168, 'en', 'Updated At', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(198, 'data_rows', 'display_name', 169, 'en', 'Giảm giá', '2023-08-05 00:35:15', '2023-08-05 00:35:15'),
(199, 'data_types', 'display_name_singular', 18, 'en', 'Ưu đãi', '2023-08-05 00:35:16', '2023-08-05 00:35:16'),
(200, 'data_types', 'display_name_plural', 18, 'en', 'Ưu đãi', '2023-08-05 00:35:16', '2023-08-05 00:35:16'),
(201, 'data_rows', 'display_name', 170, 'en', 'Email', '2023-08-06 20:21:32', '2023-08-06 20:21:32'),
(202, 'data_rows', 'display_name', 171, 'en', 'Nội Dung', '2023-08-06 20:21:32', '2023-08-06 20:21:32'),
(203, 'menu_items', 'title', 28, 'en', 'Home', '2023-08-06 20:28:53', '2023-08-06 20:28:53'),
(204, 'menu_items', 'title', 29, 'en', 'About', '2023-08-06 20:29:03', '2023-08-06 20:29:03'),
(205, 'menu_items', 'title', 49, 'en', 'GRAND LUXURY ROOM', '2023-08-06 20:38:37', '2023-08-06 20:38:37'),
(206, 'menu_items', 'title', 50, 'en', 'APARTMENT ROOM', '2023-08-06 20:39:16', '2023-08-06 20:39:16'),
(207, 'menu_items', 'title', 51, 'en', 'PRESIDENT ROOM', '2023-08-06 20:40:05', '2023-08-06 20:40:05'),
(208, 'menu_items', 'title', 46, 'en', 'Blog', '2023-08-06 20:46:17', '2023-08-06 20:46:17'),
(209, 'menu_items', 'title', 45, 'en', 'Contact', '2023-08-06 20:46:31', '2023-08-06 20:46:31'),
(210, 'menu_items', 'title', 52, 'en', 'Contacts', '2023-08-07 18:26:14', '2023-08-07 18:26:14'),
(211, 'data_rows', 'display_name', 111, 'en', 'Slug', '2023-08-07 21:16:01', '2023-08-07 21:16:01'),
(212, 'banners', 'title', 10, 'en', 'Home banner 1', '2023-08-07 23:58:07', '2023-08-07 23:58:07'),
(213, 'banners', 'description', 10, 'en', 'Welcome to Theking Hotel', '2023-08-07 23:58:07', '2023-08-07 23:58:07'),
(214, 'banners', 'title', 12, 'en', 'Home banner', '2023-08-07 23:58:31', '2023-08-07 23:58:31'),
(215, 'banners', 'description', 12, 'en', 'Enjoy The Best Moments of Life', '2023-08-07 23:58:31', '2023-08-07 23:58:31'),
(216, 'banners', 'title', 11, 'en', 'Home banner 2', '2023-08-07 23:59:05', '2023-08-07 23:59:05'),
(217, 'banners', 'description', 11, 'en', 'The Perfect Base For You', '2023-08-07 23:59:05', '2023-08-07 23:59:05'),
(218, 'services', 'title', 11, 'en', 'bar & bbq', '2023-08-08 00:02:52', '2023-08-08 00:02:52'),
(219, 'services', 'title', 10, 'en', 'Fibre Internet', '2023-08-08 00:03:22', '2023-08-08 00:03:22'),
(220, 'services', 'title', 9, 'en', 'Swimming Pool', '2023-08-08 00:03:38', '2023-08-08 00:03:38'),
(221, 'services', 'title', 8, 'en', 'Breakfast', '2023-08-08 00:03:49', '2023-08-08 00:03:49'),
(222, 'services', 'title', 7, 'en', 'Parking Space', '2023-08-08 00:04:02', '2023-08-08 00:04:02'),
(223, 'services', 'title', 6, 'en', 'Pick Up & Drop', '2023-08-08 00:04:23', '2023-08-08 00:04:23'),
(224, 'products', 'title', 30, 'en', 'PRESIDENT ROOM', '2023-08-08 00:28:17', '2023-08-08 00:28:17'),
(225, 'products', 'description', 30, 'en', 'Spacious living room, high-class sofa, private desk and mini bar right in the room', '2023-08-08 00:28:17', '2023-08-08 00:28:17'),
(226, 'products', 'body', 30, 'en', '<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Area more than 100m2,</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Premium large size round bed provides the most comfortable sleep</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Equipped with 75 inch smart TV</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Equip with own work laptop, steam iron</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Spacious living room, high-class sofa, private desk and mini bar right in the room</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Wifi in rooms and public areas</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Private bathroom with premium bathtub</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Fully automatic cleaning equipment, complete and quality personal items, regularly replaced.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Private service team right in the room.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Enjoy special benefits exclusively for hotel guests: infinity pool, modern gym cenimac... and other facilities</span></li>\n</ul>', '2023-08-08 00:28:17', '2023-08-08 00:28:17'),
(227, 'products', 'title', 29, 'en', 'APARTMENT ROOM', '2023-08-08 00:29:28', '2023-08-08 00:29:28'),
(228, 'products', 'description', 29, 'en', 'Enjoy special benefits exclusively for hotel customers: infinity pool, modern gym, cinemax,... and other facilities.', '2023-08-08 00:29:28', '2023-08-08 00:29:28'),
(229, 'products', 'body', 29, 'en', '<ul>\n<li>Full facilities, automatic electronic equipment</li>\n<li>1 Large double bed</li>\n<li>Room space is not separate</li>\n<li>Spacious living room area, soft sofa</li>\n<li>Fully automatic cleaning equipment, complete and quality personal items, regularly replaced.</li>\n<li>Mini bar in the room</li>\n<li>Equipped with large screen TV, personal safe.</li>\n<li>Wifi in rooms and public areas.</li>\n<li>Enjoy special benefits exclusively for hotel customers: infinity pool, modern gym, cinemax,... and other facilities.</li>\n</ul>', '2023-08-08 00:29:28', '2023-08-08 00:29:28'),
(230, 'products', 'title', 28, 'en', 'GRAND LUXURY ROOM', '2023-08-08 00:30:29', '2023-08-08 00:30:29'),
(231, 'products', 'description', 28, 'en', 'Enjoy special benefits exclusively for hotel customers: infinity pool, modern gym, cinemax,... and other facilities.', '2023-08-08 00:30:29', '2023-08-08 00:30:29'),
(232, 'products', 'body', 28, 'en', '<ul>\n<li>Full utilities, electronic equipment automatically controlled by tablet, with steam iron in the room</li>\n<li>1 room equipped with 1 large double bed, high-class and soft mattress, bringing customers gently to sleep</li>\n<li>Private bathroom, large bathtub, with a beautiful view so you can relax and watch the shimmering lights</li>\n<li>Mini bar in the room</li>\n<li>Equipped with large screen TV, personal safe.</li>\n<li>Wifi in rooms and public areas.</li>\n<li>Enjoy special benefits exclusively for hotel customers: infinity pool, modern gym, cinemax,... and other facilities.</li>\n</ul>', '2023-08-08 00:30:29', '2023-08-08 00:30:29'),
(233, 'products', 'title', 27, 'en', 'LUXURY ROOM', '2023-08-08 00:31:22', '2023-08-08 00:31:22'),
(234, 'products', 'description', 27, 'en', 'Spacious living room with soft sofa and mini bar right in the room', '2023-08-08 00:31:22', '2023-08-08 00:31:22'),
(235, 'products', 'body', 27, 'en', '<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Full utilities, electronic equipment automatically controlled by tablet, with steam iron in the room</span></li>\n<li class=\"MsoNormal\"><span lang=\"EN\">A room equipped with 1 large double bed, high-class and soft mattress, bringing customers gently to sleep</span></li>\n<li class=\"MsoNormal\"><span lang=\"EN\">Private bathroom, large bathtub, with a beautiful view so you can relax and watch the shimmering lights</span></li>\n<li class=\"MsoNormal\"><span lang=\"EN\">Fully automatic cleaning equipment, complete and quality personal items, regularly replaced.</span></li>\n<li class=\"MsoNormal\"><span lang=\"EN\">Spacious living room with soft sofa and mini bar right in the room</span></li>\n<li class=\"MsoNormal\"><span lang=\"EN\">Wifi in rooms and public areas.</span></li>\n<li class=\"MsoNormal\"><span lang=\"EN\">Enjoy special benefits exclusively for customers at the hotel: infinity pool, modern gym, cinemax... and other facilities</span></li>\n</ul>', '2023-08-08 00:31:22', '2023-08-08 00:31:22'),
(236, 'products', 'title', 26, 'en', 'PRESTIGE SUITE ROOM', '2023-08-08 00:32:09', '2023-08-08 00:32:09'),
(237, 'products', 'description', 26, 'en', 'Fully automatic cleaning equipment, complete and quality personal items, regularly replaced.', '2023-08-08 00:32:09', '2023-08-08 00:32:09'),
(238, 'products', 'body', 26, 'en', '<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Full utility, automatic electronics .</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">The bedroom is separated from another space with a large double bed.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Fully automatic cleaning equipment, complete and quality personal items, regularly replaced.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Spacious living room, soft sofa</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Mini bar right in the room</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Equipped with large screen TV, personal safe.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Wifi in rooms and public areas.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Enjoy special benefits exclusively for customers at the hotel: infinity pool, modern gym, ... and other facilities</span></li>\n</ul>', '2023-08-08 00:32:09', '2023-08-08 00:32:09'),
(239, 'products', 'title', 25, 'en', 'PREMIUM ROOM', '2023-08-08 00:32:52', '2023-08-08 00:32:52'),
(240, 'products', 'description', 25, 'en', 'Spacious living room, high-class sofa, private desk and mini bar right in the room', '2023-08-08 00:32:52', '2023-08-08 00:32:52');
INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(241, 'products', 'body', 25, 'en', '<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Area more than 100m2,</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Premium large size round bed provides the most comfortable sleep</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Equipped with 75 inch smart TV</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Equip with own work laptop, steam iron</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Spacious living room, high-class sofa, private desk and mini bar right in the room</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Wifi in rooms and public areas</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Private bathroom with premium bathtub</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Fully automatic cleaning equipment, complete and quality personal items, regularly replaced.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Private service team right in the room.</span></li>\n</ul>\n<ul>\n<li class=\"MsoNormal\"><span lang=\"EN\">Enjoy special benefits exclusively for hotel guests: infinity pool, modern gym cenimac... and other facilities</span></li>\n</ul>', '2023-08-08 00:32:52', '2023-08-08 00:32:52'),
(242, 'utilities', 'title', 4, 'en', 'COFFEE GARDEN', '2023-08-08 00:44:43', '2023-08-08 00:44:43'),
(243, 'utilities', 'desc', 4, 'en', 'If the space in the room makes you feel a little cramped, then Coffee Garden will be a great choice for you to Refresh to a new state', '2023-08-08 00:44:43', '2023-08-08 00:44:43'),
(244, 'utilities', 'body', 4, 'en', '<p>If the space in the room makes you feel a little cramped, then Coffee Garden will be a great choice for you to Refresh to a new state.&nbsp; &nbsp; An outdoor space on the 3rd floor with green nature and gently decorated will help you relax in the bustling urban life of city. You can leisurely read a newspaper, chat with acquaintances, sip an espresso and enjoy a light cake while gazing at the shimmering nightscape. This place has delicious and diverse drinks, fresh air and melodious songs, directly serving you. How great would it be if our band played a piece of music and you are on the mic?</p>', '2023-08-08 00:44:43', '2023-08-08 00:44:43'),
(245, 'utilities', 'title', 3, 'en', 'GYM', '2023-08-08 00:45:09', '2023-08-08 00:45:09'),
(246, 'utilities', 'desc', 3, 'en', 'Still a privilege reserved only for tenants at The King, the Gym space with a capacity of 70 guests is equipped with the most modern equipment,', '2023-08-08 00:45:09', '2023-08-08 00:45:09'),
(247, 'utilities', 'body', 3, 'en', '<p>Still a privilege reserved only for tenants at The King, the Gym space with a capacity of 70 guests is equipped with the most modern equipment, serving a variety of training needs from basic to advanced such as weights, boxing, treadmill, yoga space, hot and cold sauna&hellip;. Enjoy a panoramic view of the city from the 5th floor, enjoy a great rest as well as taking good care of your health. If you have a need for your own PT, the hotel still meets the best!</p>', '2023-08-08 00:45:09', '2023-08-08 00:45:09'),
(248, 'utilities', 'title', 2, 'en', 'RESTAURANT', '2023-08-08 00:45:35', '2023-08-08 00:45:35'),
(249, 'utilities', 'desc', 2, 'en', 'Adding a bit of poetry to your rest and meeting time in food is indispensable with on-time serving and delicious exquisite dishes at The King Restaurant', '2023-08-08 00:45:35', '2023-08-08 00:45:35'),
(250, 'utilities', 'body', 2, 'en', '<p>Adding a bit of poetry to your rest and meeting time in food is indispensable with on-time serving and delicious exquisite dishes at The King Restaurant, at the 2nd floor location of the hotel with a capacity of up to 300 people or room service (when you book in advance).&nbsp; You will enjoy your meal with peace of mind, savoring authentic premium cuisine, with special recipes from culinary experts at The King. We serve you a completely free breakfast buffet while the lunch and dinner with a variety of options: Asian dishes, European dishes, traditional dishes.</p>', '2023-08-08 00:45:35', '2023-08-08 00:45:35'),
(251, 'utilities', 'title', 1, 'en', 'OUTDOOR SWIMMING POOL', '2023-08-08 00:46:05', '2023-08-08 00:46:05'),
(252, 'utilities', 'desc', 1, 'en', 'Only for customers at The King Hotel with the desire that you will have the best experience, privacy and dignity.', '2023-08-08 00:46:05', '2023-08-08 00:46:05'),
(253, 'utilities', 'body', 1, 'en', '<p>Only for customers at The King Hotel with the desire that you will have the best experience, privacy and dignity. The 5-star standard Banama infinity pool is located on the 6th floor campus with the most advanced heating and cooling system to fully serve 4 seasons. The swimming pool has an area of 200m2, a standard depth of 0.9 to 1m85 to serve the needs of athletes. Other supporting devices such as: swimming upstream, massage jacuzzi bring the most comfortable experience. Enjoying the panoramic view of the city while taking a relaxing dip, enjoying delicious drinks and light snacks right at the swimming pool, the King Hotel brings full facilities to customers</p>', '2023-08-08 00:46:05', '2023-08-08 00:46:05'),
(254, 'cuisines', 'title', 7, 'en', 'Beef Noodles - Pork', '2023-08-08 00:51:37', '2023-08-08 00:51:37'),
(255, 'cuisines', 'desc', 7, 'en', 'Beef noodle soup - hot delicious pork will provide a great breakfast, full of nutrition and energy for a long day. The combination of natural sweetness of vegetables, meat and spices will make the noodles more rich and flavorful.', '2023-08-08 00:51:37', '2023-08-08 00:51:56'),
(256, 'cuisines', 'content', 7, 'en', '<p>B&uacute;n b&ograve; - heo l&agrave; một m&oacute;n ăn được rất nhiều người ưa chuộng thậm ch&iacute; c&ograve;n ghiền nặng bởi hương vị m&agrave; n&oacute; mang lại. Thưởng thức một b&aacute;t B&uacute;n b&ograve; - heo v&agrave;o một s&aacute;ng thảnh thơi sau đ&oacute; nh&acirc;m nhi ch&uacute;t tr&agrave; đ&aacute; th&igrave; chẳng c&ograve;n g&igrave; tuyệt vời hơn cho một ng&agrave;y cuối tuần.</p>\n<div><strong>B&uacute;n b&ograve; - heo ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</strong></div>\n<p>Với những &ldquo;t&iacute;n đồ&rdquo; của B&uacute;n b&ograve; - heo, những ai đ&atilde; v&agrave; đang ghiền m&oacute;n ăn n&agrave;y m&agrave; lại l&agrave; đối tượng đang c&oacute; &yacute; định giảm c&acirc;n, x&acirc;y dựng chế độ dinh dưỡng hợp l&yacute; sẽ c&oacute; c&ugrave;ng thắc mắc rằng, ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</p>\n<p>Theo c&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra rằng, trung b&igrave;nh một người phụ nữ sẽ cần khoảng 1300 calo v&agrave; nam giới sẽ cần tới 1650 calo mỗi ng&agrave;y để duy tr&igrave; sự sống cho n&ecirc;n, nếu như lượng calo ti&ecirc;u thụ trong 1 ng&agrave;y vượt ngưỡng tr&ecirc;n th&igrave; cơ thể sẽ b&eacute;o l&ecirc;n đặc biệt l&agrave; đối với những c&aacute; nh&acirc;n c&oacute; cơ địa hấp thụ tốt.</p>\n<p>Việc bạn ti&ecirc;u thụ 534 calo cho một bữa nhưng lại biết tiết chế lượng thức ăn ở những bữa kh&aacute;c trong ng&agrave;y sẽ l&agrave;m giảm nguy cơ tăng c&acirc;n. Ngược lại, nếu như bạn ăn qu&aacute; nhiều B&uacute;n b&ograve; - heo trong ng&agrave;y v&agrave; trong tuần sẽ c&oacute; thể ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n dẫn tới t&igrave;nh trạng thừa c&acirc;n bởi lẽ, hầu hết tất cả những g&igrave; &ldquo;qu&aacute;&rdquo; đều kh&ocirc;ng tốt cho cơ thể.</p>\n<p>Từ đ&acirc;y c&oacute; thể đưa ra c&acirc;u trả lời cho thắc mắc &ldquo;Ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?&rdquo; rằng, nếu như bạn biết tiết chế lượng thức ăn mỗi ng&agrave;y, ăn vừa phải, c&oacute; thể 1 tuần chỉ n&ecirc;n thưởng thức 1 &ndash; 2 b&aacute;t b&uacute;n th&igrave; khả năng tăng c&acirc;n l&agrave; kh&oacute; c&oacute; thể xảy ra.</p>\n<p>Ngược lại, nếu như ng&agrave;y n&agrave;o bạn cũng ti&ecirc;u thụ hết 534 calo của 1 b&aacute;t B&uacute;n b&ograve; - heo c&ugrave;ng với v&ocirc; v&agrave;n lượng thức ăn gi&agrave;u calo kh&aacute;c trong ng&agrave;y v&agrave; lười vận động th&igrave; chắc chắn sẽ b&eacute;o. T&oacute;m lại, ăn qu&aacute; nhiều B&uacute;n b&ograve; - heo c&ugrave;ng với những thực phẩm nhiều calo kh&aacute;c trong ng&agrave;y k&egrave;m theo lười vận động sẽ tăng khả năng tăng c&acirc;n v&agrave; đ&acirc;y l&agrave; điều bạn n&ecirc;n lưu &yacute;.</p>\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '2023-08-08 00:51:37', '2023-08-08 00:51:37'),
(257, 'cuisines', 'title', 6, 'en', 'Beef soup break', '2023-08-08 00:52:40', '2023-08-08 00:52:40'),
(258, 'cuisines', 'desc', 6, 'en', 'A bowl of delicious hot braised beef bread will provide a great breakfast, full of nutrition and energy for a long day. The combination of natural sweetness of vegetables, meat and spices will make the noodles more rich and flavorful.', '2023-08-08 00:52:40', '2023-08-08 00:52:40'),
(259, 'cuisines', 'content', 6, 'en', '<p>1 t&ocirc;&nbsp;b&aacute;nh m&igrave; b&ograve; kho nhiều chứa rất nhiều th&agrave;nh phần dinh dưỡng, c&oacute; khoảng tr&ecirc;n 385,1 calo trong 1 ổ b&aacute;nh m&igrave; trứng kh&ocirc;ng, nếu c&oacute; th&ecirc;m pate th&igrave; c&oacute; khoảng 704,2 calo chưa kể c&aacute;c th&agrave;nh phần rau hay gia vị. V&igrave; thế b&aacute;nh m&igrave; ốp la kh&ocirc;ng chỉ l&agrave; một m&oacute;n ăn ngon thu h&uacute;t thực kh&aacute;ch m&agrave; đ&acirc;y c&ograve;n l&agrave; m&oacute;n ăn gi&agrave;u dinh dưỡng.</p>\n<div id=\"Ăn_b&aacute;nh_m&igrave;_trứng_c&oacute;_tăng_c&acirc;n_kh&ocirc;ng\" title=\"Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?\"><strong>Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?</strong></div>\n<p>Ngo&agrave;i vấn đề&nbsp;<strong>1 ổ b&aacute;nh m&igrave; trứng bao nhi&ecirc;u calo</strong>&nbsp;th&igrave; c&acirc;u hỏi ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng cũng được rất nhiều người quan t&acirc;m. Nh&igrave;n lại th&agrave;nh phần dinh dưỡng c&oacute; trong 1 ổ b&aacute;nh m&igrave; trứng ch&uacute;ng ta thấy, con số calo m&agrave; một b&aacute;nh m&igrave; trứng mang lại l&agrave; tương đối cao. Nếu chỉ ăn 1 ổ b&aacute;nh m&igrave; trứng, bạn đ&atilde; nạp v&agrave;o cơ thể khoảng 385,1 calo, nếu ăn k&egrave;m th&ecirc;m một số gia vị hay một v&agrave;i th&agrave;nh phần kh&aacute;c th&igrave; 1 ổ b&aacute;nh m&igrave; trứng c&oacute; thể khiến bạn tăng c&acirc;n.</p>\n<p>Ngo&agrave;i ra ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n hay kh&ocirc;ng c&ograve;n phụ thuộc v&agrave;o c&aacute;ch bạn ăn, số lượng v&agrave; thời điểm bạn ăn.</p>\n<p>Nếu bạn ăn b&aacute;nh m&igrave; trứng v&agrave;o buổi s&aacute;ng, cơ thể sẽ được cung cấp một nguồn năng lượng cần thiết sau 1 đ&ecirc;m d&agrave;i. C&ocirc;ng th&ecirc;m việc bạn phải hoạt động kh&ocirc;ng ngừng trong một ng&agrave;y th&igrave; b&aacute;nh m&igrave; trứng sẽ kh&ocirc;ng thể khiến bạn tăng c&acirc;n.</p>\n<p>Nhưng ngược lại nếu bạn ăn v&agrave;o buổi tối m&agrave; nhất l&agrave; ăn trước khi đi ngủ, cơ thể kh&ocirc;ng kịp chuyển h&oacute;a năng lượng v&agrave; sẽ bị t&iacute;ch tụ lại tạo n&ecirc;n mỡ thừa. Đấy l&agrave; l&iacute; do tại sao bạn n&ecirc;n ăn b&aacute;nh m&igrave; đ&uacute;ng thời điểm.</p>\n<p>Hơn thế nữa, nếu chỉ ăn một ổ b&aacute;nh m&igrave; trứng mỗi ng&agrave;y th&igrave; chẳng thể l&agrave;m bạn tăng c&acirc;n được, nhưng ăn từ 2-3 ổ trở l&ecirc;n th&igrave; lại l&agrave; một trường hợp kh&aacute;c. N&ecirc;n kết hợp ăn b&aacute;nh m&igrave; trứng với c&aacute;c thực phẩm &iacute;t năng lượng như rau xanh, nộm đu đủ sẽ khiến b&aacute;nh m&igrave; vừa ngon lại gi&uacute;p duy tr&igrave; c&acirc;n nặng.</p>\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '2023-08-08 00:52:40', '2023-08-08 00:52:40'),
(260, 'cuisines', 'title', 4, 'en', 'Stir-Fried Noodles', '2023-08-08 00:53:27', '2023-08-08 00:53:48'),
(261, 'cuisines', 'desc', 4, 'en', 'A plate of delicious hot fried noodles with pork will provide a great, nutritious, and energetic breakfast for a long day. The combination of natural sweetness of vegetables, meat and spices will make the noodles more rich and flavorful.', '2023-08-08 00:53:27', '2023-08-08 00:53:27'),
(262, 'cuisines', 'content', 4, 'en', '<p>Chỉ nh&igrave;n th&ocirc;i cũng đ&atilde; thấy th&egrave;m đĩa m&igrave; x&agrave;o thịt heo n&oacute;ng hổi kia rồi. Từng sợi m&igrave; dai ngon kết hợp với thịt heo chi&ecirc;n gi&ograve;n, b&eacute;o ngậy quyện trong nước d&ugrave;ng g&agrave;, hương vị đậm đ&agrave; l&agrave;m cho m&oacute;n m&igrave; x&agrave;o thịt heo th&ecirc;m ngon miệng v&agrave; hấp dẫn hơn bao giờ hết.</p>\n<p>Mỗi ng&agrave;y cơ thể cần nhiều loại chất dinh dưỡng thiết yếu kh&aacute;c nhau như: chất đạm, chất b&eacute;o, chất bột đường v&agrave; c&aacute;c vitamin, kho&aacute;ng chất v&agrave; nước. Ngo&agrave;i ra, b&igrave;nh qu&acirc;n nhu cầu năng lượng hằng ng&agrave;y của một người trưởng th&agrave;nh l&agrave; 2,300 &ndash; 2,700 Kcal (nam) v&agrave; 2,200 &ndash; 2,300 Kcal (nữ).<br>Do đ&oacute;, tuỳ thuộc v&agrave;o tuổi, giới t&iacute;nh v&agrave; t&iacute;nh chất lao động m&agrave; cơ thể cần bổ sung nhiều loại thực phẩm kh&aacute;c nhau để đảm bảo đầy đủ dinh dưỡng v&agrave; cung cấp đủ năng lượng cho cơ thể hoạt động mỗi ng&agrave;y.</p>\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '2023-08-08 00:53:27', '2023-08-08 00:53:27'),
(263, 'cuisines', 'title', 2, 'en', 'Stir-Fried Noodle', '2023-08-08 00:55:25', '2023-08-08 00:55:25'),
(264, 'cuisines', 'desc', 2, 'en', 'A delicious hot bowl of fried pork vermicelli will provide a great breakfast, full of nutrition and energy for a long day. The combination of natural sweetness of vegetables, meat and spices will make the noodles more rich and flavorful.', '2023-08-08 00:55:25', '2023-08-08 00:55:25'),
(265, 'cuisines', 'content', 2, 'en', '<p>B&uacute;n l&agrave; một m&oacute;n ăn v&ocirc; c&ugrave;ng th&acirc;n quen với người Việt. Dạo v&ograve;ng quanh c&aacute;c con đường, bạn sẽ bắt gặp v&ocirc; số hương vị kh&aacute;c nhau mặc d&ugrave; chỉ l&agrave; m&oacute;n b&uacute;n, c&oacute; thể kể đến như: B&uacute;n b&ograve; Huế, b&uacute;n c&aacute; l&oacute;c, b&uacute;n ri&ecirc;u, b&uacute;n cua, b&uacute;n chả&hellip; Trong đ&oacute;, b&uacute;n x&agrave;o thịt heo l&agrave; một m&oacute;n ăn cũng rất được ưa chuộng cho bữa s&aacute;ng</p>\n<div><strong>Nguy&ecirc;n liệu l&agrave;m b&uacute;n x&agrave;o thịt heo</strong></div>\n<p>- 300g thịt heo</p>\n<p>- 200g b&uacute;n</p>\n<p>- H&agrave;nh t&acirc;y</p>\n<p>- H&agrave;nh l&aacute;, ớt</p>\n<p>- Tỏi, h&agrave;nh t&iacute;m</p>\n<p>- Rau gi&aacute;, rau thơm, dưa chuột</p>\n<p>- Hạt n&ecirc;m, mắm, muối, đường</p>\n<p><img title=\"bun-thit-xao bun-thit-xao\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; bun thit xao\"></p>\n<div><strong>C&aacute;ch chế biến b&uacute;n x&agrave;o thịt heo</strong></div>\n<h4>Bước 1: Sơ chế&nbsp;c&aacute;c nguy&ecirc;n liệu</h4>\n<p>- Thịt heo sau khi mua về bạn cạo sạch l&ocirc;ng, rửa qua nước sạch rồi cắt thịt th&agrave;nh c&aacute;c miếng mỏng vừa ăn.</p>\n<p>- H&agrave;nh t&acirc;y b&oacute;c sạch vỏ rồi th&aacute;i m&uacute;i cau.</p>\n<p>- H&agrave;nh l&aacute; nhặt sạch rễ rồi rửa sạch, băm nhuyễn.</p>\n<p>- Tỏi v&agrave; h&agrave;nh t&iacute;m b&oacute;c vỏ, rồi băm nhuyễn.</p>\n<p>- Ớt rửa sạch, th&aacute;i nhỏ.</p>\n<p>- Rau gi&aacute; v&agrave; rau thơm rửa sạch với nước rồi ng&acirc;m v&agrave;o nước muối, rửa sạch lại rồi để r&aacute;o nước.</p>\n<h4>Bước 2: Ướp thịt</h4>\n<p>- Bạn cho phần thịt heo v&agrave;o t&ocirc; rồi ướp thịt với 1 muỗng đường, 1 muỗng hạt n&ecirc;m, 1 ch&uacute;t nước mắm, 1 muỗng bột ngột, &iacute;t tỏi v&agrave; h&agrave;nh l&aacute; băm c&ugrave;ng hạt ti&ecirc;u xay. Sau đ&oacute;, trộn đều v&agrave; ướp khoảng 30 ph&uacute;t để thịt ngấm đều gia vị.</p>\n<p><img title=\"cach-lam-bun-xao-thit-heo2-e1570606838191 cach-lam-bun-xao-thit-heo2-e1570606838191\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191.jpg\" sizes=\"(max-width: 654px) 100vw, 654px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191.jpg 543w, https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191-300x193.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; cach lam bun xao thit heo2 e1570606838191\"></p>\n<h4>Bước 3: Chần b&uacute;n</h4>\n<p>- Bạn cho nước v&agrave;o nồi rồi mở lửa lớn, khi nước s&ocirc;i, bạn cho b&uacute;n v&agrave;o chần sơ để b&uacute;n tơi ra. Lưu &yacute;, chần thật nhanh rồi vớt b&uacute;n ra rổ để b&uacute;n kh&ocirc;ng bị n&aacute;t nhừ.</p>\n<h4>Bước 4: X&agrave;o thịt với b&uacute;n</h4>\n<p>- Bạn cho một &iacute;t dầu ăn v&agrave;o chảo, rồi cho tỏi v&agrave; h&agrave;nh t&iacute;m băm v&agrave;o phi thơm. Tiếp đến, cho thịt heo v&agrave;o đảo đều, đến khi thịt ch&iacute;n bạn cho thịt ra đĩa ri&ecirc;ng. Tiếp theo, bạn tiếp tục cho dầu tỏi v&agrave;o chảo phi thơm, rồi cho gi&aacute; đỗ, h&agrave;nh t&acirc;y v&atilde;o &ograve;a sơ, n&ecirc;n nếm với hạt n&ecirc;m, bột ngọt, đường cho vừa ăn. X&agrave;o đến khi nguy&ecirc;n liệu ch&iacute;n th&igrave; bạn cho đĩa thịt x&agrave;o v&agrave;o đảo đều tay th&igrave; tắt bếp.</p>\n<p><img title=\"cach-lam-bun-xao-thit-heo104-e1570606886986 cach-lam-bun-xao-thit-heo104-e1570606886986\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986.jpg\" sizes=\"(max-width: 621px) 100vw, 621px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986.jpg 497w, https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986-300x201.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; cach lam bun xao thit heo104 e1570606886986\"></p>\n<h4>Bước 5: Ho&agrave;n th&agrave;nh</h4>\n<p>- Bạn cho b&uacute;n v&agrave;o t&ocirc;, rồi cho phần thịt heo, h&agrave;nh t&acirc;y, gi&aacute; đỗ v&agrave;o, trộn đều l&ecirc;n v&agrave; chan nước tương v&agrave;o l&agrave; thưởng thức được rồi đấy. Để m&oacute;n b&uacute;n ngon hơn nữa, th&igrave; c&aacute;ch l&agrave;m nước tương ăn b&uacute;n cũng rất quan trọng. Do đ&oacute;, tham khảo c&aacute;ch l&agrave;m nước tương ăn b&uacute;n sau đ&acirc;y để c&oacute; được m&oacute;n b&uacute;n x&agrave;o thịt heo trọn vị.</p>\n<p>Lưu &yacute;: Với m&oacute;n ăn n&agrave;y, bạn c&oacute; thể d&ugrave;ng thịt băm thay thế cho thịt miếng. Đối với thịt băm, bạn ướp thịt băm với hạt n&ecirc;m, tỏi, h&agrave;nh l&aacute;, bột ngọt, đường v&agrave; cũng thực hiện như c&aacute;c bước l&agrave;m b&uacute;n x&agrave;o thịt heo như tr&ecirc;n l&agrave; được.</p>\n<p><img title=\"AGF-1644-bun-thit-xao-sa-ot1 AGF-1644-bun-thit-xao-sa-ot1\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1.png\" sizes=\"(max-width: 627px) 100vw, 627px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1.png 540w, https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1-300x200.png 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; AGF 1644 bun thit xao sa ot1\"></p>\n<div>C&aacute;ch pha nước tương ăn b&uacute;n ngon</div>\n<h3>Nguy&ecirc;n liệu cần chuẩn bị&nbsp;pha nước tương</h3>\n<p>- 1/2 tr&aacute;i thơm</p>\n<p>- Nước tương đậm</p>\n<p>- Nước dừa tươi</p>\n<p>- 3 muỗng đường</p>\n<p>- 1 muỗng muối</p>\n<p>- Ớt bằm</p>\n<p><img title=\"nuoc-tuong-an-bun nuoc-tuong-an-bun\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; nuoc tuong an bun\"></p>\n<div><strong>C&aacute;ch l&agrave;m nước tương ăn b&uacute;n</strong></div>\n<p>-&nbsp;Bước 1:&nbsp;Thơm gọt sạch vỏ, cắt bỏ mắt rồi băm nhuyễn hoặc cho v&agrave;o cối sinh tố xay nhuyễn. Sau đ&oacute;, bạn vắt lấy nước.</p>\n<p>-&nbsp;Bước 2:&nbsp;Bạn cho nước dừa tươi, đường v&agrave; muối v&agrave;o t&ocirc;, rồi d&ugrave;ng muỗng khuấy đến khi nguy&ecirc;n liệu h&ograve;a tan.</p>\n<p>-&nbsp;Bước 3:&nbsp;Bạn cho nước thơm v&agrave;o chảo rồi cho tiếp nước dừa v&agrave;o nấu s&ocirc;i. Sau đ&oacute;, bạn cho tiếp nước tương v&agrave;o, n&ecirc;m nếm cho vừa ăn rồi tắt bếp.</p>\n<p>-&nbsp;Bước 4:&nbsp;Khi nước tương nguội hẳn, bạn băm nhuyễn tỏi, ớt rồi cho v&agrave;o nước tương để tạo vị cay cay ngon miệng.</p>\n<p><img title=\"bun-gao-xao-thit-heo-1 bun-gao-xao-thit-heo-1\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; bun gao xao thit heo 1\"></p>\n<p>Ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng sẽ c&oacute; 1 bữa ăn thật ngon miệng nh&eacute;!.</p>', '2023-08-08 00:55:25', '2023-08-08 00:55:25'),
(266, 'cuisines', 'title', 1, 'en', 'Stir-Fried Noodles With Beef', '2023-08-08 00:55:50', '2023-08-08 00:55:50'),
(267, 'cuisines', 'desc', 1, 'en', 'A plate of delicious hot fried noodles will provide a great breakfast, full of nutrition and energy for a long day. The combination of natural sweetness of vegetables, meat and spices will make the noodles more rich and flavorful.', '2023-08-08 00:55:50', '2023-08-08 00:55:50'),
(268, 'cuisines', 'content', 1, 'en', '<p>M&igrave; x&agrave;o b&ograve;&nbsp;l&agrave; m&oacute;n ăn được chế biến kết hợp từ nhiều loại thực phẩm kh&aacute;c nhau. Đ&oacute; l&agrave; trứng, thịt, rau v&agrave; gia vị. V&igrave; kết hợp nhiều nguy&ecirc;n liệu n&ecirc;n m&oacute;n ăn n&agrave;y c&oacute; hương vị thơm ngon, hấp dẫn. V&agrave; chế biến nhanh, đơn giản n&ecirc;n được nhiều gia đ&igrave;nh lựa chọn cho bữa s&aacute;ng.</p>\n<p>Nhiều người kh&aacute; lăn tăn về h&agrave;m lượng calo trong một đĩa m&igrave; x&agrave;o . Bởi m&oacute;n ăn l&agrave; sự kết hợp của nhiều gia vị, nguy&ecirc;n liệu. Do đ&oacute; để ch&iacute;nh x&aacute;c một đĩa m&igrave; n&agrave;y chứa bao nhi&ecirc;u calo l&agrave; rất kh&oacute;. Nhưng theo bảng t&iacute;nh gi&aacute; trị calo của thực phẩm n&oacute;i chung th&igrave;&nbsp;một đĩa m&igrave; x&agrave;o b&ograve; c&oacute; khoảng 638 calo.</p>\n<p>H&agrave;m lượng calo trong&nbsp;m&igrave; t&ocirc;m x&agrave;o b&ograve;&nbsp;l&agrave; kh&aacute; cao. Nếu như bạn đang giảm c&acirc;n hoặc thể trạng b&eacute;o, h&atilde;y hạn chế ăn m&oacute;n n&agrave;y nh&eacute;. Ngo&agrave;i ra, ăn nhiều m&oacute;n ăn n&agrave;y cũng dẫn đến g&acirc;y n&oacute;ng, nổi mụn, sỏi thận, dễ bị lo&atilde;ng xương, răng yếu,&hellip; D&ugrave;&nbsp;m&oacute;n m&igrave; x&agrave;o b&ograve;&nbsp;thơm ngon, dễ ăn, chế biến kh&ocirc;ng cầu kỳ nhưng bạn cũng kh&ocirc;ng n&ecirc;n ăn qu&aacute; nhiều. V&igrave; bổ sung nhiều năng lượng n&ecirc;n m&oacute;n&nbsp;m&igrave; x&agrave;o b&ograve;&nbsp;bạn c&oacute; thể chế biến v&agrave;o bữa s&aacute;ng để cả ng&agrave;y tr&agrave;n đầy năng lượng l&agrave;m việc.</p>\n<p>M&igrave; g&oacute;i x&agrave;o b&ograve;&nbsp;l&agrave; m&oacute;n ăn nhanh gọn, nhưng chế biến thế n&agrave;o để vừa thơm ngon m&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian. C&ugrave;ng tham khảo ngay c&aacute;ch chế biến m&igrave; x&agrave;o b&ograve; dưới đ&acirc;y.</p>', '2023-08-08 00:55:50', '2023-08-08 00:55:50'),
(269, 'offers', 'title', 4, 'en', 'BED AND BREAKFAST', '2023-08-08 01:02:02', '2023-08-08 01:02:02'),
(270, 'offers', 'desc', 4, 'en', 'The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious', '2023-08-08 01:02:02', '2023-08-08 01:02:02'),
(271, 'offers', 'body', 4, 'en', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', '2023-08-08 01:02:02', '2023-08-08 01:02:02'),
(272, 'offers', 'title', 3, 'en', 'PROMOTION FOR LONG TERM STAY AT THE KING HOTEL', '2023-08-08 01:02:37', '2023-08-08 01:02:37'),
(273, 'offers', 'desc', 3, 'en', 'The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious', '2023-08-08 01:02:37', '2023-08-08 01:02:37'),
(274, 'offers', 'body', 3, 'en', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', '2023-08-08 01:02:37', '2023-08-08 01:02:37'),
(275, 'offers', 'title', 2, 'en', 'DISCOUNT 30% ON OCCASION OF HOTEL OPENING', '2023-08-08 01:03:07', '2023-08-08 01:03:07'),
(276, 'offers', 'desc', 2, 'en', 'The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious', '2023-08-08 01:03:07', '2023-08-08 01:03:07'),
(277, 'offers', 'body', 2, 'en', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', '2023-08-08 01:03:07', '2023-08-08 01:03:07'),
(278, 'offers', 'title', 1, 'en', 'FOOD OFFER AT THE KING HOTEL', '2023-08-08 01:03:48', '2023-08-08 01:03:48'),
(279, 'offers', 'desc', 1, 'en', 'The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious', '2023-08-08 01:03:48', '2023-08-08 01:03:48'),
(280, 'offers', 'body', 1, 'en', '<p>The Gage Hotel offers unforgettable food and drink options. A memorable stay with delicious</p>', '2023-08-08 01:03:48', '2023-08-08 01:03:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users\\May2023\\BWCUwxAn1oaxeu4FJkGW.png', NULL, '$2y$10$NrslVVHTc.rs81xQKEoXwe9xU3uj1abiELW32/QjZSzsjfnQ9C/bC', 'zbZgrXzFRwH9YuFcpeBqY1Afdfy9aVypeRAvHXmYDEpRtjyYSnbEqlFWmX39', '{\"locale\":\"vi\"}', '2023-02-20 09:15:44', '2023-05-20 00:36:20'),
(2, 3, 'staff', 'staff@staff.com', 'users\\August2023\\aQg4YoRJsHpLywcr1qZA.png', NULL, '$2y$10$Pf6s9Qr18nNM/m61zXc28.KCWubRhuEMlzXm/yrK9Tuw/yKvPPySW', NULL, '{\"locale\":\"vi\"}', '2023-08-11 21:10:27', '2023-08-11 21:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `utilities`
--

CREATE TABLE `utilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `utilities`
--

INSERT INTO `utilities` (`id`, `title`, `slug`, `desc`, `image`, `body`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BỂ BƠI VÔ CỰC', 'outdoor-swimming-pool', 'Chỉ dành riêng cho khách hàng tại The King Hotel với mong muốn quý khách sẽ có trải nghiệm tốt nhất, riêng tư cùng sự xứng đáng.', 'utilities\\August2023\\a1B9lgZNRACOXPUxuYXY.jpg', '<p>Only for customers at The King Hotel with the desire that you will have the best experience, privacy and dignity. The 5-star standard Banama infinity pool is located on the 6th floor campus with the most advanced heating and cooling system to fully serve 4 seasons. The swimming pool has an area of 200m2, a standard depth of 0.9 to 1m85 to serve the needs of athletes. Other supporting devices such as: swimming upstream, massage jacuzzi bring the most comfortable experience. Enjoying the panoramic view of the city while taking a relaxing dip, enjoying delicious drinks and light snacks right at the swimming pool, the King Hotel brings full facilities to customers</p>', 'ACTIVE', '2023-08-04 23:56:00', '2023-08-08 00:46:05'),
(2, 'NHÀ HÀNG', 'restaurant', 'Các món ăn tinh tế tại The King Restaurant sẵn sàng phục vụ đúng giờ, hợp khẩu vị tại vị trí tầng 2 của khách sạn', 'utilities\\August2023\\8B0Js3RlTxwacLAoxp7K.jpg', '<p>Adding a bit of poetry to your rest and meeting time in food is indispensable with on-time serving and delicious exquisite dishes at The King Restaurant, at the 2nd floor location of the hotel with a capacity of up to 300 people or room service (when you book in advance).&nbsp; You will enjoy your meal with peace of mind, savoring authentic premium cuisine, with special recipes from culinary experts at The King. We serve you a completely free breakfast buffet while the lunch and dinner with a variety of options: Asian dishes, European dishes, traditional dishes.</p>', 'ACTIVE', '2023-08-04 23:58:00', '2023-08-08 00:45:35'),
(3, 'PHÒNG GYM', 'gym', 'Không gian phòng Gym có sức chứa 70 khách được trang bị những thiết bị hiện đại nhất, phục vụ nhiều nhu cầu tập luyện từ cơ bản đến chuyên sâu', 'utilities\\August2023\\Pqpv5S8AGIxpOsvC1oOi.jpg', '<p>Still a privilege reserved only for tenants at The King, the Gym space with a capacity of 70 guests is equipped with the most modern equipment, serving a variety of training needs from basic to advanced such as weights, boxing, treadmill, yoga space, hot and cold sauna&hellip;. Enjoy a panoramic view of the city from the 5th floor, enjoy a great rest as well as taking good care of your health. If you have a need for your own PT, the hotel still meets the best!</p>', 'ACTIVE', '2023-08-04 23:59:00', '2023-08-08 00:45:09'),
(4, 'COFFEE GARDEN', 'coffee-garden', 'Nếu không gian trong phòng khiến bạn cảm thấy đôi chút gò bó thì Coffee Garden sẽ là lựa chọn tuyệt vời để bạn Refresh lại trạng thái mới.', 'utilities\\August2023\\YpEVWHPTlQ3MJj398ctM.jpg', '<p>If the space in the room makes you feel a little cramped, then Coffee Garden will be a great choice for you to Refresh to a new state.&nbsp; &nbsp; An outdoor space on the 3rd floor with green nature and gently decorated will help you relax in the bustling urban life of city. You can leisurely read a newspaper, chat with acquaintances, sip an espresso and enjoy a light cake while gazing at the shimmering nightscape. This place has delicious and diverse drinks, fresh air and melodious songs, directly serving you. How great would it be if our band played a piece of music and you are on the mic?</p>', 'ACTIVE', '2023-08-05 00:00:00', '2023-08-08 00:44:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `collections`
--
ALTER TABLE `collections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `colections_slug_unique` (`slug`);

--
-- Indexes for table `collection_product`
--
ALTER TABLE `collection_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuisines`
--
ALTER TABLE `cuisines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_product`
--
ALTER TABLE `service_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- Indexes for table `utilities`
--
ALTER TABLE `utilities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collection_product`
--
ALTER TABLE `collection_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `service_product`
--
ALTER TABLE `service_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `utilities`
--
ALTER TABLE `utilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
