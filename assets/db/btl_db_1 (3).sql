-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2021 lúc 05:40 AM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btl_db_1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `tin_tuc_id` int(11) NOT NULL,
  `nguoi_dung_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngay_comment` datetime NOT NULL,
  `trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_doctors`
--

CREATE TABLE `tbl_doctors` (
  `bac_si_id` int(11) NOT NULL,
  `ten_bac_si` varchar(50) NOT NULL,
  `chuc_vu` varchar(100) NOT NULL,
  `ghi_chu` text,
  `anh_minh_hoa` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_doctors`
--

INSERT INTO `tbl_doctors` (`bac_si_id`, `ten_bac_si`, `chuc_vu`, `ghi_chu`, `anh_minh_hoa`) VALUES
(2, 'Dr Ng.T.Lan Anh', 'Y tá ', 'Ngh? thu?t y khoa là vi?c làm b?nh nhân vui v? trong khi t? nhiên ch?a b?nh.', NULL),
(4, 'Dr Tr.D.Trung Hi?u', 'Bác s? ph?c h?i ch?c n?ng', 'Y h?c là ng??i v? h?p pháp c?a tôi, và v?n h?c là cô b?. Khi tôi phát chán v?i m?t bên, tôi qua ?êm v?i bên còn l?i.', NULL),
(5, 'Dr Ng.Ph??ng Linh', 'Bác s? ph?c h?i ch?c n?ng', 'Trong phòng b?nh, s? c?m thông ?áng giá m??i xu b?ng v?i y h?c ?áng giá m??i ?ô la.', NULL),
(6, 'Dr L.T.Thanh Nga', 'y tá', 'm?t mmoir', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lien_he`
--

CREATE TABLE `tbl_lien_he` (
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_lien_he`
--

INSERT INTO `tbl_lien_he` (`contact_id`, `name`, `email`, `phone`, `message`) VALUES
(9, 'Lan Anh Nguyễn', 'imlananh.01@gmail.com', '0965698119', 'thông tin hữu ích'),
(11, 'Huyền', 'huyenfsd@gmail.com', '0976765445', ''),
(12, 'Linh', 'phuonglinh@gmail.com', '0943232', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nguoi_dung`
--

CREATE TABLE `tbl_nguoi_dung` (
  `nguoi_dung_id` int(11) NOT NULL,
  `ten_nguoi_dung` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT CURRENT_TIMESTAMP,
  `admin` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nguoi_dung`
--

INSERT INTO `tbl_nguoi_dung` (`nguoi_dung_id`, `ten_nguoi_dung`, `email`, `mat_khau`, `last_login`, `admin`) VALUES
(1, 'Lan Anh Nguyen', 'imlananh.01@gmail.com', 'x123', NULL, 1),
(2, 'Thanh Nga', 'ngathanh@gmail.com', '234', NULL, 0),
(3, 'Phuong Linh', 'phuonglinh@gmail.com', 'x123', NULL, 0),
(4, 'Tran Hieu', 'hieutran@gmail.com', 'aasas', '2021-10-17 22:19:05', 1),
(15, 'Chu Van Huy ', 'imlananh.01@gmail.com', '1212', '2021-10-20 14:09:16', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_reply_comment`
--

CREATE TABLE `tbl_reply_comment` (
  `rep_comment_id` int(11) NOT NULL,
  `comment_od` int(11) NOT NULL,
  `rep_commnent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_rep_comment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin_tuc`
--

CREATE TABLE `tbl_tin_tuc` (
  `tin_tuc_id` int(11) NOT NULL,
  `tieu_de` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashtag_id` int(11) NOT NULL,
  `mo_ta` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tac_gia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_minh_hoa` text COLLATE utf8mb4_unicode_ci,
  `ngay_dang_tin` datetime NOT NULL,
  `so_lan_doc` int(11) NOT NULL DEFAULT '0',
  `ghi_chu` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin_tuc`
--

INSERT INTO `tbl_tin_tuc` (`tin_tuc_id`, `tieu_de`, `hashtag_id`, `mo_ta`, `noi_dung`, `tac_gia`, `anh_minh_hoa`, `ngay_dang_tin`, `so_lan_doc`, `ghi_chu`) VALUES
(16, ' Cả nước 3.159 ca mắc mới, 1.136 trường hợp khỏi bệnh', 2, '<h2 class=\"sapo\"><span style=\"background-color: #2dc26b;\">TTO - Bản tin chiều 18-10</span> của Bộ Y tế cho biết cả nước ghi nhận 3.159 ca mắc COVID-19 mới, đ&aacute;ng ch&uacute; &yacute; số tử vong cả nước giảm thấp nhưng ở TP.HCM vẫn ở mức cao. Số bệnh nh&acirc;n khỏi bệnh được c&ocirc;ng bố trong ng&agrave;y l&agrave; 1.136 người.</h2>', '<div class=\"VCSortableInPreviewMode\">\r\n<div><a class=\"detail-img-lightbox\" title=\"Người d&acirc;n ti&ecirc;m vắc xin tại Trường tiểu học Nguyễn Đ&igrave;nh Chiểu, quận B&igrave;nh Thạnh, TP.HCM - Ảnh: QUANG ĐỊNH\" href=\"https://cdn.tuoitre.vn/2021/10/18/logo-12-1634548426303108315415.jpg\" target=\"_blank\" rel=\"noopener\" data-fancybox-group=\"img-lightbox\"><img id=\"img_3bb7\" class=\"lightbox-content\" title=\"Tin COVID-19 chiều 18-10: Cả nước 3.159 ca mắc mới, 1.136 trường hợp khỏi bệnh - Ảnh 1.\" src=\"https://cdn.tuoitre.vn/thumb_w/586/2021/10/18/logo-12-1634548426303108315415.jpg\" alt=\"Tin COVID-19 chiều 18-10: Cả nước 3.159 ca mắc mới, 1.136 trường hợp khỏi bệnh - Ảnh 1.\" width=\"\" height=\"\" data-original=\"https://cdn.tuoitre.vn/2021/10/18/logo-12-1634548426303108315415.jpg\" /></a>\r\n<div id=\"wrapper-inimage-pos-0\">\r\n<div id=\"in-images\">\r\n<div id=\"zone-joqxux31\">\r\n<div id=\"share-joqxuxkg\">\r\n<div id=\"placement-josbvfxe\">\r\n<div id=\"banner-joqxux31-josbvgf9\">\r\n<div id=\"slot-1-joqxux31-josbvgf9\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"PhotoCMS_Caption ck_legend caption\">\r\n<p class=\"\" data-placeholder=\"[nhập ch&uacute; th&iacute;ch]\">Người d&acirc;n ti&ecirc;m vắc xin tại Trường tiểu học Nguyễn Đ&igrave;nh Chiểu, quận B&igrave;nh Thạnh, TP.HCM - Ảnh: QUANG ĐỊNH</p>\r\n</div>\r\n</div>\r\n<p>T&iacute;nh từ 17h ng&agrave;y 17-10 đến 17h ng&agrave;y 18-10, tr&ecirc;n Hệ thống quốc gia quản l&yacute; ca bệnh COVID-19 ghi nhận 3.168 ca nhiễm mới, trong đ&oacute; 9 ca nhập cảnh v&agrave; 3.159 ca ghi nhận trong nước (giảm 16 ca so với ng&agrave;y trước đ&oacute;) tại 45 tỉnh, th&agrave;nh phố (c&oacute; 1.261 ca trong cộng đồng).</p>\r\n<p>- C&aacute;c tỉnh, th&agrave;nh phố ghi nhận ca bệnh như sau: TP.HCM (968), B&igrave;nh Dương (439), Đồng Nai (393), S&oacute;c Trăng (174), An Giang (109), Ki&ecirc;n Giang (99), Tiền Giang (94), C&agrave; Mau (77), Long An (68), Đồng Th&aacute;p (61), Ph&uacute; Thọ (58), Bạc Li&ecirc;u (48), Đắk Lắk (46), Quảng Nam (45),</p>\r\n<p>Thanh H&oacute;a (42), Gia Lai (40), Tr&agrave; Vinh (33), Kh&aacute;nh H&ograve;a (31), Hậu Giang (28), B&igrave;nh Thuận (28), Cần Thơ (27), Nghệ An (25), Nam Định (22), Kon Tum (20), H&agrave; Nam (20), Quảng Ng&atilde;i (19), T&acirc;y Ninh (18), B&igrave;nh Định (15), Quảng B&igrave;nh (15), Vĩnh Long (14),</p>\r\n<p>Thừa Thi&ecirc;n Huế (12), Bến Tre (9), B&igrave;nh Phước (9), B&agrave; Rịa - Vũng T&agrave;u (8), Quảng Trị (8), Ph&uacute; Y&ecirc;n (6), Ninh Thuận (6), Tuy&ecirc;n Quang (6), H&agrave; Nội (6), Đắk N&ocirc;ng (4), Bắc Ninh (4), Th&aacute;i B&igrave;nh (3), Ninh B&igrave;nh (1), H&agrave; Giang (1).</p>\r\n<p>- C&aacute;c địa phương ghi nhận số ca nhiễm giảm nhiều nhất so với ng&agrave;y trước đ&oacute;: T&acirc;y Ninh (-138), Đồng Nai (-124), B&igrave;nh Dương (-98).</p>\r\n<p>- C&aacute;c địa phương ghi nhận số ca nhiễm tăng cao nhất so với ng&agrave;y trước đ&oacute;: S&oacute;c Trăng (+110), Ph&uacute; Thọ (+50), Tiền Giang (+48).&nbsp;Trung b&igrave;nh số ca nhiễm mới trong nước ghi nhận trong 7 ng&agrave;y qua: 3.260 ca/ng&agrave;y.</p>\r\n<p>Kể từ đầu dịch đến nay Việt Nam c&oacute; 867.221 ca nhiễm, đứng thứ 40/223 quốc gia v&agrave; v&ugrave;ng l&atilde;nh thổ.&nbsp;Đợt dịch thứ 4 (từ ng&agrave;y 27-4 đến nay), số ca nhiễm mới ghi nhận trong nước l&agrave; 862.531 ca, trong đ&oacute; c&oacute; 790.163 bệnh nh&acirc;n đ&atilde; được c&ocirc;ng bố khỏi bệnh.</p>\r\n<p>Hiện c&oacute; 2/62 tỉnh, th&agrave;nh phố đ&atilde; qua 14 ng&agrave;y kh&ocirc;ng ghi nhận trường hợp nhiễm mới trong nước: Bắc Kạn, H&ograve;a B&igrave;nh.&nbsp;C&oacute; 16 tỉnh, th&agrave;nh phố kh&ocirc;ng c&oacute; ca l&acirc;y nhiễm thứ ph&aacute;t tr&ecirc;n địa b&agrave;n trong 14 ng&agrave;y qua: Quảng Ninh, Vĩnh Ph&uacute;c, Bắc Giang, Ninh B&igrave;nh, Lạng Sơn, Sơn La, Y&ecirc;n B&aacute;i, H&agrave; Giang, Lai Ch&acirc;u, Hải Ph&ograve;ng, Tuy&ecirc;n Quang, Th&aacute;i B&igrave;nh, Kon Tum, Hưng Y&ecirc;n, Điện Bi&ecirc;n, Th&aacute;i Nguy&ecirc;n.</p>\r\n<p>C&aacute;c địa phương ghi nhận số nhiễm t&iacute;ch lũy cao trong đợt dịch n&agrave;y: TP.HCM (418.692), B&igrave;nh Dương (225.853), Đồng Nai (59.015), Long An (33.806), Tiền Giang (15.105).</p>\r\n<p>Số bệnh nh&acirc;n khỏi bệnh&nbsp;được c&ocirc;ng bố trong ng&agrave;y l&agrave; 1.136.&nbsp;Tổng số ca được điều trị khỏi đến nay l&agrave; 792.980 ca.</p>\r\n<p>Số bệnh nh&acirc;n nặng đang điều trị l&agrave; 3.543 ca, trong đ&oacute;:</p>\r\n<p>- Thở oxy qua mặt nạ: 2.358</p>\r\n<p>- Thở oxy d&ograve;ng cao HFNC: 509</p>\r\n<p>- Thở m&aacute;y kh&ocirc;ng x&acirc;m lấn: 121</p>\r\n<p>- Thở m&aacute;y x&acirc;m lấn: 534</p>\r\n<div id=\"zone-jnvk0c1v\">\r\n<div id=\"share-jnvk0cro\"></div>\r\n</div>\r\n<p>- ECMO: 21</p>', '', 'map-marker.png', '2021-10-07 12:58:41', 9, ''),
(47, 'Tiêu đề thử nghiệm', 1, '<p>s&aacute;asasas</p>', '', '', '5454033281599778125-128.png', '2021-10-22 12:56:49', 67, ''),
(48, 'ABC sua 1', 2, '', '', '', 'home-ab-img.png', '2021-10-20 12:58:30', 77, ''),
(49, 'ABC sua 1', 2, '', '', '', 'protect-img-2.png', '2021-10-19 12:58:25', 0, ''),
(50, 'Có nên mở nhiều thẻ tín dụng để hưởng hoàn tiền?', 1, '', '', '', 'pro2.png', '2021-10-13 12:58:19', 0, ''),
(51, 'Tiêu đề thử nghiệm', 1, '', '', '', '', '2021-10-19 12:58:13', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin_tuc_hashtag`
--

CREATE TABLE `tbl_tin_tuc_hashtag` (
  `hashtag_id` int(11) NOT NULL,
  `ten_hashtag` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin_tuc_hashtag`
--

INSERT INTO `tbl_tin_tuc_hashtag` (`hashtag_id`, `ten_hashtag`) VALUES
(1, 'vacxin'),
(2, 'xét nghiệm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tu_van`
--

CREATE TABLE `tbl_tu_van` (
  `tu_van_id` int(11) NOT NULL,
  `ten` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bac_si_id` int(11) NOT NULL,
  `gioi_tinh` tinyint(4) NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_tu_van` date NOT NULL,
  `thoi_gian` time NOT NULL,
  `phuong_thuc` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tu_van`
--

INSERT INTO `tbl_tu_van` (`tu_van_id`, `ten`, `bac_si_id`, `gioi_tinh`, `email`, `sdt`, `ngay_tu_van`, `thoi_gian`, `phuong_thuc`) VALUES
(1, 'HAI', 0, 0, '', '', '0000-00-00', '00:00:00', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_vaccine`
--

CREATE TABLE `tbl_vaccine` (
  `vaccine_id` int(11) NOT NULL,
  `ten_vaccine` varchar(50) NOT NULL,
  `mo_ta` text NOT NULL,
  `anh_minh_hoa` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_vaccine`
--

INSERT INTO `tbl_vaccine` (`vaccine_id`, `ten_vaccine`, `mo_ta`, `anh_minh_hoa`) VALUES
(1, ' Vaccine AstraZeneca', 'do T?p ?oàn AstraZeneca s?n xu?t ?ã ???c c?p phép s? d?ng kh?n c?p t?i 181 qu?c gia, vùng lãnh th? và ???c T? ch?c Y t? th? gi?i (WHO) ??a vào danh sách s? d?ng kh?n c?p. AstraZeneca ???c Vi?t nam phê duy?t ngày 01/02/2021 và tri?n khai tiêm ch?ng t? tháng 3/2021, hi?n ?ang có s? l??ng s? d?ng nhi?u nh?t t?i Vi?t Nam. ?ây là lo?i v?c xin s?n xu?t theo công ngh? vector, s? d?ng 2 li?u cách nhau 8-12 tu?n.', NULL),
(2, 'Vaccine Gam-COVID-Vac', '(tên khác là SPUTNIK V) do Vi?n Nghiên c?u Gamaleya, Nga s?n xu?t ?ã ???c c?p phép s? d?ng t?i 70 qu?c gia, vùng lãnh th?. T?i Vi?t Nam, vaccine Sputnik V ?ã ???c B? Y t? phê duy?t có ?i?u ki?n vaccine cho nhu c?u c?p bách trong phòng, ch?ng d?ch COVID-19 vào ngày 23/3/2021. ?ây là v?c xin s? d?ng công ngh? tái t? h?p h?p mang gen mã hóa protein S c?a SARS-CoV-2. V?c xin ???c tiêm 2 li?u cách nhau 3 tu?n', NULL),
(3, 'Vaccine Vero Cell', 'do Sinopharm phát tri?n và Beijing Institute of Biological Products Co. Ltd - Trung Qu?c s?n xu?t, ?ã ???c c?p phép s? d?ng t?i 64 qu?c gia, vùng lãnh th?, ?ã ???c T? ch?c Y t? th? gi?i ??a vào danh sách s? d?ng kh?n c?p. Ngày 3/6/2021, v?c-xin Vero Cell ?ã ???c B? Y t? phê duy?t có ?i?u ki?n vaccine cho nhu c?u c?p bách trong phòng, ch?ng d?ch COVID-19. V?c xin này s?n xu?t theo công ngh? b?t ho?t vi rút, tiêm 2 li?u cách nhau 3-4 tu?n.', NULL),
(4, 'V?c xin Comirnaty c?a Pfizer/BioNTech', '?ã ???c c?p phép s? d?ng t?i 111 qu?c gia và vùng lãnh th? và ???c T? ch?c Y t? th? gi?i ??a vào danh sách s? d?ng kh?n c?p. V?c xin này ?ã ???c B? Y t? phê duy?t có ?i?u ki?n cho nhu c?u c?p bách trong phòng, ch?ng d?ch COVID-19 vào ngày 16/6/2021. V?c xin ???c s?n xu?t theo công ngh? mRNA, s? d?ng tiêm 2 li?u cách nhau 3-4 tu?n. ??n ngày 23/8/2021, C?c Qu?n lý thu?c và th?c ph?m Hoa K? (FDA) chính th?c ??a ra ch?p thu?n hoàn toàn ??i v?i vaccine Pfizer-BioNTech trong phòng ng?a COVID-19 ? nh?ng ng??i t? 16 tu?i tr? lên', NULL),
(5, 'Vaccine Abdala', '???c s?n xu?t thành ph?m t?i Công ty AICA Laboraries, Base Business Unit (BBU) AICA - Cuba và ???c xu?t bán thành ph?m, ?óng gói c?p 2 t?i Trung tâm K? thu?t Di truy?n và Công ngh? Sinh h?c (CIGB) - Cuba.  V?c-xin Abdala m?i li?u 0,5ml ch?a 50 mcg v?c-xin protein tái t? h?p ch?a vùng liên k?t v?i th? th? (RBG) c?a vi-rút SARS-CoV-2, bào ch? ? d?ng h?n d?ch tiêm b?p. V?c-xin ???c ?óng gói h?p 10 l?, m?i l? ch?a 10 li?u, m?i li?u 0,5ml. B? Y t? ?ã phê duy?t có ?i?u ki?n v?c-xin cho nhu c?u c?p bách trong phòng, ch?ng d?ch b?nh COVID-19 ??i v?i lo?i v?c-xin này vào ngày 17/9/2021.', NULL),
(6, 'V?c xin Janssen do Janssen Pharmaceutica NV (B?) v', 's?n xu?t ???c c?p phép s? d?ng t?i 56 qu?c gia, vùng lãnh th? và ???c T? ch?c Y t? th? gi?i ??a vào danh sách s? d?ng kh?n c?p. V?c xin ???c s?n xu?t b?ng công ngh? véc-t? vi-rút, s? d?ng 1 li?u duy nh?t. Hi?n nay, Vi?t Nam ch?a ti?p nh?n lo?i v?c xin này nh?ng B? Y t? ?ã phê duy?t có ?i?u ki?n cho nhu c?u c?p bách trong phòng, ch?ng d?ch COVID-19 ??i v?i lo?i v?c-xin này vào ngày 15/7/2021.', NULL),
(7, 'V?c-xin vaccine Hayat - Vax', 'do Công ty TNHH Vi?n Sinh ph?m B?c Kinh thu?c T?p ?oàn Biotec Qu?c gia Trung Qu?c (CNBG), Trung Qu?c, s?n xu?t bán thành ph?m. V?c xin này ???c ?óng gói s? c?p, th? c?p và xu?t x??ng t?i Julphar (Gulf Pharmaceutical Industries) - Các ti?u V??ng qu?c ? r?p th?ng nh?t. Vaccine Hayat - Vax m?i li?u 0,5 ml ch?a 6.5 ??n v? kháng nguyên SARS-CoV-2 (t? bào vero) b?t ho?t, bào ch? ? d?ng h?n d?ch tiêm. Vaccine ???c ?óng gói h?p m?t l? ch?a m?t li?u 0,5 ml và h?p m?t l? ch?a 2 li?u, m?i li?u 0,5 ml. B? Y t? ?ã có quy?t ??nh phê duy?t có ?i?u ki?n cho nhu c?u c?p bách trong phòng, ch?ng d?ch b?nh COVID-19 ??i v?i v?c-xin này vào ngày 10/9/2021. Li?u tiêm ?ang ch? B? Y t? c?p nh?t h??ng d?n.\r\n\r\n', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `tbl_doctors`
--
ALTER TABLE `tbl_doctors`
  ADD PRIMARY KEY (`bac_si_id`);

--
-- Chỉ mục cho bảng `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  ADD PRIMARY KEY (`nguoi_dung_id`);

--
-- Chỉ mục cho bảng `tbl_reply_comment`
--
ALTER TABLE `tbl_reply_comment`
  ADD PRIMARY KEY (`rep_comment_id`);

--
-- Chỉ mục cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD PRIMARY KEY (`tin_tuc_id`),
  ADD KEY `hashtag_id` (`hashtag_id`);

--
-- Chỉ mục cho bảng `tbl_tin_tuc_hashtag`
--
ALTER TABLE `tbl_tin_tuc_hashtag`
  ADD PRIMARY KEY (`hashtag_id`);

--
-- Chỉ mục cho bảng `tbl_tu_van`
--
ALTER TABLE `tbl_tu_van`
  ADD PRIMARY KEY (`tu_van_id`);

--
-- Chỉ mục cho bảng `tbl_vaccine`
--
ALTER TABLE `tbl_vaccine`
  ADD PRIMARY KEY (`vaccine_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_doctors`
--
ALTER TABLE `tbl_doctors`
  MODIFY `bac_si_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_lien_he`
--
ALTER TABLE `tbl_lien_he`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `tbl_nguoi_dung`
--
ALTER TABLE `tbl_nguoi_dung`
  MODIFY `nguoi_dung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_reply_comment`
--
ALTER TABLE `tbl_reply_comment`
  MODIFY `rep_comment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  MODIFY `tin_tuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tbl_tin_tuc_hashtag`
--
ALTER TABLE `tbl_tin_tuc_hashtag`
  MODIFY `hashtag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_tu_van`
--
ALTER TABLE `tbl_tu_van`
  MODIFY `tu_van_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_vaccine`
--
ALTER TABLE `tbl_vaccine`
  MODIFY `vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_tin_tuc`
--
ALTER TABLE `tbl_tin_tuc`
  ADD CONSTRAINT `tbl_tin_tuc_ibfk_1` FOREIGN KEY (`hashtag_id`) REFERENCES `tbl_tin_tuc_hashtag` (`hashtag_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
