-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2019 at 10:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perfex_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcase_settings`
--

CREATE TABLE `tblcase_settings` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblcase_settings`
--

INSERT INTO `tblcase_settings` (`id`, `project_id`, `name`, `value`) VALUES
(39, 1, 'available_features', '0'),
(40, 1, 'view_tasks', '0'),
(41, 1, 'create_tasks', '0'),
(42, 1, 'edit_tasks', '0'),
(43, 1, 'comment_on_tasks', '0'),
(44, 1, 'view_task_comments', '0'),
(45, 1, 'view_task_attachments', '0'),
(46, 1, 'view_task_checklist_items', '0'),
(47, 1, 'upload_on_tasks', '0'),
(48, 1, 'view_task_total_logged_time', '0'),
(49, 1, 'view_finance_overview', '0'),
(50, 1, 'upload_files', '0'),
(51, 1, 'open_discussions', '0'),
(52, 1, 'view_milestones', '0'),
(53, 1, 'view_gantt', '0'),
(54, 1, 'view_timesheets', '0'),
(55, 1, 'view_activity_log', '0'),
(56, 1, 'view_team_members', '0'),
(57, 1, 'hide_tasks_on_main_tasks_table', '0'),
(58, 4, 'available_features', '0'),
(59, 4, 'view_tasks', '0'),
(60, 4, 'create_tasks', '0'),
(61, 4, 'edit_tasks', '0'),
(62, 4, 'comment_on_tasks', '0'),
(63, 4, 'view_task_comments', '0'),
(64, 4, 'view_task_attachments', '0'),
(65, 4, 'view_task_checklist_items', '0'),
(66, 4, 'upload_on_tasks', '0'),
(67, 4, 'view_task_total_logged_time', '0'),
(68, 4, 'view_finance_overview', '0'),
(69, 4, 'upload_files', '0'),
(70, 4, 'open_discussions', '0'),
(71, 4, 'view_milestones', '0'),
(72, 4, 'view_gantt', '0'),
(73, 4, 'view_timesheets', '0'),
(74, 4, 'view_activity_log', '0'),
(75, 4, 'view_team_members', '0'),
(76, 4, 'hide_tasks_on_main_tasks_table', '0'),
(77, 5, 'available_features', '0'),
(78, 5, 'view_tasks', '0'),
(79, 5, 'create_tasks', '0'),
(80, 5, 'edit_tasks', '0'),
(81, 5, 'comment_on_tasks', '0'),
(82, 5, 'view_task_comments', '0'),
(83, 5, 'view_task_attachments', '0'),
(84, 5, 'view_task_checklist_items', '0'),
(85, 5, 'upload_on_tasks', '0'),
(86, 5, 'view_task_total_logged_time', '0'),
(87, 5, 'view_finance_overview', '0'),
(88, 5, 'upload_files', '0'),
(89, 5, 'open_discussions', '0'),
(90, 5, 'view_milestones', '0'),
(91, 5, 'view_gantt', '0'),
(92, 5, 'view_timesheets', '0'),
(93, 5, 'view_activity_log', '0'),
(94, 5, 'view_team_members', '0'),
(95, 5, 'hide_tasks_on_main_tasks_table', '0'),
(96, 6, 'available_features', '0'),
(97, 6, 'view_tasks', '0'),
(98, 6, 'create_tasks', '0'),
(99, 6, 'edit_tasks', '0'),
(100, 6, 'comment_on_tasks', '0'),
(101, 6, 'view_task_comments', '0'),
(102, 6, 'view_task_attachments', '0'),
(103, 6, 'view_task_checklist_items', '0'),
(104, 6, 'upload_on_tasks', '0'),
(105, 6, 'view_task_total_logged_time', '0'),
(106, 6, 'view_finance_overview', '0'),
(107, 6, 'upload_files', '0'),
(108, 6, 'open_discussions', '0'),
(109, 6, 'view_milestones', '0'),
(110, 6, 'view_gantt', '0'),
(111, 6, 'view_timesheets', '0'),
(112, 6, 'view_activity_log', '0'),
(113, 6, 'view_team_members', '0'),
(114, 6, 'hide_tasks_on_main_tasks_table', '0'),
(115, 7, 'available_features', '0'),
(116, 7, 'view_tasks', '0'),
(117, 7, 'create_tasks', '0'),
(118, 7, 'edit_tasks', '0'),
(119, 7, 'comment_on_tasks', '0'),
(120, 7, 'view_task_comments', '0'),
(121, 7, 'view_task_attachments', '0'),
(122, 7, 'view_task_checklist_items', '0'),
(123, 7, 'upload_on_tasks', '0'),
(124, 7, 'view_task_total_logged_time', '0'),
(125, 7, 'view_finance_overview', '0'),
(126, 7, 'upload_files', '0'),
(127, 7, 'open_discussions', '0'),
(128, 7, 'view_milestones', '0'),
(129, 7, 'view_gantt', '0'),
(130, 7, 'view_timesheets', '0'),
(131, 7, 'view_activity_log', '0'),
(132, 7, 'view_team_members', '0'),
(133, 7, 'hide_tasks_on_main_tasks_table', '0'),
(134, 8, 'available_features', '0'),
(135, 8, 'view_tasks', '0'),
(136, 8, 'create_tasks', '0'),
(137, 8, 'edit_tasks', '0'),
(138, 8, 'comment_on_tasks', '0'),
(139, 8, 'view_task_comments', '0'),
(140, 8, 'view_task_attachments', '0'),
(141, 8, 'view_task_checklist_items', '0'),
(142, 8, 'upload_on_tasks', '0'),
(143, 8, 'view_task_total_logged_time', '0'),
(144, 8, 'view_finance_overview', '0'),
(145, 8, 'upload_files', '0'),
(146, 8, 'open_discussions', '0'),
(147, 8, 'view_milestones', '0'),
(148, 8, 'view_gantt', '0'),
(149, 8, 'view_timesheets', '0'),
(150, 8, 'view_activity_log', '0'),
(151, 8, 'view_team_members', '0'),
(152, 8, 'hide_tasks_on_main_tasks_table', '0'),
(153, 9, 'available_features', '0'),
(154, 9, 'view_tasks', '0'),
(155, 9, 'create_tasks', '0'),
(156, 9, 'edit_tasks', '0'),
(157, 9, 'comment_on_tasks', '0'),
(158, 9, 'view_task_comments', '0'),
(159, 9, 'view_task_attachments', '0'),
(160, 9, 'view_task_checklist_items', '0'),
(161, 9, 'upload_on_tasks', '0'),
(162, 9, 'view_task_total_logged_time', '0'),
(163, 9, 'view_finance_overview', '0'),
(164, 9, 'upload_files', '0'),
(165, 9, 'open_discussions', '0'),
(166, 9, 'view_milestones', '0'),
(167, 9, 'view_gantt', '0'),
(168, 9, 'view_timesheets', '0'),
(169, 9, 'view_activity_log', '0'),
(170, 9, 'view_team_members', '0'),
(171, 9, 'hide_tasks_on_main_tasks_table', '0'),
(191, 10, 'available_features', '0'),
(192, 10, 'view_tasks', '0'),
(193, 10, 'create_tasks', '0'),
(194, 10, 'edit_tasks', '0'),
(195, 10, 'comment_on_tasks', '0'),
(196, 10, 'view_task_comments', '0'),
(197, 10, 'view_task_attachments', '0'),
(198, 10, 'view_task_checklist_items', '0'),
(199, 10, 'upload_on_tasks', '0'),
(200, 10, 'view_task_total_logged_time', '0'),
(201, 10, 'view_finance_overview', '0'),
(202, 10, 'upload_files', '0'),
(203, 10, 'open_discussions', '0'),
(204, 10, 'view_milestones', '0'),
(205, 10, 'view_gantt', '0'),
(206, 10, 'view_timesheets', '0'),
(207, 10, 'view_activity_log', '0'),
(208, 10, 'view_team_members', '0'),
(209, 10, 'hide_tasks_on_main_tasks_table', '0'),
(210, 11, 'available_features', '0'),
(211, 11, 'view_tasks', '0'),
(212, 11, 'create_tasks', '0'),
(213, 11, 'edit_tasks', '0'),
(214, 11, 'comment_on_tasks', '0'),
(215, 11, 'view_task_comments', '0'),
(216, 11, 'view_task_attachments', '0'),
(217, 11, 'view_task_checklist_items', '0'),
(218, 11, 'upload_on_tasks', '0'),
(219, 11, 'view_task_total_logged_time', '0'),
(220, 11, 'view_finance_overview', '0'),
(221, 11, 'upload_files', '0'),
(222, 11, 'open_discussions', '0'),
(223, 11, 'view_milestones', '0'),
(224, 11, 'view_gantt', '0'),
(225, 11, 'view_timesheets', '0'),
(226, 11, 'view_activity_log', '0'),
(227, 11, 'view_team_members', '0'),
(228, 11, 'hide_tasks_on_main_tasks_table', '0'),
(324, 1, 'available_features', '0'),
(325, 1, 'view_tasks', '0'),
(326, 1, 'create_tasks', '0'),
(327, 1, 'edit_tasks', '0'),
(328, 1, 'comment_on_tasks', '0'),
(329, 1, 'view_task_comments', '0'),
(330, 1, 'view_task_attachments', '0'),
(331, 1, 'view_task_checklist_items', '0'),
(332, 1, 'upload_on_tasks', '0'),
(333, 1, 'view_task_total_logged_time', '0'),
(334, 1, 'view_finance_overview', '0'),
(335, 1, 'upload_files', '0'),
(336, 1, 'open_discussions', '0'),
(337, 1, 'view_milestones', '0'),
(338, 1, 'view_gantt', '0'),
(339, 1, 'view_timesheets', '0'),
(340, 1, 'view_activity_log', '0'),
(341, 1, 'view_team_members', '0'),
(342, 1, 'hide_tasks_on_main_tasks_table', '0'),
(343, 4, 'available_features', '0'),
(344, 4, 'view_tasks', '0'),
(345, 4, 'create_tasks', '0'),
(346, 4, 'edit_tasks', '0'),
(347, 4, 'comment_on_tasks', '0'),
(348, 4, 'view_task_comments', '0'),
(349, 4, 'view_task_attachments', '0'),
(350, 4, 'view_task_checklist_items', '0'),
(351, 4, 'upload_on_tasks', '0'),
(352, 4, 'view_task_total_logged_time', '0'),
(353, 4, 'view_finance_overview', '0'),
(354, 4, 'upload_files', '0'),
(355, 4, 'open_discussions', '0'),
(356, 4, 'view_milestones', '0'),
(357, 4, 'view_gantt', '0'),
(358, 4, 'view_timesheets', '0'),
(359, 4, 'view_activity_log', '0'),
(360, 4, 'view_team_members', '0'),
(361, 4, 'hide_tasks_on_main_tasks_table', '0'),
(362, 4, 'available_features', '0'),
(363, 4, 'view_tasks', '0'),
(364, 4, 'create_tasks', '0'),
(365, 4, 'edit_tasks', '0'),
(366, 4, 'comment_on_tasks', '0'),
(367, 4, 'view_task_comments', '0'),
(368, 4, 'view_task_attachments', '0'),
(369, 4, 'view_task_checklist_items', '0'),
(370, 4, 'upload_on_tasks', '0'),
(371, 4, 'view_task_total_logged_time', '0'),
(372, 4, 'view_finance_overview', '0'),
(373, 4, 'upload_files', '0'),
(374, 4, 'open_discussions', '0'),
(375, 4, 'view_milestones', '0'),
(376, 4, 'view_gantt', '0'),
(377, 4, 'view_timesheets', '0'),
(378, 4, 'view_activity_log', '0'),
(379, 4, 'view_team_members', '0'),
(380, 4, 'hide_tasks_on_main_tasks_table', '0'),
(381, 5, 'available_features', '0'),
(382, 5, 'view_tasks', '0'),
(383, 5, 'create_tasks', '0'),
(384, 5, 'edit_tasks', '0'),
(385, 5, 'comment_on_tasks', '0'),
(386, 5, 'view_task_comments', '0'),
(387, 5, 'view_task_attachments', '0'),
(388, 5, 'view_task_checklist_items', '0'),
(389, 5, 'upload_on_tasks', '0'),
(390, 5, 'view_task_total_logged_time', '0'),
(391, 5, 'view_finance_overview', '0'),
(392, 5, 'upload_files', '0'),
(393, 5, 'open_discussions', '0'),
(394, 5, 'view_milestones', '0'),
(395, 5, 'view_gantt', '0'),
(396, 5, 'view_timesheets', '0'),
(397, 5, 'view_activity_log', '0'),
(398, 5, 'view_team_members', '0'),
(399, 5, 'hide_tasks_on_main_tasks_table', '0'),
(400, 1, 'available_features', 'a:1:{s:16:\"project_activity\";i:1;}'),
(401, 1, 'view_tasks', '0'),
(402, 1, 'create_tasks', '0'),
(403, 1, 'edit_tasks', '0'),
(404, 1, 'comment_on_tasks', '0'),
(405, 1, 'view_task_comments', '0'),
(406, 1, 'view_task_attachments', '0'),
(407, 1, 'view_task_checklist_items', '0'),
(408, 1, 'upload_on_tasks', '0'),
(409, 1, 'view_task_total_logged_time', '0'),
(410, 1, 'view_finance_overview', '0'),
(411, 1, 'upload_files', '0'),
(412, 1, 'open_discussions', '0'),
(413, 1, 'view_milestones', '0'),
(414, 1, 'view_gantt', '0'),
(415, 1, 'view_timesheets', '0'),
(416, 1, 'view_activity_log', '0'),
(417, 1, 'view_team_members', '0'),
(418, 1, 'hide_tasks_on_main_tasks_table', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcase_settings`
--
ALTER TABLE `tblcase_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcase_settings`
--
ALTER TABLE `tblcase_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;