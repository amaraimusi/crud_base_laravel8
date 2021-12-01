-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-12-01 23:30:11
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `crud_base_laravel8`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_22_005940_create_sessions_table', 2);

-- --------------------------------------------------------

--
-- テーブルの構造 `nekos`
--

CREATE TABLE `nekos` (
  `id` int(11) NOT NULL,
  `neko_val` int(11) DEFAULT NULL,
  `neko_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `neko_date` date DEFAULT NULL,
  `neko_group` int(11) DEFAULT NULL COMMENT '猫種別',
  `neko_dt` datetime DEFAULT NULL,
  `neko_flg` tinyint(4) DEFAULT 0 COMMENT 'ネコフラグ',
  `img_fn` varchar(256) DEFAULT NULL COMMENT '画像ファイル名',
  `note` text CHARACTER SET utf8 DEFAULT NULL COMMENT '備考',
  `sort_no` int(11) DEFAULT 0 COMMENT '順番',
  `delete_flg` tinyint(1) DEFAULT 0 COMMENT '無効フラグ',
  `update_user` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新者',
  `ip_addr` varchar(40) CHARACTER SET utf8 DEFAULT NULL COMMENT 'IPアドレス',
  `created` datetime DEFAULT NULL COMMENT '生成日時',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `nekos`
--

INSERT INTO `nekos` (`id`, `neko_val`, `neko_name`, `neko_date`, `neko_group`, `neko_dt`, `neko_flg`, `img_fn`, `note`, `sort_no`, `delete_flg`, `update_user`, `ip_addr`, `created`, `modified`) VALUES
(1, 2000, 'おキャット様', '2014-04-01', 2, '2014-12-12 00:00:00', 0, 'DSC_0010.jpg', '大きな\n猫', 24, 1, 'kani', '126.219.137.211', NULL, '2020-07-03 06:00:53'),
(2, 2000, '三毛A', '2014-04-02', 3, '2014-12-12 00:00:01', 0, '', '', 32, 1, 'kani', '126.219.137.211', NULL, '2019-02-17 14:00:29'),
(4, 2000, 'シャム猫', '2014-04-04', 0, '2014-12-12 00:00:03', 0, '', '', 38, 1, 'kani', '126.219.137.211', NULL, '2020-07-03 07:44:41'),
(5, 2000, '近所のミーヤン', '2014-04-03', NULL, '2014-12-12 00:00:02', 0, '', '', 35, 1, 'kani', '126.219.137.211', NULL, '2020-09-14 09:46:12'),
(6, 3, 'ニャーちゃん', '2014-04-03', 2, '2014-12-12 00:00:02', 0, '', '', 40, 1, 'kani', '126.219.137.211', NULL, '2020-09-14 09:47:00'),
(7, 3, 'ステトラ', '2014-04-03', NULL, '2014-12-12 00:00:02', 0, '', '', 41, 1, 'kani', '126.219.137.211', NULL, '2020-09-14 09:49:03'),
(8, 3, 'ノミコ', '2014-04-03', 2, '2014-12-12 00:00:02', 0, '', '', 42, 1, 'kani', '126.219.137.211', NULL, '2020-09-14 09:50:02'),
(9, 111, 'ゴボウ', '1970-01-01', 2, '2014-04-28 10:04:00', 0, '', '白菜とサラダセット', 43, 1, 'kani', '126.219.137.211', NULL, '2019-02-17 14:00:29'),
(10, 123, 'のらくん', '1970-01-01', NULL, '2014-04-28 10:05:00', 0, '', '', 39, 1, 'kani', '126.219.137.211', NULL, '2020-09-14 09:47:19'),
(11, 3, 'トト', '2018-04-03', NULL, '2014-12-12 00:00:02', 0, '', '', 36, 1, 'kani', '126.219.137.211', '2018-03-09 09:00:20', '2020-09-14 09:50:29'),
(17, 3, '痩せ猫', '2014-04-03', NULL, '2014-12-12 00:00:02', 0, '', '', 33, 1, 'kani', '126.219.137.211', '2018-03-20 06:39:26', '2020-09-14 09:50:45'),
(19, 111, 'ニャーニャー', '2018-10-18', 5, '2018-03-31 14:18:59', 0, '', 'a', 34, 1, 'kani', '126.219.137.211', '2018-03-20 06:41:48', '2019-02-17 14:00:29'),
(20, 3, 'リリー', '2014-04-03', NULL, '2014-12-12 00:00:02', 0, '', '', 37, 1, 'kani', '126.219.137.211', '2018-03-20 07:45:08', '2020-09-14 09:46:28'),
(22, 111, 'ハマダイコン', '1970-01-01', 2, '2014-04-29 10:04:00', 0, '', '砂浜に生える大根', 44, 1, 'kani', '::1', '2018-03-30 09:46:18', '2018-03-30 00:46:18'),
(26, 1, '', NULL, NULL, NULL, 0, '26_DSC_0037.jpg', '', 14, 1, 'kani', '126.219.137.211', '2018-04-19 22:28:39', '2019-02-17 13:57:43'),
(29, 124, 'ビッグキャット', NULL, NULL, NULL, 0, '29_DSC_0037.jpg', '', 17, 1, 'kani', '126.219.137.211', '2018-04-19 22:57:16', '2019-02-17 14:00:29'),
(37, 0, '王家の猫', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '', 45, 1, 'kani', '126.219.137.211', '2018-04-19 23:28:36', '2020-09-14 09:47:34'),
(38, NULL, 'ルガルガン', NULL, NULL, NULL, 0, '', '', 46, 1, 'kani', '126.219.137.211', '2018-04-19 23:31:42', '2019-02-17 14:00:29'),
(39, 0, 'チョロネコ', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '', 47, 1, 'kani', '126.219.137.211', '2018-04-19 23:33:35', '2020-09-14 09:48:05'),
(40, 0, 'エネコロロ', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '', 48, 1, 'kani', '126.219.137.211', '2018-04-19 23:34:50', '2020-09-14 09:48:16'),
(41, NULL, 'AFD', NULL, NULL, NULL, 0, '', '', 49, 1, 'kani', '126.219.137.211', '2018-04-19 23:36:30', '2019-02-17 14:00:29'),
(42, NULL, 'ヌガー', NULL, NULL, NULL, 0, '', '', 31, 1, 'kani', '126.219.137.211', '2018-04-19 23:37:50', '2019-02-17 14:00:29'),
(43, 0, 'タヌキのように太った猫', '0000-00-00', 2, '0000-00-00 00:00:00', 0, '', '', 30, 1, 'kani', '126.219.137.211', '2018-04-19 23:38:45', '2020-09-14 09:45:47'),
(44, NULL, 'ライオン', NULL, NULL, NULL, 0, '', '', 29, 1, 'kani', '126.219.137.211', '2018-04-19 23:46:47', '2019-02-17 14:00:29'),
(45, 0, 'B', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '', 28, 1, 'kani', '126.219.137.211', '2018-04-19 23:46:57', '2020-09-14 09:45:29'),
(46, NULL, 'A', NULL, NULL, NULL, 0, 'DSC_0010.jpg', '', 27, 1, 'kani', '126.219.137.211', '2018-04-20 07:28:28', '2019-02-17 14:00:29'),
(47, NULL, 'ビッグマスター', '2018-04-17', NULL, NULL, 0, 'DSC_0037 (1).jpg', '', 26, 1, 'kani', '126.219.137.211', '2018-04-20 07:28:43', '2019-02-17 14:00:29'),
(49, 0, 'チョコ', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '', 50, 1, 'kani', '126.219.137.211', '2018-04-20 07:31:06', '2020-09-14 09:53:25'),
(50, NULL, 'TEST\\\'', NULL, NULL, NULL, 0, 'DSC_0037.jpg', 'TEST\\nTEST2', 25, 1, 'kani', '126.219.137.211', '2018-04-20 10:45:34', '2019-02-17 14:00:29'),
(51, 0, 'ビッグマン', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '', 37, 1, 'kani', '126.219.137.211', '2018-04-20 10:46:21', '2020-09-14 09:54:28'),
(55, 124, 'アカマムシ', NULL, 1, NULL, 0, '', '', 23, 1, 'kani', '126.219.137.211', '2018-04-24 07:06:22', '2019-02-17 14:00:29'),
(56, 1, '\'\' = \'\'', '2014-04-01', 2, '2014-12-12 00:00:00', 0, '', '大きな\n猫', 22, 1, 'kani', '126.219.137.211', '2018-04-24 13:56:44', '2019-02-17 14:00:29'),
(57, 1, '\'\' = \'\'', '2014-04-01', 2, '2014-12-12 00:00:00', 0, '', '大きな\n猫', 21, 1, 'kani', '126.219.137.211', '2018-04-24 13:58:23', '2019-02-17 14:00:29'),
(60, NULL, 'A2', NULL, 1, NULL, 0, 'DSC_0010.jpg', '', 19, 1, 'kani', '126.219.137.211', '2018-04-24 14:01:49', '2019-02-17 14:00:29'),
(63, 300, 'ザ・ビッグ2', NULL, 1, NULL, 0, 'DSC_0037 (1).jpg', '', 18, 1, 'kani', '126.219.137.211', '2018-04-26 06:46:01', '2019-02-17 14:00:29'),
(64, 123, '<input />', NULL, 1, NULL, 0, '53_hyomon.jpg', '', 12, 1, 'kani', '126.219.137.211', '2018-08-22 16:49:38', '2019-02-17 13:57:55'),
(65, 1, '対馬山猫', '2018-09-30', 1, '0000-00-00 00:00:00', 1, '58_2017-11-24_123306_DSC_0066.jpg', '', 10, 1, 'kani', '126.219.137.211', '2018-08-22 17:11:38', '2020-09-14 09:52:45'),
(66, 1, 'アイルー', '0000-00-00', 21, '0000-00-00 00:00:00', 0, '66_DSC_0054 (1).jpg', '傭兵', 49, 0, '', '126.219.137.211', '2018-08-27 16:31:59', '2020-09-14 10:11:51'),
(67, 22, 'ベンガルトラ', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '67_DSC_0037 (1).jpg', '', 13, 1, 'kani', '126.219.137.211', '2018-08-27 19:33:05', '2020-09-14 09:51:15'),
(69, 0, 'TEST', '2018-10-16', 1, NULL, 0, '1498312069338.jpg', '<input />\"neko\",\'inu\'\n\n全長オス14センチメートル、メス18センチメートル[4]。頭胴長オス4.6-7.5センチメートル、メス5.2-8センチメートル[4]。背面の体色は黒や黒褐色、暗褐色[3][4]。背面に地衣類状の明色斑や、正中線に沿って橙色の筋模様が入る個体もいるなど変異が大きい[4]。 腹面の色彩は赤色や黄色で、不規則に黒い斑紋が入る個体もいる[3]。指趾下面の体色は明色[3][6]。\n\n繁殖期になるとオスの尾は幅広くなる[4]。\n\nシリケンイモリは歩くのが遅いのですぐ捕まる。捕食されないのがなぞであるが、おそらく皮膚のテトロドトキシンが関係しているのかな。\n\nうーん。わからん。', 9, 1, 'kani', '126.219.137.211', '2018-10-02 22:01:00', '2019-02-17 14:00:29'),
(75, 99, 'ガーラ', '2018-10-18', 2, NULL, 1, 'hyomon.jpg', 'TEST2', 8, 1, 'kani', '126.219.137.211', '2018-10-10 13:51:08', '2019-02-17 14:00:29'),
(76, 1, '猫吉', '2018-09-30', 1, '0000-00-00 00:00:00', 1, 'DSC_0748.jpg', 'TEST', 11, 1, 'kani', '126.219.137.211', '2018-10-18 07:55:26', '2020-09-14 09:52:11'),
(77, 104, 'ロイヤルアナロスタン', '2020-09-14', 21, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914115208_uramachino1.jpg', 'シートン動物記「裏まちのすてネコ」に登場する野良猫。\n心が荒れすさんだ人間たちの中、たくましく生きる猫。人間に捕まって品評会に出場させられたことがある。\nロイヤルアナロスタンという名前は品評会に出された時の呼び名。', 6, 0, '', '126.219.137.211', '2018-10-18 15:58:19', '2020-09-15 02:34:22'),
(80, 999, 'ネコバス', '2018-12-02', 8, '0000-00-00 00:00:00', 1, 'rsc/img/img_fn/y2019/m02/orig/20190217225931_DSC_0679.jpg', '体内に人間などをいれて運ぶ大型猫', 46, 0, 'kani', '126.219.137.211', '2018-10-19 21:01:01', '2020-09-14 07:56:50'),
(82, 1, 'アントニオ', '0000-00-00', 22, '0000-00-00 00:00:00', 0, '66_DSC_0054 (1).jpg', '侠客。すでに亡き猫。死後、剥製として丁重に扱われている。', 37, 0, '', '126.219.137.211', '2018-10-21 22:55:12', '2020-09-14 09:37:45'),
(83, 999, 'ジジ', '2018-12-14', 2, '0000-00-00 00:00:00', 1, 'rsc/img/img_fn/y2019/m02/orig/20190217225845_DSC_0037.jpg', '飛行型宅配業者のネコ', 45, 0, 'kani', '126.219.137.211', '2018-10-21 23:01:10', '2020-09-14 09:09:48'),
(88, 999, 'ノンタン', '2018-12-31', 17, '0000-00-00 00:00:00', 1, 'rsc/img/img_fn/y2019/m02/orig/20190217225951_DSC_0700.jpg', '幼稚園児に知られている。', 47, 0, 'kani', '126.219.137.211', '2018-10-22 07:30:22', '2020-09-15 02:34:01'),
(89, 123, 'テスト23', '2018-12-02', NULL, '0000-00-00 00:00:00', 1, 'storage/neko/y2021/89/91560f6eddd7cc26/orig/001.jpg', 'TEST<input class=', 1, 0, '', '::1', '2018-10-22 07:30:44', '2021-11-22 21:28:54'),
(90, 123, 'レオ', '2018-12-07', 20, '0000-00-00 00:00:00', 1, 'rsc/img/img_fn/y2019/m02/orig/20190217225552_53_hyomon.jpg', '大帝', 50, 0, '', '126.219.137.211', '2018-12-01 07:21:06', '2020-09-14 09:42:19'),
(91, 123, '犬のような猫', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '', 51, 1, '', '126.219.137.211', '2020-06-13 22:14:56', '2020-09-14 09:48:46'),
(92, 123, 'シルベスター', '0000-00-00', 14, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m06/orig/20200616161522_tamamusi.jpg', '見るからに悪党ヅラした白黒ぶち猫。銃、爆薬などを扱う。', 43, 0, '', '126.219.137.211', '2020-06-13 22:16:53', '2020-09-14 09:39:06'),
(93, 456, 'いのしし２', NULL, NULL, NULL, 0, '', '', 7, 1, NULL, '::1', '2020-06-13 22:16:53', '2020-06-17 04:38:27'),
(94, 123, 'たぬき', NULL, NULL, NULL, 0, '', '', 8, 1, NULL, '::1', '2020-06-13 22:19:20', '2020-06-17 04:38:51'),
(96, 103, 'ルドルフ', '2020-09-14', 13, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914111936_2020-09-14_111936.jpg', '「ルドルフとイッパイアッテナ」の主人公猫。\n若輩だがイッパイアッテナから文字や処世術を学び日々成長していく。', 3, 0, 'kani', '126.219.137.211', '2020-06-17 13:38:38', '2020-09-17 01:30:30'),
(97, NULL, '', NULL, 1, NULL, 0, '', '', -1, 1, NULL, '::1', '2020-06-17 13:38:40', '2020-06-17 04:38:51'),
(98, 123, 'ダヤン', '2020-02-02', 5, '2012-12-12 12:12:12', 0, '', '最近、書店でよく見かける。', 48, 0, 'kani', '126.219.137.211', '2020-06-17 13:39:01', '2020-09-14 09:41:41'),
(99, 1234, 'カリン様', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '豆や水をくれる。', 40, 0, 'kani', '126.219.137.211', NULL, '2020-09-14 07:20:25'),
(100, 1001, 'ソックス', '0000-00-00', 14, '0000-00-00 00:00:00', 0, '', '足だけが白い超巨体の黒猫。北谷町に住む。', 32, 0, 'kani', '126.219.137.211', '0000-00-00 00:00:00', '2020-09-15 02:35:33'),
(101, 1002, 'サバ', '0000-00-00', 15, '0000-00-00 00:00:00', 0, '', 'グーグーの前に飼われいた亡き猫', 41, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(102, 1001, 'CatDog', '0000-00-00', 19, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914153209_CatDog.jpeg', '半猫半犬のMAD生物。猫側の方は積極的、犬側はややひかえめ。アメリカのアニメ。主題歌が良い。', 18, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:09'),
(103, 1002, 'ジョバンニ', '0000-00-00', 14, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914133954_9ae6e0d5.png', '「銀河鉄道の夜」の主人公猫。孤独な少年。友人のカンパネルラと共に銀河鉄道の乗車し、様々な星を訪れる。', 10, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:18'),
(104, 1003, 'フィリックス', '0000-00-00', 14, '0000-00-00 00:00:00', 0, '', '10円ガムで有名な猫。よく裁判になった。', 43, 0, '', '126.219.137.211', NULL, '2020-09-14 09:39:20'),
(108, 0, '青狸', '0000-00-00', 21, '0000-00-00 00:00:00', 0, '', '青狸と呼ばれると怒る。', 41, 0, '', '126.219.137.211', NULL, '2020-09-15 02:43:22'),
(109, 0, '長靴をはいた猫', '0000-00-00', 10, '0000-00-00 00:00:00', 0, '', '軍師猫。策略に長けており権力者に取り入ったり、怪物を計略に陥れたりする。ついには主人を領主にすることに成功する。', 37, 0, '', '126.219.137.211', NULL, '2020-09-17 01:31:54'),
(110, 0, 'トム', '0000-00-00', 21, '0000-00-00 00:00:00', 0, '', '包丁、斧、銃、爆弾、毒薬など各種危険物を扱う。よく薄っぺらになる。', 49, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(111, 0, 'ミー', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '多くの猫はこの名を持つ。', 42, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:26'),
(112, 0, 'リス猫', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '今帰仁村で遭遇した猫。小さい体なのに、リスのような大きなしっぽを持った美しい猫。', 35, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:26'),
(113, 0, 'ニャロメ', '0000-00-00', 21, '0000-00-00 00:00:00', 0, '', '赤塚作品に登場する猫。', 46, 0, '', '126.219.137.211', NULL, '2020-09-14 09:41:23'),
(114, 0, 'チャトラン', '0000-00-00', 19, '0000-00-00 00:00:00', 0, '', '映画、子猫物語に出てくる茶トラ。', 45, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(115, 123, 'ニャース', '2020-02-02', 1, '2012-12-12 12:12:12', 0, '', '20年以上も黄色いネズミを追い求め続けている猫。', 26, 0, 'kani', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(116, 0, 'スナネコ', '0000-00-00', 20, '0000-00-00 00:00:00', 0, '', '独特な表情で有名な野生のネコ', 22, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(117, 0, 'ミケ', '0000-00-00', 3, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914141107_ur170801_nekoko07.jpg', 'FX狂いで借金まみれの猫。強制労働所で2兆年働くことになっている。お金にだらしがない猫だがいい猫である。勢い任せにFXに投資し続けるため「通貨」たちから心配されたり好かれたりしている。', 14, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:13'),
(118, 950, '『吾輩』', '2020-09-15', 12, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914113438_20100919_666548.jpg', '「吾輩は猫である」主人公猫。名前はまだない。観察力と語彙力がすごい。人間の言葉は話さないものの一般の人間以上の知性を備える。自分は人間の言葉を理解できるが、猫の言葉を人間は理解しないみたいな事を言っている。知性があるとはいえ猫であることをわきまえており、\"猫\"を踏み越えた行動をあまりしない。', 5, 0, '', '126.219.137.211', NULL, '2020-09-17 01:39:11'),
(119, 0, 'フィガロ', '0000-00-00', 14, '0000-00-00 00:00:00', 0, '', '白黒のぶち猫。嘘つき人造人間に厳しい態度をとる。', 41, 0, '', '126.219.137.211', NULL, '2020-09-14 09:38:47'),
(120, 0, 'ネコマムシ', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '侠客', 47, 0, '', '126.219.137.211', NULL, '2020-09-14 08:28:35'),
(121, 0, 'サーバル', '0000-00-00', 20, '0000-00-00 00:00:00', 0, '', '友達', 50, 0, '', '126.219.137.211', NULL, '2020-09-14 09:42:24'),
(122, 0, 'スフィンクス', '0000-00-00', 6, '0000-00-00 00:00:00', 0, '', '毛のない猫。ただし産毛は生えているようだ。エジプト産ではなくイギリス産。', 33, 0, '', '126.219.137.211', NULL, '2020-09-15 02:37:32'),
(123, 0, '白君', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '', 38, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:26'),
(124, 0, 'シンバ', '0000-00-00', 20, '0000-00-00 00:00:00', 0, '', '王', 49, 0, '', '126.219.137.211', NULL, '2020-09-14 09:42:13'),
(125, 0, 'ダッチェス', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', 'アメリカのおしゃれ猫。', 47, 0, '', '126.219.137.211', NULL, '2020-09-14 09:41:33'),
(126, 0, 'トニー', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '健康食品を宣伝していたトラ。同僚にゾウやサルがいる。', 44, 0, '', '126.219.137.211', NULL, '2020-09-14 07:48:56'),
(127, 0, '猫又', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '20年生きた老猫が化けるという。\n人を食らう化け猫になる場合もあれば、恩返しをする化け猫もいる。', 38, 0, '', '126.219.137.211', NULL, '2020-09-14 07:14:34'),
(128, 0, '猫田さん', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '論客', 43, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(129, 123, 'デスマスク', '2020-02-02', 1, '2012-12-12 12:12:12', 0, '', 'シャム猫が珍しい時代にいた近所のネコ。その風貌から子供らからデスマスクというあだ名をつけられた。警戒心がすさまじく、とにかくよく逃げる。', 27, 0, 'kani', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(130, 123, 'イリオモテヤマネコ', '2020-02-02', 20, '2012-12-12 12:12:12', 0, '', '天然記念物。ヤママヤーとして知られていた。', 39, 0, 'kani', '126.219.137.211', NULL, '2020-09-14 09:38:25'),
(131, 123, '猫疥癬', '2020-02-02', 10, '2012-12-12 12:12:12', 0, '', '猫の病気。野良猫がよく感染する。', 30, 0, 'kani', '126.241.217.204', NULL, '2021-03-22 12:12:02'),
(132, 0, '100万回生きたオスネコ', '0000-00-00', 10, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914142431_500_Ehon_94.jpg', '「100万回生きた猫」の主人公猫。何度でも生き返るオスネコ。何十万回と死んでいるためか、尊大な性格をしている。', 16, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:09'),
(133, 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '', 2, 1, 'kani', '::1', NULL, '2020-08-15 15:24:24'),
(134, 123, 'ルナ', '2020-02-02', 17, '2012-12-12 12:12:12', 0, '', '学徒戦闘員の猫。', 45, 0, 'kani', '126.219.137.211', NULL, '2020-09-14 09:09:21'),
(135, 123, 'ガーフィールド', '2020-02-02', 1, '2012-12-12 12:12:12', 0, '', '文房具のオレンジ猫。クール。', 42, 0, 'kani', '126.219.137.211', NULL, '2020-09-14 08:22:05'),
(136, 123, 'ガチマヤー', '2020-02-02', 10, '2012-12-12 12:12:12', 0, '', 'よくエサを催促する猫。沖縄方言のスラングであり、食い意地をはる人間もこのように呼ばれる。', 39, 0, 'kani', '126.219.137.211', NULL, '2020-09-14 08:20:43'),
(137, 0, 'タマ', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '某家族アニメのネコ。昔は魚を盗む猫だったが、いまは普通の猫になっている。', 36, 0, '', '126.219.137.211', NULL, '2020-09-14 08:16:37'),
(138, 0, 'クロ', '0000-00-00', 13, '0000-00-00 00:00:00', 0, '', 'この名前のネコはたくさんいる。', 46, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(139, 0, 'エネコ', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '種族値がかなり低い', 39, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:26'),
(140, 123, 'うなぎネコ', '0000-00-00', 14, '0000-00-00 00:00:00', 0, '', '猫工船に1コマだけ登場する。\nときおり、「うなぎ猫」と称される猫の写真がインターネット上に現れる。', 31, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(141, 123, '井上トロ', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '人間になることを目標とする猫', 48, 0, '', '126.219.137.211', NULL, '2020-09-14 09:41:48'),
(142, 123, 'ネコートさん', '0000-00-00', 12, '0000-00-00 00:00:00', 0, '', 'ハンターの案内をする。', 42, 0, '', '126.219.137.211', NULL, '2020-09-14 09:11:45'),
(143, 123, 'ゴメス', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '', 50, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:26'),
(144, 123, 'よだれ', '0000-00-00', 22, '0000-00-00 00:00:00', 0, '', '瀬底島の公園を根城にしている野良の雌猫。いつもよだれをたらし悲壮感を漂わせる。とても人懐こい。\n', 36, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(145, 123, 'ニャビー', '0000-00-00', 5, '0000-00-00 00:00:00', 0, '', 'ムーランドと暮らしていた猫', 24, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(146, 0, '三毛子', '0000-00-00', 3, '0000-00-00 00:00:00', 0, '', '「吾輩は猫である」に登場する美人猫。主人公猫のことを先生と呼ぶ。', 20, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:05'),
(147, 123, 'テグー', '2020-02-02', 17, '2012-12-12 12:12:12', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914135401_2020-09-14_015401.jpg', '瀬川ゆうき先生の漫画「森のテグー」の主人公猫。シニカルな純粋少年。友人にニヒルな人間の女の子、引きこもりがちな親を持つ精霊の子、薬物依存者（笹）の兄がいるパンダなどがいる。', 12, 0, 'kani', '126.219.137.211', NULL, '2020-09-15 02:34:13'),
(148, 123, 'セロ弾きのゴーシュに出てくる猫', '2020-02-02', 22, '2012-12-12 12:12:12', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914120854_551205.jpg', '人語をしゃべる猫。物腰が柔らかそうに見えて何かをたくらんでいそうな胡散臭い猫。ゴーシュの畑からとってきた青いトマトを、ゴーシュへの手土産にする。', 8, 0, 'kani', '126.219.137.211', NULL, '2020-09-15 02:34:22'),
(149, 123, '', '2020-02-02', 1, '2012-12-12 12:12:12', 0, '', '', 1, 1, 'kani', '::1', NULL, '2020-08-15 15:24:14'),
(150, 123, 'ロード・ゴート', '2020-09-14', 13, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914120138_2020-09-14_120138.jpg', '「猫の帰還」の主人公猫。第２次大戦の最中、軍人の主人を追って旅をする。', 7, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:22'),
(151, 123, 'うなぎ', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '', 2, 1, 'kani', '::1', NULL, '2020-08-15 15:24:24'),
(152, 123, 'かま猫', '0000-00-00', 16, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914133358_IMG_20170918_115629-452x339.jpg', '「猫の事務所」の主人公猫。持病のため、かまの中で寝ているため灰をかぶったような色をしている。勤勉な猫。かまで寝るのは持病で体が冷えるため。', 9, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:18'),
(156, 123, 'カンパネルラ', '0000-00-00', 10, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914134100_2020-09-14_014100.png', '「銀河鉄道の夜」に登場する猫。博士の息子であり優等生。ジョバンニと共に銀河鉄道で星々を巡る。', 11, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:18'),
(157, 123, '猫村猫', '0000-00-00', 14, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914140143_2020-09-14_020143.jpg', '「今日の猫村さん」の主人公猫。家政婦事務所に所属する家政婦猫。\nいろいろ問題が多い家庭に派遣されている。\n鼻歌を歌いながら家事をする。野菜を細かく刻んでいれたオムライスである「ネコムライス」が得意料理。\n現在は雑誌編集のお手伝いをしている模様。（カーサの猫村さん）', 13, 0, '', '126.219.137.211', '2020-06-17 13:39:01', '2020-09-15 02:34:13'),
(158, 123, 'グーグー', '0000-00-00', 18, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914142524_COCP-35115.jpg', '「グーグーだって猫である」に登場する猫。日記漫画の実在猫。グーグーと鳴く。\n', 15, 0, '', '126.219.137.211', '2020-06-17 13:39:01', '2020-09-15 02:34:13'),
(162, 123, '車屋の黒', '0000-00-00', 13, '0000-00-00 00:00:00', 0, '', '「吾輩は猫である」に登場する猫。脂ぎった大きな猫。よく自慢話をする。', 19, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:09'),
(164, 0, 'ツブ', '0000-00-00', 14, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914152146_4524450000039.gif', '吉田戦車先生の漫画「おかゆネコ」に登場する猫。\nおかゆを中心に健康に気を使った料理を主人のために作る。\n知識は豊富でありかなり博識。（まわりの人間が変人ばかりというのはあるが...）', 17, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:09'),
(165, 0, '赤猫', '0000-00-00', 19, '0000-00-00 00:00:00', 0, '', '開発者の飼猫を追い回していた茶トラの野良猫。ゴミあさりが得意でボス格であったが2，3年程度で姿を消した。', 21, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:05'),
(166, 0, 'リビアヤマネコ', '0000-00-00', 20, '0000-00-00 00:00:00', 0, '', '家猫の先祖と言われている。キジトラにそっくり。', 23, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(167, 0, 'ジバニャン', '0000-00-00', 21, '0000-00-00 00:00:00', 0, '', '一時期はポケモンに肩を並べるほどの人気があった。', 25, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(168, 0, 'ガラルニャース', '0000-00-00', 1, '0000-00-00 00:00:00', 0, '', '鋼タイプに属するようになった。', 28, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(169, 0, 'エサちょーだい猫', '0000-00-00', 1, '0000-00-00 00:00:00', 0, '', 'あまりのもしつこさにノイローゼ気味になる。', 34, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(170, 0, 'カギしっぽ', '0000-00-00', 0, '0000-00-00 00:00:00', 0, '', '短い曲がったしっぽを持つ猫', 40, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:26'),
(171, 0, 'ネズミ捕り', '0000-00-00', 14, '0000-00-00 00:00:00', 0, '', 'スピード違反のネズミを捕まえる', 44, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(172, 1234, 'ネズミキラー', '0000-00-00', 5, '0000-00-00 00:00:00', 0, '', 'ねずみ退治に重宝される猫。\n沖縄ではボケてくるとビーチャー（臭い小型ネズミ）しか捕らなくなるといわれる。', 48, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(173, 123, '小鉄', '2020-02-02', 14, '2012-12-12 12:12:12', 0, '', '「じゃりン子チエ」に登場する猫。侠客。', 36, 0, 'kani', '126.219.137.211', '2020-06-17 13:39:01', '2020-09-14 08:17:32'),
(174, 0, ' 火車', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', 'リヤカーを引く猫。極悪人を地獄へ輸送する業務がある。', 38, 0, '', '126.219.137.211', NULL, '2020-09-14 09:38:13'),
(175, 0, 'ハローキティ', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '最近は仕事を選ばないため好印象。', 40, 0, '', '126.219.137.211', NULL, '2020-09-14 09:11:35'),
(176, 0, 'ティガー', '0000-00-00', 8, '0000-00-00 00:00:00', 0, '', '黄色い熊の友人', 44, 0, '', '126.219.137.211', NULL, '2020-09-14 08:26:00'),
(177, 0, '青猫', '0000-00-00', 1, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m08/orig/20200806152201_IMG_0462.JPG', '', -1, 1, 'kani', '::1', NULL, '2020-08-15 15:27:12'),
(179, 0, 'イッパイアッテナ', '2020-08-13', 5, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m09/orig/20200914110720_2020-09-14_110720.jpg', '「ルドルフとイッパイアッテナ」に登場する大猫。\n犬にも喧嘩に勝つ偉丈夫猫。強さだけでなく字を書いたり本を読んだりできる知性にも優れる。\n', 2, 0, 'kani', '126.219.137.211', '0000-00-00 00:00:00', '2020-09-15 03:02:48'),
(180, 0, 'バロン', '0000-00-00', 19, '0000-00-00 00:00:00', 0, '', '猫の事務所の所長', 29, 0, '', '126.219.137.211', NULL, '2020-09-15 02:34:01'),
(181, 0, 'おおやまねこ', '0000-00-00', 3, '0000-00-00 00:00:00', 0, '', '', -3, 1, 'kani', '::1', NULL, '2020-08-15 15:27:12'),
(182, 0, 'デカミー', '0000-00-00', 10, '0000-00-00 00:00:00', 0, 'rsc/img/img_fn/y2020/m08/orig/20200804141915_ga-ra.jpg', '全身猫疥癬にかかった猫。小さな女の子に「おいで、おいで」と言われてすり寄っていくが、その女の子に避けられてしまった。', 37, 0, '', '126.219.137.211', '2020-08-03 12:28:56', '2020-09-15 02:39:19'),
(183, 100, 'ブッチー', '2020-09-14', 14, '0000-00-00 00:00:00', 1, 'rsc/img/img_fn/y2020/m09/orig/20200914113054_2020-09-14_113054.jpg', '「ルドルフとイッパイアッテナ」に登場する猫。\nイッパイアッテナやルドルフらと行動をよく共にしている飼い猫。\n「ルドルフとノラねこブッチー」という続編が存在する。野良猫になったのかブッチー...。', 4, 0, '', '126.219.137.211', '2020-08-13 16:28:45', '2020-09-15 02:34:26'),
(184, 101, 'ピクルス', '0000-00-00', 24, '0000-00-00 00:00:00', 0, '', 'アニメ「ケチャップ」の好青年猫。料理人兼ウェイター。', 52, 0, 'kani', '126.219.137.211', '2020-08-25 10:42:55', '2020-09-14 09:42:43'),
(185, 102, 'シェフ・グーラシュ', '0000-00-00', 23, '0000-00-00 00:00:00', 0, '', '猫はグルメのNo.1', 53, 0, 'kani', '126.219.137.211', '2020-08-25 10:42:55', '2020-09-14 09:42:53'),
(186, 101, 'スカンピ', '0000-00-00', 21, '0000-00-00 00:00:00', 0, '', 'アニメ「ケチャップ」に登場する猫。妬みと嫉妬の猫。', 54, 0, 'kani', '126.219.137.211', '2020-08-25 10:43:57', '2020-09-14 09:43:05'),
(187, 102, 'マダム・コルジェット', '0000-00-00', 7, '0000-00-00 00:00:00', 0, '', 'アニメ「ケチャップ」に登場する猫。カフェのオーナー。', 55, 0, 'kani', '126.219.137.211', '2020-08-25 10:43:57', '2020-09-14 09:43:18'),
(188, 101, 'チシャ猫', '0000-00-00', NULL, '0000-00-00 00:00:00', 0, '', '名前とイメージがひもづかない、非常に不細工な猫。', 56, 0, 'kani', '126.219.137.211', '2020-08-25 10:44:35', '2021-02-19 06:35:31'),
(189, 102, '黒猫のタンゴ', '0000-00-00', 13, '0000-00-00 00:00:00', 0, '', '少年の心を翻弄する浮気性の猫', 57, 0, 'kani', '126.219.137.211', '2020-08-25 10:44:35', '2020-09-15 02:51:22'),
(190, 101, 'ニャンコ先生', '0000-00-00', 3, '0000-00-00 00:00:00', 0, '', '田舎に住む若者の先生と、フレンドノートを持ち歩く学生の先生がいる。', 58, 0, 'kani', '126.219.137.211', '2020-08-25 10:44:57', '2021-02-19 06:34:37'),
(191, 102, '八頭身アスキーアート', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '　　　　　　　　　　 　 / ） ／￣￣￣￣￣￣￣\n　　 　 　 　 　 　 　 / /　|　全身から湧き上がるこの喜び！\n　　　　　　　　　　 / /　　＼　　　　　　　　　 ／￣￣￣\n　　　　　　　　 　 / /　　　　￣|／￣￣￣￣|　　１さんにとどけ！\n　　　 　 　 　 　 / /＿Λ　　　　 , -つ　　 　 ＼\n　　　　　　　 　/ / ´Д｀）　 .／__ノ　　　　　　　￣∨￣￣￣￣\n　　　　　　　　/　　　　＼　／ /　　 ⊂_ヽ､\n.　　　　　　　 |　　　　へ／ ／ 　 　 　 　 ＼＼　Λ＿Λ\n　　　　　　　 |　　　　ﾚ’　 /､二つ　　　　 　 ＼ （　´Д｀）\n　　　　　　　 |　　　　　／.　　　　　 　 　 　 　 >　　⌒ヽ\n　　　　　　　/　　　／　　　　　　　　　　　　 /　　　 へ ＼\n　　　　　　 /　 ／　　　　　　　　　　　　 　 /　 　 /　　 ＼＼\n　　　　　　/　 /　　　　　　　　　　　　　　 ﾚ　　ノ　　　　　ヽ_つ\n　　　　 ／　ノ　　　　　　　　　　　　　　　/　 /\n　　　_/　／　　　　　　　　　　　　　　　 /　 /|\n　 ノ　／　　　　　　　　　　　　　　　　　（　（　､\n⊂ -‘　　　　　　　　　　　　　　　　　　　 |　 |､　＼\n　　　　　　　　　　　　　　　 　 　 　 　 　 |　/　＼　⌒l\n　　　　　　　　　　　　　　　　　　　　　　　|　|　　　）　/\n　　　　　　　　　　　　　　　　　　　　　　ノ　 ）　　 し’\n　　　　　　　　　　　　　　　　　　　　　(＿／', 59, 0, 'kani', '126.219.137.211', '2020-08-25 10:44:57', '2020-09-14 09:44:36'),
(192, 500, 'ギコ猫アスキーアート', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '　　　 ∧∧　　／￣￣￣￣￣\n　　　(,,ﾟДﾟ)＜　ゴルァ！\n　　 ⊂　　⊃　＼＿＿＿＿＿\n　　～|　　|\n　,,　　し`J', 60, 0, 'kani', '126.219.137.211', '2020-08-25 10:47:59', '2020-09-14 10:13:11'),
(193, 600, '長い猫', '0000-00-00', 17, '0000-00-00 00:00:00', 0, '', '世界中で有名な白い長猫。ニャースキョダイマックスもこの猫がモデルと思われる。', 61, 0, 'kani', '126.219.137.211', '2020-08-25 10:47:59', '2020-09-15 02:52:44'),
(194, 123, 'テスト22', '2018-12-02', NULL, '0000-00-00 00:00:00', 1, '', 'TEST<input class=', 1, 0, NULL, '126.219.137.211', '2021-04-25 01:38:36', '2021-04-24 16:38:36'),
(195, 0, 'ああああ', '0000-00-00', 1, '2021-01-01 12:12:12', 0, '', '', 0, 0, '雨来虫', '::1', '2021-11-23 07:45:43', '2021-11-23 07:45:43'),
(196, 0, 'ebin toorer', '0000-00-00', 1, '2021-01-01 12:12:12', 0, 'storage/neko/y2021/196/222619cb0ea10c6f/orig/map3.png', '', -1, 0, '雨来虫', '::1', '2021-11-23 07:46:17', '2021-11-23 00:40:42'),
(197, 0, 'テスト99', '0000-00-00', 1, '2021-01-01 12:12:12', 0, '', '', -2, 0, 'unagi@example.com', '::1', '2021-11-25 05:23:18', '2021-11-25 05:23:18'),
(198, 0, 'テスト100', '0000-00-00', 1, '2021-01-01 12:12:12', 0, '', '', 62, 0, 'unagi@example.com', '::1', '2021-11-25 05:26:09', '2021-11-25 05:26:09');

-- --------------------------------------------------------

--
-- テーブルの構造 `neko_groups`
--

CREATE TABLE `neko_groups` (
  `id` int(11) NOT NULL,
  `neko_group_name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_no` int(11) DEFAULT 0 COMMENT '順番',
  `delete_flg` tinyint(1) DEFAULT 0 COMMENT '無効フラグ',
  `update_user` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新者',
  `ip_addr` varchar(40) CHARACTER SET utf8 DEFAULT NULL COMMENT 'IPアドレス',
  `created` datetime DEFAULT NULL COMMENT '生成日時',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT '更新日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `neko_groups`
--

INSERT INTO `neko_groups` (`id`, `neko_group_name`, `sort_no`, `delete_flg`, `update_user`, `ip_addr`, `created`, `modified`) VALUES
(1, 'ペルシャ', 0, 0, NULL, NULL, NULL, '2018-04-22 06:57:53'),
(2, 'ボンベイ', 0, 0, NULL, NULL, NULL, '2018-04-22 06:57:53'),
(3, '三毛', 0, 0, NULL, NULL, NULL, '2018-04-22 06:58:15'),
(4, 'シャム', 0, 0, NULL, NULL, NULL, '2018-04-22 06:58:15'),
(5, 'キジトラ', 0, 0, NULL, NULL, NULL, '2018-04-22 06:58:39'),
(6, 'スフィンクス', 0, 0, NULL, NULL, NULL, '2018-04-22 06:58:39'),
(7, 'メインクーン', 0, 0, NULL, NULL, NULL, '2018-04-22 06:59:21'),
(8, 'ベンガル', 0, 0, NULL, NULL, NULL, '2018-04-22 06:59:21'),
(9, 'アメリカンカール', 0, 0, NULL, NULL, NULL, '2020-09-13 02:37:44'),
(10, '不明', 0, 0, NULL, NULL, NULL, '2020-09-13 02:37:44'),
(11, '長毛種の雑種', 0, 0, NULL, NULL, NULL, '2020-09-14 01:44:57'),
(12, 'ペルシャ猫のような雑種', 0, 0, NULL, NULL, NULL, '2020-09-14 01:44:57'),
(13, 'クロネコ', 0, 0, NULL, NULL, NULL, '2020-09-14 01:45:55'),
(14, 'ぶち猫', 0, 0, NULL, NULL, NULL, '2020-09-14 01:53:05'),
(15, 'サバトラ', 0, 0, NULL, NULL, NULL, '2020-09-14 01:53:05'),
(16, '灰猫', 0, 0, NULL, NULL, NULL, '2020-09-14 01:53:38'),
(17, 'シロネコ', 0, 0, NULL, NULL, NULL, '2020-09-14 04:45:01'),
(18, 'アメリカンショートヘア', 0, 0, NULL, NULL, NULL, '2020-09-14 05:16:23'),
(19, 'チャトラ', 0, 0, NULL, NULL, NULL, '2020-09-14 09:29:15'),
(20, '野生', 0, 0, NULL, NULL, NULL, '2020-09-14 09:29:53'),
(21, '雑種', 0, 0, NULL, NULL, NULL, '2020-09-14 09:30:23'),
(22, '茶白', 0, 0, NULL, NULL, NULL, '2020-09-14 09:32:24'),
(23, '会社員', 0, 0, NULL, NULL, NULL, '2020-09-14 09:39:47'),
(24, 'アルバイト', 0, 0, NULL, NULL, NULL, '2020-09-14 09:41:01');

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jAnuCRgbENYbx9gCMd4db7zMagmOKWp1rUxsBTpm', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YToxNjp7czo2OiJfdG9rZW4iO3M6NDA6IjNXSnRpbkNXWHZSQktaOWp0UWNUTmlZbG14UUJWSVVwRXVDOVFpWngiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjU1OiJodHRwOi8vbG9jYWxob3N0L2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTYzODM2Mzc3MTt9czoyOToiZGFzaGJvYXJkX3Nlc19wYWdlX3ZlcnNpb25fY2IiO3M6NToiMS4wLjAiO3M6MjY6ImRhc2hib2FyZF9zb3J0ZXJfZmllbGREYXRhIjthOjI6e3M6MzoiZGVmIjthOjA6e31zOjY6ImFjdGl2ZSI7YTowOnt9fXM6MjI6ImRhc2hib2FyZF90YWJsZV9maWVsZHMiO2E6MDp7fXM6MTM6ImRhc2hib2FyZF9ranMiO2E6MDp7fXM6Mjg6InVzZXJfbW5nX3Nlc19wYWdlX3ZlcnNpb25fY2IiO3M6NToiMS4wLjAiO3M6MjU6InVzZXJfbW5nX3NvcnRlcl9maWVsZERhdGEiO2E6Mjp7czozOiJkZWYiO2E6MTY6e3M6MjoiaWQiO2E6NDp7czo0OiJuYW1lIjtzOjI6IklEIjtzOjk6InJvd19vcmRlciI7czoxMDoiVXNlck1uZy5pZCI7czo4OiJjbG1fc2hvdyI7aToxO3M6MTE6ImNsbV9zb3J0X25vIjtpOjA7fXM6NToiZW1haWwiO2E6NDp7czo0OiJuYW1lIjtzOjEwOiJF44Oh44O844OrIjtzOjk6InJvd19vcmRlciI7czoxMzoiVXNlck1uZy5lbWFpbCI7czo4OiJjbG1fc2hvdyI7aToxO3M6MTE6ImNsbV9zb3J0X25vIjtpOjE7fXM6NDoibmFtZSI7YTo0OntzOjQ6Im5hbWUiO3M6MTU6IuODpuODvOOCtuODvOWQjSI7czo5OiJyb3dfb3JkZXIiO3M6MTI6IlVzZXJNbmcubmFtZSI7czo4OiJjbG1fc2hvdyI7aToxO3M6MTE6ImNsbV9zb3J0X25vIjtpOjI7fXM6ODoibmlja25hbWUiO2E6NDp7czo0OiJuYW1lIjtzOjE4OiLjg4vjg4Pjgq/jg43jg7zjg6AiO3M6OToicm93X29yZGVyIjtzOjE2OiJVc2VyTW5nLm5pY2tuYW1lIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6Mzt9czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO2E6NDp7czo0OiJuYW1lIjtzOjE3OiJlbWFpbF92ZXJpZmllZF9hdCI7czo5OiJyb3dfb3JkZXIiO3M6MjU6IlVzZXJNbmcuZW1haWxfdmVyaWZpZWRfYXQiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aTo0O31zOjg6InBhc3N3b3JkIjthOjQ6e3M6NDoibmFtZSI7czo4OiJwYXNzd29yZCI7czo5OiJyb3dfb3JkZXIiO3M6MTY6IlVzZXJNbmcucGFzc3dvcmQiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aTo1O31zOjE0OiJyZW1lbWJlcl90b2tlbiI7YTo0OntzOjQ6Im5hbWUiO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjtzOjk6InJvd19vcmRlciI7czoyMjoiVXNlck1uZy5yZW1lbWJlcl90b2tlbiI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjY7fXM6NDoicm9sZSI7YTo0OntzOjQ6Im5hbWUiO3M6Njoi5qip6ZmQIjtzOjk6InJvd19vcmRlciI7czoxMjoiVXNlck1uZy5yb2xlIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6Nzt9czo5OiJ0ZW1wX2hhc2giO2E6NDp7czo0OiJuYW1lIjtzOjMwOiLku67nmbvpjLLjg4/jg4Pjgrfjg6XjgrPjg7zjg4kiO3M6OToicm93X29yZGVyIjtzOjE3OiJVc2VyTW5nLnRlbXBfaGFzaCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjg7fXM6MTM6InRlbXBfZGF0ZXRpbWUiO2E6NDp7czo0OiJuYW1lIjtzOjIxOiLku67nmbvpjLLliLbpmZDmmYLliLsiO3M6OToicm93X29yZGVyIjtzOjIxOiJVc2VyTW5nLnRlbXBfZGF0ZXRpbWUiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aTo5O31zOjc6InNvcnRfbm8iO2E6NDp7czo0OiJuYW1lIjtzOjY6IumghueVqiI7czo5OiJyb3dfb3JkZXIiO3M6MTU6IlVzZXJNbmcuc29ydF9ubyI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjEwO31zOjEwOiJkZWxldGVfZmxnIjthOjQ6e3M6NDoibmFtZSI7czoxNToi5YmK6Zmk44OV44Op44KwIjtzOjk6InJvd19vcmRlciI7czoxODoiVXNlck1uZy5kZWxldGVfZmxnIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTE7fXM6MTE6InVwZGF0ZV91c2VyIjthOjQ6e3M6NDoibmFtZSI7czoxODoi5pu05paw44Om44O844K244O8IjtzOjk6InJvd19vcmRlciI7czoxOToiVXNlck1uZy51cGRhdGVfdXNlciI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjEyO31zOjc6ImlwX2FkZHIiO2E6NDp7czo0OiJuYW1lIjtzOjIwOiLmm7TmlrBJUOOCouODieODrOOCuSI7czo5OiJyb3dfb3JkZXIiO3M6MTU6IlVzZXJNbmcuaXBfYWRkciI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjEzO31zOjc6ImNyZWF0ZWQiO2E6NDp7czo0OiJuYW1lIjtzOjEyOiLnlJ/miJDml6XmmYIiO3M6OToicm93X29yZGVyIjtzOjE1OiJVc2VyTW5nLmNyZWF0ZWQiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxNDt9czo4OiJtb2RpZmllZCI7YTo0OntzOjQ6Im5hbWUiO3M6MTI6IuabtOaWsOaXpeaZgiI7czo5OiJyb3dfb3JkZXIiO3M6MTY6IlVzZXJNbmcubW9kaWZpZWQiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxNTt9fXM6NjoiYWN0aXZlIjthOjE2OntpOjA7YTo1OntzOjQ6Im5hbWUiO3M6MjoiSUQiO3M6OToicm93X29yZGVyIjtzOjEwOiJVc2VyTW5nLmlkIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6MDtzOjI6ImlkIjtzOjI6ImlkIjt9aToxO2E6NTp7czo0OiJuYW1lIjtzOjEwOiJF44Oh44O844OrIjtzOjk6InJvd19vcmRlciI7czoxMzoiVXNlck1uZy5lbWFpbCI7czo4OiJjbG1fc2hvdyI7aToxO3M6MTE6ImNsbV9zb3J0X25vIjtpOjE7czoyOiJpZCI7czo1OiJlbWFpbCI7fWk6MjthOjU6e3M6NDoibmFtZSI7czoxNToi44Om44O844K244O85ZCNIjtzOjk6InJvd19vcmRlciI7czoxMjoiVXNlck1uZy5uYW1lIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6MjtzOjI6ImlkIjtzOjQ6Im5hbWUiO31pOjM7YTo1OntzOjQ6Im5hbWUiO3M6MTg6IuODi+ODg+OCr+ODjeODvOODoCI7czo5OiJyb3dfb3JkZXIiO3M6MTY6IlVzZXJNbmcubmlja25hbWUiO3M6ODoiY2xtX3Nob3ciO2k6MTtzOjExOiJjbG1fc29ydF9ubyI7aTozO3M6MjoiaWQiO3M6ODoibmlja25hbWUiO31pOjQ7YTo1OntzOjQ6Im5hbWUiO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtzOjk6InJvd19vcmRlciI7czoyNToiVXNlck1uZy5lbWFpbF92ZXJpZmllZF9hdCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjQ7czoyOiJpZCI7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO31pOjU7YTo1OntzOjQ6Im5hbWUiO3M6ODoicGFzc3dvcmQiO3M6OToicm93X29yZGVyIjtzOjE2OiJVc2VyTW5nLnBhc3N3b3JkIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6NTtzOjI6ImlkIjtzOjg6InBhc3N3b3JkIjt9aTo2O2E6NTp7czo0OiJuYW1lIjtzOjE0OiJyZW1lbWJlcl90b2tlbiI7czo5OiJyb3dfb3JkZXIiO3M6MjI6IlVzZXJNbmcucmVtZW1iZXJfdG9rZW4iO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aTo2O3M6MjoiaWQiO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjt9aTo3O2E6NTp7czo0OiJuYW1lIjtzOjY6IuaoqemZkCI7czo5OiJyb3dfb3JkZXIiO3M6MTI6IlVzZXJNbmcucm9sZSI7czo4OiJjbG1fc2hvdyI7aToxO3M6MTE6ImNsbV9zb3J0X25vIjtpOjc7czoyOiJpZCI7czo0OiJyb2xlIjt9aTo4O2E6NTp7czo0OiJuYW1lIjtzOjMwOiLku67nmbvpjLLjg4/jg4Pjgrfjg6XjgrPjg7zjg4kiO3M6OToicm93X29yZGVyIjtzOjE3OiJVc2VyTW5nLnRlbXBfaGFzaCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjg7czoyOiJpZCI7czo5OiJ0ZW1wX2hhc2giO31pOjk7YTo1OntzOjQ6Im5hbWUiO3M6MjE6IuS7rueZu+mMsuWItumZkOaZguWIuyI7czo5OiJyb3dfb3JkZXIiO3M6MjE6IlVzZXJNbmcudGVtcF9kYXRldGltZSI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjk7czoyOiJpZCI7czoxMzoidGVtcF9kYXRldGltZSI7fWk6MTA7YTo1OntzOjQ6Im5hbWUiO3M6Njoi6aCG55WqIjtzOjk6InJvd19vcmRlciI7czoxNToiVXNlck1uZy5zb3J0X25vIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTA7czoyOiJpZCI7czo3OiJzb3J0X25vIjt9aToxMTthOjU6e3M6NDoibmFtZSI7czoxNToi5YmK6Zmk44OV44Op44KwIjtzOjk6InJvd19vcmRlciI7czoxODoiVXNlck1uZy5kZWxldGVfZmxnIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTE7czoyOiJpZCI7czoxMDoiZGVsZXRlX2ZsZyI7fWk6MTI7YTo1OntzOjQ6Im5hbWUiO3M6MTg6IuabtOaWsOODpuODvOOCtuODvCI7czo5OiJyb3dfb3JkZXIiO3M6MTk6IlVzZXJNbmcudXBkYXRlX3VzZXIiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxMjtzOjI6ImlkIjtzOjExOiJ1cGRhdGVfdXNlciI7fWk6MTM7YTo1OntzOjQ6Im5hbWUiO3M6MjA6IuabtOaWsElQ44Ki44OJ44Os44K5IjtzOjk6InJvd19vcmRlciI7czoxNToiVXNlck1uZy5pcF9hZGRyIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTM7czoyOiJpZCI7czo3OiJpcF9hZGRyIjt9aToxNDthOjU6e3M6NDoibmFtZSI7czoxMjoi55Sf5oiQ5pel5pmCIjtzOjk6InJvd19vcmRlciI7czoxNToiVXNlck1uZy5jcmVhdGVkIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTQ7czoyOiJpZCI7czo3OiJjcmVhdGVkIjt9aToxNTthOjU6e3M6NDoibmFtZSI7czoxMjoi5pu05paw5pel5pmCIjtzOjk6InJvd19vcmRlciI7czoxNjoiVXNlck1uZy5tb2RpZmllZCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjE1O3M6MjoiaWQiO3M6ODoibW9kaWZpZWQiO319fXM6MjE6InVzZXJfbW5nX3RhYmxlX2ZpZWxkcyI7YToxNjp7czoxMDoiVXNlck1uZy5pZCI7czoyOiJJRCI7czoxMzoiVXNlck1uZy5lbWFpbCI7czoxMDoiReODoeODvOODqyI7czoxMjoiVXNlck1uZy5uYW1lIjtzOjE1OiLjg6bjg7zjgrbjg7zlkI0iO3M6MTY6IlVzZXJNbmcubmlja25hbWUiO3M6MTg6IuODi+ODg+OCr+ODjeODvOODoCI7czoyNToiVXNlck1uZy5lbWFpbF92ZXJpZmllZF9hdCI7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO3M6MTY6IlVzZXJNbmcucGFzc3dvcmQiO3M6ODoicGFzc3dvcmQiO3M6MjI6IlVzZXJNbmcucmVtZW1iZXJfdG9rZW4iO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjtzOjEyOiJVc2VyTW5nLnJvbGUiO3M6Njoi5qip6ZmQIjtzOjE3OiJVc2VyTW5nLnRlbXBfaGFzaCI7czozMDoi5Luu55m76Yyy44OP44OD44K344Ol44Kz44O844OJIjtzOjIxOiJVc2VyTW5nLnRlbXBfZGF0ZXRpbWUiO3M6MjE6IuS7rueZu+mMsuWItumZkOaZguWIuyI7czoxNToiVXNlck1uZy5zb3J0X25vIjtzOjY6IumghueVqiI7czoxODoiVXNlck1uZy5kZWxldGVfZmxnIjtzOjE1OiLliYrpmaTjg5Xjg6njgrAiO3M6MTk6IlVzZXJNbmcudXBkYXRlX3VzZXIiO3M6MTg6IuabtOaWsOODpuODvOOCtuODvCI7czoxNToiVXNlck1uZy5pcF9hZGRyIjtzOjIwOiLmm7TmlrBJUOOCouODieODrOOCuSI7czoxNToiVXNlck1uZy5jcmVhdGVkIjtzOjEyOiLnlJ/miJDml6XmmYIiO3M6MTY6IlVzZXJNbmcubW9kaWZpZWQiO3M6MTI6IuabtOaWsOaXpeaZgiI7fXM6MTI6InVzZXJfbW5nX2tqcyI7YToxODp7czo3OiJral9tYWluIjtzOjA6IiI7czo1OiJral9pZCI7czowOiIiO3M6Nzoia2pfbmFtZSI7czowOiIiO3M6ODoia2pfZW1haWwiO3M6MDoiIjtzOjIwOiJral9lbWFpbF92ZXJpZmllZF9hdCI7czowOiIiO3M6MTE6ImtqX25pY2tuYW1lIjtzOjA6IiI7czoxMToia2pfcGFzc3dvcmQiO3M6MDoiIjtzOjE3OiJral9yZW1lbWJlcl90b2tlbiI7czowOiIiO3M6Nzoia2pfcm9sZSI7czowOiIiO3M6MTI6ImtqX3RlbXBfaGFzaCI7czowOiIiO3M6MTY6ImtqX3RlbXBfZGF0ZXRpbWUiO3M6MDoiIjtzOjEwOiJral9zb3J0X25vIjtzOjA6IiI7czoxMzoia2pfZGVsZXRlX2ZsZyI7czoxOiIwIjtzOjE0OiJral91cGRhdGVfdXNlciI7czowOiIiO3M6MTA6ImtqX2lwX2FkZHIiO3M6MDoiIjtzOjEwOiJral9jcmVhdGVkIjtzOjA6IiI7czoxMToia2pfbW9kaWZpZWQiO3M6MDoiIjtzOjk6InJvd19saW1pdCI7czoyOiI1MCI7fXM6MTc6InVzZXJfbW5nX2luaV9jbmRzIjthOjI6e3M6Mzoia2pzIjthOjE5OntzOjc6ImtqX21haW4iO3M6MDoiIjtzOjU6ImtqX2lkIjtzOjA6IiI7czo3OiJral9uYW1lIjtzOjA6IiI7czo4OiJral9lbWFpbCI7czowOiIiO3M6MjA6ImtqX2VtYWlsX3ZlcmlmaWVkX2F0IjtzOjA6IiI7czoxMToia2pfbmlja25hbWUiO3M6MDoiIjtzOjExOiJral9wYXNzd29yZCI7czowOiIiO3M6MTc6ImtqX3JlbWVtYmVyX3Rva2VuIjtzOjA6IiI7czo3OiJral9yb2xlIjtzOjA6IiI7czoxMjoia2pfdGVtcF9oYXNoIjtzOjA6IiI7czoxNjoia2pfdGVtcF9kYXRldGltZSI7czowOiIiO3M6MTA6ImtqX3NvcnRfbm8iO3M6MDoiIjtzOjEzOiJral9kZWxldGVfZmxnIjtzOjE6IjAiO3M6MTQ6ImtqX3VwZGF0ZV91c2VyIjtzOjA6IiI7czoxMDoia2pfaXBfYWRkciI7czowOiIiO3M6MTA6ImtqX2NyZWF0ZWQiO3M6MDoiIjtzOjExOiJral9tb2RpZmllZCI7czowOiIiO3M6OToicm93X2xpbWl0IjtzOjI6IjUwIjtzOjk6InBlcm1Sb2xlcyI7YTo1OntpOjA7czo2OiJtYXN0ZXIiO2k6MTtzOjk6ImRldmVsb3BlciI7aToyO3M6NToiYWRtaW4iO2k6MztzOjY6ImNsaWVudCI7aTo0O3M6ODoib3BhcmF0b3IiO319czo1OiJwYWdlcyI7YToxNDp7czo3OiJwYWdlX25vIjtpOjA7czo5OiJyb3dfbGltaXQiO3M6MjoiNTAiO3M6MTA6InNvcnRfZmllbGQiO3M6Nzoic29ydF9ubyI7czo5OiJzb3J0X2Rlc2MiO2k6MDtzOjE1OiJwYWdlX2luZGV4X2h0bWwiO3M6Njg2OiI8ZGl2IGlkPSdwYWdlX2luZGV4Jz4mbHQmbHQmbmJzcDsKJmx0Jm5ic3A7CjEmbmJzcDsKPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MSZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz4yPC9hPiZuYnNwOwo8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0yJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPjM8L2E+Jm5ic3A7CjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+Jmd0PC9hPiZuYnNwOwo8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0yJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPiZndCZndDwvYT4mbmJzcDsKPC9kaXY+CiI7czo3OiJkZWZfdXJsIjtzOjEzMjoiL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MSZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjE0OiJwYWdlX3ByZXZfbGluayI7czowOiIiO3M6MTQ6InBhZ2VfbmV4dF9saW5rIjtzOjEzMjoiL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MSZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjEzOiJwYWdlX3RvcF9saW5rIjtzOjA6IiI7czoxNDoicGFnZV9sYXN0X2xpbmsiO3M6MTMyOiIvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0yJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAiO3M6OToicXVlcnlfc3RyIjtzOjgyOiJwYWdlX25vPTAmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjU6InNvcnRzIjthOjE3OntzOjEwOiJVc2VyTW5nLmlkIjtzOjEzOToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuaWQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPklEPC9hPiI7czoxMzoiVXNlck1uZy5lbWFpbCI7czoxNTA6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmVtYWlsJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5F44Oh44O844OrPC9hPiI7czoxMjoiVXNlck1uZy5uYW1lIjtzOjE1NDoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcubmFtZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+44Om44O844K244O85ZCNPC9hPiI7czoxNjoiVXNlck1uZy5uaWNrbmFtZSI7czoxNjE6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLm5pY2tuYW1lJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7jg4vjg4Pjgq/jg43jg7zjg6A8L2E+IjtzOjI1OiJVc2VyTW5nLmVtYWlsX3ZlcmlmaWVkX2F0IjtzOjE2OToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuZW1haWxfdmVyaWZpZWRfYXQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPmVtYWlsX3ZlcmlmaWVkX2F0PC9hPiI7czoxNjoiVXNlck1uZy5wYXNzd29yZCI7czoxNTE6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnBhc3N3b3JkJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5wYXNzd29yZDwvYT4iO3M6MjI6IlVzZXJNbmcucmVtZW1iZXJfdG9rZW4iO3M6MTYzOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5yZW1lbWJlcl90b2tlbiZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+cmVtZW1iZXJfdG9rZW48L2E+IjtzOjEyOiJVc2VyTW5nLnJvbGUiO3M6MTQ1OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5yb2xlJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7mqKnpmZA8L2E+IjtzOjE3OiJVc2VyTW5nLnRlbXBfaGFzaCI7czoxNzQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnRlbXBfaGFzaCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5Luu55m76Yyy44OP44OD44K344Ol44Kz44O844OJPC9hPiI7czoyMToiVXNlck1uZy50ZW1wX2RhdGV0aW1lIjtzOjE2OToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcudGVtcF9kYXRldGltZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5Luu55m76Yyy5Yi26ZmQ5pmC5Yi7PC9hPiI7czoxNToiVXNlck1uZy5zb3J0X25vIjtzOjE0ODoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuc29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+6aCG55WqPC9hPiI7czoxODoiVXNlck1uZy5kZWxldGVfZmxnIjtzOjE2MDoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuZGVsZXRlX2ZsZyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5YmK6Zmk44OV44Op44KwPC9hPiI7czoxOToiVXNlck1uZy51cGRhdGVfdXNlciI7czoxNjQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnVwZGF0ZV91c2VyJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7mm7TmlrDjg6bjg7zjgrbjg7w8L2E+IjtzOjE1OiJVc2VyTW5nLmlwX2FkZHIiO3M6MTYyOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5pcF9hZGRyJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7mm7TmlrBJUOOCouODieODrOOCuTwvYT4iO3M6MTU6IlVzZXJNbmcuY3JlYXRlZCI7czoxNTQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmNyZWF0ZWQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPueUn+aIkOaXpeaZgjwvYT4iO3M6MTY6IlVzZXJNbmcubW9kaWZpZWQiO3M6MTU1OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5tb2RpZmllZCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5pu05paw5pel5pmCPC9hPiI7czo3OiJzb3J0X25vIjtzOjE1MjoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZsaW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTEmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuKWsumghueVqjwvYT4iO31zOjEyOiJhbGxfZGF0YV9jbnQiO2k6MTIwO3M6MTI6ImFsbF9wYWdlX2NudCI7ZDozO319czoxNDoidXNlcl9tbmdfcGFnZXMiO2E6MTQ6e3M6NzoicGFnZV9ubyI7aTowO3M6OToicm93X2xpbWl0IjtzOjI6IjUwIjtzOjEwOiJzb3J0X2ZpZWxkIjtzOjc6InNvcnRfbm8iO3M6OToic29ydF9kZXNjIjtpOjA7czoxNToicGFnZV9pbmRleF9odG1sIjtzOjY4NjoiPGRpdiBpZD0ncGFnZV9pbmRleCc+Jmx0Jmx0Jm5ic3A7CiZsdCZuYnNwOwoxJm5ic3A7CjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+MjwvYT4mbmJzcDsKPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MiZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz4zPC9hPiZuYnNwOwo8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0xJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPiZndDwvYT4mbmJzcDsKPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MiZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz4mZ3QmZ3Q8L2E+Jm5ic3A7CjwvZGl2PgoiO3M6NzoiZGVmX3VybCI7czoxMzI6Ii9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCI7czoxNDoicGFnZV9wcmV2X2xpbmsiO3M6MDoiIjtzOjE0OiJwYWdlX25leHRfbGluayI7czoxMzI6Ii9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCI7czoxMzoicGFnZV90b3BfbGluayI7czowOiIiO3M6MTQ6InBhZ2VfbGFzdF9saW5rIjtzOjEzMjoiL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MiZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjk6InF1ZXJ5X3N0ciI7czo4MjoicGFnZV9ubz0wJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCI7czo1OiJzb3J0cyI7YToxNzp7czoxMDoiVXNlck1uZy5pZCI7czoxMzk6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmlkJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5JRDwvYT4iO3M6MTM6IlVzZXJNbmcuZW1haWwiO3M6MTUwOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5lbWFpbCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+ReODoeODvOODqzwvYT4iO3M6MTI6IlVzZXJNbmcubmFtZSI7czoxNTQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLm5hbWUmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuODpuODvOOCtuODvOWQjTwvYT4iO3M6MTY6IlVzZXJNbmcubmlja25hbWUiO3M6MTYxOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5uaWNrbmFtZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+44OL44OD44Kv44ON44O844OgPC9hPiI7czoyNToiVXNlck1uZy5lbWFpbF92ZXJpZmllZF9hdCI7czoxNjk6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmVtYWlsX3ZlcmlmaWVkX2F0JnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5lbWFpbF92ZXJpZmllZF9hdDwvYT4iO3M6MTY6IlVzZXJNbmcucGFzc3dvcmQiO3M6MTUxOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5wYXNzd29yZCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+cGFzc3dvcmQ8L2E+IjtzOjIyOiJVc2VyTW5nLnJlbWVtYmVyX3Rva2VuIjtzOjE2MzoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcucmVtZW1iZXJfdG9rZW4mc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPnJlbWVtYmVyX3Rva2VuPC9hPiI7czoxMjoiVXNlck1uZy5yb2xlIjtzOjE0NToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcucm9sZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5qip6ZmQPC9hPiI7czoxNzoiVXNlck1uZy50ZW1wX2hhc2giO3M6MTc0OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy50ZW1wX2hhc2gmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuS7rueZu+mMsuODj+ODg+OCt+ODpeOCs+ODvOODiTwvYT4iO3M6MjE6IlVzZXJNbmcudGVtcF9kYXRldGltZSI7czoxNjk6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnRlbXBfZGF0ZXRpbWUmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuS7rueZu+mMsuWItumZkOaZguWIuzwvYT4iO3M6MTU6IlVzZXJNbmcuc29ydF9ubyI7czoxNDg6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPumghueVqjwvYT4iO3M6MTg6IlVzZXJNbmcuZGVsZXRlX2ZsZyI7czoxNjA6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmRlbGV0ZV9mbGcmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuWJiumZpOODleODqeOCsDwvYT4iO3M6MTk6IlVzZXJNbmcudXBkYXRlX3VzZXIiO3M6MTY0OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy51cGRhdGVfdXNlciZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5pu05paw44Om44O844K244O8PC9hPiI7czoxNToiVXNlck1uZy5pcF9hZGRyIjtzOjE2MjoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuaXBfYWRkciZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5pu05pawSVDjgqLjg4njg6zjgrk8L2E+IjtzOjE1OiJVc2VyTW5nLmNyZWF0ZWQiO3M6MTU0OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5jcmVhdGVkJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7nlJ/miJDml6XmmYI8L2E+IjtzOjE2OiJVc2VyTW5nLm1vZGlmaWVkIjtzOjE1NToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcubW9kaWZpZWQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuabtOaWsOaXpeaZgjwvYT4iO3M6Nzoic29ydF9ubyI7czoxNTI6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0xJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7ilrLpoIbnlao8L2E+Ijt9czoxMjoiYWxsX2RhdGFfY250IjtpOjEyMDtzOjEyOiJhbGxfcGFnZV9jbnQiO2Q6Mzt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1638367128),
('uabrZCFw05rHgTrq9aHf8o9G11peIY6fuEYbWYkR', 223, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.55 Safari/537.36 Edg/96.0.1054.41', 'YToxNjp7czo2OiJfdG9rZW4iO3M6NDA6InlaclhpN3cwQXFzY3ZsRElyVFRpV3IxSXozRERuNW04elo3UUhIenoiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjY4OiJodHRwOi8vbG9jYWxob3N0L2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nL2Nzdl9kb3dubG9hZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjA6e31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMjM7czo0OiJhdXRoIjthOjE6e3M6MjE6InBhc3N3b3JkX2NvbmZpcm1lZF9hdCI7aToxNjM4MzYzNjIwO31zOjI5OiJkYXNoYm9hcmRfc2VzX3BhZ2VfdmVyc2lvbl9jYiI7czo1OiIxLjAuMCI7czoyNjoiZGFzaGJvYXJkX3NvcnRlcl9maWVsZERhdGEiO2E6Mjp7czozOiJkZWYiO2E6MDp7fXM6NjoiYWN0aXZlIjthOjA6e319czoyMjoiZGFzaGJvYXJkX3RhYmxlX2ZpZWxkcyI7YTowOnt9czoxMzoiZGFzaGJvYXJkX2tqcyI7YTowOnt9czoyODoidXNlcl9tbmdfc2VzX3BhZ2VfdmVyc2lvbl9jYiI7czo1OiIxLjAuMCI7czoyNToidXNlcl9tbmdfc29ydGVyX2ZpZWxkRGF0YSI7YToyOntzOjM6ImRlZiI7YToxNjp7czoyOiJpZCI7YTo0OntzOjQ6Im5hbWUiO3M6MjoiSUQiO3M6OToicm93X29yZGVyIjtzOjEwOiJVc2VyTW5nLmlkIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6MDt9czo1OiJlbWFpbCI7YTo0OntzOjQ6Im5hbWUiO3M6MTA6IkXjg6Hjg7zjg6siO3M6OToicm93X29yZGVyIjtzOjEzOiJVc2VyTW5nLmVtYWlsIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6MTt9czo0OiJuYW1lIjthOjQ6e3M6NDoibmFtZSI7czoxNToi44Om44O844K244O85ZCNIjtzOjk6InJvd19vcmRlciI7czoxMjoiVXNlck1uZy5uYW1lIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6Mjt9czo4OiJuaWNrbmFtZSI7YTo0OntzOjQ6Im5hbWUiO3M6MTg6IuODi+ODg+OCr+ODjeODvOODoCI7czo5OiJyb3dfb3JkZXIiO3M6MTY6IlVzZXJNbmcubmlja25hbWUiO3M6ODoiY2xtX3Nob3ciO2k6MTtzOjExOiJjbG1fc29ydF9ubyI7aTozO31zOjE3OiJlbWFpbF92ZXJpZmllZF9hdCI7YTo0OntzOjQ6Im5hbWUiO3M6MTc6ImVtYWlsX3ZlcmlmaWVkX2F0IjtzOjk6InJvd19vcmRlciI7czoyNToiVXNlck1uZy5lbWFpbF92ZXJpZmllZF9hdCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjQ7fXM6ODoicGFzc3dvcmQiO2E6NDp7czo0OiJuYW1lIjtzOjg6InBhc3N3b3JkIjtzOjk6InJvd19vcmRlciI7czoxNjoiVXNlck1uZy5wYXNzd29yZCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjU7fXM6MTQ6InJlbWVtYmVyX3Rva2VuIjthOjQ6e3M6NDoibmFtZSI7czoxNDoicmVtZW1iZXJfdG9rZW4iO3M6OToicm93X29yZGVyIjtzOjIyOiJVc2VyTW5nLnJlbWVtYmVyX3Rva2VuIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6Njt9czo0OiJyb2xlIjthOjQ6e3M6NDoibmFtZSI7czo2OiLmqKnpmZAiO3M6OToicm93X29yZGVyIjtzOjEyOiJVc2VyTW5nLnJvbGUiO3M6ODoiY2xtX3Nob3ciO2k6MTtzOjExOiJjbG1fc29ydF9ubyI7aTo3O31zOjk6InRlbXBfaGFzaCI7YTo0OntzOjQ6Im5hbWUiO3M6MzA6IuS7rueZu+mMsuODj+ODg+OCt+ODpeOCs+ODvOODiSI7czo5OiJyb3dfb3JkZXIiO3M6MTc6IlVzZXJNbmcudGVtcF9oYXNoIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6ODt9czoxMzoidGVtcF9kYXRldGltZSI7YTo0OntzOjQ6Im5hbWUiO3M6MjE6IuS7rueZu+mMsuWItumZkOaZguWIuyI7czo5OiJyb3dfb3JkZXIiO3M6MjE6IlVzZXJNbmcudGVtcF9kYXRldGltZSI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjk7fXM6Nzoic29ydF9ubyI7YTo0OntzOjQ6Im5hbWUiO3M6Njoi6aCG55WqIjtzOjk6InJvd19vcmRlciI7czoxNToiVXNlck1uZy5zb3J0X25vIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTA7fXM6MTA6ImRlbGV0ZV9mbGciO2E6NDp7czo0OiJuYW1lIjtzOjE1OiLliYrpmaTjg5Xjg6njgrAiO3M6OToicm93X29yZGVyIjtzOjE4OiJVc2VyTW5nLmRlbGV0ZV9mbGciO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxMTt9czoxMToidXBkYXRlX3VzZXIiO2E6NDp7czo0OiJuYW1lIjtzOjE4OiLmm7TmlrDjg6bjg7zjgrbjg7wiO3M6OToicm93X29yZGVyIjtzOjE5OiJVc2VyTW5nLnVwZGF0ZV91c2VyIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTI7fXM6NzoiaXBfYWRkciI7YTo0OntzOjQ6Im5hbWUiO3M6MjA6IuabtOaWsElQ44Ki44OJ44Os44K5IjtzOjk6InJvd19vcmRlciI7czoxNToiVXNlck1uZy5pcF9hZGRyIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTM7fXM6NzoiY3JlYXRlZCI7YTo0OntzOjQ6Im5hbWUiO3M6MTI6IueUn+aIkOaXpeaZgiI7czo5OiJyb3dfb3JkZXIiO3M6MTU6IlVzZXJNbmcuY3JlYXRlZCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjE0O31zOjg6Im1vZGlmaWVkIjthOjQ6e3M6NDoibmFtZSI7czoxMjoi5pu05paw5pel5pmCIjtzOjk6InJvd19vcmRlciI7czoxNjoiVXNlck1uZy5tb2RpZmllZCI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjE1O319czo2OiJhY3RpdmUiO2E6MTY6e2k6MDthOjU6e3M6NDoibmFtZSI7czoyOiJJRCI7czo5OiJyb3dfb3JkZXIiO3M6MTA6IlVzZXJNbmcuaWQiO3M6ODoiY2xtX3Nob3ciO2k6MTtzOjExOiJjbG1fc29ydF9ubyI7aTowO3M6MjoiaWQiO3M6MjoiaWQiO31pOjE7YTo1OntzOjQ6Im5hbWUiO3M6MTA6IkXjg6Hjg7zjg6siO3M6OToicm93X29yZGVyIjtzOjEzOiJVc2VyTW5nLmVtYWlsIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6MTtzOjI6ImlkIjtzOjU6ImVtYWlsIjt9aToyO2E6NTp7czo0OiJuYW1lIjtzOjE1OiLjg6bjg7zjgrbjg7zlkI0iO3M6OToicm93X29yZGVyIjtzOjEyOiJVc2VyTW5nLm5hbWUiO3M6ODoiY2xtX3Nob3ciO2k6MTtzOjExOiJjbG1fc29ydF9ubyI7aToyO3M6MjoiaWQiO3M6NDoibmFtZSI7fWk6MzthOjU6e3M6NDoibmFtZSI7czoxODoi44OL44OD44Kv44ON44O844OgIjtzOjk6InJvd19vcmRlciI7czoxNjoiVXNlck1uZy5uaWNrbmFtZSI7czo4OiJjbG1fc2hvdyI7aToxO3M6MTE6ImNsbV9zb3J0X25vIjtpOjM7czoyOiJpZCI7czo4OiJuaWNrbmFtZSI7fWk6NDthOjU6e3M6NDoibmFtZSI7czoxNzoiZW1haWxfdmVyaWZpZWRfYXQiO3M6OToicm93X29yZGVyIjtzOjI1OiJVc2VyTW5nLmVtYWlsX3ZlcmlmaWVkX2F0IjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6NDtzOjI6ImlkIjtzOjE3OiJlbWFpbF92ZXJpZmllZF9hdCI7fWk6NTthOjU6e3M6NDoibmFtZSI7czo4OiJwYXNzd29yZCI7czo5OiJyb3dfb3JkZXIiO3M6MTY6IlVzZXJNbmcucGFzc3dvcmQiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aTo1O3M6MjoiaWQiO3M6ODoicGFzc3dvcmQiO31pOjY7YTo1OntzOjQ6Im5hbWUiO3M6MTQ6InJlbWVtYmVyX3Rva2VuIjtzOjk6InJvd19vcmRlciI7czoyMjoiVXNlck1uZy5yZW1lbWJlcl90b2tlbiI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjY7czoyOiJpZCI7czoxNDoicmVtZW1iZXJfdG9rZW4iO31pOjc7YTo1OntzOjQ6Im5hbWUiO3M6Njoi5qip6ZmQIjtzOjk6InJvd19vcmRlciI7czoxMjoiVXNlck1uZy5yb2xlIjtzOjg6ImNsbV9zaG93IjtpOjE7czoxMToiY2xtX3NvcnRfbm8iO2k6NztzOjI6ImlkIjtzOjQ6InJvbGUiO31pOjg7YTo1OntzOjQ6Im5hbWUiO3M6MzA6IuS7rueZu+mMsuODj+ODg+OCt+ODpeOCs+ODvOODiSI7czo5OiJyb3dfb3JkZXIiO3M6MTc6IlVzZXJNbmcudGVtcF9oYXNoIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6ODtzOjI6ImlkIjtzOjk6InRlbXBfaGFzaCI7fWk6OTthOjU6e3M6NDoibmFtZSI7czoyMToi5Luu55m76Yyy5Yi26ZmQ5pmC5Yi7IjtzOjk6InJvd19vcmRlciI7czoyMToiVXNlck1uZy50ZW1wX2RhdGV0aW1lIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6OTtzOjI6ImlkIjtzOjEzOiJ0ZW1wX2RhdGV0aW1lIjt9aToxMDthOjU6e3M6NDoibmFtZSI7czo2OiLpoIbnlaoiO3M6OToicm93X29yZGVyIjtzOjE1OiJVc2VyTW5nLnNvcnRfbm8iO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxMDtzOjI6ImlkIjtzOjc6InNvcnRfbm8iO31pOjExO2E6NTp7czo0OiJuYW1lIjtzOjE1OiLliYrpmaTjg5Xjg6njgrAiO3M6OToicm93X29yZGVyIjtzOjE4OiJVc2VyTW5nLmRlbGV0ZV9mbGciO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxMTtzOjI6ImlkIjtzOjEwOiJkZWxldGVfZmxnIjt9aToxMjthOjU6e3M6NDoibmFtZSI7czoxODoi5pu05paw44Om44O844K244O8IjtzOjk6InJvd19vcmRlciI7czoxOToiVXNlck1uZy51cGRhdGVfdXNlciI7czo4OiJjbG1fc2hvdyI7aTowO3M6MTE6ImNsbV9zb3J0X25vIjtpOjEyO3M6MjoiaWQiO3M6MTE6InVwZGF0ZV91c2VyIjt9aToxMzthOjU6e3M6NDoibmFtZSI7czoyMDoi5pu05pawSVDjgqLjg4njg6zjgrkiO3M6OToicm93X29yZGVyIjtzOjE1OiJVc2VyTW5nLmlwX2FkZHIiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxMztzOjI6ImlkIjtzOjc6ImlwX2FkZHIiO31pOjE0O2E6NTp7czo0OiJuYW1lIjtzOjEyOiLnlJ/miJDml6XmmYIiO3M6OToicm93X29yZGVyIjtzOjE1OiJVc2VyTW5nLmNyZWF0ZWQiO3M6ODoiY2xtX3Nob3ciO2k6MDtzOjExOiJjbG1fc29ydF9ubyI7aToxNDtzOjI6ImlkIjtzOjc6ImNyZWF0ZWQiO31pOjE1O2E6NTp7czo0OiJuYW1lIjtzOjEyOiLmm7TmlrDml6XmmYIiO3M6OToicm93X29yZGVyIjtzOjE2OiJVc2VyTW5nLm1vZGlmaWVkIjtzOjg6ImNsbV9zaG93IjtpOjA7czoxMToiY2xtX3NvcnRfbm8iO2k6MTU7czoyOiJpZCI7czo4OiJtb2RpZmllZCI7fX19czoyMToidXNlcl9tbmdfdGFibGVfZmllbGRzIjthOjE2OntzOjEwOiJVc2VyTW5nLmlkIjtzOjI6IklEIjtzOjEzOiJVc2VyTW5nLmVtYWlsIjtzOjEwOiJF44Oh44O844OrIjtzOjEyOiJVc2VyTW5nLm5hbWUiO3M6MTU6IuODpuODvOOCtuODvOWQjSI7czoxNjoiVXNlck1uZy5uaWNrbmFtZSI7czoxODoi44OL44OD44Kv44ON44O844OgIjtzOjI1OiJVc2VyTW5nLmVtYWlsX3ZlcmlmaWVkX2F0IjtzOjE3OiJlbWFpbF92ZXJpZmllZF9hdCI7czoxNjoiVXNlck1uZy5wYXNzd29yZCI7czo4OiJwYXNzd29yZCI7czoyMjoiVXNlck1uZy5yZW1lbWJlcl90b2tlbiI7czoxNDoicmVtZW1iZXJfdG9rZW4iO3M6MTI6IlVzZXJNbmcucm9sZSI7czo2OiLmqKnpmZAiO3M6MTc6IlVzZXJNbmcudGVtcF9oYXNoIjtzOjMwOiLku67nmbvpjLLjg4/jg4Pjgrfjg6XjgrPjg7zjg4kiO3M6MjE6IlVzZXJNbmcudGVtcF9kYXRldGltZSI7czoyMToi5Luu55m76Yyy5Yi26ZmQ5pmC5Yi7IjtzOjE1OiJVc2VyTW5nLnNvcnRfbm8iO3M6Njoi6aCG55WqIjtzOjE4OiJVc2VyTW5nLmRlbGV0ZV9mbGciO3M6MTU6IuWJiumZpOODleODqeOCsCI7czoxOToiVXNlck1uZy51cGRhdGVfdXNlciI7czoxODoi5pu05paw44Om44O844K244O8IjtzOjE1OiJVc2VyTW5nLmlwX2FkZHIiO3M6MjA6IuabtOaWsElQ44Ki44OJ44Os44K5IjtzOjE1OiJVc2VyTW5nLmNyZWF0ZWQiO3M6MTI6IueUn+aIkOaXpeaZgiI7czoxNjoiVXNlck1uZy5tb2RpZmllZCI7czoxMjoi5pu05paw5pel5pmCIjt9czoxMjoidXNlcl9tbmdfa2pzIjthOjE4OntzOjc6ImtqX21haW4iO3M6MDoiIjtzOjU6ImtqX2lkIjtzOjA6IiI7czo3OiJral9uYW1lIjtzOjA6IiI7czo4OiJral9lbWFpbCI7czowOiIiO3M6MjA6ImtqX2VtYWlsX3ZlcmlmaWVkX2F0IjtzOjA6IiI7czoxMToia2pfbmlja25hbWUiO3M6MDoiIjtzOjExOiJral9wYXNzd29yZCI7czowOiIiO3M6MTc6ImtqX3JlbWVtYmVyX3Rva2VuIjtzOjA6IiI7czo3OiJral9yb2xlIjtzOjA6IiI7czoxMjoia2pfdGVtcF9oYXNoIjtzOjA6IiI7czoxNjoia2pfdGVtcF9kYXRldGltZSI7czowOiIiO3M6MTA6ImtqX3NvcnRfbm8iO3M6MDoiIjtzOjEzOiJral9kZWxldGVfZmxnIjtzOjE6IjAiO3M6MTQ6ImtqX3VwZGF0ZV91c2VyIjtzOjA6IiI7czoxMDoia2pfaXBfYWRkciI7czowOiIiO3M6MTA6ImtqX2NyZWF0ZWQiO3M6MDoiIjtzOjExOiJral9tb2RpZmllZCI7czowOiIiO3M6OToicm93X2xpbWl0IjtzOjI6IjUwIjt9czoxNzoidXNlcl9tbmdfaW5pX2NuZHMiO2E6Mjp7czozOiJranMiO2E6MTk6e3M6Nzoia2pfbWFpbiI7czowOiIiO3M6NToia2pfaWQiO3M6MDoiIjtzOjc6ImtqX25hbWUiO3M6MDoiIjtzOjg6ImtqX2VtYWlsIjtzOjA6IiI7czoyMDoia2pfZW1haWxfdmVyaWZpZWRfYXQiO3M6MDoiIjtzOjExOiJral9uaWNrbmFtZSI7czowOiIiO3M6MTE6ImtqX3Bhc3N3b3JkIjtzOjA6IiI7czoxNzoia2pfcmVtZW1iZXJfdG9rZW4iO3M6MDoiIjtzOjc6ImtqX3JvbGUiO3M6MDoiIjtzOjEyOiJral90ZW1wX2hhc2giO3M6MDoiIjtzOjE2OiJral90ZW1wX2RhdGV0aW1lIjtzOjA6IiI7czoxMDoia2pfc29ydF9ubyI7czowOiIiO3M6MTM6ImtqX2RlbGV0ZV9mbGciO3M6MToiMCI7czoxNDoia2pfdXBkYXRlX3VzZXIiO3M6MDoiIjtzOjEwOiJral9pcF9hZGRyIjtzOjA6IiI7czoxMDoia2pfY3JlYXRlZCI7czowOiIiO3M6MTE6ImtqX21vZGlmaWVkIjtzOjA6IiI7czo5OiJyb3dfbGltaXQiO3M6MjoiNTAiO3M6OToicGVybVJvbGVzIjthOjI6e2k6MDtzOjY6ImNsaWVudCI7aToxO3M6ODoib3BhcmF0b3IiO319czo1OiJwYWdlcyI7YToxNDp7czo3OiJwYWdlX25vIjtpOjA7czo5OiJyb3dfbGltaXQiO3M6MjoiNTAiO3M6MTA6InNvcnRfZmllbGQiO3M6Nzoic29ydF9ubyI7czo5OiJzb3J0X2Rlc2MiO2k6MDtzOjE1OiJwYWdlX2luZGV4X2h0bWwiO3M6Njg2OiI8ZGl2IGlkPSdwYWdlX2luZGV4Jz4mbHQmbHQmbmJzcDsKJmx0Jm5ic3A7CjEmbmJzcDsKPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MSZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz4yPC9hPiZuYnNwOwo8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0yJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPjM8L2E+Jm5ic3A7CjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+Jmd0PC9hPiZuYnNwOwo8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0yJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPiZndCZndDwvYT4mbmJzcDsKPC9kaXY+CiI7czo3OiJkZWZfdXJsIjtzOjEzMjoiL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MSZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjE0OiJwYWdlX3ByZXZfbGluayI7czowOiIiO3M6MTQ6InBhZ2VfbmV4dF9saW5rIjtzOjEzMjoiL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MSZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjEzOiJwYWdlX3RvcF9saW5rIjtzOjA6IiI7czoxNDoicGFnZV9sYXN0X2xpbmsiO3M6MTMyOiIvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0yJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAiO3M6OToicXVlcnlfc3RyIjtzOjgyOiJwYWdlX25vPTAmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjU6InNvcnRzIjthOjE3OntzOjEwOiJVc2VyTW5nLmlkIjtzOjEzOToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuaWQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPklEPC9hPiI7czoxMzoiVXNlck1uZy5lbWFpbCI7czoxNTA6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmVtYWlsJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5F44Oh44O844OrPC9hPiI7czoxMjoiVXNlck1uZy5uYW1lIjtzOjE1NDoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcubmFtZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+44Om44O844K244O85ZCNPC9hPiI7czoxNjoiVXNlck1uZy5uaWNrbmFtZSI7czoxNjE6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLm5pY2tuYW1lJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7jg4vjg4Pjgq/jg43jg7zjg6A8L2E+IjtzOjI1OiJVc2VyTW5nLmVtYWlsX3ZlcmlmaWVkX2F0IjtzOjE2OToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuZW1haWxfdmVyaWZpZWRfYXQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPmVtYWlsX3ZlcmlmaWVkX2F0PC9hPiI7czoxNjoiVXNlck1uZy5wYXNzd29yZCI7czoxNTE6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnBhc3N3b3JkJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5wYXNzd29yZDwvYT4iO3M6MjI6IlVzZXJNbmcucmVtZW1iZXJfdG9rZW4iO3M6MTYzOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5yZW1lbWJlcl90b2tlbiZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+cmVtZW1iZXJfdG9rZW48L2E+IjtzOjEyOiJVc2VyTW5nLnJvbGUiO3M6MTQ1OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5yb2xlJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7mqKnpmZA8L2E+IjtzOjE3OiJVc2VyTW5nLnRlbXBfaGFzaCI7czoxNzQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnRlbXBfaGFzaCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5Luu55m76Yyy44OP44OD44K344Ol44Kz44O844OJPC9hPiI7czoyMToiVXNlck1uZy50ZW1wX2RhdGV0aW1lIjtzOjE2OToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcudGVtcF9kYXRldGltZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5Luu55m76Yyy5Yi26ZmQ5pmC5Yi7PC9hPiI7czoxNToiVXNlck1uZy5zb3J0X25vIjtzOjE0ODoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuc29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+6aCG55WqPC9hPiI7czoxODoiVXNlck1uZy5kZWxldGVfZmxnIjtzOjE2MDoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuZGVsZXRlX2ZsZyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5YmK6Zmk44OV44Op44KwPC9hPiI7czoxOToiVXNlck1uZy51cGRhdGVfdXNlciI7czoxNjQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnVwZGF0ZV91c2VyJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7mm7TmlrDjg6bjg7zjgrbjg7w8L2E+IjtzOjE1OiJVc2VyTW5nLmlwX2FkZHIiO3M6MTYyOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5pcF9hZGRyJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7mm7TmlrBJUOOCouODieODrOOCuTwvYT4iO3M6MTU6IlVzZXJNbmcuY3JlYXRlZCI7czoxNTQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmNyZWF0ZWQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPueUn+aIkOaXpeaZgjwvYT4iO3M6MTY6IlVzZXJNbmcubW9kaWZpZWQiO3M6MTU1OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5tb2RpZmllZCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5pu05paw5pel5pmCPC9hPiI7czo3OiJzb3J0X25vIjtzOjE1MjoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZsaW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTEmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuKWsumghueVqjwvYT4iO31zOjEyOiJhbGxfZGF0YV9jbnQiO2k6MTA0O3M6MTI6ImFsbF9wYWdlX2NudCI7ZDozO319czoxNDoidXNlcl9tbmdfcGFnZXMiO2E6MTQ6e3M6NzoicGFnZV9ubyI7aTowO3M6OToicm93X2xpbWl0IjtzOjI6IjUwIjtzOjEwOiJzb3J0X2ZpZWxkIjtzOjc6InNvcnRfbm8iO3M6OToic29ydF9kZXNjIjtpOjA7czoxNToicGFnZV9pbmRleF9odG1sIjtzOjY4NjoiPGRpdiBpZD0ncGFnZV9pbmRleCc+Jmx0Jmx0Jm5ic3A7CiZsdCZuYnNwOwoxJm5ic3A7CjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+MjwvYT4mbmJzcDsKPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MiZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz4zPC9hPiZuYnNwOwo8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0xJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0yJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPiZndDwvYT4mbmJzcDsKPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MiZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz4mZ3QmZ3Q8L2E+Jm5ic3A7CjwvZGl2PgoiO3M6NzoiZGVmX3VybCI7czoxMzI6Ii9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCI7czoxNDoicGFnZV9wcmV2X2xpbmsiO3M6MDoiIjtzOjE0OiJwYWdlX25leHRfbGluayI7czoxMzI6Ii9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTEmcm93X2xpbWl0PTUwJnNvcnRfZmllbGQ9c29ydF9ubyZzb3J0X2Rlc2M9MCZhY3RfZmxnPTIma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCI7czoxMzoicGFnZV90b3BfbGluayI7czowOiIiO3M6MTQ6InBhZ2VfbGFzdF9saW5rIjtzOjEzMjoiL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MiZyb3dfbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0wJmFjdF9mbGc9MiZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwIjtzOjk6InF1ZXJ5X3N0ciI7czo4MjoicGFnZV9ubz0wJnJvd19saW1pdD01MCZzb3J0X2ZpZWxkPXNvcnRfbm8mc29ydF9kZXNjPTAma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCI7czo1OiJzb3J0cyI7YToxNzp7czoxMDoiVXNlck1uZy5pZCI7czoxMzk6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmlkJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5JRDwvYT4iO3M6MTM6IlVzZXJNbmcuZW1haWwiO3M6MTUwOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5lbWFpbCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+ReODoeODvOODqzwvYT4iO3M6MTI6IlVzZXJNbmcubmFtZSI7czoxNTQ6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLm5hbWUmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuODpuODvOOCtuODvOWQjTwvYT4iO3M6MTY6IlVzZXJNbmcubmlja25hbWUiO3M6MTYxOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5uaWNrbmFtZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+44OL44OD44Kv44ON44O844OgPC9hPiI7czoyNToiVXNlck1uZy5lbWFpbF92ZXJpZmllZF9hdCI7czoxNjk6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmVtYWlsX3ZlcmlmaWVkX2F0JnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz5lbWFpbF92ZXJpZmllZF9hdDwvYT4iO3M6MTY6IlVzZXJNbmcucGFzc3dvcmQiO3M6MTUxOiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5wYXNzd29yZCZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+cGFzc3dvcmQ8L2E+IjtzOjIyOiJVc2VyTW5nLnJlbWVtYmVyX3Rva2VuIjtzOjE2MzoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcucmVtZW1iZXJfdG9rZW4mc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPnJlbWVtYmVyX3Rva2VuPC9hPiI7czoxMjoiVXNlck1uZy5yb2xlIjtzOjE0NToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcucm9sZSZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5qip6ZmQPC9hPiI7czoxNzoiVXNlck1uZy50ZW1wX2hhc2giO3M6MTc0OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy50ZW1wX2hhc2gmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuS7rueZu+mMsuODj+ODg+OCt+ODpeOCs+ODvOODiTwvYT4iO3M6MjE6IlVzZXJNbmcudGVtcF9kYXRldGltZSI7czoxNjk6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnRlbXBfZGF0ZXRpbWUmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuS7rueZu+mMsuWItumZkOaZguWIuzwvYT4iO3M6MTU6IlVzZXJNbmcuc29ydF9ubyI7czoxNDg6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLnNvcnRfbm8mc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPumghueVqjwvYT4iO3M6MTg6IlVzZXJNbmcuZGVsZXRlX2ZsZyI7czoxNjA6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmc29ydF9maWVsZD1Vc2VyTW5nLmRlbGV0ZV9mbGcmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuWJiumZpOODleODqeOCsDwvYT4iO3M6MTk6IlVzZXJNbmcudXBkYXRlX3VzZXIiO3M6MTY0OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy51cGRhdGVfdXNlciZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5pu05paw44Om44O844K244O8PC9hPiI7czoxNToiVXNlck1uZy5pcF9hZGRyIjtzOjE2MjoiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcuaXBfYWRkciZzb3J0X2Rlc2M9MCZhY3RfZmxnPTMma2pfZGVsZXRlX2ZsZz0wJnJvd19saW1pdD01MCc+5pu05pawSVDjgqLjg4njg6zjgrk8L2E+IjtzOjE1OiJVc2VyTW5nLmNyZWF0ZWQiO3M6MTU0OiI8YSBocmVmPScvY3J1ZF9iYXNlX2xhcmF2ZWw4L2Rldi9wdWJsaWMvdXNlcl9tbmc/cGFnZV9ubz0wJnNvcnRfZmllbGQ9VXNlck1uZy5jcmVhdGVkJnNvcnRfZGVzYz0wJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7nlJ/miJDml6XmmYI8L2E+IjtzOjE2OiJVc2VyTW5nLm1vZGlmaWVkIjtzOjE1NToiPGEgaHJlZj0nL2NydWRfYmFzZV9sYXJhdmVsOC9kZXYvcHVibGljL3VzZXJfbW5nP3BhZ2Vfbm89MCZzb3J0X2ZpZWxkPVVzZXJNbmcubW9kaWZpZWQmc29ydF9kZXNjPTAmYWN0X2ZsZz0zJmtqX2RlbGV0ZV9mbGc9MCZyb3dfbGltaXQ9NTAnPuabtOaWsOaXpeaZgjwvYT4iO3M6Nzoic29ydF9ubyI7czoxNTI6IjxhIGhyZWY9Jy9jcnVkX2Jhc2VfbGFyYXZlbDgvZGV2L3B1YmxpYy91c2VyX21uZz9wYWdlX25vPTAmbGltaXQ9NTAmc29ydF9maWVsZD1zb3J0X25vJnNvcnRfZGVzYz0xJmFjdF9mbGc9MyZral9kZWxldGVfZmxnPTAmcm93X2xpbWl0PTUwJz7ilrLpoIbnlao8L2E+Ijt9czoxMjoiYWxsX2RhdGFfY250IjtpOjEwNDtzOjEyOiJhbGxfcGFnZV9jbnQiO2Q6Mzt9fQ==', 1638363805);

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `nickname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '名前',
  `password` varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '権限',
  `temp_hash` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '仮登録ハッシュコード',
  `temp_datetime` datetime DEFAULT NULL COMMENT '仮登録制限時刻',
  `sort_no` int(11) DEFAULT 0 COMMENT '順番',
  `delete_flg` tinyint(1) DEFAULT 0 COMMENT '削除フラグ',
  `update_user` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '更新ユーザー',
  `ip_addr` varchar(40) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '更新IPアドレス',
  `created` datetime DEFAULT NULL COMMENT '生成日時',
  `modified` timestamp NULL DEFAULT current_timestamp() COMMENT '更新日時',
  `created_at` datetime DEFAULT NULL COMMENT '生成日時B',
  `updated_at` datetime DEFAULT NULL COMMENT '更新日時B'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `nickname`, `password`, `remember_token`, `role`, `temp_hash`, `temp_datetime`, `sort_no`, `delete_flg`, `update_user`, `ip_addr`, `created`, `modified`, `created_at`, `updated_at`) VALUES
(1, '雨来虫', 'amaraimusi@gmail.com', NULL, '雨来虫2', '$2y$10$yKxjkV3/wAhMqwFEamyAiunESh7Jg3e5rSS0C7tJ7snCV43/oUhQ2', NULL, 'master', NULL, NULL, 0, 0, NULL, NULL, '2020-07-06 07:18:59', '2020-07-05 22:18:59', NULL, NULL),
(2, 'master2104', 'none', NULL, 'GM', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'master', NULL, NULL, 0, 0, 'kenji uehara', 'manual input', '2021-05-30 22:34:10', '2021-05-30 13:34:10', NULL, NULL),
(8, 'unagi@example.com', 'unagi@example.com', NULL, '大井川のウナギ', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'master', NULL, NULL, 0, 0, 'unagi@example.com', '::1', '2021-04-25 14:09:49', '2021-06-21 14:33:24', NULL, NULL),
(100, 'himiko@example.com', 'himiko@example.com', NULL, '卑弥呼2', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 100, 0, 'himiko@example.com', '::1', '2021-04-01 00:00:00', '2021-06-17 06:06:21', NULL, NULL),
(101, 'yamatotakeru@example.com', 'yamatotakeru@example.com', NULL, 'ヤマトタケル', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 101, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(102, 'ni_n_toku_tennou@example.com', 'ni_n_toku_tennou@example.com', NULL, '仁徳天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 102, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(103, 'sogano_umako@example.com', 'sogano_umako@example.com', NULL, '蘇我馬子', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 103, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(104, 'syoutokutaisi@example.com', 'syoutokutaisi@example.com', NULL, '聖徳太子', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 104, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-05-29 13:43:57', NULL, NULL),
(105, 'ono_no_imoko@example.com', 'ono_no_imoko@example.com', NULL, '小野妹子', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 105, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-05-29 02:47:40', NULL, NULL),
(106, 'sogano_iru_ka@example.com', 'sogano_iru_ka@example.com', NULL, '蘇我入鹿', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 106, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(107, 'naka_no_ooe_no_ouzi@example.com', 'naka_no_ooe_no_ouzi@example.com', NULL, '中大兄皇子', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 107, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(108, 'tenzi_tennou@example.com', 'tenzi_tennou@example.com', NULL, '天智天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 108, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(109, 'nakatomi_no_kamatari@example.com', 'nakatomi_no_kamatari@example.com', NULL, '中臣鎌足', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 109, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(110, 'ten_mu_ten_nou@example.com', 'ten_mu_ten_nou@example.com', NULL, '天武天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 110, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-05-29 01:22:44', NULL, NULL),
(111, 'huziwarano_huhito@example.com', 'huziwarano_huhito@example.com', NULL, '藤原不比等', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'admin', '', '0000-00-00 00:00:00', 111, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(112, 'syo_umu_tennou@example.com', 'syo_umu_tennou@example.com', NULL, '聖武天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 112, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(113, 'gyou_ki@example.com', 'gyou_ki@example.com', NULL, '行基', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 113, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-05-29 02:33:41', NULL, NULL),
(114, 'ganzin@example.com', 'ganzin@example.com', NULL, '鑑真', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 114, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(115, 'dou_kyou@example.com', 'dou_kyou@example.com', NULL, '道鏡', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 115, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(116, 'kan_mu_ten_nou@example.com', 'kan_mu_ten_nou@example.com', NULL, '桓武天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 116, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(117, 'sakanoue_no_tamuramaro@example.com', 'sakanoue_no_tamuramaro@example.com', NULL, '坂上田村麻呂', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 117, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(118, 'saityou@example.com', 'saityou@example.com', NULL, '最澄', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 118, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(119, 'kuukai@example.com', 'kuukai@example.com', NULL, '空海', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 119, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(120, 'huziwarano_yosihusa@example.com', 'huziwarano_yosihusa@example.com', NULL, '藤原良房', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 120, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(121, 'sugawara_no_miti_za_ne@example.com', 'sugawara_no_miti_za_ne@example.com', NULL, '菅原道真', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 121, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(122, 'taira_no_masakado@example.com', 'taira_no_masakado@example.com', NULL, '平将門', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 122, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(123, 'huziwarano_sumitomo@example.com', 'huziwarano_sumitomo@example.com', NULL, '藤原純友', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 123, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(124, 'seisyounagon@example.com', 'seisyounagon@example.com', NULL, '清少納言', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 124, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(125, 'murasakisikibu@example.com', 'murasakisikibu@example.com', NULL, '紫式部', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 125, 0, 'murasakisikibu@example.com', '::1', '2021-04-01 00:00:00', '2021-06-21 15:23:28', NULL, NULL),
(126, 'huziwarano_mitinaga@example.com', 'huziwarano_mitinaga@example.com', NULL, '藤原道長', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 126, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(127, 'huziwarano_yorimiti@example.com', 'huziwarano_yorimiti@example.com', NULL, '藤原頼通', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 127, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(128, 'go_sanzyou_tennou@example.com', 'go_sanzyou_tennou@example.com', NULL, '後三条天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 128, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(129, 'sirakawa_zyoukou@example.com', 'sirakawa_zyoukou@example.com', NULL, '白河上皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 129, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(130, 'minamoto_no_yosiie@example.com', 'minamoto_no_yosiie@example.com', NULL, '源義家', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 130, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(131, 'taira_no_kiyomori@example.com', 'taira_no_kiyomori@example.com', NULL, '平清盛', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 131, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(132, 'minamoto_no_yosi_to_mo@example.com', 'minamoto_no_yosi_to_mo@example.com', NULL, '源義朝', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 132, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(133, 'go_sirakawa_zyoukou@example.com', 'go_sirakawa_zyoukou@example.com', NULL, '後白河上皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 133, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(134, 'minamoto_no_yositune@example.com', 'minamoto_no_yositune@example.com', NULL, '源義経', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 134, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(135, 'minamoto_no_yori_to_mo@example.com', 'minamoto_no_yori_to_mo@example.com', NULL, '源頼朝', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 135, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(136, 'houzyou_masako@example.com', 'houzyou_masako@example.com', NULL, '北条政子', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 136, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(137, 'goto_ba_zyoukou@example.com', 'goto_ba_zyoukou@example.com', NULL, '後鳥羽上皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 137, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(138, 'houzyou_yasutoki@example.com', 'houzyou_yasutoki@example.com', NULL, '北条泰時', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 138, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(139, 'houzyou_toki_yori@example.com', 'houzyou_toki_yori@example.com', NULL, '北条時頼', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 139, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(140, 'houzyou_tokimune@example.com', 'houzyou_tokimune@example.com', NULL, '北条時宗', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 140, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(141, 'hu_bira_i_han@example.com', 'hu_bira_i_han@example.com', NULL, 'フビライ・ハン', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 141, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(142, 'godaigo_tennou@example.com', 'godaigo_tennou@example.com', NULL, '後醍醐天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 142, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(143, 'kusunoki_masasige@example.com', 'kusunoki_masasige@example.com', NULL, '楠木正成', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 143, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(144, 'nitta_yosisada@example.com', 'nitta_yosisada@example.com', NULL, '新田義貞', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 144, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(145, 'asika_ga_takauzi@example.com', 'asika_ga_takauzi@example.com', NULL, '足利尊氏', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 145, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(146, 'asika_ga_yosimitu@example.com', 'asika_ga_yosimitu@example.com', NULL, '足利義満', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 146, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(147, 'zeami@example.com', 'zeami@example.com', NULL, '世阿弥', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 147, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(148, 'asika_ga_yosimasa@example.com', 'asika_ga_yosimasa@example.com', NULL, '足利義政', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 148, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(149, 'sessyuu@example.com', 'sessyuu@example.com', NULL, '雪舟', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 149, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(150, 'ikkyuusouzyun@example.com', 'ikkyuusouzyun@example.com', NULL, '一休宗純', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', '', '0000-00-00 00:00:00', 150, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(151, 'huran_sisuko_zabieru@example.com', 'huran_sisuko_zabieru@example.com', NULL, 'フランシスコ＝ザビエル', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 151, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(152, 'houzyou_souun@example.com', 'houzyou_souun@example.com', NULL, '北条早雲', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 152, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(153, 'saitou_dousan@example.com', 'saitou_dousan@example.com', NULL, '斎藤道三', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 153, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(154, 'mo_uri_moto_nari@example.com', 'mo_uri_moto_nari@example.com', NULL, '毛利元就', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 154, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(155, 'takeda_singen@example.com', 'takeda_singen@example.com', NULL, '武田信玄', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 155, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-06-10 12:35:29', NULL, NULL),
(156, 'uesugi_kensin@example.com', 'uesugi_kensin@example.com', NULL, '上杉謙信', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 156, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(157, 'oda_nobunaga@example.com', 'oda_nobunaga@example.com', NULL, '織田信長', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 157, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(158, 'asika_ga_yosiaki@example.com', 'asika_ga_yosiaki@example.com', NULL, '足利義昭', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 158, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(159, 'aketi_mituhide@example.com', 'aketi_mituhide@example.com', NULL, '明智光秀', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 159, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(160, 'toyotomi_hideyosi@example.com', 'toyotomi_hideyosi@example.com', NULL, '豊臣秀吉', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 160, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(161, 'sen_no_rikyuu@example.com', 'sen_no_rikyuu@example.com', NULL, '千利休', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 161, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(162, 'isida_mitunari@example.com', 'isida_mitunari@example.com', NULL, '石田三成', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 162, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(163, 'yodo_gimi@example.com', 'yodo_gimi@example.com', NULL, '淀君', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 163, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(164, 'toyotomi_hideyori@example.com', 'toyotomi_hideyori@example.com', NULL, '豊臣秀頼', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 164, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(165, 'date_masamune@example.com', 'date_masamune@example.com', NULL, '伊達政宗', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 165, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(166, 'tokugawa_ieyasu@example.com', 'tokugawa_ieyasu@example.com', NULL, '徳川家康', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 166, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(167, 'tokugawa_iemitu@example.com', 'tokugawa_iemitu@example.com', NULL, '徳川家光', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 167, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(168, 'amakusa_sirou@example.com', 'amakusa_sirou@example.com', NULL, '天草四郎', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 168, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(169, 'tokugawa_tunayosi@example.com', 'tokugawa_tunayosi@example.com', NULL, '徳川綱吉', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 169, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(170, 'arai_hakuseki@example.com', 'arai_hakuseki@example.com', NULL, '新井白石', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 170, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(171, 'tokugawa_yosimune@example.com', 'tokugawa_yosimune@example.com', NULL, '徳川吉宗', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 171, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(172, 'oooka_tadasuke@example.com', 'oooka_tadasuke@example.com', NULL, '大岡忠相', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 172, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(173, 'sugi_ta_genpaku@example.com', 'sugi_ta_genpaku@example.com', NULL, '杉田玄白', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 173, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(174, 'mo_toori_norinaga@example.com', 'mo_toori_norinaga@example.com', NULL, '本居宣長', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 174, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(175, 'tanuma_okitugu@example.com', 'tanuma_okitugu@example.com', NULL, '田沼意次', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 175, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(176, 'inou_tadataka@example.com', 'inou_tadataka@example.com', NULL, '伊能忠敬', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 176, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(177, 'matudaira_sadanobu@example.com', 'matudaira_sadanobu@example.com', NULL, '松平定信', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 177, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(178, 'si__boru_to@example.com', 'si__boru_to@example.com', NULL, 'シーボルト', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 178, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(179, 'oosio_heihatirou@example.com', 'oosio_heihatirou@example.com', NULL, '大塩平八郎', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 179, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(180, 'mizuno_tadakuni@example.com', 'mizuno_tadakuni@example.com', NULL, '水野忠邦', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 180, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(181, 'peri_@example.com', 'peri_@example.com', NULL, 'ペリー', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 181, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(182, 'ii_naosuke@example.com', 'ii_naosuke@example.com', NULL, '井伊直弼', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 182, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(183, 'yosida_syouin@example.com', 'yosida_syouin@example.com', NULL, '吉田松陰', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 183, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(184, 'katu_kaisyuu@example.com', 'katu_kaisyuu@example.com', NULL, '勝海舟', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 184, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(185, 'simazu_nariakira@example.com', 'simazu_nariakira@example.com', NULL, '島津成彬', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 185, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(186, 'sakamoto_ryouma@example.com', 'sakamoto_ryouma@example.com', NULL, '坂本龍馬', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 186, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(187, 'tokugawa_yosinobu@example.com', 'tokugawa_yosinobu@example.com', NULL, '徳川慶喜', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 187, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(188, 'meizi_tennou@example.com', 'meizi_tennou@example.com', NULL, '明治天皇', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 188, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(189, 'ookubo_tosimiti@example.com', 'ookubo_tosimiti@example.com', NULL, '大久保利通', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 189, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(190, 'kido_takayosi@example.com', 'kido_takayosi@example.com', NULL, '木戸孝允', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 190, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(191, 'saigou_takamori@example.com', 'saigou_takamori@example.com', NULL, '西郷隆盛', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 191, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(192, 'iwakura_to_momi@example.com', 'iwakura_to_momi@example.com', NULL, '岩倉具視', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 192, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(193, 'itou_hirobumi@example.com', 'itou_hirobumi@example.com', NULL, '伊藤博文', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 193, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(194, 'hukuzawa_yukiti@example.com', 'hukuzawa_yukiti@example.com', NULL, '福沢諭吉', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 194, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(195, 'itagaki_taisuke@example.com', 'itagaki_taisuke@example.com', NULL, '板垣退助', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 195, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(196, 'ookuma_sigenobu@example.com', 'ookuma_sigenobu@example.com', NULL, '大隈重信', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 196, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(197, 'mutumunemitu@example.com', 'mutumunemitu@example.com', NULL, '陸奥宗光', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 197, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(198, 'komurazyutarou@example.com', 'komurazyutarou@example.com', NULL, '小村寿太郎', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 198, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(199, 'tougouheihatirou@example.com', 'tougouheihatirou@example.com', NULL, '東郷平八郎', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 199, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(200, 'kitasatosibasaburou@example.com', 'kitasatosibasaburou@example.com', NULL, '北里柴三郎', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 200, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(201, 'sigakiyosi@example.com', 'sigakiyosi@example.com', NULL, '志賀潔', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 201, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(202, 'tanakasyouzou@example.com', 'tanakasyouzou@example.com', NULL, '田中正造', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 202, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(203, 'saionzikinmoti@example.com', 'saionzikinmoti@example.com', NULL, '西園寺公望', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 203, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(204, 'nogutihideyo@example.com', 'nogutihideyo@example.com', NULL, '野口英世', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 204, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(205, 'ozakiyukio@example.com', 'ozakiyukio@example.com', NULL, '尾崎行雄', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 205, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(206, 'hara_takasi@example.com', 'hara_takasi@example.com', NULL, '原敬', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 206, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(207, 'inukai_tuyosi@example.com', 'inukai_tuyosi@example.com', NULL, '犬養毅', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 207, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(208, 'yamamotoisoroku@example.com', 'yamamotoisoroku@example.com', NULL, '山本五十六', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 208, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(209, 'maxtu_ka__sa___gensui@example.com', 'maxtu_ka__sa___gensui@example.com', NULL, 'マッカーサー元帥', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 209, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(210, 'yosida_sigeru', 'yosida_sigeru', NULL, '吉田茂', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '', '0000-00-00 00:00:00', 210, 0, 'test', 'test', '2021-04-01 00:00:00', '2021-03-31 15:00:00', NULL, NULL),
(214, 'akaneko@example.com', 'akaneko@example.com', NULL, NULL, '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', '5d39c8a24454ce8391e2', '2021-06-08 13:53:51', 0, 0, NULL, NULL, '2021-06-08 09:53:51', '2021-06-08 00:53:51', NULL, NULL),
(215, 'inu@example.com', 'inu@example.com', NULL, '犬　好太郎', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', NULL, NULL, 0, 0, NULL, NULL, '2021-06-08 12:45:46', '2021-06-08 03:45:46', NULL, NULL),
(216, 'yasigani@example.com', 'yasigani@example.com', NULL, 'ヤシガニ', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'oparator', NULL, NULL, 0, 0, NULL, NULL, '2021-06-10 22:37:05', '2021-06-10 13:38:21', NULL, NULL),
(217, 'tanukineko@example.com', 'tanukineko@example.com', NULL, 'たぬきねこ', '$2y$10$VNN0IjxbI5MWveDg5G0//uyEzJ/OTH.Y4CG/iazqd82SeBKpu9HF2', NULL, 'client', NULL, NULL, 0, 0, NULL, NULL, '2021-06-10 22:39:18', '2021-06-10 13:39:18', NULL, NULL),
(218, 'sanagi', 'sanagi@example.com', '0000-00-00 00:00:00', '可児博士2', '$2y$10$f/gbHkl6ZUnijkYi3c6.tOHBVrMlOSAnnhLloOowFPrv624ZK5PRC', '', 'developer', '', '0000-00-00 00:00:00', -1, 0, '', '::1', NULL, '2021-11-30 21:19:18', NULL, '2021-11-26 01:10:13'),
(222, 'ヌガー', 'oounaginekoyasu@example.com', '0000-00-00 00:00:00', 'ヌガーｘ', '$2y$10$gQAV2DvqxbIqPXul1uax5ugwWOfQqgwDcuCcbknpRskkmxsPZtD6G', '', 'master', '', '0000-00-00 00:00:00', -2, 1, '雨来虫', '::1', '2021-12-01 07:32:54', '2021-12-01 04:29:20', NULL, NULL),
(223, 'kakamen@example.com', 'kakamen@example.com', '0000-00-00 00:00:00', 'kakamen@example.com', '$2y$10$q.V3opS6AoL6f/EYaPDj/u6mSScPnYlbI5kQt6Ry/ihJBLq.Rr.UK', '', 'admin', '', '0000-00-00 00:00:00', -3, 0, '雨来虫', '::1', '2021-12-01 12:59:37', '2021-12-01 04:58:20', NULL, NULL);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `nekos`
--
ALTER TABLE `nekos`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `neko_groups`
--
ALTER TABLE `neko_groups`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- テーブルのインデックス `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- テーブルの AUTO_INCREMENT `nekos`
--
ALTER TABLE `nekos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- テーブルの AUTO_INCREMENT `neko_groups`
--
ALTER TABLE `neko_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- テーブルの AUTO_INCREMENT `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
