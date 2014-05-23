-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 23 2014 г., 11:33
-- Версия сервера: 5.5.34-MariaDB
-- Версия PHP: 5.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `404`
--

-- --------------------------------------------------------

--
-- Структура таблицы `journal`
--

CREATE TABLE IF NOT EXISTS `journal` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(15) unsigned NOT NULL,
  `semester_id` int(15) unsigned NOT NULL,
  `mark_id` int(1) unsigned NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subject_id` int(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `semester_id` (`semester_id`),
  KEY `mark_id` (`mark_id`),
  KEY `subject_id` (`subject_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=303 ;

--
-- Дамп данных таблицы `journal`
--

INSERT INTO `journal` (`id`, `user_id`, `semester_id`, `mark_id`, `datetime`, `subject_id`) VALUES
(203, 116, 4, 3, '2014-08-05 21:49:18', 4),
(204, 116, 5, 2, '2014-10-06 06:30:53', 3),
(205, 116, 3, 2, '2013-08-15 01:02:21', 4),
(206, 116, 4, 4, '2014-09-14 17:20:07', 5),
(207, 116, 4, 5, '2015-03-23 23:37:05', 5),
(208, 116, 4, 4, '2015-03-07 09:33:39', 5),
(209, 116, 4, 5, '2014-08-15 18:45:08', 4),
(210, 116, 3, 1, '2014-03-03 20:11:07', 5),
(211, 116, 3, 2, '2014-09-02 02:36:22', 5),
(212, 116, 5, 2, '2015-01-22 02:39:12', 5),
(213, 116, 5, 4, '2014-06-10 21:35:02', 3),
(214, 116, 3, 4, '2013-10-05 19:56:05', 5),
(215, 116, 5, 5, '2014-08-14 18:13:46', 3),
(216, 116, 5, 3, '2013-07-19 20:19:49', 3),
(217, 116, 4, 2, '2014-09-04 12:00:22', 4),
(218, 116, 3, 1, '2014-07-09 22:30:18', 5),
(219, 116, 5, 5, '2015-03-22 11:51:30', 5),
(220, 116, 3, 5, '2014-02-26 11:41:46', 5),
(221, 116, 5, 2, '2013-11-12 18:56:58', 4),
(222, 116, 3, 2, '2013-05-23 04:35:47', 3),
(223, 116, 5, 1, '2015-01-17 07:28:28', 4),
(224, 116, 5, 4, '2015-05-10 03:16:15', 3),
(225, 116, 3, 3, '2014-06-06 23:44:53', 4),
(226, 116, 5, 2, '2014-04-25 17:48:25', 5),
(227, 116, 4, 3, '2014-01-16 14:39:52', 3),
(228, 116, 4, 5, '2013-11-28 05:06:07', 3),
(229, 116, 3, 5, '2013-10-27 07:06:04', 3),
(230, 116, 3, 3, '2015-03-01 18:49:26', 3),
(231, 116, 4, 2, '2014-05-23 19:10:37', 3),
(232, 116, 3, 4, '2014-09-16 17:24:35', 5),
(233, 116, 3, 4, '2014-10-22 19:27:41', 4),
(234, 116, 4, 2, '2013-09-23 05:19:47', 5),
(235, 116, 5, 5, '2013-11-15 13:56:00', 5),
(236, 116, 5, 3, '2013-05-25 16:06:07', 5),
(237, 116, 4, 1, '2013-11-30 22:03:53', 3),
(238, 116, 5, 4, '2014-10-15 06:23:48', 5),
(239, 116, 5, 2, '2014-10-03 23:33:57', 5),
(240, 116, 4, 3, '2014-12-05 12:28:31', 3),
(241, 116, 3, 3, '2015-01-21 02:33:33', 5),
(242, 116, 5, 4, '2015-03-13 13:13:17', 3),
(243, 116, 5, 5, '2014-03-21 23:02:04', 3),
(244, 116, 5, 2, '2015-03-02 11:27:29', 4),
(245, 116, 5, 1, '2013-12-29 01:27:57', 5),
(246, 116, 5, 4, '2014-09-24 17:08:41', 4),
(247, 116, 4, 3, '2014-11-10 01:17:09', 3),
(248, 116, 3, 4, '2013-12-30 08:11:46', 5),
(249, 116, 5, 5, '2014-09-04 17:07:03', 3),
(250, 116, 4, 4, '2014-10-11 15:51:00', 5),
(251, 116, 5, 5, '2014-03-26 05:48:01', 5),
(252, 116, 5, 3, '2013-07-31 21:09:44', 5),
(253, 116, 4, 3, '2014-07-18 05:47:41', 5),
(254, 116, 4, 2, '2014-05-01 20:53:15', 5),
(255, 116, 5, 1, '2014-06-13 09:53:46', 3),
(256, 116, 4, 1, '2015-03-09 13:32:54', 3),
(257, 116, 3, 5, '2014-02-15 15:58:56', 3),
(258, 116, 5, 4, '2013-12-16 22:01:36', 3),
(259, 116, 3, 5, '2014-09-08 16:01:38', 4),
(260, 116, 3, 4, '2014-07-24 02:58:49', 3),
(261, 116, 3, 3, '2013-07-27 15:03:13', 4),
(262, 116, 3, 2, '2015-04-14 12:43:59', 4),
(263, 116, 4, 1, '2014-03-09 15:43:02', 4),
(264, 116, 5, 2, '2013-10-29 00:48:48', 5),
(265, 116, 5, 5, '2014-11-28 05:03:28', 5),
(266, 116, 4, 3, '2014-07-07 01:37:14', 5),
(267, 116, 4, 5, '2014-07-05 02:48:23', 4),
(268, 116, 4, 3, '2013-09-29 02:13:38', 5),
(269, 116, 5, 4, '2015-03-06 13:34:17', 4),
(270, 116, 3, 3, '2014-11-30 02:38:00', 5),
(271, 116, 4, 3, '2014-05-26 06:34:09', 5),
(272, 116, 5, 5, '2014-07-13 13:14:57', 4),
(273, 116, 5, 2, '2014-02-23 09:37:59', 4),
(274, 116, 5, 4, '2013-10-26 23:52:48', 5),
(275, 116, 5, 3, '2014-06-17 16:03:55', 4),
(276, 116, 4, 1, '2013-09-22 11:52:00', 3),
(277, 116, 5, 4, '2014-08-08 16:57:22', 5),
(278, 116, 4, 1, '2013-06-24 18:11:29', 4),
(279, 116, 3, 3, '2013-07-15 08:52:18', 3),
(280, 116, 3, 5, '2015-03-02 15:10:14', 4),
(281, 116, 5, 3, '2014-12-24 13:51:02', 5),
(282, 116, 4, 3, '2013-12-17 05:10:36', 4),
(283, 116, 5, 1, '2014-08-06 18:04:00', 3),
(284, 116, 5, 5, '2015-01-25 01:38:47', 4),
(285, 116, 3, 5, '2014-11-29 19:26:11', 4),
(286, 116, 5, 4, '2014-11-12 09:06:53', 4),
(287, 116, 4, 2, '2014-12-20 10:47:16', 4),
(288, 116, 4, 2, '2013-09-16 17:57:44', 3),
(289, 116, 4, 2, '2014-10-24 03:25:08', 4),
(290, 116, 4, 2, '2014-01-11 18:10:06', 5),
(291, 116, 3, 4, '2014-03-28 19:34:44', 3),
(292, 116, 3, 3, '2014-04-29 23:15:43', 5),
(293, 116, 3, 2, '2015-04-22 14:49:32', 3),
(294, 116, 3, 5, '2013-06-01 07:10:07', 3),
(295, 116, 3, 1, '2014-10-07 05:44:02', 4),
(296, 116, 5, 1, '2014-05-15 11:34:41', 5),
(297, 116, 4, 5, '2014-03-25 18:26:57', 5),
(298, 116, 5, 1, '2013-10-14 21:54:12', 5),
(299, 116, 3, 4, '2013-10-18 03:27:47', 4),
(300, 116, 3, 2, '2014-09-16 20:08:40', 4),
(301, 116, 4, 3, '2014-01-01 03:55:07', 4),
(302, 116, 4, 4, '2013-10-26 19:30:45', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(1) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fsdf` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `marks`
--

INSERT INTO `marks` (`id`, `title`) VALUES
(1, 'кол'),
(2, 'двойка'),
(3, 'тройка'),
(4, 'четверочка'),
(5, 'пятерочка');

-- --------------------------------------------------------

--
-- Структура таблицы `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` text CHARACTER SET latin1 NOT NULL,
  `user_id` int(15) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

--
-- Дамп данных таблицы `reviews`
--

INSERT INTO `reviews` (`id`, `text`, `user_id`) VALUES
(101, 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu', 116),
(102, 'et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat', 135),
(103, 'risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien', 166),
(104, 'vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna.', 134),
(105, 'faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam', 149),
(106, 'In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue.', 184),
(107, 'arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a', 149),
(108, 'ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam', 115),
(109, 'Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus.', 165),
(110, 'risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis', 120),
(111, 'venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede.', 162),
(112, 'nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque', 114),
(113, 'Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae', 135),
(114, 'bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec', 200),
(115, 'massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.', 131),
(116, 'luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec', 157),
(117, 'dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante', 119),
(118, 'ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi', 173),
(119, 'et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at', 173),
(120, 'Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus', 110),
(121, 'eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.', 154),
(122, 'lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc', 119),
(123, 'magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc', 151),
(124, 'Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem', 144),
(125, 'pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam', 140),
(126, 'ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus', 157),
(127, 'In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget', 164),
(128, 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit', 126),
(129, 'massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.', 192),
(130, 'tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique', 132),
(131, 'Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est', 196),
(132, 'pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet,', 188),
(133, 'Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla', 143),
(134, 'eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', 194),
(135, 'nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla', 190),
(136, 'augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh', 110),
(137, 'ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus', 152),
(138, 'lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus', 198),
(139, 'lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 168),
(140, 'Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi', 180),
(141, 'sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut,', 188),
(142, 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus.', 140),
(143, 'Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci', 121),
(144, 'non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus', 169),
(145, 'est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a,', 165),
(146, 'interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris.', 174),
(147, 'Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer', 160),
(148, 'ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 142),
(149, 'sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui.', 190),
(150, 'eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.', 126),
(151, 'Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper', 194),
(152, 'odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque', 133),
(153, 'arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna', 118),
(154, 'vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero', 162),
(155, 'cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis', 163),
(156, 'scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et', 185),
(157, 'rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque', 134),
(158, 'at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum,', 183),
(159, 'arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', 135),
(160, 'Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin', 183),
(161, 'malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper', 153),
(162, 'non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in', 115),
(163, 'a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra,', 128),
(164, 'fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non', 121),
(165, 'auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum', 164),
(166, 'dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin', 186),
(167, 'neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim', 186),
(168, 'Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae', 111),
(169, 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', 168),
(170, 'nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper', 188),
(171, 'tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo', 113),
(172, 'posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,', 116),
(173, 'velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa.', 163),
(174, 'mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,', 132),
(175, 'Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi.', 181),
(176, 'faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean', 112),
(177, 'vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem', 169),
(178, 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat', 148),
(179, 'urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat', 132),
(180, 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam', 135),
(181, 'dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;', 191),
(182, 'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo', 176),
(183, 'purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur', 167),
(184, 'amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', 111),
(185, 'tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam', 186),
(186, 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus', 196),
(187, 'lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare,', 141),
(188, 'dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est', 144),
(189, 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla', 182),
(190, 'ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero.', 153),
(191, 'blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,', 179),
(192, 'nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin', 178),
(193, 'dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat', 161),
(194, 'Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.', 142),
(195, 'at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', 194),
(196, 'risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque', 127),
(197, 'ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce', 143),
(198, 'Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam', 125),
(199, 'litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non', 177),
(200, 'arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus', 200);

-- --------------------------------------------------------

--
-- Структура таблицы `semesters`
--

CREATE TABLE IF NOT EXISTS `semesters` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Дамп данных таблицы `semesters`
--

INSERT INTO `semesters` (`id`, `title`) VALUES
(1, '10 семестр'),
(2, '9 семестр'),
(3, '4 семестр'),
(4, '1 полугодие'),
(5, '3 семестр'),
(6, '9 полугодие'),
(7, '2 семестр'),
(8, '5 полугодие'),
(9, '7 семестр'),
(10, '6 полугодие');

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `title`) VALUES
(1, 'Алгебра'),
(2, 'Геометрия'),
(3, 'Физика'),
(4, 'Физкультура'),
(5, 'Биология'),
(6, 'Английский'),
(7, 'Труд'),
(8, 'Литература'),
(9, 'Химия');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET latin1 NOT NULL,
  `surname` varchar(30) CHARACTER SET latin1 NOT NULL,
  `group_id` int(2) unsigned NOT NULL,
  `birthday` date NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `ip` date NOT NULL,
  `time_reg` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `group_id`, `birthday`, `email`, `ip`, `time_reg`) VALUES
(101, 'Philip', 'Erica', 10, '1957-10-25', 'tempus.lorem@ligula.edu', '0000-00-00', '2013-10-04 23:24:47'),
(102, 'Ava', 'Thomas', 3, '1958-02-07', 'lectus.ante.dictum@Loremipsumdolor.org', '0000-00-00', '2014-10-13 17:05:25'),
(103, 'Jasper', 'Joy', 6, '1992-11-27', 'sed.turpis@dictum.ca', '0000-00-00', '2014-03-09 13:22:38'),
(104, 'Tanner', 'Latifah', 3, '1961-05-29', 'convallis@orciluctuset.org', '0000-00-00', '2014-11-13 19:43:31'),
(105, 'Sierra', 'Graiden', 8, '2006-11-05', 'id.erat@porttitor.com', '0000-00-00', '2014-02-21 10:52:18'),
(106, 'Alma', 'Shay', 19, '1996-01-02', 'Proin@cubiliaCuraeDonec.com', '0000-00-00', '2013-07-23 16:22:30'),
(107, 'Dillon', 'Patience', 16, '2009-09-23', 'volutpat@Maecenasmi.net', '0000-00-00', '2013-10-22 06:55:04'),
(108, 'Tucker', 'Hamish', 8, '1946-05-13', 'dictum.Proin@famesacturpis.co.uk', '0000-00-00', '2014-07-05 00:35:09'),
(109, 'Kasimir', 'Indira', 20, '1938-08-22', 'aliquam@acrisusMorbi.com', '0000-00-00', '2014-03-03 20:25:36'),
(110, 'Paki', 'Zachery', 15, '1996-09-11', 'metus.Aliquam@Fusce.com', '0000-00-00', '2014-01-17 19:02:49'),
(111, 'Gemma', 'Noah', 16, '1909-01-01', 'neque.sed@noncursusnon.net', '0000-00-00', '2014-06-10 07:17:09'),
(112, 'Lenore', 'Karleigh', 6, '1968-05-29', 'nonummy.ac.feugiat@amet.co.uk', '0000-00-00', '2014-05-26 05:31:09'),
(113, 'Odessa', 'Guy', 19, '1967-06-23', 'risus.at@hendreritDonec.edu', '0000-00-00', '2014-06-13 22:24:14'),
(114, 'Felicia', 'Rinah', 8, '2014-03-17', 'dolor@atarcuVestibulum.co.uk', '0000-00-00', '2013-09-16 16:35:18'),
(115, 'Lev', 'Jonah', 1, '1920-11-18', 'metus.vitae.velit@temporlorem.net', '0000-00-00', '2014-03-23 23:32:15'),
(116, 'Isadora', 'Kyra', 4, '1970-10-22', 'odio@risus.co.uk', '0000-00-00', '2015-03-20 06:30:30'),
(117, 'Ross', 'Macaulay', 8, '1994-06-08', 'est.tempor.bibendum@natoquepenatibus.edu', '0000-00-00', '2014-06-30 08:09:09'),
(118, 'Scarlett', 'Knox', 12, '2004-12-24', 'ac.feugiat@Suspendisse.org', '0000-00-00', '2015-02-03 11:20:10'),
(119, 'Gillian', 'Keelie', 4, '1989-05-09', 'nec@interdumfeugiat.com', '0000-00-00', '2013-10-27 03:02:47'),
(120, 'Desirae', 'Kibo', 14, '1930-08-20', 'sem.Pellentesque.ut@nasceturridiculusmus.co.uk', '0000-00-00', '2015-01-10 01:12:32'),
(121, 'Paloma', 'Farrah', 18, '2007-04-29', 'vulputate.dui@Pellentesque.co.uk', '0000-00-00', '2013-06-03 02:34:10'),
(122, 'India', 'Grady', 2, '1910-08-18', 'magna.Praesent@arcuSed.ca', '0000-00-00', '2015-05-11 14:17:01'),
(123, 'Anika', 'Zelenia', 13, '1996-02-03', 'erat.semper@tristique.net', '0000-00-00', '2014-01-03 16:43:20'),
(124, 'Harrison', 'Alfreda', 14, '1965-10-25', 'id.enim@orci.co.uk', '0000-00-00', '2014-06-12 19:28:04'),
(125, 'Kennan', 'Reed', 11, '1944-01-29', 'Nam.tempor@commodoauctor.edu', '0000-00-00', '2013-09-23 11:45:29'),
(126, 'Yeo', 'Nell', 15, '1982-05-24', 'adipiscing.ligula@sem.net', '0000-00-00', '2015-01-29 04:00:22'),
(127, 'Shelly', 'Karina', 6, '2007-09-29', 'eu.euismod.ac@penatibus.net', '0000-00-00', '2014-06-27 16:05:02'),
(128, 'Addison', 'Malik', 3, '1972-10-15', 'dignissim.magna.a@turpisnon.edu', '0000-00-00', '2013-05-31 23:16:35'),
(129, 'Belle', 'Evangeline', 14, '1952-09-15', 'dictum.sapien.Aenean@mattis.edu', '0000-00-00', '2013-05-13 07:13:14'),
(130, 'Sydnee', 'Alexa', 4, '1991-09-30', 'massa.lobortis@tempor.ca', '0000-00-00', '2014-01-20 17:54:18'),
(131, 'Wynne', 'Oliver', 10, '1967-12-19', 'tellus.sem@dictumauguemalesuada.edu', '0000-00-00', '2013-11-25 12:52:27'),
(132, 'Fritz', 'Ocean', 18, '1959-04-09', 'Cum.sociis.natoque@Pellentesquetincidunttempus.ca', '0000-00-00', '2013-11-09 15:25:24'),
(133, 'Kiara', 'Stacy', 11, '1997-07-01', 'Quisque.imperdiet@Donecnibh.net', '0000-00-00', '2014-05-25 09:30:55'),
(134, 'Scarlett', 'Hayden', 1, '1990-08-11', 'at.auctor.ullamcorper@cursus.com', '0000-00-00', '2013-10-05 15:33:04'),
(135, 'Shana', 'Ursa', 5, '1964-04-04', 'in.faucibus@velitAliquam.com', '0000-00-00', '2014-04-02 16:42:17'),
(136, 'Dana', 'Damian', 15, '1993-07-26', 'Nullam.scelerisque.neque@miac.net', '0000-00-00', '2013-09-27 23:16:33'),
(137, 'Jaquelyn', 'Hilary', 1, '1920-12-04', 'bibendum@aultricies.ca', '0000-00-00', '2014-12-14 01:23:20'),
(138, 'Bruce', 'Macaulay', 14, '1938-07-07', 'vulputate.nisi.sem@mauris.net', '0000-00-00', '2014-09-09 04:16:36'),
(139, 'Geraldine', 'Piper', 10, '1974-12-09', 'Aliquam@sem.edu', '0000-00-00', '2014-06-02 12:07:18'),
(140, 'Quon', 'Velma', 5, '2003-07-28', 'a.sollicitudin.orci@blanditNamnulla.net', '0000-00-00', '2013-11-16 18:05:09'),
(141, 'Mona', 'Lionel', 8, '2011-05-15', 'Ut.tincidunt@iaculis.com', '0000-00-00', '2014-06-14 21:23:34'),
(142, 'Silas', 'Christopher', 7, '1952-01-11', 'Sed.et.libero@malesuadaaugue.net', '0000-00-00', '2014-02-26 05:39:10'),
(143, 'Mona', 'Irma', 7, '1968-11-02', 'Donec@non.com', '0000-00-00', '2014-05-22 13:01:57'),
(144, 'Paul', 'Quin', 16, '1922-11-18', 'non.feugiat.nec@purusMaecenaslibero.com', '0000-00-00', '2015-04-21 16:14:58'),
(145, 'Hiroko', 'Jocelyn', 11, '1944-12-30', 'ultrices.Duis.volutpat@pellentesqueegetdictum.net', '0000-00-00', '2015-03-10 13:10:05'),
(146, 'Phyllis', 'Jakeem', 17, '2012-07-24', 'rutrum@quis.com', '0000-00-00', '2014-09-09 18:52:23'),
(147, 'Clayton', 'Whitney', 18, '1941-05-24', 'tristique.ac.eleifend@amet.co.uk', '0000-00-00', '2013-06-19 05:45:19'),
(148, 'Ivana', 'Shafira', 19, '1985-05-28', 'ipsum@facilisisvitae.edu', '0000-00-00', '2013-11-01 05:28:16'),
(149, 'Tanya', 'Jolene', 19, '1911-08-30', 'natoque.penatibus.et@Pellentesqueutipsum.co.uk', '0000-00-00', '2014-06-22 14:31:02'),
(150, 'Cleo', 'Ryder', 7, '1943-09-19', 'porttitor.interdum@ullamcorper.co.uk', '0000-00-00', '2014-07-21 08:05:51'),
(151, 'Dexter', 'Kamal', 13, '1910-12-14', 'et.rutrum.non@Innecorci.net', '0000-00-00', '2014-11-21 03:17:10'),
(152, 'Mariko', 'Neil', 7, '1909-05-12', 'taciti.sociosqu.ad@non.net', '0000-00-00', '2014-01-19 01:42:30'),
(153, 'Irma', 'Maxwell', 20, '1910-08-02', 'nunc@penatibus.org', '0000-00-00', '2014-04-25 09:16:13'),
(154, 'Neville', 'Madeline', 9, '1923-06-17', 'sem.molestie@justoProin.edu', '0000-00-00', '2014-03-12 18:14:56'),
(155, 'Brian', 'Camille', 4, '2009-02-18', 'vitae.dolor@Donec.net', '0000-00-00', '2013-08-31 06:11:35'),
(156, 'Erica', 'Nicole', 18, '1926-09-16', 'sit.amet.ornare@esttemporbibendum.ca', '0000-00-00', '2014-01-27 10:15:30'),
(157, 'Martha', 'Blaze', 20, '1930-08-08', 'dui.in@Aenean.net', '0000-00-00', '2014-09-27 10:38:25'),
(158, 'Lillian', 'Kermit', 10, '2013-11-20', 'Curabitur.egestas.nunc@Phasellusfermentumconvallis', '0000-00-00', '2013-07-17 17:45:50'),
(159, 'Sonya', 'Shoshana', 19, '1925-11-04', 'et.rutrum@metus.co.uk', '0000-00-00', '2014-09-21 19:46:21'),
(160, 'Nicole', 'Slade', 11, '1925-12-05', 'metus.vitae.velit@tellusPhasellus.org', '0000-00-00', '2014-01-06 22:56:02'),
(161, 'Pearl', 'Wallace', 1, '1931-05-12', 'diam.Sed.diam@ultricesaauctor.edu', '0000-00-00', '2013-09-10 17:48:05'),
(162, 'Ethan', 'Leslie', 8, '1972-09-10', 'non.ante@velarcu.co.uk', '0000-00-00', '2014-12-14 13:37:42'),
(163, 'Risa', 'Owen', 6, '2010-04-15', 'nec@nascetur.ca', '0000-00-00', '2013-08-23 06:22:52'),
(164, 'Victor', 'Kiona', 17, '1930-02-18', 'vestibulum.Mauris.magna@fringillaDonecfeugiat.com', '0000-00-00', '2014-10-04 15:27:29'),
(165, 'Jerome', 'Liberty', 2, '1948-08-23', 'placerat.Cras@lectus.net', '0000-00-00', '2014-11-04 07:26:40'),
(166, 'Nola', 'Harlan', 3, '2013-10-09', 'ligula.Aenean@lacusCras.net', '0000-00-00', '2013-06-07 00:54:25'),
(167, 'Linda', 'Maite', 2, '1953-02-03', 'purus.in.molestie@condimentum.ca', '0000-00-00', '2015-01-12 14:32:19'),
(168, 'Serina', 'Nehru', 8, '2002-06-13', 'ultrices.a@diamvel.com', '0000-00-00', '2014-02-10 04:04:59'),
(169, 'Noelle', 'Lewis', 17, '1927-05-18', 'Nunc.ut.erat@semper.ca', '0000-00-00', '2013-07-30 18:47:35'),
(170, 'Martin', 'Daphne', 4, '1944-04-18', 'dictum@Curabituregestas.net', '0000-00-00', '2014-11-08 08:54:39'),
(171, 'Anne', 'Eliana', 16, '1952-12-16', 'lacinia@turpisNulla.ca', '0000-00-00', '2014-08-08 13:31:46'),
(172, 'Tana', 'Barry', 14, '1940-09-25', 'convallis.erat.eget@risusMorbimetus.edu', '0000-00-00', '2014-05-25 04:41:39'),
(173, 'Quinlan', 'Kendall', 17, '1940-04-14', 'iaculis.lacus@nec.edu', '0000-00-00', '2014-05-05 05:54:13'),
(174, 'Kyra', 'Ima', 6, '1909-03-25', 'neque.tellus@Phasellusdapibus.org', '0000-00-00', '2014-11-30 15:36:18'),
(175, 'Tamekah', 'Winifred', 6, '1975-08-04', 'eget.volutpat@magnaDuisdignissim.ca', '0000-00-00', '2013-11-24 23:31:07'),
(176, 'Gareth', 'Laith', 20, '1916-11-01', 'dui@nec.ca', '0000-00-00', '2014-01-13 23:40:17'),
(177, 'Randall', 'Maia', 18, '1915-11-10', 'sapien.imperdiet.ornare@auctor.net', '0000-00-00', '2014-11-07 01:00:40'),
(178, 'Blair', 'Felicia', 3, '1964-02-04', 'turpis.egestas.Aliquam@ridiculusmusProin.org', '0000-00-00', '2015-05-11 00:09:15'),
(179, 'Yasir', 'Stephen', 18, '1991-03-18', 'Nunc.commodo@massaInteger.co.uk', '0000-00-00', '2014-07-24 12:49:38'),
(180, 'Lacey', 'Nyssa', 7, '1926-09-10', 'augue.ut@tempusmauris.org', '0000-00-00', '2013-06-10 10:47:35'),
(181, 'Gray', 'Courtney', 17, '1944-05-11', 'Nunc.mauris.Morbi@dictum.net', '0000-00-00', '2014-01-18 13:49:33'),
(182, 'Matthew', 'Hermione', 20, '1941-09-17', 'eget.metus@risusDuisa.ca', '0000-00-00', '2015-04-16 20:47:35'),
(183, 'Autumn', 'Portia', 10, '1951-05-19', 'aliquam@vitaeposuere.net', '0000-00-00', '2014-07-29 15:00:36'),
(184, 'Beatrice', 'Ryder', 3, '1988-01-20', 'mauris@convallisestvitae.co.uk', '0000-00-00', '2014-07-09 14:44:54'),
(185, 'Declan', 'Rana', 11, '1966-10-06', 'orci.tincidunt.adipiscing@Classaptenttaciti.co.uk', '0000-00-00', '2014-11-30 07:08:17'),
(186, 'Sopoline', 'Damon', 1, '2010-10-27', 'et@faucibus.net', '0000-00-00', '2015-04-17 00:31:00'),
(187, 'Haley', 'Chiquita', 19, '1919-11-03', 'mi@magnaPhasellusdolor.org', '0000-00-00', '2014-09-16 22:23:10'),
(188, 'Portia', 'Kirsten', 15, '2012-10-29', 'Suspendisse@famesacturpis.ca', '0000-00-00', '2014-07-25 05:12:23'),
(189, 'Leroy', 'Zephania', 14, '1990-08-28', 'tempor.bibendum.Donec@turpisAliquamadipiscing.net', '0000-00-00', '2014-04-29 14:25:18'),
(190, 'Abraham', 'Kirestin', 16, '2005-03-13', 'non@eu.com', '0000-00-00', '2014-10-18 22:03:18'),
(191, 'Jade', 'Yoko', 3, '1948-08-22', 'mi.ac@Cras.org', '0000-00-00', '2013-12-23 14:38:11'),
(192, 'Craig', 'Gary', 12, '1909-03-28', 'metus.Aenean@convallis.ca', '0000-00-00', '2013-10-08 00:31:40'),
(193, 'Paul', 'Aubrey', 19, '1914-12-30', 'Cum.sociis.natoque@ante.ca', '0000-00-00', '2013-05-20 18:33:11'),
(194, 'Abigail', 'Phyllis', 15, '1917-01-12', 'parturient@Quisquenonummyipsum.co.uk', '0000-00-00', '2014-05-16 14:12:48'),
(195, 'Inga', 'Ifeoma', 13, '1922-05-29', 'odio@Nulla.edu', '0000-00-00', '2014-07-12 11:10:21'),
(196, 'Isaiah', 'Burke', 7, '1940-05-03', 'sit.amet.risus@commodohendrerit.com', '0000-00-00', '2014-08-24 18:36:46'),
(197, 'Cameran', 'Berk', 11, '1960-02-14', 'Sed@accumsaninterdumlibero.edu', '0000-00-00', '2014-12-26 23:51:42'),
(198, 'Ian', 'Giselle', 8, '1980-05-30', 'elit@risus.com', '0000-00-00', '2014-08-18 23:40:51'),
(199, 'Charles', 'Gareth', 5, '1970-01-04', 'arcu.iaculis.enim@bibendum.edu', '0000-00-00', '2014-11-05 21:41:11'),
(200, 'Martin', 'Dane', 19, '1972-04-09', 'vel.venenatis@Aenean.ca', '0000-00-00', '2014-11-11 16:16:14');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `journal`
--
ALTER TABLE `journal`
  ADD CONSTRAINT `journal_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `journal_ibfk_1` FOREIGN KEY (`mark_id`) REFERENCES `marks` (`id`),
  ADD CONSTRAINT `journal_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semesters` (`id`),
  ADD CONSTRAINT `journal_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Ограничения внешнего ключа таблицы `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_ibfk_1` FOREIGN KEY (`id`) REFERENCES `marks` (`id`);

--
-- Ограничения внешнего ключа таблицы `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
