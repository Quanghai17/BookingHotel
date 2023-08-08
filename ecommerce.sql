-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 11:51 AM
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
-- Database: `ecommerce`
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
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `type`, `link`) VALUES
(9, 'Home banner', 'Home banner', 'banners\\May2023\\ynRYWU46IAtDm3IGuc8x.jpg', '2023-05-21 18:30:05', '2023-05-21 18:30:05', 'home_banner', NULL);

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
(1, NULL, 1, 'Category 1', 'category-1', '2023-02-20 09:15:44', '2023-02-20 09:15:44'),
(2, NULL, 1, 'Category 2', 'category-2', '2023-02-20 09:15:44', '2023-02-20 09:15:44');

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
(19, 4, 24);

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
  `content_2` text DEFAULT NULL,
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

INSERT INTO `cuisines` (`id`, `title`, `desc`, `price`, `content`, `content_2`, `image`, `status`, `category_id`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Mì Xào Bò', 'Đĩa mì xào thơm ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 80000, '<p>M&igrave; x&agrave;o b&ograve;&nbsp;l&agrave; m&oacute;n ăn được chế biến kết hợp từ nhiều loại thực phẩm kh&aacute;c nhau. Đ&oacute; l&agrave; trứng, thịt, rau v&agrave; gia vị. V&igrave; kết hợp nhiều nguy&ecirc;n liệu n&ecirc;n m&oacute;n ăn n&agrave;y c&oacute; hương vị thơm ngon, hấp dẫn. V&agrave; chế biến nhanh, đơn giản n&ecirc;n được nhiều gia đ&igrave;nh lựa chọn cho bữa s&aacute;ng.</p>\r\n<p>Nhiều người kh&aacute; lăn tăn về h&agrave;m lượng calo trong một đĩa m&igrave; x&agrave;o . Bởi m&oacute;n ăn l&agrave; sự kết hợp của nhiều gia vị, nguy&ecirc;n liệu. Do đ&oacute; để ch&iacute;nh x&aacute;c một đĩa m&igrave; n&agrave;y chứa bao nhi&ecirc;u calo l&agrave; rất kh&oacute;. Nhưng theo bảng t&iacute;nh gi&aacute; trị calo của thực phẩm n&oacute;i chung th&igrave;&nbsp;một đĩa m&igrave; x&agrave;o b&ograve; c&oacute; khoảng 638 calo.</p>\r\n<p>H&agrave;m lượng calo trong&nbsp;m&igrave; t&ocirc;m x&agrave;o b&ograve;&nbsp;l&agrave; kh&aacute; cao. Nếu như bạn đang giảm c&acirc;n hoặc thể trạng b&eacute;o, h&atilde;y hạn chế ăn m&oacute;n n&agrave;y nh&eacute;. Ngo&agrave;i ra, ăn nhiều m&oacute;n ăn n&agrave;y cũng dẫn đến g&acirc;y n&oacute;ng, nổi mụn, sỏi thận, dễ bị lo&atilde;ng xương, răng yếu,&hellip; D&ugrave;&nbsp;m&oacute;n m&igrave; x&agrave;o b&ograve;&nbsp;thơm ngon, dễ ăn, chế biến kh&ocirc;ng cầu kỳ nhưng bạn cũng kh&ocirc;ng n&ecirc;n ăn qu&aacute; nhiều. V&igrave; bổ sung nhiều năng lượng n&ecirc;n m&oacute;n&nbsp;m&igrave; x&agrave;o b&ograve;&nbsp;bạn c&oacute; thể chế biến v&agrave;o bữa s&aacute;ng để cả ng&agrave;y tr&agrave;n đầy năng lượng l&agrave;m việc.</p>\r\n<p>M&igrave; g&oacute;i x&agrave;o b&ograve;&nbsp;l&agrave; m&oacute;n ăn nhanh gọn, nhưng chế biến thế n&agrave;o để vừa thơm ngon m&agrave; kh&ocirc;ng mất qu&aacute; nhiều thời gian. C&ugrave;ng tham khảo ngay c&aacute;ch chế biến m&igrave; x&agrave;o b&ograve; dưới đ&acirc;y.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng.</p>', 'cuisines\\May2023\\U5o1awxw6zHPQoedkmim.png', 'ACTIVE', 'Food', '2023-05-21 19:16:00', '2023-05-21 19:20:09', 'mi-xao-bo'),
(2, 'Bún Xào Thịt Heo', 'Tô bún xào thịt heo ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 75000, '<p>B&uacute;n l&agrave; một m&oacute;n ăn v&ocirc; c&ugrave;ng th&acirc;n quen với người Việt. Dạo v&ograve;ng quanh c&aacute;c con đường, bạn sẽ bắt gặp v&ocirc; số hương vị kh&aacute;c nhau mặc d&ugrave; chỉ l&agrave; m&oacute;n b&uacute;n, c&oacute; thể kể đến như: B&uacute;n b&ograve; Huế, b&uacute;n c&aacute; l&oacute;c, b&uacute;n ri&ecirc;u, b&uacute;n cua, b&uacute;n chả&hellip; Trong đ&oacute;, b&uacute;n x&agrave;o thịt heo l&agrave; một m&oacute;n ăn cũng rất được ưa chuộng cho bữa s&aacute;ng</p>\r\n<div><strong>Nguy&ecirc;n liệu l&agrave;m b&uacute;n x&agrave;o thịt heo</strong></div>\r\n<p>- 300g thịt heo</p>\r\n<p>- 200g b&uacute;n</p>\r\n<p>- H&agrave;nh t&acirc;y</p>\r\n<p>- H&agrave;nh l&aacute;, ớt</p>\r\n<p>- Tỏi, h&agrave;nh t&iacute;m</p>\r\n<p>- Rau gi&aacute;, rau thơm, dưa chuột</p>\r\n<p>- Hạt n&ecirc;m, mắm, muối, đường</p>\r\n<p><img title=\"bun-thit-xao bun-thit-xao\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/bun-thit-xao-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; bun thit xao\"></p>\r\n<div><strong>C&aacute;ch chế biến b&uacute;n x&agrave;o thịt heo</strong></div>\r\n<h4>Bước 1: Sơ chế&nbsp;c&aacute;c nguy&ecirc;n liệu</h4>\r\n<p>- Thịt heo sau khi mua về bạn cạo sạch l&ocirc;ng, rửa qua nước sạch rồi cắt thịt th&agrave;nh c&aacute;c miếng mỏng vừa ăn.</p>\r\n<p>- H&agrave;nh t&acirc;y b&oacute;c sạch vỏ rồi th&aacute;i m&uacute;i cau.</p>\r\n<p>- H&agrave;nh l&aacute; nhặt sạch rễ rồi rửa sạch, băm nhuyễn.</p>\r\n<p>- Tỏi v&agrave; h&agrave;nh t&iacute;m b&oacute;c vỏ, rồi băm nhuyễn.</p>\r\n<p>- Ớt rửa sạch, th&aacute;i nhỏ.</p>\r\n<p>- Rau gi&aacute; v&agrave; rau thơm rửa sạch với nước rồi ng&acirc;m v&agrave;o nước muối, rửa sạch lại rồi để r&aacute;o nước.</p>\r\n<h4>Bước 2: Ướp thịt</h4>\r\n<p>- Bạn cho phần thịt heo v&agrave;o t&ocirc; rồi ướp thịt với 1 muỗng đường, 1 muỗng hạt n&ecirc;m, 1 ch&uacute;t nước mắm, 1 muỗng bột ngột, &iacute;t tỏi v&agrave; h&agrave;nh l&aacute; băm c&ugrave;ng hạt ti&ecirc;u xay. Sau đ&oacute;, trộn đều v&agrave; ướp khoảng 30 ph&uacute;t để thịt ngấm đều gia vị.</p>\r\n<p><img title=\"cach-lam-bun-xao-thit-heo2-e1570606838191 cach-lam-bun-xao-thit-heo2-e1570606838191\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191.jpg\" sizes=\"(max-width: 654px) 100vw, 654px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191.jpg 543w, https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo2-e1570606838191-300x193.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; cach lam bun xao thit heo2 e1570606838191\"></p>\r\n<h4>Bước 3: Chần b&uacute;n</h4>\r\n<p>- Bạn cho nước v&agrave;o nồi rồi mở lửa lớn, khi nước s&ocirc;i, bạn cho b&uacute;n v&agrave;o chần sơ để b&uacute;n tơi ra. Lưu &yacute;, chần thật nhanh rồi vớt b&uacute;n ra rổ để b&uacute;n kh&ocirc;ng bị n&aacute;t nhừ.</p>\r\n<h4>Bước 4: X&agrave;o thịt với b&uacute;n</h4>\r\n<p>- Bạn cho một &iacute;t dầu ăn v&agrave;o chảo, rồi cho tỏi v&agrave; h&agrave;nh t&iacute;m băm v&agrave;o phi thơm. Tiếp đến, cho thịt heo v&agrave;o đảo đều, đến khi thịt ch&iacute;n bạn cho thịt ra đĩa ri&ecirc;ng. Tiếp theo, bạn tiếp tục cho dầu tỏi v&agrave;o chảo phi thơm, rồi cho gi&aacute; đỗ, h&agrave;nh t&acirc;y v&atilde;o &ograve;a sơ, n&ecirc;n nếm với hạt n&ecirc;m, bột ngọt, đường cho vừa ăn. X&agrave;o đến khi nguy&ecirc;n liệu ch&iacute;n th&igrave; bạn cho đĩa thịt x&agrave;o v&agrave;o đảo đều tay th&igrave; tắt bếp.</p>\r\n<p><img title=\"cach-lam-bun-xao-thit-heo104-e1570606886986 cach-lam-bun-xao-thit-heo104-e1570606886986\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986.jpg\" sizes=\"(max-width: 621px) 100vw, 621px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986.jpg 497w, https://blog.beemart.vn/wp-content/uploads/2019/10/cach-lam-bun-xao-thit-heo104-e1570606886986-300x201.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; cach lam bun xao thit heo104 e1570606886986\"></p>\r\n<h4>Bước 5: Ho&agrave;n th&agrave;nh</h4>\r\n<p>- Bạn cho b&uacute;n v&agrave;o t&ocirc;, rồi cho phần thịt heo, h&agrave;nh t&acirc;y, gi&aacute; đỗ v&agrave;o, trộn đều l&ecirc;n v&agrave; chan nước tương v&agrave;o l&agrave; thưởng thức được rồi đấy. Để m&oacute;n b&uacute;n ngon hơn nữa, th&igrave; c&aacute;ch l&agrave;m nước tương ăn b&uacute;n cũng rất quan trọng. Do đ&oacute;, tham khảo c&aacute;ch l&agrave;m nước tương ăn b&uacute;n sau đ&acirc;y để c&oacute; được m&oacute;n b&uacute;n x&agrave;o thịt heo trọn vị.</p>\r\n<p>Lưu &yacute;: Với m&oacute;n ăn n&agrave;y, bạn c&oacute; thể d&ugrave;ng thịt băm thay thế cho thịt miếng. Đối với thịt băm, bạn ướp thịt băm với hạt n&ecirc;m, tỏi, h&agrave;nh l&aacute;, bột ngọt, đường v&agrave; cũng thực hiện như c&aacute;c bước l&agrave;m b&uacute;n x&agrave;o thịt heo như tr&ecirc;n l&agrave; được.</p>\r\n<p><img title=\"AGF-1644-bun-thit-xao-sa-ot1 AGF-1644-bun-thit-xao-sa-ot1\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1.png\" sizes=\"(max-width: 627px) 100vw, 627px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1.png 540w, https://blog.beemart.vn/wp-content/uploads/2019/10/AGF-1644-bun-thit-xao-sa-ot1-300x200.png 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; AGF 1644 bun thit xao sa ot1\"></p>\r\n<div>C&aacute;ch pha nước tương ăn b&uacute;n ngon</div>\r\n<h3>Nguy&ecirc;n liệu cần chuẩn bị&nbsp;pha nước tương</h3>\r\n<p>- 1/2 tr&aacute;i thơm</p>\r\n<p>- Nước tương đậm</p>\r\n<p>- Nước dừa tươi</p>\r\n<p>- 3 muỗng đường</p>\r\n<p>- 1 muỗng muối</p>\r\n<p>- Ớt bằm</p>\r\n<p><img title=\"nuoc-tuong-an-bun nuoc-tuong-an-bun\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/nuoc-tuong-an-bun-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; nuoc tuong an bun\"></p>\r\n<div><strong>C&aacute;ch l&agrave;m nước tương ăn b&uacute;n</strong></div>\r\n<p>-&nbsp;Bước 1:&nbsp;Thơm gọt sạch vỏ, cắt bỏ mắt rồi băm nhuyễn hoặc cho v&agrave;o cối sinh tố xay nhuyễn. Sau đ&oacute;, bạn vắt lấy nước.</p>\r\n<p>-&nbsp;Bước 2:&nbsp;Bạn cho nước dừa tươi, đường v&agrave; muối v&agrave;o t&ocirc;, rồi d&ugrave;ng muỗng khuấy đến khi nguy&ecirc;n liệu h&ograve;a tan.</p>\r\n<p>-&nbsp;Bước 3:&nbsp;Bạn cho nước thơm v&agrave;o chảo rồi cho tiếp nước dừa v&agrave;o nấu s&ocirc;i. Sau đ&oacute;, bạn cho tiếp nước tương v&agrave;o, n&ecirc;m nếm cho vừa ăn rồi tắt bếp.</p>\r\n<p>-&nbsp;Bước 4:&nbsp;Khi nước tương nguội hẳn, bạn băm nhuyễn tỏi, ớt rồi cho v&agrave;o nước tương để tạo vị cay cay ngon miệng.</p>\r\n<p><img title=\"bun-gao-xao-thit-heo-1 bun-gao-xao-thit-heo-1\" src=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1.jpg\" sizes=\"(max-width: 600px) 100vw, 600px\" srcset=\"https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1.jpg 600w, https://blog.beemart.vn/wp-content/uploads/2019/10/bun-gao-xao-thit-heo-1-300x200.jpg 300w\" alt=\"bun-xao-thit-heo b&uacute;n x&agrave;o thịt heo C&aacute;ch l&agrave;m m&oacute;n b&uacute;n x&agrave;o thịt heo cực ngon cực dễ tại nh&agrave; bun gao xao thit heo 1\"></p>\r\n<p>Ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng sẽ c&oacute; 1 bữa ăn thật ngon miệng nh&eacute;!.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng.</p>', 'cuisines\\May2023\\1YvojuC9jNiXU36qKZ0M.png', 'ACTIVE', 'Food', '2023-05-21 19:30:49', '2023-05-21 19:30:49', 'bun-xao-thit-heo'),
(3, 'Bún Bò Huế', 'Tô bún bò Huế ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 95000, '<p>B&uacute;n b&ograve; Huế l&agrave; một m&oacute;n ăn được rất nhiều người ưa chuộng thậm ch&iacute; c&ograve;n ghiền nặng bởi hương vị m&agrave; n&oacute; mang lại. Thưởng thức một b&aacute;t b&uacute;n b&ograve; Huế v&agrave;o một s&aacute;ng thảnh thơi sau đ&oacute; nh&acirc;m nhi ch&uacute;t tr&agrave; đ&aacute; th&igrave; chẳng c&ograve;n g&igrave; tuyệt vời hơn cho một ng&agrave;y cuối tuần.</p>\r\n<div>B&uacute;n b&ograve; Huế &ndash; Ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</div>\r\n<p>Với những &ldquo;t&iacute;n đồ&rdquo; của b&uacute;n b&ograve; Huế, những ai đ&atilde; v&agrave; đang ghiền m&oacute;n ăn n&agrave;y m&agrave; lại l&agrave; đối tượng đang c&oacute; &yacute; định giảm c&acirc;n, x&acirc;y dựng chế độ dinh dưỡng hợp l&yacute; sẽ c&oacute; c&ugrave;ng thắc mắc rằng, ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</p>\r\n<p>Theo c&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra rằng, trung b&igrave;nh một người phụ nữ sẽ cần khoảng 1300 calo v&agrave; nam giới sẽ cần tới 1650 calo mỗi ng&agrave;y để duy tr&igrave; sự sống cho n&ecirc;n, nếu như lượng calo ti&ecirc;u thụ trong 1 ng&agrave;y vượt ngưỡng tr&ecirc;n th&igrave; cơ thể sẽ b&eacute;o l&ecirc;n đặc biệt l&agrave; đối với những c&aacute; nh&acirc;n c&oacute; cơ địa hấp thụ tốt.</p>\r\n<p>Việc bạn ti&ecirc;u thụ 534 calo cho một bữa nhưng lại biết tiết chế lượng thức ăn ở những bữa kh&aacute;c trong ng&agrave;y sẽ l&agrave;m giảm nguy cơ tăng c&acirc;n. Ngược lại, nếu như bạn ăn qu&aacute; nhiều b&uacute;n b&ograve; Huế trong ng&agrave;y v&agrave; trong tuần sẽ c&oacute; thể ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n dẫn tới t&igrave;nh trạng thừa c&acirc;n bởi lẽ, hầu hết tất cả những g&igrave; &ldquo;qu&aacute;&rdquo; đều kh&ocirc;ng tốt cho cơ thể.</p>\r\n<p>Từ đ&acirc;y c&oacute; thể đưa ra c&acirc;u trả lời cho thắc mắc &ldquo;Ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?&rdquo; rằng, nếu như bạn biết tiết chế lượng thức ăn mỗi ng&agrave;y, ăn vừa phải, c&oacute; thể 1 tuần chỉ n&ecirc;n thưởng thức 1 &ndash; 2 b&aacute;t b&uacute;n th&igrave; khả năng tăng c&acirc;n l&agrave; kh&oacute; c&oacute; thể xảy ra.</p>\r\n<p>Ngược lại, nếu như ng&agrave;y n&agrave;o bạn cũng ti&ecirc;u thụ hết 534 calo của 1 b&aacute;t b&uacute;n b&ograve; Huế c&ugrave;ng với v&ocirc; v&agrave;n lượng thức ăn gi&agrave;u calo kh&aacute;c trong ng&agrave;y v&agrave; lười vận động th&igrave; chắc chắn sẽ b&eacute;o. T&oacute;m lại, ăn qu&aacute; nhiều b&uacute;n b&ograve; Huế c&ugrave;ng với những thực phẩm nhiều calo kh&aacute;c trong ng&agrave;y k&egrave;m theo lười vận động sẽ tăng khả năng tăng c&acirc;n v&agrave; đ&acirc;y l&agrave; điều bạn n&ecirc;n lưu &yacute;.</p>\r\n<div>Lời kết</div>\r\n<p>1 b&aacute;t b&uacute;n b&ograve; Huế bao nhi&ecirc;u calo? 534 cũng l&agrave; con số m&agrave; bạn c&oacute; thể tham khảo từ đ&oacute; c&oacute; cho m&igrave;nh kế hoạch thưởng thức một c&aacute;ch khoa học, vừa vặn. Bất cứ một m&oacute;n ăn n&agrave;o cũng vậy th&ocirc;i, nếu như bạn kh&ocirc;ng kết hợp việc luyện tập c&ugrave;ng với ăn uống, mặt kh&aacute;c c&ograve;n lạm dụng n&oacute; th&igrave; chắc chắn sẽ kh&ocirc;ng tr&aacute;nh khỏi tăng c&acirc;n, thừa c&acirc;n, b&eacute;o ph&igrave;. Hy vọng qua b&agrave;i viết n&agrave;y, bạn sẽ c&oacute; cho m&igrave;nh kế hoạch thưởng thức b&uacute;n b&ograve; Huế sao cho hợp l&yacute; nhất!</p>\r\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng.</p>', 'cuisines\\May2023\\Jlprd1DYoR9jutzjaRyU.png', 'ACTIVE', 'Food', '2023-05-21 19:31:00', '2023-05-21 19:32:24', 'bun-bo-hue'),
(4, 'Mì Xào Thịt Heo Hải Phòng', 'Đĩa Mì xào thịt heo ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 85000, '<p>Chỉ nh&igrave;n th&ocirc;i cũng đ&atilde; thấy th&egrave;m đĩa m&igrave; x&agrave;o thịt heo n&oacute;ng hổi kia rồi. Từng sợi m&igrave; dai ngon kết hợp với thịt heo chi&ecirc;n gi&ograve;n, b&eacute;o ngậy quyện trong nước d&ugrave;ng g&agrave;, hương vị đậm đ&agrave; l&agrave;m cho m&oacute;n m&igrave; x&agrave;o thịt heo th&ecirc;m ngon miệng v&agrave; hấp dẫn hơn bao giờ hết.</p>\r\n<p>Mỗi ng&agrave;y cơ thể cần nhiều loại chất dinh dưỡng thiết yếu kh&aacute;c nhau như: chất đạm, chất b&eacute;o, chất bột đường v&agrave; c&aacute;c vitamin, kho&aacute;ng chất v&agrave; nước. Ngo&agrave;i ra, b&igrave;nh qu&acirc;n nhu cầu năng lượng hằng ng&agrave;y của một người trưởng th&agrave;nh l&agrave; 2,300 &ndash; 2,700 Kcal (nam) v&agrave; 2,200 &ndash; 2,300 Kcal (nữ).<br>Do đ&oacute;, tuỳ thuộc v&agrave;o tuổi, giới t&iacute;nh v&agrave; t&iacute;nh chất lao động m&agrave; cơ thể cần bổ sung nhiều loại thực phẩm kh&aacute;c nhau để đảm bảo đầy đủ dinh dưỡng v&agrave; cung cấp đủ năng lượng cho cơ thể hoạt động mỗi ng&agrave;y.</p>\r\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng</p>', 'cuisines\\May2023\\t25iAvjX1yibo6CeNivK.png', 'ACTIVE', 'Food', '2023-05-21 19:34:34', '2023-05-21 19:34:34', 'mi-xao-thit-heo-hai-phong'),
(5, 'Bánh Mì Ốp La Trứng', 'Đĩa bánh mì ốp la trứng ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 40000, '<p>1 ổ b&aacute;nh m&igrave; trứng nhiều chứa rất nhiều th&agrave;nh phần dinh dưỡng, c&oacute; khoảng tr&ecirc;n 385,1 calo trong 1 ổ b&aacute;nh m&igrave; trứng kh&ocirc;ng, nếu c&oacute; th&ecirc;m pate th&igrave; c&oacute; khoảng 704,2 calo chưa kể c&aacute;c th&agrave;nh phần rau hay gia vị. V&igrave; thế b&aacute;nh m&igrave; ốp la kh&ocirc;ng chỉ l&agrave; một m&oacute;n ăn ngon thu h&uacute;t thực kh&aacute;ch m&agrave; đ&acirc;y c&ograve;n l&agrave; m&oacute;n ăn gi&agrave;u dinh dưỡng.</p>\r\n<h3 id=\"Ăn_b&aacute;nh_m&igrave;_trứng_c&oacute;_tăng_c&acirc;n_kh&ocirc;ng\" title=\"Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?\">Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?</h3>\r\n<p>Ngo&agrave;i vấn đề&nbsp;<strong>1 ổ b&aacute;nh m&igrave; trứng bao nhi&ecirc;u calo</strong>&nbsp;th&igrave; c&acirc;u hỏi ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng cũng được rất nhiều người quan t&acirc;m. Nh&igrave;n lại th&agrave;nh phần dinh dưỡng c&oacute; trong 1 ổ b&aacute;nh m&igrave; trứng ch&uacute;ng ta thấy, con số calo m&agrave; một b&aacute;nh m&igrave; trứng mang lại l&agrave; tương đối cao. Nếu chỉ ăn 1 ổ b&aacute;nh m&igrave; trứng, bạn đ&atilde; nạp v&agrave;o cơ thể khoảng 385,1 calo, nếu ăn k&egrave;m th&ecirc;m một số gia vị hay một v&agrave;i th&agrave;nh phần kh&aacute;c th&igrave; 1 ổ b&aacute;nh m&igrave; trứng c&oacute; thể khiến bạn tăng c&acirc;n.</p>\r\n<p>Ngo&agrave;i ra ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n hay kh&ocirc;ng c&ograve;n phụ thuộc v&agrave;o c&aacute;ch bạn ăn, số lượng v&agrave; thời điểm bạn ăn.</p>\r\n<p>Nếu bạn ăn b&aacute;nh m&igrave; trứng v&agrave;o buổi s&aacute;ng, cơ thể sẽ được cung cấp một nguồn năng lượng cần thiết sau 1 đ&ecirc;m d&agrave;i. C&ocirc;ng th&ecirc;m việc bạn phải hoạt động kh&ocirc;ng ngừng trong một ng&agrave;y th&igrave; b&aacute;nh m&igrave; trứng sẽ kh&ocirc;ng thể khiến bạn tăng c&acirc;n.</p>\r\n<p>Nhưng ngược lại nếu bạn ăn v&agrave;o buổi tối m&agrave; nhất l&agrave; ăn trước khi đi ngủ, cơ thể kh&ocirc;ng kịp chuyển h&oacute;a năng lượng v&agrave; sẽ bị t&iacute;ch tụ lại tạo n&ecirc;n mỡ thừa. Đấy l&agrave; l&iacute; do tại sao bạn n&ecirc;n ăn b&aacute;nh m&igrave; đ&uacute;ng thời điểm.</p>\r\n<p>Hơn thế nữa, nếu chỉ ăn một ổ b&aacute;nh m&igrave; trứng mỗi ng&agrave;y th&igrave; chẳng thể l&agrave;m bạn tăng c&acirc;n được, nhưng ăn từ 2-3 ổ trở l&ecirc;n th&igrave; lại l&agrave; một trường hợp kh&aacute;c. N&ecirc;n kết hợp ăn b&aacute;nh m&igrave; trứng với c&aacute;c thực phẩm &iacute;t năng lượng như rau xanh, nộm đu đủ sẽ khiến b&aacute;nh m&igrave; vừa ngon lại gi&uacute;p duy tr&igrave; c&acirc;n nặng.</p>\r\n<p><img src=\"https://bizweb.dktcdn.net/100/423/358/files/1-o-banh-mi-trung-bao-nhieu-calo-2.jpg?v=1623512979313\" data-thumb=\"original\"></p>\r\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng.</p>', 'cuisines\\May2023\\ufb6bRw25KPNNCsoxRrq.png', 'ACTIVE', 'Food', '2023-05-21 19:36:03', '2023-05-21 19:36:03', 'banh-mi-op-la-trung'),
(6, 'Bánh Mì Bò Kho', 'Tô bánh mì bò kho ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 70000, '<p>1 t&ocirc;&nbsp;b&aacute;nh m&igrave; b&ograve; kho nhiều chứa rất nhiều th&agrave;nh phần dinh dưỡng, c&oacute; khoảng tr&ecirc;n 385,1 calo trong 1 ổ b&aacute;nh m&igrave; trứng kh&ocirc;ng, nếu c&oacute; th&ecirc;m pate th&igrave; c&oacute; khoảng 704,2 calo chưa kể c&aacute;c th&agrave;nh phần rau hay gia vị. V&igrave; thế b&aacute;nh m&igrave; ốp la kh&ocirc;ng chỉ l&agrave; một m&oacute;n ăn ngon thu h&uacute;t thực kh&aacute;ch m&agrave; đ&acirc;y c&ograve;n l&agrave; m&oacute;n ăn gi&agrave;u dinh dưỡng.</p>\r\n<div id=\"Ăn_b&aacute;nh_m&igrave;_trứng_c&oacute;_tăng_c&acirc;n_kh&ocirc;ng\" title=\"Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?\"><strong>Ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng?</strong></div>\r\n<p>Ngo&agrave;i vấn đề&nbsp;<strong>1 ổ b&aacute;nh m&igrave; trứng bao nhi&ecirc;u calo</strong>&nbsp;th&igrave; c&acirc;u hỏi ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n kh&ocirc;ng cũng được rất nhiều người quan t&acirc;m. Nh&igrave;n lại th&agrave;nh phần dinh dưỡng c&oacute; trong 1 ổ b&aacute;nh m&igrave; trứng ch&uacute;ng ta thấy, con số calo m&agrave; một b&aacute;nh m&igrave; trứng mang lại l&agrave; tương đối cao. Nếu chỉ ăn 1 ổ b&aacute;nh m&igrave; trứng, bạn đ&atilde; nạp v&agrave;o cơ thể khoảng 385,1 calo, nếu ăn k&egrave;m th&ecirc;m một số gia vị hay một v&agrave;i th&agrave;nh phần kh&aacute;c th&igrave; 1 ổ b&aacute;nh m&igrave; trứng c&oacute; thể khiến bạn tăng c&acirc;n.</p>\r\n<p>Ngo&agrave;i ra ăn b&aacute;nh m&igrave; trứng c&oacute; tăng c&acirc;n hay kh&ocirc;ng c&ograve;n phụ thuộc v&agrave;o c&aacute;ch bạn ăn, số lượng v&agrave; thời điểm bạn ăn.</p>\r\n<p>Nếu bạn ăn b&aacute;nh m&igrave; trứng v&agrave;o buổi s&aacute;ng, cơ thể sẽ được cung cấp một nguồn năng lượng cần thiết sau 1 đ&ecirc;m d&agrave;i. C&ocirc;ng th&ecirc;m việc bạn phải hoạt động kh&ocirc;ng ngừng trong một ng&agrave;y th&igrave; b&aacute;nh m&igrave; trứng sẽ kh&ocirc;ng thể khiến bạn tăng c&acirc;n.</p>\r\n<p>Nhưng ngược lại nếu bạn ăn v&agrave;o buổi tối m&agrave; nhất l&agrave; ăn trước khi đi ngủ, cơ thể kh&ocirc;ng kịp chuyển h&oacute;a năng lượng v&agrave; sẽ bị t&iacute;ch tụ lại tạo n&ecirc;n mỡ thừa. Đấy l&agrave; l&iacute; do tại sao bạn n&ecirc;n ăn b&aacute;nh m&igrave; đ&uacute;ng thời điểm.</p>\r\n<p>Hơn thế nữa, nếu chỉ ăn một ổ b&aacute;nh m&igrave; trứng mỗi ng&agrave;y th&igrave; chẳng thể l&agrave;m bạn tăng c&acirc;n được, nhưng ăn từ 2-3 ổ trở l&ecirc;n th&igrave; lại l&agrave; một trường hợp kh&aacute;c. N&ecirc;n kết hợp ăn b&aacute;nh m&igrave; trứng với c&aacute;c thực phẩm &iacute;t năng lượng như rau xanh, nộm đu đủ sẽ khiến b&aacute;nh m&igrave; vừa ngon lại gi&uacute;p duy tr&igrave; c&acirc;n nặng.</p>\r\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng.</p>', 'cuisines\\May2023\\XVR9tXIf2CqmR4zr8vZD.png', 'ACTIVE', 'Food', '2023-05-21 19:37:04', '2023-05-21 19:37:04', 'banh-mi-bo-kho'),
(7, 'Bún Bò - Heo', 'Bún bò - heo ngon nóng hổi sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 80000, '<p>B&uacute;n b&ograve; - heo l&agrave; một m&oacute;n ăn được rất nhiều người ưa chuộng thậm ch&iacute; c&ograve;n ghiền nặng bởi hương vị m&agrave; n&oacute; mang lại. Thưởng thức một b&aacute;t B&uacute;n b&ograve; - heo v&agrave;o một s&aacute;ng thảnh thơi sau đ&oacute; nh&acirc;m nhi ch&uacute;t tr&agrave; đ&aacute; th&igrave; chẳng c&ograve;n g&igrave; tuyệt vời hơn cho một ng&agrave;y cuối tuần.</p>\r\n<div><strong>B&uacute;n b&ograve; - heo ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</strong></div>\r\n<p>Với những &ldquo;t&iacute;n đồ&rdquo; của B&uacute;n b&ograve; - heo, những ai đ&atilde; v&agrave; đang ghiền m&oacute;n ăn n&agrave;y m&agrave; lại l&agrave; đối tượng đang c&oacute; &yacute; định giảm c&acirc;n, x&acirc;y dựng chế độ dinh dưỡng hợp l&yacute; sẽ c&oacute; c&ugrave;ng thắc mắc rằng, ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?</p>\r\n<p>Theo c&aacute;c nghi&ecirc;n cứu đ&atilde; chỉ ra rằng, trung b&igrave;nh một người phụ nữ sẽ cần khoảng 1300 calo v&agrave; nam giới sẽ cần tới 1650 calo mỗi ng&agrave;y để duy tr&igrave; sự sống cho n&ecirc;n, nếu như lượng calo ti&ecirc;u thụ trong 1 ng&agrave;y vượt ngưỡng tr&ecirc;n th&igrave; cơ thể sẽ b&eacute;o l&ecirc;n đặc biệt l&agrave; đối với những c&aacute; nh&acirc;n c&oacute; cơ địa hấp thụ tốt.</p>\r\n<p>Việc bạn ti&ecirc;u thụ 534 calo cho một bữa nhưng lại biết tiết chế lượng thức ăn ở những bữa kh&aacute;c trong ng&agrave;y sẽ l&agrave;m giảm nguy cơ tăng c&acirc;n. Ngược lại, nếu như bạn ăn qu&aacute; nhiều B&uacute;n b&ograve; - heo trong ng&agrave;y v&agrave; trong tuần sẽ c&oacute; thể ch&iacute;nh l&agrave; nguy&ecirc;n nh&acirc;n dẫn tới t&igrave;nh trạng thừa c&acirc;n bởi lẽ, hầu hết tất cả những g&igrave; &ldquo;qu&aacute;&rdquo; đều kh&ocirc;ng tốt cho cơ thể.</p>\r\n<p>Từ đ&acirc;y c&oacute; thể đưa ra c&acirc;u trả lời cho thắc mắc &ldquo;Ăn nhiều c&oacute; b&eacute;o kh&ocirc;ng?&rdquo; rằng, nếu như bạn biết tiết chế lượng thức ăn mỗi ng&agrave;y, ăn vừa phải, c&oacute; thể 1 tuần chỉ n&ecirc;n thưởng thức 1 &ndash; 2 b&aacute;t b&uacute;n th&igrave; khả năng tăng c&acirc;n l&agrave; kh&oacute; c&oacute; thể xảy ra.</p>\r\n<p>Ngược lại, nếu như ng&agrave;y n&agrave;o bạn cũng ti&ecirc;u thụ hết 534 calo của 1 b&aacute;t B&uacute;n b&ograve; - heo c&ugrave;ng với v&ocirc; v&agrave;n lượng thức ăn gi&agrave;u calo kh&aacute;c trong ng&agrave;y v&agrave; lười vận động th&igrave; chắc chắn sẽ b&eacute;o. T&oacute;m lại, ăn qu&aacute; nhiều B&uacute;n b&ograve; - heo c&ugrave;ng với những thực phẩm nhiều calo kh&aacute;c trong ng&agrave;y k&egrave;m theo lười vận động sẽ tăng khả năng tăng c&acirc;n v&agrave; đ&acirc;y l&agrave; điều bạn n&ecirc;n lưu &yacute;.</p>\r\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng.</p>', 'cuisines\\May2023\\ezQpdFdjbDFdfeS0I2T5.png', 'ACTIVE', 'Food', '2023-05-21 19:38:22', '2023-05-21 19:38:22', 'bun-bo-heo'),
(8, 'Cơm sườn trứng', 'Cơm sườn trứn sẽ cung cấp bữa sáng tuyệt vời, đầy đủ dinh dưỡng, năng lượng cho một ngày dài. Sự hòa quyện vị ngọt tự nhiên của rau củ, thịt và gia vị sẽ giúp món mì thêm đậm đà, đượm vị.', 50000, '<p>Cơm sườn trứngđược xem l&agrave; một trong những m&oacute;n đặc sản ở S&agrave;i G&ograve;n. Một đĩa cơm tấm &ldquo;chuẩn vị&rdquo; sẽ bao gồm: cơm tấm tơi xốp, sườn nướng đậm vị ăn k&egrave;m với thịt b&igrave;, chả trứng v&agrave; th&ecirc;m ch&eacute;n nước mắm ớt ngon xu&yacute;t xoa. Song song với những qu&aacute;n cơm tấm b&igrave;nh d&acirc;n vỉa h&egrave;, c&ograve;n c&oacute; nhiều qu&aacute;n cơm tấm khiến nhiều người phải sốc với &ldquo;mức gi&aacute; hết hồn&rdquo; &nbsp;ấy vậy lại tấp nập kh&aacute;ch ra v&agrave;o bởi độ chất của miếng sườn nướng hiếm c&oacute; nơi n&agrave;o so s&aacute;nh được.</p>\r\n<p>Ch&uacute;c bạn c&oacute; 1 bữa ăn ngon miệng nh&eacute;!.</p>', '<p>+ Sản phẩm lỗi, hỏng do qu&aacute; tr&igrave;nh sản xuất hoặc vận chuyện<br>+ Nằm trong ch&iacute;nh s&aacute;ch đổi trả sản phẩm của Bean<br>+ Sản phẩm c&ograve;n nguy&ecirc;n tem m&aacute;c chưa qua sử dụng v&agrave; chưa giặt l&agrave;<br>+ Thời gian đổi trả nhỏ hơn 15 ng&agrave;y kể từ ng&agrave;y nhận h&agrave;ng<br>+ Chi ph&iacute; bảo h&agrave;nh về sản phẩm, vận chuyển kh&aacute;ch h&agrave;ng chịu chi ph&iacute;<br><strong>Điều kiện đổi trả h&agrave;ng</strong><br>Điều kiện về thời gian đổi trả: trong v&ograve;ng 01 ng&agrave;y kể từ khi nhận được h&agrave;ng v&agrave; phải li&ecirc;n hệ gọi ngay cho ch&uacute;ng t&ocirc;i theo số điện thoại tr&ecirc;n để được x&aacute;c nhận đổi trả h&agrave;ng.<br><strong>Điều kiện đổi trả h&agrave;ng:</strong><br>- Sản phẩm gửi lại phải c&ograve;n nguy&ecirc;n đai nguy&ecirc;n kiện<br>- Phiếu bảo h&agrave;nh (nếu c&oacute;) v&agrave; tem của c&ocirc;ng ty tr&ecirc;n sản phẩm c&ograve;n nguy&ecirc;n vẹn.<br>- Sản phẩm đổi/ trả phải c&ograve;n đầy đủ hộp, giấy Hướng dẫn sử dụng v&agrave; chưa qua sử dụng.<br>- Qu&yacute; kh&aacute;ch chịu chi ph&iacute; vận chuyển, đ&oacute;ng g&oacute;i, thu hộ tiền, chi ph&iacute; li&ecirc;n lạc tối đa tương đương 20% gi&aacute; trị đơn h&agrave;ng.</p>', 'cuisines\\May2023\\beje2gpDSzgGM0WW0deo.png', 'ACTIVE', 'Food', '2023-05-21 19:39:45', '2023-05-21 19:39:45', 'com-suon-trung');

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
(2, NULL, 'Nguyen Quang Hai', 'content@gmail.com', NULL, NULL, '$2y$10$BNkp0Kkd4aDoZUALsd4sEuyIOSrAAcsdy1pxj5oydQ7bGFcWGa5Sq', NULL, NULL, '2023-05-23 03:11:03', '2023-05-23 03:11:03');

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
(68, 8, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 2),
(70, 8, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 4),
(71, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(72, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
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
(95, 8, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 7),
(96, 8, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 3),
(97, 8, 'link', 'text', 'Link', 0, 1, 1, 1, 1, 1, '{}', 8),
(98, 9, 'collection_belongstomany_product_relationship', 'relationship', 'products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"collection_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 8),
(99, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 12, 'title', 'text', 'Tên đồ dùng', 0, 1, 1, 1, 1, 1, '{}', 2),
(101, 12, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(102, 12, 'price', 'text', 'Giá', 0, 1, 1, 1, 1, 1, '{}', 5),
(103, 12, 'content', 'rich_text_box', 'Mô tả sản phẩm', 0, 0, 1, 1, 1, 1, '{}', 6),
(104, 12, 'content_2', 'rich_text_box', 'Chính sách đổ trả', 0, 0, 1, 1, 1, 1, '{}', 7),
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
(118, 10, 'convenient', 'rich_text_box', 'Tiện ích', 0, 0, 1, 1, 1, 1, '{}', 6),
(119, 10, 'acreage', 'text', 'Diện tích phòng', 0, 0, 1, 1, 1, 1, '{}', 9),
(120, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(121, 14, 'title', 'text', 'Tên dịch vụ', 0, 1, 1, 1, 1, 1, '{}', 2),
(122, 14, 'image', 'image', 'Hình ảnh', 0, 0, 1, 1, 1, 1, '{}', 3),
(123, 14, 'desc', 'text_area', 'Mô tả', 0, 0, 1, 1, 1, 1, '{}', 4),
(124, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(125, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(126, 10, 'product_belongstomany_service_relationship', 'relationship', 'Dịch vụ đi kèm', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Service\",\"table\":\"services\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"service_product\",\"pivot\":\"1\",\"taggable\":\"0\"}', 20);

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
(8, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-21 03:06:35', '2023-02-21 03:28:13'),
(9, 'collections', 'collections', 'Loại phòng', 'Loại phòng', 'voyager-buy', 'App\\Models\\Collection', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-21 03:16:44', '2023-05-20 01:39:27'),
(10, 'products', 'products', 'Phòng nghỉ', 'Phòng nghỉ', 'voyager-diamond', 'App\\Models\\Product', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-02-21 03:20:06', '2023-05-23 01:03:20'),
(12, 'cuisines', 'cuisines', 'Ẩm thực', 'Ẩm thực', NULL, 'App\\Models\\Cuisine', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-21 18:58:54', '2023-05-21 19:19:15'),
(14, 'services', 'services', 'Dịch vụ phòng', 'Dịch vụ phòng', 'voyager-documentation', 'App\\Models\\Service', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2023-05-23 00:42:37', '2023-05-23 00:49:13');

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
(1, 1, 'Bảng điều khiển', '', '_self', 'voyager-dashboard', '#000000', NULL, 1, '2023-02-20 09:13:34', '2023-02-21 08:13:13', 'voyager.dashboard', 'null'),
(2, 1, 'Đa phương tiện', '', '_self', 'voyager-images', '#000000', NULL, 6, '2023-02-20 09:13:34', '2023-05-21 19:21:25', 'voyager.media.index', 'null'),
(3, 1, 'Tài khoản quản trị', '', '_self', 'voyager-person', '#000000', 15, 1, '2023-02-20 09:13:34', '2023-02-21 02:59:38', 'voyager.users.index', 'null'),
(4, 1, 'Phân quyền', '', '_self', 'voyager-lock', '#000000', 15, 2, '2023-02-20 09:13:34', '2023-02-21 02:59:53', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2023-02-20 09:13:34', '2023-05-21 19:21:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-02-20 09:13:34', '2023-02-21 02:53:42', 'voyager.bread.index', NULL),
(10, 1, 'Cấu hình', '', '_self', 'voyager-settings', '#000000', NULL, 8, '2023-02-20 09:13:34', '2023-05-21 19:21:25', 'voyager.settings.index', 'null'),
(11, 1, 'Danh mục bài viết', '', '_self', 'voyager-window-list', '#000000', 17, 3, '2023-02-20 09:15:44', '2023-02-21 03:07:17', 'voyager.categories.index', 'null'),
(12, 1, 'Bài viết', '', '_self', 'voyager-news', '#000000', 17, 2, '2023-02-20 09:15:45', '2023-02-21 03:07:05', 'voyager.posts.index', 'null'),
(13, 1, 'Trang', '', '_self', 'voyager-file-text', '#000000', 17, 4, '2023-02-20 09:15:45', '2023-02-21 08:11:43', 'voyager.pages.index', 'null'),
(15, 1, 'Tài khoản', '', '_self', 'voyager-data', '#000000', NULL, 5, '2023-02-21 02:54:21', '2023-05-21 19:21:25', NULL, ''),
(16, 1, 'Khách hàng', '', '_self', 'voyager-people', NULL, 15, 3, '2023-02-21 02:58:44', '2023-02-21 02:59:20', 'voyager.customers.index', NULL),
(17, 1, 'Nội dung', '', '_self', 'voyager-pen', '#000000', NULL, 4, '2023-02-21 03:03:50', '2023-05-21 19:21:25', NULL, ''),
(18, 1, 'Banners', '', '_self', 'voyager-images', '#000000', 17, 1, '2023-02-21 03:06:35', '2023-02-21 03:07:31', 'voyager.banners.index', 'null'),
(19, 1, 'Danh mục sản phẩm', '', '_self', 'voyager-boat', '#000000', 21, 2, '2023-02-21 03:16:44', '2023-02-21 08:13:18', 'voyager.collections.index', 'null'),
(20, 1, 'Sản phẩm', '', '_self', 'voyager-pizza', '#000000', 21, 1, '2023-02-21 03:20:06', '2023-02-21 08:12:58', 'voyager.products.index', 'null'),
(22, 1, 'Phòng nghỉ', '', '_self', 'voyager-diamond', '#000000', 24, 2, '2023-05-20 00:45:40', '2023-05-20 01:41:02', 'voyager.products.index', 'null'),
(23, 1, 'Loại phòng', '', '_self', 'voyager-params', '#000000', 24, 1, '2023-05-20 01:40:19', '2023-05-22 01:35:57', 'voyager.collections.index', 'null'),
(24, 1, 'Quản lý phòng nghỉ', '', '_self', 'voyager-categories', '#000000', NULL, 2, '2023-05-20 01:40:51', '2023-05-20 01:40:59', NULL, ''),
(26, 1, 'Ẩm thực', '', '_self', 'voyager-bug', '#000000', NULL, 3, '2023-05-21 18:58:54', '2023-05-21 19:21:25', 'voyager.cuisines.index', 'null'),
(28, 2, 'Trang chủ', '/', '_self', NULL, '#000000', NULL, 1, '2023-05-22 00:12:35', '2023-05-22 00:13:30', NULL, ''),
(29, 2, 'Giới thiệu', '/about', '_self', NULL, '#000000', NULL, 2, '2023-05-22 00:13:05', '2023-05-22 00:13:30', NULL, ''),
(30, 2, 'Phòng', '/rooms', '_self', NULL, '#000000', NULL, 3, '2023-05-22 00:13:18', '2023-05-22 23:38:58', NULL, ''),
(31, 2, 'Phòng đơn', '/collections/phong-don', '_self', NULL, '#000000', 30, 1, '2023-05-22 00:13:27', '2023-05-22 01:58:49', NULL, ''),
(32, 2, 'Phòng đôi', '/collections/phong-doi', '_self', NULL, '#000000', 30, 2, '2023-05-22 00:13:37', '2023-05-22 01:58:59', NULL, ''),
(33, 2, 'Phòng vip', '/collections/phong-vip', '_self', NULL, '#000000', 30, 3, '2023-05-22 00:13:48', '2023-05-22 01:59:09', NULL, ''),
(34, 2, 'Ẩm thực', '', '_self', NULL, '#000000', NULL, 4, '2023-05-22 00:14:07', '2023-05-22 00:14:17', NULL, ''),
(35, 2, 'Đồ ăn', '', '_self', NULL, '#000000', 34, 1, '2023-05-22 00:14:15', '2023-05-22 00:14:17', NULL, ''),
(36, 2, 'Nước uống', '', '_self', NULL, '#000000', 34, 2, '2023-05-22 00:14:25', '2023-05-22 00:14:27', NULL, ''),
(37, 2, 'Bánh ngọt', '', '_self', NULL, '#000000', 34, 3, '2023-05-22 00:14:36', '2023-05-22 00:14:38', NULL, ''),
(38, 2, 'Dịch vụ', '', '_self', NULL, '#000000', NULL, 5, '2023-05-22 00:14:46', '2023-05-22 23:40:48', NULL, ''),
(40, 2, 'Liên hệ', '/contact', '_self', NULL, '#000000', NULL, 7, '2023-05-22 00:15:05', '2023-05-22 23:40:48', NULL, ''),
(41, 2, 'Thư viện ảnh', '', '_self', NULL, '#000000', NULL, 6, '2023-05-22 23:40:45', '2023-05-22 23:40:48', NULL, ''),
(42, 1, 'Dịch vụ phòng', '', '_self', 'voyager-documentation', NULL, 24, 3, '2023-05-23 00:42:37', '2023-05-23 00:47:10', 'voyager.services.index', NULL);

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
(2, 1, 'KHÁCH SẠN', 'TIỆN NGHI SANG TRỌNG', '<p class=\"txt_title_1\">Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\n<p class=\"txt_title_2\">L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c...</p>', 'pages\\May2023\\CKxNCaH52EnjnuK1uBgG.jpg', 'khach-san', NULL, NULL, 'ACTIVE', '2023-05-21 20:12:05', '2023-05-21 21:32:11', 'service', 'pages\\May2023\\iqOskLJC5OzY9hzSuVXo.jpg', 'pages\\May2023\\4NbMTFiGLjWc6ryONm1p.png'),
(3, 1, 'PHÒNG HỌP', 'RỘNG RÃI THANH LỊCH', '<p class=\"txt_title_1\">Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\n<p class=\"txt_title_2\">L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c..</p>', 'pages\\May2023\\MxBy78KsXQKa4i11cgow.jpg', 'phong-hop', NULL, NULL, 'ACTIVE', '2023-05-21 20:16:20', '2023-05-21 20:32:30', 'service', 'pages\\May2023\\Neolzm5eEsW6smbDjq2R.jpg', 'pages\\May2023\\PYhBetZNPfW2entnENkt.png'),
(4, 1, 'LÀM ĐẸP', 'KHỎE VÀ ĐẸP THƯ GIẢN', '<p class=\"txt_title_1\">Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\n<p class=\"txt_title_2\">L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c...</p>', 'pages\\May2023\\kXi4wOgjKjmplsHl8B7m.jpg', 'lam-dep', NULL, NULL, 'ACTIVE', '2023-05-21 20:20:39', '2023-05-21 20:32:37', 'service', 'pages\\May2023\\sKuWSlQg3cZJ06zd6ggL.jpg', 'pages\\May2023\\1Tvc2rja83AMhRKIBAS2.png'),
(5, 1, 'Về chúng tôi', NULL, '<p>L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh.</p>\n<p><img src=\"https://bizweb.dktcdn.net/100/423/358/files/alper-gio-thieu.jpg?v=1623225626615\" alt=\"Bean Hotel\"></p>\n<p>Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c.&nbsp;</p>\n<p><strong>Bean Hotel&nbsp;</strong>t&iacute;ch hợp đầy đủ tất cả c&aacute;c dịch vụ cho Qu&yacute; kh&aacute;ch c&oacute; một chuyến c&ocirc;ng t&aacute;c hoặc kỳ nghỉ thật sự tiện &iacute;ch như nh&agrave; h&agrave;ng, ph&ograve;ng hội nghị, hồ bơi, dịch vụ đ&oacute;n tiễn s&acirc;n bay, c&aacute;c tour du lịch,&nbsp;chơi golf, v&eacute; m&aacute;y bay&nbsp;với chất lượng tốt nhất do những nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp của kh&aacute;ch sạn đảm nhiệm&nbsp;. Đảm bảo tuyệt đối chất lượng dịch vụ do kh&aacute;ch sạn cung cấp l&agrave; cam kết h&agrave;ng đầu của ch&uacute;ng t&ocirc;i.&nbsp;Điều n&agrave;y g&oacute;p phần tạo n&ecirc;n sự kh&aacute;c biệt của hệ thống Kh&aacute;ch sạn&nbsp;<strong>Bean Hotel</strong>.</p>\n<p>C&ugrave;ng với đội ngũ nh&acirc;n vi&ecirc;n được tuyển chọn v&agrave; đ&agrave;o tạo chuy&ecirc;n nghiệp, chu đ&aacute;o v&agrave; th&acirc;n thiện,&nbsp;<strong>Bean Hotel&nbsp;</strong>hứa hẹn&nbsp;sẽ mang đến cho Qu&yacute; kh&aacute;ch sự thoải m&aacute;i v&agrave; h&agrave;i l&ograve;ng nhất.</p>\n<p>Đến với&nbsp;<strong>Bean Hotel&nbsp;</strong>l&agrave; đến với sư tinh tế nhất&nbsp;về chất lượng, dịch vụ v&agrave; sự th&acirc;n thiện như ch&iacute;nh ng&ocirc;i nh&agrave; của bạn.</p>\n<p><strong><em>H&Atilde;Y ĐẾN BEAN&nbsp;</em><em>HOTEL ĐỂ TRẢI NGHIỆM SỰ KH&Aacute;C BIỆT!</em></strong></p>', 'pages\\May2023\\Q14br4DHu9pJH6MAUQNi.png', 've-chung-toi', NULL, NULL, 'ACTIVE', '2023-05-22 00:35:11', '2023-05-22 00:36:43', NULL, NULL, NULL);

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
(80, 'delete_services', 'services', '2023-05-23 00:42:37', '2023-05-23 00:42:37');

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
(2, 1),
(3, 1),
(4, 1),
(5, 1),
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
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1);

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
(5, 1, 1, '10 xu hướng thịnh hành trong ngành khách sạn 2022', '', 'Không gian ngoài trời mở rộng hơn, nâng cấp công nghệ để hạn chế tối đa tiếp xúc là những xu hướng mới nhiều khách sạn áp dụng.\n\nDưới đây là một số xu hướng trong khách sạn mà du khách có thể bắt gặp trong năm 2021, theo các dữ liệu và phân tích từ GlobalData.\n\nVấn đề vệ sinh luôn đặt lên hàng đầu', '<p>Kh&ocirc;ng gian ngo&agrave;i trời mở rộng hơn, n&acirc;ng cấp c&ocirc;ng nghệ để hạn chế tối đa tiếp x&uacute;c l&agrave; những xu hướng mới nhiều kh&aacute;ch sạn &aacute;p dụng.</p>\n<article>\n<p>Dưới đ&acirc;y l&agrave; một số xu hướng trong kh&aacute;ch sạn m&agrave; du kh&aacute;ch c&oacute; thể bắt gặp trong năm 2021, theo c&aacute;c dữ liệu v&agrave; ph&acirc;n t&iacute;ch từ&nbsp;GlobalData.</p>\n<p>Vấn đề vệ sinh lu&ocirc;n đặt l&ecirc;n h&agrave;ng đầu</p>\n<p>Ng&agrave;nh kh&aacute;ch sạn đ&atilde; nhanh ch&oacute;ng thực hiện c&aacute;c quy tr&igrave;nh an to&agrave;n v&agrave; vệ sinh chuy&ecirc;n s&acirc;u trong đại dịch. Năm 2022, c&aacute;c cơ sở lưu tr&uacute; tr&ecirc;n to&agrave;n thế giới c&oacute; thể tiếp tục x&acirc;y dựng v&agrave; cải thiện c&aacute;c chương tr&igrave;nh vệ sinh, nhằm hạn chế tối đa sự l&acirc;y lan của dịch bệnh, thu h&uacute;t kh&aacute;ch đặt ph&ograve;ng.</p>\n<img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-tt1.jpg?v=1623927227398\" data-thumb=\"original\">\n<p><strong>Kh&aacute;ch thu&ecirc; ph&ograve;ng d&agrave;i ng&agrave;y hơn</strong></p>\n<p>Nhiều kh&aacute;ch sạn, khu nghỉ dưỡng đ&atilde; giới thiệu c&aacute;c chương tr&igrave;nh, g&oacute;i lưu tr&uacute; k&eacute;o d&agrave;i v&agrave;o năm 2021 v&agrave; xu hướng đ&oacute; sẽ tiếp tục trong năm nay. L&yacute; do l&agrave; đại dịch vẫn diễn biến phức tạp, du kh&aacute;ch c&oacute; xu hướng lưu tr&uacute; tại một nơi d&agrave;i ng&agrave;y hơn.</p>\n<p>Nh&agrave; ph&acirc;n t&iacute;ch du lịch v&agrave; lữ h&agrave;nh Ralph Hollister của GlobalData cho biết du kh&aacute;ch c&oacute; thể &iacute;t đi du lịch hơn nhưng họ sẽ lưu tr&uacute; l&acirc;u hơn. Sự phức tạp của dịch bệnh sẽ khiến nhiều người dốc to&agrave;n lực để đầu tư một chuyến đi lớn, thay v&igrave; mạo hiểm với những chuyến đi nhỏ lẻ, c&oacute; thể bị hủy bỏ.</p>\n<p><strong>Ph&ograve;ng kh&aacute;ch sạn tạo điều kiện thuận lợi cho người l&agrave;m từ xa</strong></p>\n<p>Khi du lịch d&agrave;i ng&agrave;y hơn, du kh&aacute;ch cũng kh&ocirc;ng muốn c&ocirc;ng việc bị ảnh hưởng. Đ&oacute; l&agrave; l&yacute; do họ sẽ vừa nghỉ dưỡng, vừa l&agrave;m việc từ xa. Do đ&oacute;, một căn ph&ograve;ng kh&aacute;ch h&agrave;ng cần l&agrave; nơi vừa c&oacute; thể l&agrave;m việc thoải m&aacute;i, vừa tận hưởng những gi&acirc;y ph&uacute;t thư gi&atilde;n ri&ecirc;ng tư. Wi-Fi trong ph&ograve;ng nhanh cũng l&agrave; một điểm cộng, v&agrave; đ&ocirc;i khi c&oacute; thể l&agrave; yếu tố quyết định đối với nhiều du kh&aacute;ch muốn du lịch c&ocirc;ng vụ trong năm 2022.</p>\n<p><strong>Tăng cường &aacute;p dụng c&ocirc;ng nghệ</strong></p>\n<p>Kh&aacute;ch sạn giống như s&acirc;n bay, nh&agrave; h&agrave;ng... đều l&agrave; những nơi c&oacute; nhiều người qua lại. Do đ&oacute;, n&acirc;ng cao v&agrave; &aacute;p dụng triệt để c&ocirc;ng nghệ, hạn chế tiếp x&uacute;c l&agrave; mục ti&ecirc;u ch&iacute;nh của ng&agrave;nh du lịch của năm nay. Thay v&igrave; thanh to&aacute;n trực tiếp, du kh&aacute;ch c&oacute; thể trả tiền ph&ograve;ng qua c&aacute;c ứng dụng di động, m&atilde; QR... để giảm nguy cơ l&acirc;y nhiễm virus.</p>\n<p>\"Trong năm 2022, c&aacute;c kh&aacute;ch sạn sẽ tăng cường &aacute;p dụng c&ocirc;ng nghệ để giảm tiếp x&uacute;c. Những điều sẽ dần phổ biến hơn phải kể đến việc kh&aacute;ch h&agrave;ng c&oacute; thể check-in v&agrave; check-out trực tuyến, mở cửa ph&ograve;ng bằng ch&igrave;a kh&oacute;a tr&ecirc;n điện thoại, điều khiển c&aacute;c thiết bị trong ph&ograve;ng bằng c&ocirc;ng nghệ IoT... Sử dụng IoT c&ograve;n cho ph&eacute;p kh&aacute;ch sạn thu thập th&ecirc;m dữ liệu về kh&aacute;ch h&agrave;ng, từ đ&oacute; c&aacute; nh&acirc;n h&oacute;a trải nghiệm cho kh&aacute;ch h&agrave;ng khi họ trở lại\", Hollister nhận định.</p>\n<p><strong>Phục vụ ẩm thực kh&ocirc;ng tiếp x&uacute;c</strong></p>\n<p>Giảm tiếp x&uacute;c bằng c&ocirc;ng nghệ c&oacute; nghĩa l&agrave; hạn chế tiếp x&uacute;c giữa người với người trong cả dịch vụ ăn uống. Những giải ph&aacute;p kh&aacute;ch sạn đưa ra l&agrave; t&ugrave;y chọn cho kh&aacute;ch mua đồ ăn mang đi tại sảnh, nh&acirc;n vi&ecirc;n đặt bữa ăn ở cửa ph&ograve;ng kh&aacute;ch hoặc đặt m&oacute;n qua điện thoại bằng m&atilde; QR.</p>\n<p><strong>Ch&iacute;nh s&aacute;ch ho&agrave;n, hủy linh hoạt</strong></p>\n<p>Những kh&aacute;ch sạn c&oacute; ch&iacute;nh s&aacute;ch ho&agrave;n tiền đặt ph&ograve;ng 100% khi kh&aacute;ch hủy v&agrave;o ph&uacute;t ch&oacute;t, c&ugrave;ng với c&aacute;c ch&iacute;nh s&aacute;ch giảm thiểu rủi ro kh&aacute;c sẽ được đa số lựa chọn.</p>\n<p>Kh&aacute;ch h&agrave;ng y&ecirc;u th&iacute;ch những nơi ri&ecirc;ng tư</p>\n<p>Kh&aacute;ch du lịch sẽ t&igrave;m kiếm kh&ocirc;ng gian ri&ecirc;ng tư nhiều hơn trong năm nay. Do đ&oacute;, dịch vụ thu&ecirc; ph&ograve;ng ngắn hạn th&ocirc;ng qua c&aacute;c ứng dụng như Airbnb, Vrbo... cũng như c&aacute;c kỳ nghỉ tại một biệt thự ri&ecirc;ng biệt sẽ được nhiều du kh&aacute;ch hướng tới. L&yacute; do l&agrave; những nơi n&agrave;y mang tới kh&ocirc;ng gian ri&ecirc;ng tư nhiều hơn kh&aacute;ch sạn, nh&agrave; nghỉ. Đ&acirc;y cũng l&agrave; năm m&agrave; c&aacute;c cơ sở lưu tr&uacute;, h&agrave;ng qu&aacute;n ở những nơi hẻo l&aacute;nh, xa x&ocirc;i c&oacute; cơ hội tiếp đ&oacute;n nhiều kh&aacute;ch h&agrave;ng hơn, bởi tại đ&acirc;y họ &iacute;t phải lo lắng về c&aacute;c lệnh hạn chế đi lại,</p>\n<p><strong>Kh&ocirc;ng gian ngo&agrave;i trời được ưu &aacute;i hơn</strong></p>\n<p>Du kh&aacute;ch sẽ cảm thấy an to&agrave;n hơn khi d&agrave;nh thời gian ở ngo&agrave;i trời so với kh&ocirc;ng gian k&iacute;n ở nơi c&ocirc;ng cộng. Do đ&oacute;, c&aacute;c kh&aacute;ch sạn sẽ t&igrave;m c&aacute;ch kết hợp nhiều hơn nữa kh&ocirc;ng gian ngo&agrave;i trời v&agrave;o c&aacute;c trải nghiệm như tập yoga, c&agrave; ph&ecirc;, ăn uống, spa...</p>\n<img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-2tt1.jpg?v=1623927239024\" data-thumb=\"original\">\n<p><strong>Ph&aacute;t triển du lịch bền vững</strong></p>\n<p>C&aacute;c khu nghỉ dưỡng đ&atilde; trở n&ecirc;n th&acirc;n thiện với m&ocirc;i trường hơn sau thời gian d&agrave;i vắng kh&aacute;ch. Xu hướng đ&oacute; c&oacute; thể tiếp tục trong năm nay khi nhiều kh&aacute;ch du lịch t&igrave;m c&aacute;ch hạn chế t&aacute;c động của họ đến m&ocirc;i trường v&agrave; văn h&oacute;a địa phương. Tiết kiệm nước, giảm thiểu chất thải, cũng như t&igrave;m nguồn cung ứng thực phẩm địa phương trong c&aacute;c qu&aacute;n bar, nh&agrave; h&agrave;ng... vẫn l&agrave; chiến lược của nhiều kh&aacute;ch sạn muốn tạo sự kh&aacute;c biệt trong tương lai.</p>\n<p><strong>Kh&aacute;ch du lịch chi ti&ecirc;u nhiều hơn</strong></p>\n<p>Nhiều người sẽ phải đối mặt với ng&acirc;n s&aacute;ch du lịch hạn chế, v&igrave; vậy c&aacute;c cơ sở lưu tr&uacute; cần thu h&uacute;t những kh&aacute;ch h&agrave;ng ở tầng lớp trung lưu. Họ l&agrave; những người sẽ t&igrave;m kiếm mức gi&aacute; thu&ecirc; ph&ograve;ng thấp, nhưng cũng sẵn s&agrave;ng chi ti&ecirc;u nhiều hơn nếu chất lượng dịch vụ xứng đ&aacute;ng với số tiền họ bỏ ra.</p>\n</article>', 'posts\\May2023\\wAUdgigSUSS2EYAwMclB.png', '10-xu-huong-thinh-hanh-trong-nganh-khach-san-2022', '', '', 'PUBLISHED', 0, '2023-05-21 23:50:02', '2023-05-21 23:50:02'),
(6, 1, 1, 'Những điều kiêng kị khi ở khách sạn mà bạn nên biết', '', 'Để không gặp nhiều phiền toái và giữ an toàn cho chính bản thân trong mỗi chuyến đi, bạn nên cẩn thận tìm hiểu một số kinh nghiệm, lưu ý cần thiết khi thuê và ở khách sạn.', '<p>Để kh&ocirc;ng gặp nhiều phiền to&aacute;i v&agrave; giữ an to&agrave;n cho ch&iacute;nh bản th&acirc;n trong mỗi chuyến đi, bạn n&ecirc;n cẩn thận t&igrave;m hiểu một số kinh nghiệm, lưu &yacute; cần thiết khi thu&ecirc; v&agrave; ở kh&aacute;ch sạn.</p>\n<p>Kh&aacute;ch sạn l&agrave; nơi c&oacute; rất nhiều người nghỉ qua đ&ecirc;m, n&ecirc;n theo c&aacute;c chuy&ecirc;n gia c&oacute; kinh nghiệm, c&oacute; một số điều gọi l&agrave; &ldquo;thủ tục&rdquo; v&agrave; v&agrave;i h&agrave;nh động ki&ecirc;ng kị khi nghỉ qua đ&ecirc;m ở bất kỳ một kh&aacute;ch sạn n&agrave;o m&agrave; bạn cần phải hết sức lưu &yacute;.&nbsp;</p>\n<p>1. D&ugrave;ng họ, t&ecirc;n đệm khi nhận ph&ograve;ng: Một trong những c&aacute;ch đơn giản nhất để giữ b&iacute; mật th&ocirc;ng tin c&aacute; nh&acirc;n l&agrave; tr&aacute;nh d&ugrave;ng t&ecirc;n khi nhận ph&ograve;ng, bạn n&ecirc;n d&ugrave;ng chữ c&aacute;i đầu v&agrave; họ của m&igrave;nh. Nữ giới đi du lịch một m&igrave;nh n&ecirc;n d&ugrave;ng chức danh &ldquo;Mrs.&rdquo; (B&agrave; - người đ&atilde; kết h&ocirc;n) để tạo ấn tượng rằng bạn đi c&ugrave;ng với &iacute;t nhất một người nữa.</p>\n<p>2. \"Nhập gia t&ugrave;y tục\": Người xưa c&oacute; c&acirc;u \"Nhập gia t&ugrave;y tục\". Do vậy khi ở kh&aacute;ch sạn, bạn n&ecirc;n đọc kỹ nội quy ph&ograve;ng để tr&aacute;nh gặp phải những phiền phức kh&ocirc;ng đ&aacute;ng c&oacute; khiến chuyến du lịch mất vui, nhất l&agrave; khi du lịch nước ngo&agrave;i. Ở một số nơi, nếu bạn xem tivi v&agrave; sử dụng internet hoặc điện thoại b&agrave;n sẽ bị t&iacute;nh ph&iacute; rất cao. Đ&oacute; l&agrave; l&yacute; do bạn cần \"đọc kỹ hướng dẫn trước khi sử dụng\".</p>\n<p>3. Đừng bao giờ hỏi nh&acirc;n vi&ecirc;n lễ t&acirc;n phục vụ ca đ&ecirc;m về nhu cầu &ldquo;t&igrave;m người bạn t&acirc;m sự&rdquo; hay cho ph&eacute;p nh&acirc;n vi&ecirc;n kh&ocirc;ng c&oacute; chức năng v&agrave;o ph&ograve;ng v&igrave; c&oacute; thể bạn sẽ gặp rắc rối lớn khi bị kiểm tra đột xuất của kh&aacute;ch sạn hay ch&iacute;nh quyền.</p>\n<p>4. Kiểm tra ph&ograve;ng: Ngay khi bước v&agrave;o ph&ograve;ng, bạn n&ecirc;n kiểm tra kh&oacute;a thật kỹ xem c&oacute; an to&agrave;n kh&ocirc;ng. Tiếp đến, bạn đi quanh ph&ograve;ng v&agrave; kiểm tra kỹ cửa sổ, ph&ograve;ng tắm, tủ quần &aacute;o... xem c&oacute; g&igrave; bất thường. Nếu c&oacute;, lập tức b&aacute;o ngay cho nh&acirc;n vi&ecirc;n kh&aacute;ch sạn để nhờ xử l&yacute; hoặc xin đổi ph&ograve;ng. Bạn cũng h&atilde;y nhớ kiểm tra số lượng vật dụng trong ph&ograve;ng c&oacute; đ&uacute;ng như bản k&ecirc; khai kh&ocirc;ng.</p>\n<p>5. Kiểm tra quầy lễ t&acirc;n: Sau khi nhận ph&ograve;ng, bạn n&ecirc;n sử dụng điện thoại di động gọi cho quầy lễ t&acirc;n, hỏi xem họ c&oacute; thể n&oacute;i chuyện với m&igrave;nh kh&ocirc;ng. Nếu họ cho biết số ph&ograve;ng của bạn, đ&oacute; l&agrave; t&iacute;n hiệu kh&ocirc;ng tốt. C&acirc;u trả lời bạn mong muốn sẽ l&agrave;: &ldquo;Để t&ocirc;i nối m&aacute;y cho bạn&rdquo;.</p>\n<p>6. Đặt biển &ldquo;Miễn l&agrave;m phiền&rdquo; ngo&agrave;i cửa khi rời ph&ograve;ng: Khi phải ra ngo&agrave;i, bạn c&oacute; thể đặt biển &ldquo;Miễn l&agrave;m phiền&rdquo; v&agrave; bật ti-vi để c&oacute; &acirc;m thanh trong ph&ograve;ng.</p>\n<p>7. Ở ph&ograve;ng tầng từ 4 đến 6: Ph&ograve;ng cao nhất thang cứu hỏa c&oacute; thể vươn tới khi c&oacute; hỏa hoạn thường l&agrave; từ tầng 4 tới tầng 6. Cẩn thận hơn, bạn c&oacute; thể chọn ph&ograve;ng gần cầu thang bộ.</p>\n<p>8. G&otilde; cửa trước khi v&agrave;o ph&ograve;ng kh&aacute;ch sạn: Theo quan niệm phong thủy, khi bước v&agrave;o ph&ograve;ng nghỉ tại kh&aacute;ch sạn bạn n&ecirc;n g&otilde; cửa 3 c&aacute;i để đ&aacute;nh đuổi điềm xấu m&agrave; người ở trước để lại. Sau đ&oacute; mới mở cửa v&agrave; đứng n&eacute;p sang một b&ecirc;n, đợi khoảng 1 ph&uacute;t mới bước v&agrave;o v&agrave; đ&oacute;ng của lại. Việc bước v&agrave;o ph&ograve;ng v&agrave; đ&oacute;ng cửa ngay lập tức l&agrave; điều tối kỵ.</p>\n<p>9. Cất giữ những đồ d&ugrave;ng c&oacute; gi&aacute; trị thật cẩn thận: Kh&aacute;ch sạn l&agrave; nơi c&oacute; rất nhiều người qua lại hơn nữa l&agrave; một nơi kh&aacute; lạ, bạn sẽ kh&ocirc;ng thể biết được ai tốt ai xấu. Do vậy, cẩn tắc v&ocirc; &aacute;y n&aacute;y, n&ecirc;n cất giữ những đồ d&ugrave;ng c&oacute; gi&aacute; trị thật cẩn thận. Trườg hợp đi ra ngo&agrave;i kh&ocirc;ng tiện mang c&aacute;c đồ gi&aacute; trị theo, bạn c&oacute; thể gửi ở nh&acirc;n vi&ecirc;n lễ t&acirc;n v&agrave; k&yacute; nhận.</p>\n<p>10. Đừng viết t&ecirc;n tr&ecirc;n b&igrave;a treo cửa: Nếu kh&aacute;ch sạn đưa cho bạn b&igrave;a treo cửa để y&ecirc;u cầu lấy th&ecirc;m đồ ăn hay dọn ph&ograve;ng, bạn kh&ocirc;ng n&ecirc;n viết t&ecirc;n m&igrave;nh l&ecirc;n đ&oacute;, tr&aacute;nh bị nhận diện.</p>\n<p>11. C&aacute;c lỗ nh&igrave;n l&eacute;n: Bạn đ&atilde; từng bao giờ c&oacute; cảm gi&aacute;c bị theo d&otilde;i khi ở trong ph&ograve;ng kh&aacute;ch sạn? Bất cứ khi n&agrave;o c&oacute; cảm gi&aacute;c kh&ocirc;ng an to&agrave;n, bạn n&ecirc;n y&ecirc;u cầu thay đổi ph&ograve;ng. Nghe c&oacute; vẻ kh&oacute; tin, nhưng c&oacute; những kh&aacute;ch sạn giấu m&aacute;y ảnh nhỏ để c&oacute; thể quay phim tất cả mọi thứ xảy ra trong ph&ograve;ng. Nếu kh&ocirc;ng c&oacute; ph&ograve;ng c&oacute; sẵn kh&aacute;c, h&atilde;y che c&aacute;c lỗ đ&aacute;ng ngờ bằng một mảnh giấy.</p>\n<p>12. Kh&ocirc;ng n&ecirc;n cắt m&oacute;ng tay m&oacute;ng ch&acirc;n v&agrave;o nửa đ&ecirc;m: Ở trong kh&aacute;ch sạn cũng ki&ecirc;ng kị việc cắt m&oacute;ng tay sau nửa đ&ecirc;m, đặc biệt l&agrave; m&oacute;ng tay trẻ con v&igrave; điều n&agrave;y sẽ ảnh hưởng đến sức khỏe của c&aacute;c th&agrave;nh vi&ecirc;n trong chuyến đi.</p>\n<p>13. Xem đ&aacute;nh gi&aacute; kh&aacute;ch sạn: Khi t&igrave;m nơi nghỉ, bạn n&ecirc;n để &yacute; tới c&aacute;c đ&aacute;nh gi&aacute; về vấn đề an ninh. Đ&aacute;nh gi&aacute; của kh&aacute;ch từng ở sẽ gi&uacute;p bạn biết th&ecirc;m về an ninh trong khu vực, kh&aacute;ch sạn c&oacute; m&aacute;y quay gi&aacute;m s&aacute;t v&agrave; biện ph&aacute;p để bảo vệ an to&agrave;n th&ocirc;ng tin cho kh&aacute;ch hay kh&ocirc;ng.</p>\n<p>14. T&igrave;m lối tho&aacute;t hiểm: Ngay khi nhận ph&ograve;ng kh&aacute;ch sạn bạn n&ecirc;n đọc hướng dẫn tho&aacute;t hiểm được d&aacute;n ở cửa ch&iacute;nh của ph&ograve;ng. Sau đ&oacute; t&igrave;m kiếm lối tho&aacute;t hiểm hoặc cầu thang bộ gần nhất. Tuy việc n&agrave;y chỉ để đề ph&ograve;ng trường hợp xảy ra hỏa hoạn hoặc sự cố bất ngờ nhưng rất quan trọng. Biết trước v&agrave; biết r&otilde; lối tho&aacute;t hiểm sẽ tăng cơ hội sống s&oacute;t của bạn trong những t&igrave;nh huống bất trắc.</p>\n<p>Lựa chọn kh&aacute;ch sạn trong k&igrave; nghỉ lu&ocirc;n l&agrave; vấn đề kh&oacute; khăn của hầu hết mọi người, bởi bạn lu&ocirc;n ph&acirc;n v&acirc;n kh&ocirc;ng biết chọn nơi n&agrave;o l&agrave; an to&agrave;n. Đ&ocirc;i khi cẩn thận l&agrave; kh&ocirc;ng thừa, chị em ch&uacute;ng ta cần lưu &yacute; những điều tr&ecirc;n đ&acirc;y để chuyến đi du lịch được thuận lợi, vui vẻ nh&eacute;!</p>', 'posts\\May2023\\jk4UeDDcOGnzEotV0wIQ.png', 'nhung-dieu-kieng-ki-khi-o-khach-san-ma-ban-nen-biet', '', '', 'PUBLISHED', 0, '2023-05-21 23:51:09', '2023-05-21 23:51:09'),
(7, 1, 1, 'Ý nghĩa việc khách sạn để chocolate lên gối khi dọn phòng', '', 'Đầu những năm 1950, nam diễn viên Mỹ gốc Anh Cary Grant hẹn gặp nhân tình tại khách sạn Mayfair ở St Louist, bang Missouri, Mỹ. Biết cô gái đến trước, Grant yêu cầu khách sạn xếp chocolate thành một vệt dài từ phòng khách vào phòng ngủ, kết thúc trên một chiếc gối. Bên gối là một mảnh giấy nhắn mà Grant để lại cho người tình, có ghi tên cô.', '<p>C&aacute;c quản l&yacute; kh&aacute;ch sạn ph&aacute;t hiện ra dịch vụ n&agrave;y nhận được nhiều lời khen từ kh&aacute;ch thu&ecirc; ph&ograve;ng hơn bất kỳ hoạt động n&agrave;o kh&aacute;c.</p>\n<p>Đầu những năm 1950, nam diễn vi&ecirc;n Mỹ gốc Anh Cary Grant hẹn gặp nh&acirc;n t&igrave;nh tại kh&aacute;ch sạn Mayfair ở St Louist, bang Missouri, Mỹ. Biết c&ocirc; g&aacute;i đến trước, Grant y&ecirc;u cầu kh&aacute;ch sạn xếp chocolate th&agrave;nh một vệt d&agrave;i từ ph&ograve;ng kh&aacute;ch v&agrave;o ph&ograve;ng ngủ, kết th&uacute;c tr&ecirc;n một chiếc gối. B&ecirc;n gối l&agrave; một mảnh giấy nhắn m&agrave; Grant để lại cho người t&igrave;nh, c&oacute; ghi t&ecirc;n c&ocirc;.</p>\n<p><img src=\"https://bizweb.dktcdn.net/100/423/358/files/anh-1-tt3.jpg?v=1623927350639\" data-thumb=\"original\"></p>\n<p>Nguồn ảnh: sưu tầm</p>\n<p>Việc quyến rũ, t&aacute;n tỉnh của Grant đến nay vẫn kh&ocirc;ng ai biết kết quả thế n&agrave;o, nhưng người quản l&yacute; kh&aacute;ch sạn khi đ&oacute; đ&atilde; nảy ra một &yacute; tưởng. Người n&agrave;y sau đ&oacute; đ&atilde; y&ecirc;u cầu đặt những vi&ecirc;n chocolate l&ecirc;n gối cho dịch vụ Turndown trong kh&aacute;ch sạn, v&agrave; nhiều nơi tr&ecirc;n thế giới đ&atilde; học theo c&aacute;ch n&agrave;y.</p>\n<p>Turndown Service được hiểu l&agrave; dịch vụ dọn ph&ograve;ng v&agrave;o buổi chiều tối (khoảng 18-19h). Phục vụ ph&ograve;ng sau khi sắp xếp ngăn nắp sẽ để lại một lời ch&uacute;c tốt đẹp cho kh&aacute;ch v&agrave;o buổi tối, k&egrave;m chocolate. Một số nơi c&ograve;n phục vụ th&ecirc;m cocktail. Dịch vụ n&agrave;y tạo cho kh&aacute;ch cảm gi&aacute;c thoải m&aacute;i, h&agrave;i l&ograve;ng trước khi ngủ, thường &aacute;p dụng tại c&aacute;c kh&aacute;ch sạn 4-5 sao.</p>\n<p>Kh&aacute;ch sạn Grant thu&ecirc; ph&ograve;ng hẹn h&ograve; với t&igrave;nh nh&acirc;n ng&agrave;y nay được đổi t&ecirc;n th&agrave;nh Magnolia Hotel St. Louis v&agrave; những người quản l&yacute; ở đ&acirc;y vẫn tiếp tục truyền thống đặt chocolate l&ecirc;n gối trong c&aacute;c căn ph&ograve;ng.</p>\n<p>Một c&acirc;u hỏi được nhiều người đặt ra l&agrave; tại sao c&aacute;c kh&aacute;ch sạn lại học h&agrave;nh động n&agrave;y? Việc nạp một m&oacute;n ăn c&oacute; nhiều calo, đường v&agrave; chất b&eacute;o trước giờ đi ngủ kh&ocirc;ng phải &yacute; tưởng hay. Nhưng ngay cả khi sự thật l&agrave; như thế, c&aacute;c nh&agrave; quản l&yacute; vẫn ph&aacute;t hiện ra dịch vụ n&agrave;y nhận được nhiều lời khen ngợi từ kh&aacute;ch thu&ecirc; ph&ograve;ng hơn bất kỳ hoạt động n&agrave;o kh&aacute;c. V&agrave; hơn thế, chi ph&iacute; để đổi lấy sự h&agrave;i l&ograve;ng từ kh&aacute;ch h&agrave;ng lại rất nhỏ, khi gi&aacute; th&agrave;nh của chocolate kh&ocirc;ng đắt đỏ.</p>', 'posts\\May2023\\VBqEyBJiKL8m6XFFAt1K.png', 'y-ngh-a-viec-khach-san-de-chocolate-len-goi-khi-don-phong', '', '', 'PUBLISHED', 0, '2023-05-21 23:52:02', '2023-05-21 23:52:02');

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
  `price` decimal(10,0) NOT NULL,
  `promotion` decimal(10,0) DEFAULT NULL,
  `sold` int(11) DEFAULT 0,
  `stock` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `convenient` text DEFAULT NULL,
  `acreage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `body`, `image`, `images`, `price`, `promotion`, `sold`, `stock`, `status`, `created_at`, `updated_at`, `category_id`, `convenient`, `acreage`) VALUES
(10, 'Phòng đơn tiêu chuẩn', 'phong-don-tieu-chuan', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Với cảnh quan tuyệt đẹp, bạn sẽ tận hưởng đầy đủ kỳ nghỉ với c&aacute;c dịch vụ ho&agrave;n hảo. Ngo&agrave;i ra kh&aacute;ch đặt ph&ograve;ng c&ograve;n được miễn ph&iacute; ăn s&aacute;ng. Tiện &iacute;ch ph&ograve;ng đầy đủ m&aacute;y lạnh,&nbsp;tivi m&agrave;n h&igrave;nh phẳng v&agrave; nhiều tiện &iacute;ch kh&aacute;c nữa.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)&nbsp;</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>', 'products\\May2023\\dQn0u2RuxZ1Z7xQMvzOa.png', '[\"products\\\\May2023\\\\LW0nFhailGWMDX0WIKXY.png\",\"products\\\\May2023\\\\L09pIj8Jo7sSCgX4XMCu.png\"]', 500000, 2, 1, NULL, 1, '2023-05-20 01:45:00', '2023-05-23 01:11:20', '2', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn ph&ograve;ng h&agrave;ng ng&agrave;y</li>\r\n</ul>\r\n</div>\r\n</div>', 20),
(11, 'Phòng đơn view thành phố', 'phong-don-view-thanh-pho', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Với cảnh quan tuyệt đẹp của th&agrave;nh phố về đ&ecirc;m bạn sẽ ngắm được to&agrave;n cảnh th&agrave;nh phố với những &aacute;nh đ&egrave;n v&agrave; bản nhạc chill đem lại cho bạn sự thư th&aacute;i v&agrave; nhẹ nh&agrave;ng trong t&acirc;m hồn, Đến với ch&uacute;ng t&ocirc;i&nbsp;bạn sẽ tận hưởng đầy đủ kỳ nghỉ với c&aacute;c dịch vụ ho&agrave;n hảo. Ngo&agrave;i ra kh&aacute;ch đặt ph&ograve;ng c&ograve;n được miễn ph&iacute; ăn s&aacute;ng. Tiện &iacute;ch ph&ograve;ng đầy đủ m&aacute;y lạnh,&nbsp;tivi m&agrave;n h&igrave;nh phẳng v&agrave; nhiều tiện &iacute;ch kh&aacute;c nữa.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<div id=\"luuybox\"><strong>Lưu &yacute;:</strong></div>\r\n<div>\r\n<p>- Kh&ocirc;ng h&uacute;t thuốc tr&ecirc;n giường</p>\r\n<p>- Kh&ocirc;ng mang th&uacute; cưng</p>\r\n<p>- Quy định nhận ph&ograve;ng: qu&yacute; kh&aacute;ch vui l&ograve;ng mang theo CMND (ID) hoặc Hộ Chiếu (Passport) (đối với người nước ngo&agrave;i) hoặc thẻ tạm tr&uacute; (đối với kh&aacute;ch nước ngo&agrave;i đi c&ocirc;ng t&aacute;c) c&ugrave;ng phiếu x&aacute;c nhận đặt ph&ograve;ng.</p>\r\n</div>', 'products\\May2023\\YRayAvtIHzfiKDwFz4ak.png', '[\"products\\\\May2023\\\\A4CGei4BQO2yyRClfCxa.png\",\"products\\\\May2023\\\\10lQ4hDPvE9PFgYLfu7V.png\",\"products\\\\May2023\\\\82ZNmdyjIYtWbrcmW4Iz.png\"]', 700000, 2, 1, NULL, 1, '2023-05-20 02:53:00', '2023-05-23 01:17:30', '2', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn ph&ograve;ng h&agrave;ng ng&agrave;y</li>\r\n</ul>\r\n</div>\r\n</div>', 25),
(12, 'Phòng đơn view sân vườn', 'phong-don-view-san-vuon', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Ph&ograve;ng đơn khu view vườn rộng r&atilde;i x&acirc;y t&aacute;ch biệt với &aacute;nh s&aacute;ng tự nhi&ecirc;n.</p>\r\n<p>H&ograve;a m&igrave;nh v&agrave;o thi&ecirc;n nhi&ecirc;n v&agrave; cảnh quan l&uacute;c đi nghỉ dưỡng, tạo sự thoải m&aacute;i v&agrave; b&igrave;nh y&ecirc;n đến lạ kỳ l&agrave; những g&igrave; ch&uacute;ng t&ocirc;i mong muốn đem đến cho kỳ nghỉ của bạn.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi), Đặt m&oacute;n tại ph&ograve;ng chỉ với chiếc smartphone của bạn</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>', 'products\\May2023\\yPIafPJcnCia095eu7uW.png', '[\"products\\\\May2023\\\\ejDybsmqdOBfhPvCuAjs.png\",\"products\\\\May2023\\\\ihPFMPXeDYcHRLA5Kczi.png\",\"products\\\\May2023\\\\4jkgpEYXZFbtdPxStWgm.png\"]', 800000, 2, 1, NULL, 1, '2023-05-20 02:54:00', '2023-05-23 01:18:04', '2', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn ph&ograve;ng h&agrave;ng ng&agrave;y</li>\r\n</ul>\r\n</div>\r\n</div>', 25),
(13, 'Phòng đơn view biển', 'phong-don-view-bien', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Tiện nghi đầy đủ, chu đ&aacute;o bao. Đảm bảo dịch vụ tốt nhất để qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng những t&iacute;nh năng tuyệt vời như wifi free,b&atilde;i đỗ xe....</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>', 'products\\May2023\\goRF1z9tmFYDy9jg75s7.png', '[\"products\\\\May2023\\\\EnUWYyYF1Z1zDZITFar7.png\",\"products\\\\May2023\\\\iNwUIRzajSevRHf8VNC1.png\",\"products\\\\May2023\\\\z2k1r2cS899Au52AH29t.png\"]', 900000, 2, 1, NULL, 1, '2023-05-20 02:55:00', '2023-05-23 01:18:25', '2', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn ph&ograve;ng h&agrave;ng ng&agrave;y</li>\r\n</ul>\r\n</div>\r\n</div>', 25),
(14, 'Phòng đôi tiêu chuẩn', 'phong-doi-tieu-chuan', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Tiện nghi đầy đủ, chu đ&aacute;o bao. Đảm bảo dịch vụ tốt nhất để qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng những t&iacute;nh năng tuyệt vời như wifi free,b&atilde;i đỗ xe....</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>', 'products\\May2023\\hR6XBCWikty9akUyvpm1.png', '[\"products\\\\May2023\\\\oAzfU1V2f7q0vjkAMRpS.png\",\"products\\\\May2023\\\\7IxXD0FkK3lrMrLTALs4.png\",\"products\\\\May2023\\\\68gPYXMEnCQ1vM0NOClp.png\",\"products\\\\May2023\\\\4eFWowlYdnCN1djysmVQ.png\"]', 950000, 2, 1, NULL, 1, '2023-05-21 17:54:00', '2023-05-23 01:18:41', '3', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 25),
(15, 'Phòng đôi view thành phố', 'phong-doi-view-thanh-pho', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Tiện nghi đầy đủ, chu đ&aacute;o bao. Đảm bảo dịch vụ tốt nhất để qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng những t&iacute;nh năng tuyệt vời như wifi free,b&atilde;i đỗ xe....</p>\r\n<p>Ch&uacute;ng t&ocirc;i chọn ra những view th&agrave;nh phố đẹp nhất để bạn được trải nghiệm ngắm nh&igrave;n th&agrave;nh phố v&agrave; thưởng thức những bản nhạc du dương nu&ocirc;i dưỡng thể chất l&agrave; tinh thần của bạn</p>\r\n<p>B&ecirc;n cạnh đ&oacute; ch&uacute;ng t&ocirc;i c&ograve;n mang đến cho bạn một kh&ocirc;ng gian nh&agrave; b&ecirc;p riếng đ&aacute;p ứng nhu cầu ẩm thực của qu&yacute; kh&aacute;ch</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\I8BjufB3cRkZXwPplmLE.png', '[\"products\\\\May2023\\\\IB8yAIXsp2jhnsZK9J6F.png\",\"products\\\\May2023\\\\RlQF5sHF4KgUzQ8nypjb.png\",\"products\\\\May2023\\\\XWZw6AI5l0Vdki6yBS86.png\",\"products\\\\May2023\\\\ZM6EIKuFrXFqNKjzFnhW.png\"]', 1100000, 2, 1, NULL, 1, '2023-05-21 17:55:00', '2023-05-23 01:18:57', '3', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 25),
(16, 'Phòng đôi view sân vườn', 'phong-doi-view-san-vuon', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Tiện nghi đầy đủ, chu đ&aacute;o bao. Đảm bảo dịch vụ tốt nhất để qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng những t&iacute;nh năng tuyệt vời như wifi free,b&atilde;i đỗ xe....</p>\r\n<p>Kh&aacute;ch sạn đ&atilde; thiết kế loại ph&ograve;ng s&acirc;n vườn h&agrave;i h&ograve;a v&agrave; b&igrave;nh y&ecirc;n. Đến đ&acirc;y, kh&aacute;ch h&agrave;ng sẽ được h&ograve;a m&igrave;nh v&agrave;o thi&ecirc;n nhi&ecirc;n v&agrave; b&ecirc;n cạnh đ&oacute; cảm nhận được sự th&acirc;n thuộc như ở ngay ch&iacute;nh ng&ocirc;i nh&agrave; của bạn.</p>\r\n<p>B&ecirc;n cạnh đ&oacute; ch&uacute;ng t&ocirc;i c&ograve;n mang đến cho bạn một kh&ocirc;ng gian nh&agrave; b&ecirc;p riếng đ&aacute;p ứng nhu cầu ẩm thực của qu&yacute; kh&aacute;ch</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\2JGYuIpuRMNf4oV0tprk.png', '[\"products\\\\May2023\\\\Zarutl4ZhQ69NjR2zYPE.png\",\"products\\\\May2023\\\\JB7b6TSixwFioQbwIfos.png\",\"products\\\\May2023\\\\KMwHlRE4WLJcYBa42Z6c.png\"]', 1200000, 2, 1, NULL, 1, '2023-05-21 17:57:00', '2023-05-23 01:19:16', '3', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 25),
(17, 'Phòng đôi 2 giường đôi', 'phong-doi-2-giuong-doi', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Tiện nghi đầy đủ, chu đ&aacute;o bao. Đảm bảo dịch vụ tốt nhất để qu&yacute; kh&aacute;ch c&oacute; thể tận hưởng những t&iacute;nh năng tuyệt vời như wifi free,b&atilde;i đỗ xe....</p>\r\n<p>Ph&ograve;ng đ&ocirc;i 2 giường d&agrave;nh cho c&aacute;c nh&oacute;m bạn hoặc gia đ&igrave;nh đi du lịch c&ugrave;ng nhau. Với mong muốn kh&aacute;ch h&agrave;ng sẽ lưu được nhiều kĩ niệm tốt v&agrave; c&oacute; 1 kỹ nghĩ vui vẽ ch&uacute;ng t&ocirc;i c&ograve;n cung cấp dịch vụ chụp h&igrave;nh gia đ&igrave;nh, bạn b&egrave; với nhiều chủ đề như phong cảnh, l&atilde;ng mạn, hoang d&atilde; v&agrave; b&igrave;nh y&ecirc;n.</p>\r\n<p>Bếp nấu cũng l&agrave; một trong những dịch vụ m&agrave; kh&aacute;ch sạn mang đến để c&aacute;c kh&aacute;ch h&agrave;ng c&oacute; thể tự tay chế biến những m&oacute;n ăn tốt nhất, ngon nhất đầy t&igrave;nh y&ecirc;u thương cho gia đ&igrave;nh v&agrave; bạn b&egrave; của m&igrave;nh</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\ppudu2Z2MzRBiwVgxT9k.png', '[\"products\\\\May2023\\\\RZ7k6Oevs9mzWvPlOFTJ.png\",\"products\\\\May2023\\\\3tegx5aLICJVmqfFTZ62.png\",\"products\\\\May2023\\\\zzB9YZDIbacfJftHLgca.png\"]', 1500000, 2, 1, NULL, 1, '2023-05-21 17:59:00', '2023-05-23 01:19:29', '3', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 25),
(18, 'Phòng đơn vip', 'phong-don-vip', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Với ti&ecirc;u ch&iacute; ng&agrave;y c&agrave;ng n&acirc;ng cao v&agrave; đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch h&agrave;ng ch&uacute;ng t&ocirc;i cung cấp th&ecirc;m loại ph&ograve;ng đơn loại VIP để đ&aacute;p ứng sự sang trọng v&agrave; hiện đại của kh&aacute;ch h&agrave;ng.&nbsp;</p>\r\n<p>Với ph&ograve;ng n&agrave;y qu&yacute; kh&aacute;ch sẽ được phục vụ đầy đủ c&aacute;c ch&iacute;nh s&aacute;ch v&agrave; dịch vụ của ph&ograve;ng VIP. Với ch&uacute;ng t&ocirc;i được đồng h&agrave;nh c&ugrave;ng sự sang trọng v&agrave; đẳng cấp của kh&aacute;ch h&agrave;ng l&agrave; một niềm vinh dự to lớn.</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\dzGV25ssOrybEMFSCLTh.png', '[\"products\\\\May2023\\\\QATuldJ5OTDTD13gAvo3.png\",\"products\\\\May2023\\\\UOqG4pJmPfyzPvHtEvpV.png\",\"products\\\\May2023\\\\sVqj9TNonNVuWa7NyCCb.png\"]', 2500000, 2, 1, NULL, 1, '2023-05-21 18:12:00', '2023-05-23 01:19:42', '4', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 35),
(19, 'Phòng gia đình', 'phong-gia-dinh', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Với ph&ograve;ng gia đ&igrave;nh qu&yacute; kh&aacute;ch thoải m&aacute;i sinh hoạt như nh&agrave; của m&igrave;nh. Đảm bảo được việc phụ huynh vẫn kiểm so&aacute;t được con nhỏ v&agrave; vẫn giữ được sự ri&ecirc;ng tư của m&igrave;nh.</p>\r\n<p>Du lịch gia đ&igrave;nh v&agrave; c&ugrave;ng nhau trải nghiệm những khoảnh khắc tuyệt với b&ecirc;n nhau l&agrave; niềm mong đợi v&agrave; ước mơ của rất nhiều gia đ&igrave;nh.</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất tự h&agrave;o&nbsp;khi đ&atilde; được đồng h&agrave;nh v&agrave; chia sẽ những khoảnh khắc đ&oacute; ngay tại kh&aacute;ch sạn của ch&uacute;ng t&ocirc;i !</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\Nnkutl4ZfY8qXDM1tZ4D.png', '[\"products\\\\May2023\\\\RR9DV1gGivPJudfy0rmI.png\",\"products\\\\May2023\\\\IF4aVjfZwxkSXoBw0ulq.png\",\"products\\\\May2023\\\\XEZMtPecgkBWBXrpoM22.png\",\"products\\\\May2023\\\\A7NtOp2zhoAJqWDZdWQo.png\"]', 3000000, 2, 1, NULL, 1, '2023-05-21 18:14:00', '2023-05-23 01:20:02', '4', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 35),
(20, 'Căn hộ chung cư', 'can-ho-chung-cu', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Ph&ograve;ng được thiết kế theo phong c&aacute;ch thiết kế chung cư. Danh cho những gia đinh, c&aacute; nh&acirc;n đ&atilde; quen với nhu cầu sinh hoạt v&agrave; m&ocirc;i trường chung cư, căn hộ.</p>\r\n<p>Mang đển sự thoải m&aacute;i v&agrave; đ&aacute;p ứng mọi dịch vụ v&agrave; ch&iacute;nh s&aacute;ch đi k&egrave;m đối với loại ph&ograve;ng c&oacute; phong c&aacute;ch, thiết kế, nội thất d&agrave;nh cho căn hộ, chung cư.</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất tự h&agrave;o&nbsp;khi đ&atilde; được đồng h&agrave;nh v&agrave; chia sẽ những khoảnh khắc đ&oacute; ngay tại kh&aacute;ch sạn của ch&uacute;ng t&ocirc;i !</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẻ!</p>', 'products\\May2023\\kmSdGRPJAMTYqvHY2V31.png', '[\"products\\\\May2023\\\\p1Cpq5XJnEhZ9nxDQnif.png\",\"products\\\\May2023\\\\4zbEIJdeOP2Y3UTJTe6r.png\"]', 2700000, 2, 1, NULL, 1, '2023-05-21 18:16:00', '2023-05-23 01:20:19', '4', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 35),
(21, 'Phòng hạng sang', 'phong-hang-sang', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Mang đến cho Qu&yacute; kh&aacute;ch những trải nghiệm tiện nghi, thoải m&aacute;i.Ph&ograve;ng hạng sang hai giường đều c&oacute; kết cấu&nbsp;tiện nghi&nbsp;với ghế sofa thoải m&aacute;i c&ugrave;ng kh&ocirc;ng gian tối giản ấm c&uacute;ng hướng n&uacute;i.&nbsp;Mỗi ph&ograve;ng đều được trang bị TV m&agrave;n h&igrave;nh phẳng 32&rdquo;, kết nối Internet Wifi miễn ph&iacute; tại ph&ograve;ng v&agrave; nh&agrave; tắm đứng rộng r&atilde;i.&nbsp;</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất tự h&agrave;o&nbsp;khi đ&atilde; được đồng h&agrave;nh v&agrave; chia sẽ những khoảnh khắc đ&oacute; ngay tại kh&aacute;ch sạn của ch&uacute;ng t&ocirc;i !</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\aHtaE9lUQPNF5g1DjCx2.png', NULL, 3500000, 2, 1, NULL, 0, '2023-05-21 18:18:00', '2023-05-23 00:57:35', '4', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>', 35),
(22, 'Phòng đôi nối liền', 'phong-doi-noi-lien', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Ph&ograve;ng c&oacute; thiết kế sang trọng v&agrave; kh&ocirc;ng gian sinh hoạt rộng r&atilde;i nhất, tiện nghi như ở nh&agrave; với kh&ocirc;ng gian nấu ăn bao gồm bếp từ, bồn rửa ch&eacute;n, dụng cụ nấu bếp, b&agrave;n l&agrave;m việc cỡ lớn, ba giường ngủ v&agrave; sofa hướng ra s&acirc;n vườn v&agrave; view th&agrave;nh phố.</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất tự h&agrave;o&nbsp;khi đ&atilde; được đồng h&agrave;nh v&agrave; chia sẽ những khoảnh khắc đ&oacute; ngay tại kh&aacute;ch sạn của ch&uacute;ng t&ocirc;i !</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\br0ttqm4BXfWETv7y6ty.png', NULL, 4000000, 2, 1, NULL, 0, '2023-05-21 18:19:00', '2023-05-23 00:57:49', '4', '<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 50%;\"><col style=\"width: 50%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n</div>\r\n</div>\r\n</td>\r\n<td>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn&nbsp;</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>&nbsp;</h3>\r\n</div>\r\n</div>', 35),
(24, 'Phòng đôi nối liền', 'phong-doi-noi-lien-01', 'Các phòng trang nhã và dãy phòng trang nghiêm của chúng tôi gợi nhớ về một thời đại đã qua. Mỗi tính năng như đường cong, thảm sang trọng, trần nhà cao, phòng tắm lát đá cẩm thạch, thiết bị làm sạch và nhiều không gian đều được bố trí một cách chu đáo để gọi cho riêng bạn. Tông màu nâu phong phú và gỗ sồi tự nhiên tạo nên những khu bảo tồn yên tĩnh và yên tĩnh, được tôn lên một cách tuyệt vời bởi đồ nội thất trang nhã.', '<p>Ph&ograve;ng c&oacute; thiết kế sang trọng v&agrave; kh&ocirc;ng gian sinh hoạt rộng r&atilde;i nhất, tiện nghi như ở nh&agrave; với kh&ocirc;ng gian nấu ăn bao gồm bếp từ, bồn rửa ch&eacute;n, dụng cụ nấu bếp, b&agrave;n l&agrave;m việc cỡ lớn, ba giường ngủ v&agrave; sofa hướng ra s&acirc;n vườn v&agrave; view th&agrave;nh phố.</p>\r\n<p>Ch&uacute;ng t&ocirc;i rất tự h&agrave;o&nbsp;khi đ&atilde; được đồng h&agrave;nh v&agrave; chia sẽ những khoảnh khắc đ&oacute; ngay tại kh&aacute;ch sạn của ch&uacute;ng t&ocirc;i !</p>\r\n<p>C&oacute; hệ thống nh&agrave; h&agrave;ng hiện đại, phục vụ c&aacute;c m&oacute;n ăn &Aacute; &ndash; &Acirc;u được chế biến từ đội ngũ đầu bếp gi&agrave;u kinh nghiệm. Qu&yacute; kh&aacute;ch sẽ được thưởng thức c&aacute;c m&oacute;n ăn đa dạng v&agrave; phong ph&uacute;.</p>\r\n<p><strong>Dịch vụ miễn ph&iacute;:</strong>&nbsp;Ăn s&aacute;ng tự chọn, Nước kho&aacute;ng tr&ecirc;n ph&ograve;ng nghỉ, Dịch Internet kh&ocirc;ng d&acirc;y (wifi)</p>\r\n<p><strong>Giờ trả ph&ograve;ng:&nbsp;</strong>12h00 h&agrave;ng ng&agrave;y</p>\r\n<p><strong>H&igrave;nh thức Thanh to&aacute;n:</strong>&nbsp;Tiền mặt (VND, USD, EURO, &hellip;) thẻ t&iacute;n dụng Visa v&agrave; Master</p>\r\n<p>* Nếu Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng ngoại tệ th&igrave; theo tỷ gi&aacute; hối đo&aacute;i của Ng&acirc;n h&agrave;ng hiện thời.</p>\r\n<p>Ch&uacute;c bạn v&agrave; người th&acirc;n y&ecirc;u c&oacute; 1 k&igrave; nghĩ thật l&agrave; thoải m&aacute;i v&agrave; vui vẽ!</p>', 'products\\May2023\\FPx0t5YLTNJKlsaly1Rv.png', '[\"products\\\\May2023\\\\ELhcmKHvvC6IEFj8EAFU.png\",\"products\\\\May2023\\\\7JMXz9nu1TNlUEX6Jf4C.png\",\"products\\\\May2023\\\\Pxet1wavoYZx8qhKoJYH.png\",\"products\\\\May2023\\\\nCrPMuLieyHaCAmpX8rt.png\"]', 4000000, 2, 1, NULL, 1, '2023-05-23 01:24:00', '2023-05-23 01:24:29', '4', '<table style=\"border-collapse: collapse; width: 100%;\" border=\"1\"><colgroup><col style=\"width: 49.967%;\"><col style=\"width: 49.967%;\"></colgroup>\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Chỗ đậu xe</h3>\r\n<ul>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Chỗ đậu xe miễn ph&iacute;</li>\r\n<li>C&oacute; chỗ đỗ xe ri&ecirc;ng, an to&agrave;n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>Karaoke</li>\r\n<li><span class=\"free-badge\">Miễn ph&iacute;!</span>&nbsp;Truyền h&igrave;nh c&aacute;p free</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</td>\r\n<td>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Tiện &iacute;ch ngo&agrave;i trời</h3>\r\n<ul>\r\n<li>BBQ</li>\r\n<li>B&agrave;n ghế ngo&agrave;i trời</li>\r\n<li>Ban c&ocirc;ng</li>\r\n<li>S&acirc;n hi&ecirc;n</li>\r\n<li>S&acirc;n vườn &amp; C&acirc;y xanh</li>\r\n<li>S&acirc;n thượng</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class=\"col-xl-6 col-md-6 col-sm-12 col-xs-12 col-12\">\r\n<div class=\"item_tien_nghi\">\r\n<h3>Dịch vụ lau dọn</h3>\r\n<ul>\r\n<li>Giặt kh&ocirc;</li>\r\n<li>Giặt ủi</li>\r\n<li>Dọn ph&ograve;ng h&agrave;ng ng&agrave;y</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 35);

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
(2, 'user', 'Normal User', '2023-02-20 09:13:34', '2023-02-20 09:13:34');

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `image`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Cafe Buổi Sáng', NULL, NULL, '2023-05-23 00:46:00', '2023-05-23 00:48:45'),
(2, 'Gọi Đồ Ăn Tại Phòng', NULL, NULL, '2023-05-23 00:48:01', '2023-05-23 00:48:01'),
(3, 'Bếp Nấu Tại Phòng', NULL, NULL, '2023-05-23 00:48:13', '2023-05-23 00:48:13'),
(4, 'Bồn Tắm Hoa Sen', NULL, NULL, '2023-05-23 00:48:25', '2023-05-23 00:48:25'),
(5, 'Internet Không Dây', NULL, NULL, '2023-05-23 00:48:37', '2023-05-23 00:48:37');

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
(57, 5, 24);

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
(1, 'site.title', 'Site Title', 'Bean Hotel', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Bean Hotel', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/February2023/WlWpOJdpaqLId2VrOYNs.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\May2023\\lwBtfWGqHVmWLDonLnp5.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Bean hotel', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Bean hotel. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

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
(111, 'pages', 'title', 2, 'en', 'KHÁCH SẠN', '2023-05-21 20:14:19', '2023-05-21 20:14:19'),
(112, 'pages', 'body', 2, 'en', '<p class=\"txt_title_1\">Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\n<p class=\"txt_title_2\">L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c...</p>', '2023-05-21 20:14:19', '2023-05-21 20:14:19'),
(113, 'pages', 'slug', 2, 'en', 'khach-san', '2023-05-21 20:14:19', '2023-05-21 20:14:19'),
(114, 'pages', 'title', 3, 'en', 'PHÒNG HỌP', '2023-05-21 20:23:47', '2023-05-21 20:23:47'),
(115, 'pages', 'body', 3, 'en', '<p class=\"txt_title_1\">Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\n<p class=\"txt_title_2\">L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c..</p>', '2023-05-21 20:23:47', '2023-05-21 20:23:47'),
(116, 'pages', 'slug', 3, 'en', 'phong-hop', '2023-05-21 20:23:47', '2023-05-21 20:23:47'),
(117, 'pages', 'title', 4, 'en', 'LÀM ĐẸP', '2023-05-21 20:23:53', '2023-05-21 20:23:53'),
(118, 'pages', 'body', 4, 'en', '<p class=\"txt_title_1\">Ch&uacute;ng t&ocirc;i mang lại kh&ocirc;ng gian thư giản v&agrave; tiện nghi đ&aacute;p ứng mọi nhu cầu cho bạn.</p>\n<p class=\"txt_title_2\">L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh. Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c...</p>', '2023-05-21 20:23:53', '2023-05-21 20:23:53'),
(119, 'pages', 'slug', 4, 'en', 'lam-dep', '2023-05-21 20:23:53', '2023-05-21 20:23:53'),
(120, 'data_rows', 'display_name', 113, 'en', 'Hình ảnh thêm', '2023-05-21 20:31:25', '2023-05-21 20:31:25'),
(121, 'data_rows', 'display_name', 114, 'en', 'Icon', '2023-05-21 20:32:49', '2023-05-21 20:32:49'),
(122, 'pages', 'title', 5, 'en', 'Về chúng tôi', '2023-05-22 00:36:43', '2023-05-22 00:36:43'),
(123, 'pages', 'body', 5, 'en', '<p>L&agrave; kh&aacute;ch sạn 5 sao đẳng cấp quốc tế, tọa lạc tại giao điểm của bốn quận ch&iacute;nh, nơi được xem như tr&aacute;i tim v&agrave; trung t&acirc;m của TP. Hồ Ch&iacute; Minh.</p>\n<p><img src=\"https://bizweb.dktcdn.net/100/423/358/files/alper-gio-thieu.jpg?v=1623225626615\" alt=\"Bean Hotel\"></p>\n<p>Với hệ thống ph&ograve;ng ti&ecirc;u chuẩn v&agrave; ph&ograve;ng hạng sang thiết kế đẹp mắt v&agrave; trang nh&atilde; được ch&uacute; trọng tới từng chi tiết sẽ đem lại sự tiện nghi v&agrave; thoải m&aacute;i tối đa cho qu&yacute; kh&aacute;ch d&ugrave; l&agrave; thời gian nghỉ ngơi thư gi&atilde;n hay trong chuyến c&ocirc;ng t&aacute;c.&nbsp;</p>\n<p><strong>Bean Hotel&nbsp;</strong>t&iacute;ch hợp đầy đủ tất cả c&aacute;c dịch vụ cho Qu&yacute; kh&aacute;ch c&oacute; một chuyến c&ocirc;ng t&aacute;c hoặc kỳ nghỉ thật sự tiện &iacute;ch như nh&agrave; h&agrave;ng, ph&ograve;ng hội nghị, hồ bơi, dịch vụ đ&oacute;n tiễn s&acirc;n bay, c&aacute;c tour du lịch,&nbsp;chơi golf, v&eacute; m&aacute;y bay&nbsp;với chất lượng tốt nhất do những nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp của kh&aacute;ch sạn đảm nhiệm&nbsp;. Đảm bảo tuyệt đối chất lượng dịch vụ do kh&aacute;ch sạn cung cấp l&agrave; cam kết h&agrave;ng đầu của ch&uacute;ng t&ocirc;i.&nbsp;Điều n&agrave;y g&oacute;p phần tạo n&ecirc;n sự kh&aacute;c biệt của hệ thống Kh&aacute;ch sạn&nbsp;<strong>Bean Hotel</strong>.</p>\n<p>C&ugrave;ng với đội ngũ nh&acirc;n vi&ecirc;n được tuyển chọn v&agrave; đ&agrave;o tạo chuy&ecirc;n nghiệp, chu đ&aacute;o v&agrave; th&acirc;n thiện,&nbsp;<strong>Bean Hotel&nbsp;</strong>hứa hẹn&nbsp;sẽ mang đến cho Qu&yacute; kh&aacute;ch sự thoải m&aacute;i v&agrave; h&agrave;i l&ograve;ng nhất.</p>\n<p>Đến với&nbsp;<strong>Bean Hotel&nbsp;</strong>l&agrave; đến với sư tinh tế nhất&nbsp;về chất lượng, dịch vụ v&agrave; sự th&acirc;n thiện như ch&iacute;nh ng&ocirc;i nh&agrave; của bạn.</p>\n<p><strong><em>H&Atilde;Y ĐẾN BEAN&nbsp;</em><em>HOTEL ĐỂ TRẢI NGHIỆM SỰ KH&Aacute;C BIỆT!</em></strong></p>', '2023-05-22 00:36:43', '2023-05-22 00:36:43'),
(124, 'pages', 'slug', 5, 'en', 've-chung-toi', '2023-05-22 00:36:43', '2023-05-22 00:36:43'),
(125, 'menu_items', 'title', 23, 'en', 'Loại phòng', '2023-05-22 01:35:57', '2023-05-22 01:35:57'),
(126, 'data_rows', 'display_name', 115, 'en', 'collections', '2023-05-22 01:39:51', '2023-05-22 01:39:51'),
(127, 'data_rows', 'display_name', 116, 'en', 'Category Id', '2023-05-22 01:45:30', '2023-05-22 01:45:30'),
(128, 'data_rows', 'display_name', 117, 'en', 'collections', '2023-05-22 01:49:59', '2023-05-22 01:49:59'),
(129, 'menu_items', 'title', 31, 'en', 'Phòng đơn', '2023-05-22 01:58:49', '2023-05-22 01:58:49'),
(130, 'menu_items', 'title', 32, 'en', 'Phòng đôi', '2023-05-22 01:58:59', '2023-05-22 01:58:59'),
(131, 'menu_items', 'title', 33, 'en', 'Phòng vip', '2023-05-22 01:59:09', '2023-05-22 01:59:09'),
(132, 'menu_items', 'title', 30, 'en', 'Phòng', '2023-05-22 01:59:30', '2023-05-22 01:59:30'),
(133, 'menu_items', 'title', 40, 'en', 'Liên hệ', '2023-05-22 02:05:43', '2023-05-22 02:05:43'),
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
(144, 'data_rows', 'display_name', 126, 'en', 'services', '2023-05-23 00:53:46', '2023-05-23 00:53:46');

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
(1, 1, 'Admin', 'admin@admin.com', 'users\\May2023\\BWCUwxAn1oaxeu4FJkGW.png', NULL, '$2y$10$NrslVVHTc.rs81xQKEoXwe9xU3uj1abiELW32/QjZSzsjfnQ9C/bC', 'CN1T3RZxHY4w1BzYiLEWUbNXZJQCIGaA5IqmSw0ppZoj8zb82MQ91GuYRnFg', '{\"locale\":\"vi\"}', '2023-02-20 09:15:44', '2023-05-20 00:36:20');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collections`
--
ALTER TABLE `collections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `collection_product`
--
ALTER TABLE `collection_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cuisines`
--
ALTER TABLE `cuisines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_product`
--
ALTER TABLE `service_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
