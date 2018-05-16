-- phpMyAdmin SQL Dump

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hunnor`
--

-- --------------------------------------------------------

--
-- Table structure for table `hn_adm_editors`
--

CREATE TABLE `hn_adm_editors` (
  `id` varchar(16) NOT NULL,
  `provider` varchar(16) NOT NULL,
  `uid` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hun_segment`
--

CREATE TABLE `hn_hun_segment` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry` int(10) UNSIGNED NOT NULL,
  `orth` varchar(128) COLLATE utf8_hungarian_ci NOT NULL,
  `pos` varchar(8) COLLATE utf8_hungarian_ci NOT NULL,
  `par` varchar(4) COLLATE utf8_hungarian_ci NOT NULL,
  `seq` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hn_hun_tr_nob_tmp`
--

CREATE TABLE `hn_hun_tr_nob_tmp` (
  `id` int(10) UNSIGNED NOT NULL,
  `trans` longtext CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_log_edit`
--

CREATE TABLE `hn_log_edit` (
  `editor_id` varchar(16) NOT NULL,
  `lang` varchar(4) NOT NULL,
  `entry_id` int(11) NOT NULL,
  `action` varchar(8) NOT NULL,
  `timestamp` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hn_log_search`
--

CREATE TABLE `hn_log_search` (
  `found` tinyint(4) NOT NULL,
  `term` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hn_nob_segment`
--

CREATE TABLE `hn_nob_segment` (
  `id` int(10) UNSIGNED NOT NULL,
  `entry` int(10) UNSIGNED NOT NULL,
  `orth` varchar(128) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `pos` varchar(8) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `par` varchar(4) CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL,
  `seq` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hn_nob_tr_hun_tmp`
--

CREATE TABLE `hn_nob_tr_hun_tmp` (
  `id` int(10) UNSIGNED NOT NULL,
  `trans` longtext CHARACTER SET utf8 COLLATE utf8_danish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hn_hun_segment`
--
ALTER TABLE `hn_hun_segment`
  ADD KEY `id` (`id`),
  ADD KEY `entry` (`entry`),
  ADD KEY `orth` (`orth`);

--
-- Indexes for table `hn_hun_tr_nob_tmp`
--
ALTER TABLE `hn_hun_tr_nob_tmp`
  ADD KEY `id` (`id`);

--
-- Indexes for table `hn_nob_segment`
--
ALTER TABLE `hn_nob_segment`
  ADD KEY `id` (`id`),
  ADD KEY `entry` (`entry`),
  ADD KEY `orth` (`orth`);

--
-- Indexes for table `hn_nob_tr_hun_tmp`
--
ALTER TABLE `hn_nob_tr_hun_tmp`
  ADD KEY `id` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
