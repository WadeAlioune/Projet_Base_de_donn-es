-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 06 nov. 2024 à 23:05
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `my_shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add produit', 7, 'add_produit'),
(26, 'Can change produit', 7, 'change_produit'),
(27, 'Can delete produit', 7, 'delete_produit'),
(28, 'Can view produit', 7, 'view_produit'),
(29, 'Can add categorie', 8, 'add_categorie'),
(30, 'Can change categorie', 8, 'change_categorie'),
(31, 'Can delete categorie', 8, 'delete_categorie'),
(32, 'Can view categorie', 8, 'view_categorie');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$u4HsMIAp5N3ENrE4p5VbiF$2ptKLMRMcT44r2KZ7Jk+ZxnDDnuCwG31SYb+C1OpPis=', '2024-11-05 21:50:36.390816', 1, 'aly', '', '', 'wadealioune616@gmail.com', 1, 1, '2024-09-07 09:53:54.224455');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-09-07 10:01:52.697099', '1', 'Categorie object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-09-07 10:08:11.439846', '1', 'sac', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-09-07 10:09:42.927633', '2', 'Montre', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-09-07 10:11:11.284473', '2', 'montre12', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-09-07 10:20:48.704183', '3', 'montre 34', 1, '[{\"added\": {}}]', 7, 1),
(6, '2024-09-07 12:05:25.977062', '4', 'montre euve', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-09-07 12:07:50.718448', '3', 'Laptop', 1, '[{\"added\": {}}]', 8, 1),
(8, '2024-09-07 12:08:32.255367', '5', 'Laptop', 1, '[{\"added\": {}}]', 7, 1),
(9, '2024-09-12 09:23:05.655277', '4', 'habits', 1, '[{\"added\": {}}]', 8, 1),
(10, '2024-09-12 09:23:14.072760', '5', 'ballons', 1, '[{\"added\": {}}]', 8, 1),
(11, '2024-09-12 09:23:24.104624', '6', 'plots', 1, '[{\"added\": {}}]', 8, 1),
(12, '2024-09-12 09:28:35.994923', '6', 'maillot', 1, '[{\"added\": {}}]', 7, 1),
(13, '2024-09-12 09:30:29.484026', '7', 'maillot chelsea', 1, '[{\"added\": {}}]', 7, 1),
(14, '2024-09-12 09:32:20.937751', '6', 'maillot Totthenam', 2, '[{\"changed\": {\"fields\": [\"Titre\"]}}]', 7, 1),
(15, '2024-09-12 09:33:28.425977', '8', 'maillot Paris', 1, '[{\"added\": {}}]', 7, 1),
(16, '2024-09-12 09:34:28.664930', '9', 'maillot Barcelone', 1, '[{\"added\": {}}]', 7, 1),
(17, '2024-09-12 09:35:47.436692', '10', 'ballon argentum', 1, '[{\"added\": {}}]', 7, 1),
(18, '2024-09-12 09:36:29.656514', '11', 'ballon nike', 1, '[{\"added\": {}}]', 7, 1),
(19, '2024-09-12 09:46:30.438960', '9', 'maillot Barcelone', 3, '', 7, 1),
(20, '2024-09-12 09:48:16.780654', '12', 'maillot bayern', 1, '[{\"added\": {}}]', 7, 1),
(21, '2024-09-13 08:44:09.006340', '7', 'Montre', 1, '[{\"added\": {}}]', 8, 1),
(22, '2024-09-13 08:44:43.476717', '13', 'Montre 00', 1, '[{\"added\": {}}]', 7, 1),
(23, '2024-09-13 08:45:53.264803', '14', 'Montre 01', 1, '[{\"added\": {}}]', 7, 1),
(24, '2024-09-13 08:46:39.943065', '8', 'Ordinateur', 1, '[{\"added\": {}}]', 8, 1),
(25, '2024-09-13 08:47:52.508745', '15', 'HP Elitebook 840', 1, '[{\"added\": {}}]', 7, 1),
(26, '2024-09-13 08:49:02.031849', '16', 'HP Spectre', 1, '[{\"added\": {}}]', 7, 1),
(27, '2024-09-13 09:01:33.949388', '16', 'HP Spectre', 2, '[]', 7, 1),
(28, '2024-09-13 09:13:03.260584', '17', 'Laptop', 1, '[{\"added\": {}}]', 7, 1),
(29, '2024-09-13 09:17:39.165338', '16', 'HP Spectre', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(30, '2024-09-13 09:22:29.309108', '16', 'HP Spectre', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(31, '2024-09-13 09:23:39.914556', '16', 'HP Spectre', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(32, '2024-09-13 09:31:10.738680', '13', 'Montre 00', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(33, '2024-09-13 11:09:41.589477', '18', 'Macbook Air 2013', 1, '[{\"added\": {}}]', 7, 1),
(34, '2024-09-13 11:15:23.752914', '18', 'Macbook Air 2013', 3, '', 7, 1),
(35, '2024-09-13 11:15:52.697115', '19', 'Macbook Air 2013', 1, '[{\"added\": {}}]', 7, 1),
(36, '2024-09-17 19:29:44.976111', '20', 'montre00', 1, '[{\"added\": {}}]', 7, 1),
(37, '2024-09-17 19:32:17.103824', '20', 'montre00', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(38, '2024-09-17 19:33:47.292744', '20', 'montre00', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(39, '2024-09-19 08:55:39.009105', '21', 'Montre 01', 1, '[{\"added\": {}}]', 7, 1),
(40, '2024-09-19 08:57:05.464520', '20', 'montre00', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(41, '2024-09-19 09:00:30.678671', '19', 'Macbook Air 2013', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(42, '2024-09-19 09:07:09.020319', '9', 'Maillot de football', 1, '[{\"added\": {}}]', 8, 1),
(43, '2024-09-19 09:07:27.452257', '10', 'Ballon de football', 1, '[{\"added\": {}}]', 8, 1),
(44, '2024-09-19 09:07:44.304756', '11', 'Crampon', 1, '[{\"added\": {}}]', 8, 1),
(45, '2024-09-19 09:08:05.122552', '12', 'Chaussettes de football', 1, '[{\"added\": {}}]', 8, 1),
(46, '2024-09-19 09:08:23.659082', '13', 'Plots de football', 1, '[{\"added\": {}}]', 8, 1),
(47, '2024-09-19 09:15:18.819595', '22', 'Maillot France', 1, '[{\"added\": {}}]', 7, 1),
(48, '2024-09-19 09:16:19.206777', '23', 'Maillot France', 1, '[{\"added\": {}}]', 7, 1),
(49, '2024-09-19 09:19:20.102146', '24', 'Ballon UCL', 1, '[{\"added\": {}}]', 7, 1),
(50, '2024-09-19 09:20:00.738102', '25', 'Ballon Nike', 1, '[{\"added\": {}}]', 7, 1),
(51, '2024-09-19 09:21:08.026003', '25', 'Ballon Nike', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(52, '2024-09-19 09:28:05.152898', '22', 'Maillot Retro Madrid', 2, '[{\"changed\": {\"fields\": [\"Titre\", \"Description\", \"Image\"]}}]', 7, 1),
(53, '2024-09-19 09:28:42.271984', '22', 'Maillot Retro Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(54, '2024-09-19 09:30:06.894046', '22', 'Maillot Retro Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(55, '2024-09-19 09:30:47.211358', '22', 'Maillot Retro Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(56, '2024-09-19 09:35:52.017621', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Titre\", \"Description\", \"Image\"]}}]', 7, 1),
(57, '2024-09-19 09:36:15.951578', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(58, '2024-09-19 09:38:49.612027', '26', 'Maillot PSG', 1, '[{\"added\": {}}]', 7, 1),
(59, '2024-09-19 13:36:03.633603', '24', 'Ballon UCL', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(60, '2024-09-19 13:36:23.866322', '25', 'Ballon Nike', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(61, '2024-09-19 13:37:19.221769', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(62, '2024-09-19 13:37:34.389272', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(63, '2024-09-19 13:37:57.174303', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(64, '2024-09-20 19:02:43.007199', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(65, '2024-09-20 19:04:41.138774', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(66, '2024-09-20 19:14:21.347747', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(67, '2024-09-20 19:17:59.329378', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(68, '2024-09-20 19:18:52.399856', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(69, '2024-09-20 19:23:05.984914', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(70, '2024-09-20 19:24:34.175312', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(71, '2024-09-20 19:25:29.850326', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(72, '2024-09-20 19:30:39.181210', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(73, '2024-09-20 19:31:19.269508', '26', 'Maillot PSG', 2, '[]', 7, 1),
(74, '2024-09-20 19:32:53.158201', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(75, '2024-09-20 19:35:03.868295', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(76, '2024-09-20 19:42:25.650757', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(77, '2024-09-20 19:49:15.210016', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(78, '2024-09-20 19:56:11.041870', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(79, '2024-09-23 08:43:36.143924', '24', 'Ballon UCL', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(80, '2024-09-23 08:45:21.163525', '24', 'Ballon UCL', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(81, '2024-09-23 08:46:16.619109', '25', 'Ballon Nike', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(82, '2024-09-23 08:47:38.277790', '25', 'Ballon Nike', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(83, '2024-09-23 08:48:06.026196', '25', 'Ballon Nike', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(84, '2024-09-23 08:48:46.414330', '25', 'Ballon Nike', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(85, '2024-09-23 08:50:25.701609', '27', 'Ballon final UCL', 1, '[{\"added\": {}}]', 7, 1),
(86, '2024-09-23 08:58:30.333151', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(87, '2024-09-23 09:01:56.762921', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(88, '2024-09-23 09:08:06.619976', '23', 'Maillot France', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(89, '2024-09-23 09:15:37.615744', '28', 'maillot Totthenam', 1, '[{\"added\": {}}]', 7, 1),
(90, '2024-09-23 09:18:09.994383', '29', 'Maillot City', 1, '[{\"added\": {}}]', 7, 1),
(91, '2024-09-23 09:22:24.607175', '30', 'Ballon Eurro', 1, '[{\"added\": {}}]', 7, 1),
(92, '2024-09-23 09:44:59.149227', '31', 'crampons W', 1, '[{\"added\": {}}]', 7, 1),
(93, '2024-09-23 09:46:22.988859', '32', 'crampon Pogba', 1, '[{\"added\": {}}]', 7, 1),
(94, '2024-09-23 09:47:26.676003', '33', 'Crampon AR', 1, '[{\"added\": {}}]', 7, 1),
(95, '2024-09-23 09:49:28.919314', '34', 'Crampon DAS', 1, '[{\"added\": {}}]', 7, 1),
(96, '2024-09-23 09:51:15.006781', '35', 'Crampon Mercurial', 1, '[{\"added\": {}}]', 7, 1),
(97, '2024-09-23 09:56:05.350950', '36', 'Crampon Bellingham', 1, '[{\"added\": {}}]', 7, 1),
(98, '2024-09-23 09:57:29.380325', '37', 'Crampon Adidas Predator', 1, '[{\"added\": {}}]', 7, 1),
(99, '2024-09-23 09:58:12.249787', '38', 'Crampon AR', 1, '[{\"added\": {}}]', 7, 1),
(100, '2024-09-23 10:02:15.481210', '39', 'plot', 1, '[{\"added\": {}}]', 7, 1),
(101, '2024-09-23 10:03:07.085535', '40', 'mini cone', 1, '[{\"added\": {}}]', 7, 1),
(102, '2024-09-23 10:03:59.021803', '41', 'plot carré', 1, '[{\"added\": {}}]', 7, 1),
(103, '2024-09-23 10:07:15.717363', '42', 'cone losange', 1, '[{\"added\": {}}]', 7, 1),
(104, '2024-09-23 10:08:42.872749', '43', 'cone', 1, '[{\"added\": {}}]', 7, 1),
(105, '2024-09-23 10:09:35.443124', '43', 'cone', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 7, 1),
(106, '2024-09-23 10:11:54.521707', '44', 'bas noir long', 1, '[{\"added\": {}}]', 7, 1),
(107, '2024-09-23 10:12:28.970662', '45', 'bas rouge long', 1, '[{\"added\": {}}]', 7, 1),
(108, '2024-09-23 10:14:05.743880', '46', 'bas coupé', 1, '[{\"added\": {}}]', 7, 1),
(109, '2024-09-23 10:15:29.514927', '47', 'chaussettes coupeés', 1, '[{\"added\": {}}]', 7, 1),
(110, '2024-09-23 10:17:38.541106', '48', 'chaussettes', 1, '[{\"added\": {}}]', 7, 1),
(111, '2024-09-23 12:05:45.694482', '49', 'bas jaune long', 1, '[{\"added\": {}}]', 7, 1),
(112, '2024-09-23 12:09:54.860367', '14', 'Protège tibia', 1, '[{\"added\": {}}]', 8, 1),
(113, '2024-09-23 12:10:40.982015', '50', 'tibia predator', 1, '[{\"added\": {}}]', 7, 1),
(114, '2024-09-23 12:11:36.535742', '51', 'Tibia noir', 1, '[{\"added\": {}}]', 7, 1),
(115, '2024-09-23 12:12:27.688984', '52', 'Tibia blanc', 1, '[{\"added\": {}}]', 7, 1),
(116, '2024-09-23 12:13:11.892298', '53', 'tibia rouge', 1, '[{\"added\": {}}]', 7, 1),
(117, '2024-09-23 12:14:03.967481', '54', 'Tibia noir', 1, '[{\"added\": {}}]', 7, 1),
(118, '2024-09-23 12:15:10.199890', '55', 'Tibia bleu', 1, '[{\"added\": {}}]', 7, 1),
(119, '2024-09-23 12:20:55.244190', '15', 'Elastique', 1, '[{\"added\": {}}]', 8, 1),
(120, '2024-09-23 12:20:59.066018', '56', 'Elastique controleur', 1, '[{\"added\": {}}]', 7, 1),
(121, '2024-09-23 12:22:28.710564', '57', 'Mini elastique', 1, '[{\"added\": {}}]', 7, 1),
(122, '2024-09-23 12:24:32.301707', '58', 'Elastique', 1, '[{\"added\": {}}]', 7, 1),
(123, '2024-09-24 09:07:07.674634', '24', 'Ballon UCL', 2, '[]', 7, 1),
(124, '2024-09-24 09:07:15.468924', '25', 'Ballon Nike', 2, '[]', 7, 1),
(125, '2024-09-24 09:07:21.877461', '23', 'Maillot France', 2, '[]', 7, 1),
(126, '2024-09-24 10:10:46.344725', '32', 'crampon Pogba', 2, '[]', 7, 1),
(127, '2024-09-24 10:11:16.262881', '35', 'Crampon Mercurial', 2, '[]', 7, 1),
(128, '2024-09-24 10:11:22.461779', '37', 'Crampon Adidas Predator', 2, '[]', 7, 1),
(129, '2024-09-24 10:12:01.083812', '40', 'mini cone', 2, '[]', 7, 1),
(130, '2024-09-24 10:12:37.936665', '48', 'chaussettes', 2, '[]', 7, 1),
(131, '2024-09-25 09:01:07.354638', '22', 'Maillot  Madrid', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(132, '2024-09-27 10:14:15.033968', '53', 'tibia rouge', 2, '[]', 7, 1),
(133, '2024-09-27 10:15:20.545515', '23', 'Maillot France', 2, '[]', 7, 1),
(134, '2024-09-27 10:15:28.022503', '25', 'Ballon Nike', 2, '[]', 7, 1),
(135, '2024-09-27 10:16:02.821539', '24', 'Ballon UCL', 2, '[]', 7, 1),
(136, '2024-09-27 10:18:05.001308', '32', 'crampon Pogba', 2, '[]', 7, 1),
(137, '2024-09-27 10:18:17.346016', '35', 'Crampon Mercurial', 2, '[]', 7, 1),
(138, '2024-09-27 10:18:27.029529', '37', 'Crampon Adidas Predator', 2, '[]', 7, 1),
(139, '2024-09-27 10:18:34.844403', '40', 'mini cone', 2, '[]', 7, 1),
(140, '2024-09-27 10:19:08.014816', '48', 'chaussettes', 2, '[]', 7, 1),
(141, '2024-09-27 10:19:45.881056', '35', 'Crampon Mercurial', 3, '', 7, 1),
(142, '2024-09-27 10:20:46.922972', '48', 'chaussettes', 3, '', 7, 1),
(143, '2024-09-27 10:20:53.977656', '40', 'mini cone', 3, '', 7, 1),
(144, '2024-09-27 10:21:01.543347', '37', 'Crampon Adidas Predator', 3, '', 7, 1),
(145, '2024-09-27 10:21:08.444906', '32', 'crampon Pogba', 3, '', 7, 1),
(146, '2024-09-27 10:21:29.743368', '24', 'Ballon UCL', 3, '', 7, 1),
(147, '2024-09-27 10:21:36.054658', '25', 'Ballon Nike', 3, '', 7, 1),
(148, '2024-09-27 10:21:42.448391', '23', 'Maillot France', 3, '', 7, 1),
(149, '2024-10-31 09:16:30.816508', '26', 'Maillot PSG', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(150, '2024-10-31 09:16:40.786400', '28', 'maillot Totthenam', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(151, '2024-10-31 09:16:51.436554', '29', 'Maillot City', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(152, '2024-10-31 09:17:09.020723', '22', 'Maillot  Madrid', 2, '[]', 7, 1),
(153, '2024-10-31 09:19:30.737232', '27', 'Ballon final UCL', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(154, '2024-10-31 09:19:40.713451', '30', 'Ballon Eurro', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(155, '2024-10-31 09:21:29.336835', '44', 'bas noir long', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(156, '2024-10-31 09:21:40.920679', '45', 'bas rouge long', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(157, '2024-10-31 09:21:52.255169', '46', 'bas coupé', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(158, '2024-10-31 09:22:01.855539', '47', 'chaussettes coupeés', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(159, '2024-10-31 09:22:10.322732', '49', 'bas jaune long', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(160, '2024-10-31 09:24:22.729543', '50', 'tibia predator', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(161, '2024-10-31 09:24:33.631864', '51', 'Tibia noir', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(162, '2024-10-31 09:24:42.115607', '52', 'Tibia blanc', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(163, '2024-10-31 09:24:51.049687', '54', 'Tibia noir', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(164, '2024-10-31 09:24:58.649878', '55', 'Tibia bleu', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(165, '2024-10-31 09:25:07.733971', '53', 'tibia rouge', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(166, '2024-10-31 09:25:52.003601', '39', 'plot', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(167, '2024-10-31 09:25:59.470479', '41', 'plot carré', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(168, '2024-10-31 09:26:08.220870', '42', 'cone losange', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(169, '2024-10-31 09:26:16.838121', '43', 'cone', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(170, '2024-10-31 09:27:18.792071', '31', 'crampons W', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(171, '2024-10-31 09:27:25.942408', '33', 'Crampon AR', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(172, '2024-10-31 09:27:32.525579', '34', 'Crampon DAS', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(173, '2024-10-31 09:27:39.143383', '36', 'Crampon Bellingham', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(174, '2024-10-31 09:27:46.593639', '38', 'Crampon AR', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(175, '2024-10-31 09:28:20.912343', '56', 'Elastique controleur', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(176, '2024-10-31 09:28:28.612997', '57', 'Mini elastique', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1),
(177, '2024-10-31 09:28:35.579942', '58', 'Elastique', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'My_Shop', 'categorie'),
(7, 'My_Shop', 'produit'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-09-07 09:47:59.697996'),
(2, 'auth', '0001_initial', '2024-09-07 09:48:10.500267'),
(3, 'admin', '0001_initial', '2024-09-07 09:48:10.594012'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-09-07 09:48:10.594012'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-09-07 09:48:10.609635'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-09-07 09:48:10.687763'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-09-07 09:48:10.753247'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-09-07 09:48:10.768868'),
(9, 'auth', '0004_alter_user_username_opts', '2024-09-07 09:48:10.768868'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-09-07 09:48:10.831363'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-09-07 09:48:10.831363'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-09-07 09:48:10.846987'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-09-07 09:48:10.862636'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-09-07 09:48:10.878235'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-09-07 09:48:10.893860'),
(16, 'auth', '0011_update_proxy_permissions', '2024-09-07 09:48:10.893860'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-09-07 09:48:10.909484'),
(18, 'sessions', '0001_initial', '2024-09-07 09:48:10.940733'),
(19, 'My_Shop', '0001_initial', '2024-09-07 09:49:03.765038');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('47uqmq5z5rxj9ghe3q55kax05mfmtcjz', '.eJxVjDEOwjAMRe-SGUWxmwaFkZ0zVHbskgJKpKadKu4OlTrA-t97fzMDrUse1qbzMIm5GDCn340pPbXsQB5U7tWmWpZ5Yrsr9qDN3qro63q4fweZWv7WHHpKI2CCDgicR1QCPnc6hsSC0TnFnlHBUcCOPIsHxgC9ROEQxbw_5mA3-Q:1sp27n:nDnUAoyF7GL9rW1Pa5JIw0PNxW3ihJxqLt3nRUx_rsc', '2024-09-27 08:57:55.810581'),
('7qozudovb33q3431hp0hmfw8v3bub1ip', '.eJxVjDEOwjAMRe-SGUWxmwaFkZ0zVHbskgJKpKadKu4OlTrA-t97fzMDrUse1qbzMIm5GDCn340pPbXsQB5U7tWmWpZ5Yrsr9qDN3qro63q4fweZWv7WHHpKI2CCDgicR1QCPnc6hsSC0TnFnlHBUcCOPIsHxgC9ROEQxbw_5mA3-Q:1t8RRc:bOZWdN_oqvcuRy7LE7-HzqP6vsVTb1vA6HR_qRQf3tE', '2024-11-19 21:50:36.390816'),
('u8nyk8fmgz1yml1j2slm9kci8ubk02o1', '.eJxVjDEOwjAMRe-SGUWxmwaFkZ0zVHbskgJKpKadKu4OlTrA-t97fzMDrUse1qbzMIm5GDCn340pPbXsQB5U7tWmWpZ5Yrsr9qDN3qro63q4fweZWv7WHHpKI2CCDgicR1QCPnc6hsSC0TnFnlHBUcCOPIsHxgC9ROEQxbw_5mA3-Q:1sseex:b9i-dnTipOlbBwRzlnzD4tbo9XWuqikDRQNi4n9m4Ns', '2024-10-07 08:43:07.080710'),
('xpbj3i98n3pgjep21qx2nu3osgtnstmh', '.eJxVjDEOwjAMRe-SGUWxmwaFkZ0zVHbskgJKpKadKu4OlTrA-t97fzMDrUse1qbzMIm5GDCn340pPbXsQB5U7tWmWpZ5Yrsr9qDN3qro63q4fweZWv7WHHpKI2CCDgicR1QCPnc6hsSC0TnFnlHBUcCOPIsHxgC9ROEQxbw_5mA3-Q:1t5jdo:xWTuzbraksxxhp0hoVVwKr54_PlJrFnqqrTAyvkBivc', '2024-11-12 10:40:00.555209'),
('zt01mqh83twmi3166i3h1o5ebs26xrxu', '.eJxVjDEOwjAMRe-SGUWxmwaFkZ0zVHbskgJKpKadKu4OlTrA-t97fzMDrUse1qbzMIm5GDCn340pPbXsQB5U7tWmWpZ5Yrsr9qDN3qro63q4fweZWv7WHHpKI2CCDgicR1QCPnc6hsSC0TnFnlHBUcCOPIsHxgC9ROEQxbw_5mA3-Q:1smsBN:rj3n1nsdeg5kZ4O6TiCI6o-2aczHKu7-BXc-SOVl9Uc', '2024-09-21 09:56:41.355179');

-- --------------------------------------------------------

--
-- Structure de la table `my_shop_categorie`
--

CREATE TABLE `my_shop_categorie` (
  `id` bigint(20) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `date_ajout` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `my_shop_categorie`
--

INSERT INTO `my_shop_categorie` (`id`, `nom`, `date_ajout`) VALUES
(9, 'Maillot de football', '2024-09-19 09:07:09.020319'),
(10, 'Ballon de football', '2024-09-19 09:07:27.451473'),
(11, 'Crampon', '2024-09-19 09:07:44.304756'),
(12, 'Chaussettes de football', '2024-09-19 09:08:05.122552'),
(13, 'Plots de football', '2024-09-19 09:08:23.659082'),
(14, 'Protège tibia', '2024-09-23 12:09:54.860367'),
(15, 'Elastique', '2024-09-23 12:20:55.236153');

-- --------------------------------------------------------

--
-- Structure de la table `my_shop_produit`
--

CREATE TABLE `my_shop_produit` (
  `id` bigint(20) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `prix` double NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(500) NOT NULL,
  `date_ajout` datetime(6) NOT NULL,
  `categorie_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `my_shop_produit`
--

INSERT INTO `my_shop_produit` (`id`, `titre`, `prix`, `description`, `image`, `date_ajout`, `categorie_id`) VALUES
(22, 'Maillot  Madrid', 10000, 'Le Real Madrid Club de Fútbol, plus connu sous le nom de Real Madrid ou simplement Real, est un club professionnel espagnol de football, basé à Madrid. Vainqueur de très nombreux titres nationaux et internationaux, il a reçu de la Fédération internationale de football association (FIFA) le titre honorifique de plus grand club du XXe siècle.\r\n\r\nFondé en 1902 par Julián Palacios et les frères Juan et Carlos Padrós, le Madrid Football Club se voit adjoindre en 1920 le titre Real (signifiant « royal » en espagnol) par le roi Alphonse XIII et son nom est hispanisé en 1941 pour devenir Real Madrid Club de Fútbol. Le Real Madrid s\'impose au sommet du football européen au milieu des années 1950, sous la présidence de Santiago Bernabéu, en remportant notamment les cinq premières éditions de la Coupe d\'Europe des clubs champions. Dans les années 1980, le club possède à nouveau l\'une des meilleures équipes d\'Europe, surnommée La Quinta del Buitre (« la bande du vautour »), qui remporte notamment deux fois consécutivement la Coupe de l\'UEFA. Le Real Madrid renoue au début des années 2000 avec sa politique de recruter les meilleurs joueurs du monde, ce qui vaut à son équipe le surnom de « Galactiques ». À l\'issue de la saison 2024, le club compte notamment à son palmarès 36 titres de champion d\'Espagne, 15 victoires en Ligue des champions et 5 sacres en Coupe du monde des clubs, trois records en la matière', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbmKz4wiwGR6qR5PPLcRMOXB7IF-iM1Z-R5A&s', '2024-10-31 09:17:09.020723', 9),
(26, 'Maillot PSG', 8000, 'Tenue de jeu d’une équipe de football, que ce soit à l’entraînement (tenue d’entraînement) ou en match (tenue officielle). Elle représente les caractéristiques d’un club, à travers les couleurs choisies, les motifs employés et les symboles représentés (notamment l’écusson). Dans le dos figurent généralement le numéro porté par le joueur, ainsi que son nom, et parfois, le nom du club, voire d’autres inscriptions. Les clubs possèdent généralement deux ou trois tenues : un maillot utilisé à domicile, un deuxième à l’extérieur et un troisième, plus rare et au design souvent plus ambitieux. Le club a le choix de son maillot lorsqu’il évolue à domicile – il utilise alors son premier jeu de maillot – et doit employer à l’extérieur une tenue qui contraste avec celle de l’hôte, d’où l’intérêt du deuxième, voire du troisième maillot. Les maillots sont fabriqués par des équipementiers et changent d’une année à l’autre : leur révélation en début de saison est souvent particulièrement attendue par les suiveurs du club. Leur vente représente une recette particulièrement importante pour les écuries.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzlP5RBPiF-q7e7GQdNQgdXuKYhtrlNQXi6A&s', '2024-10-31 09:16:30.800452', 9),
(27, 'Ballon final UCL', 20000, 'Ballon final UCL 2024\r\nLe ballon de football puise ses origines dans les jeux de balle antiques chinois (cuju, exercice militaire avec une balle en peau d\'animal remplie de cheveux ou de plumes) et mésoaméricains (« tlachtli » des Aztèques avec une pierre recouverte d\'une épaisse couche de gomme)2.\r\n\r\nLes jeux de ballon au Moyen Âge se pratiquent avec des boules de bois, des vessies naturelles (de porc ou de mouton), des bourses en peau, pleines de son, de foin, de paille, de sable, de poils, de crin, de plumes ou d\'autres ingrédients. La soule médiévale et le calcio florentin à la Renaissance sont souvent l\'objet d\'affrontements ludiques et violents entre participants mais également entre spectateurs qui profitent de cette occasion pour régler différends et conflits. D\'où l\'évolution de leur support matériel : ballon creux pour l\'aspect ludique (air emprisonné à l\'intérieur de la vessie, assurant le rebondissement), mais résistant aux chocs pour la pratique de cette violence (vessie de porc protégée dans une enveloppe de cuir qui évite l\'éclatement du ballon)3.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHljm6pDBjxQ7gX6HKuXWBLqE8CuzRUDqYUA&s', '2024-10-31 09:19:30.729176', 10),
(28, 'maillot Totthenam', 7000, 'Tenue de jeu d’une équipe de football, que ce soit à l’entraînement (tenue d’entraînement) ou en match (tenue officielle). Elle représente les caractéristiques d’un club, à travers les couleurs choisies, les motifs employés et les symboles représentés (notamment l’écusson). Dans le dos figurent généralement le numéro porté par le joueur, ainsi que son nom, et parfois, le nom du club, voire d’autres inscriptions. Les clubs possèdent généralement deux ou trois tenues : un maillot utilisé à domicile, un deuxième à l’extérieur et un troisième, plus rare et au design souvent plus ambitieux. Le club a le choix de son maillot lorsqu’il évolue à domicile – il utilise alors son premier jeu de maillot – et doit employer à l’extérieur une tenue qui contraste avec celle de l’hôte, d’où l’intérêt du deuxième, voire du troisième maillot. Les maillots sont fabriqués par des équipementiers et changent d’une année à l’autre : leur révélation en début de saison est souvent particulièrement attendue par les suiveurs du club. Leur vente représente une recette particulièrement importante pour les écuries.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgkBNl18hr9tKlherkyQ2cxzlHTLE_1W-itw&s', '2024-10-31 09:16:40.768110', 9),
(29, 'Maillot City', 10000, 'Tenue de jeu d’une équipe de football, que ce soit à l’entraînement (tenue d’entraînement) ou en match (tenue officielle). Elle représente les caractéristiques d’un club, à travers les couleurs choisies, les motifs employés et les symboles représentés (notamment l’écusson). Dans le dos figurent généralement le numéro porté par le joueur, ainsi que son nom, et parfois, le nom du club, voire d’autres inscriptions. Les clubs possèdent généralement deux ou trois tenues : un maillot utilisé à domicile, un deuxième à l’extérieur et un troisième, plus rare et au design souvent plus ambitieux. Le club a le choix de son maillot lorsqu’il évolue à domicile – il utilise alors son premier jeu de maillot – et doit employer à l’extérieur une tenue qui contraste avec celle de l’hôte, d’où l’intérêt du deuxième, voire du troisième maillot. Les maillots sont fabriqués par des équipementiers et changent d’une année à l’autre : leur révélation en début de saison est souvent particulièrement attendue par les suiveurs du club. Leur vente représente une recette particulièrement importante pour les écuries.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLMhzwdd144Ri8O8Xa0P7Mr_ZhlzykaCR3TQ&s', '2024-10-31 09:16:51.436554', 9),
(30, 'Ballon Eurro', 9000, 'Le ballon de football puise ses origines dans les jeux de balle antiques chinois (cuju, exercice militaire avec une balle en peau d\'animal remplie de cheveux ou de plumes) et mésoaméricains (« tlachtli » des Aztèques avec une pierre recouverte d\'une épaisse couche de gomme)2.\r\n\r\nLes jeux de ballon au Moyen Âge se pratiquent avec des boules de bois, des vessies naturelles (de porc ou de mouton), des bourses en peau, pleines de son, de foin, de paille, de sable, de poils, de crin, de plumes ou d\'autres ingrédients. La soule médiévale et le calcio florentin à la Renaissance sont souvent l\'objet d\'affrontements ludiques et violents entre participants mais également entre spectateurs qui profitent de cette occasion pour régler différends et conflits. D\'où l\'évolution de leur support matériel : ballon creux pour l\'aspect ludique (air emprisonné à l\'intérieur de la vessie, assurant le rebondissement), mais résistant aux chocs pour la pratique de cette violence (vessie de porc protégée dans une enveloppe de cuir qui évite l\'éclatement du ballon)3.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzJfNeovGjJJdKNrboKBNMdsyoEH3HEzUcwg&s', '2024-10-31 09:19:40.699618', 10),
(31, 'crampons W', 30000, 'Nouveau modéle\r\nLes chaussures de football sont des équipements sportifs adaptés à la pratique du football. Celles conçues pour les terrains en gazon ont des crampons sur la semelle extérieure pour faciliter l\'adhérence.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTin1O5HzWDoyaibmgOnIF-pto3FCjkZv9reg&s', '2024-10-31 09:27:18.792071', 11),
(33, 'Crampon AR', 35000, 'Mon préféré\r\nLes chaussures de football sont des équipements sportifs adaptés à la pratique du football. Celles conçues pour les terrains en gazon ont des crampons sur la semelle extérieure pour faciliter l\'adhérence.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT45io5bBbzB9kfzEMINgF-hKd-65240avOiA&s', '2024-10-31 09:27:25.942408', 11),
(34, 'Crampon DAS', 20000, 'Ancien modèle\r\nLes chaussures de football sont des équipements sportifs adaptés à la pratique du football. Celles conçues pour les terrains en gazon ont des crampons sur la semelle extérieure pour faciliter l\'adhérence.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaFoPBqm9pXNqK2rbRHUNlGKXsOiY4ki2jOQ&s', '2024-10-31 09:27:32.508604', 11),
(36, 'Crampon Bellingham', 35000, 'Nouveau modèle\r\nLes chaussures de football sont des équipements sportifs adaptés à la pratique du football. Celles conçues pour les terrains en gazon ont des crampons sur la semelle extérieure pour faciliter l\'adhérence.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvf5KcdOmuMZH6JUd2sTjiOX8gIZYJqzAYbg&s', '2024-10-31 09:27:39.143383', 11),
(38, 'Crampon AR', 25000, 'Ancien modèle\r\nLes chaussures de football sont des équipements sportifs adaptés à la pratique du football. Celles conçues pour les terrains en gazon ont des crampons sur la semelle extérieure pour faciliter l\'adhérence.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNQJBJnR2cvarIBJ1gVp5lpHeTn3rqMnLYog&s', '2024-10-31 09:27:46.590817', 11),
(39, 'plot', 300, 'Les plots d\'entraînement de foot sont des accessoires indispensables pour les séances d\'entraînement des joueurs de football. Ils permettent de créer des exercices et des parcours pour travailler la coordination, la vitesse, l\'agilité et la précision des mouvements.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZYnX5JJUdiPjhLLZgqlk7XTv4vGaF9517DA&s', '2024-10-31 09:25:51.986976', 13),
(41, 'plot carré', 400, 'Les plots d\'entraînement de foot sont des accessoires indispensables pour les séances d\'entraînement des joueurs de football. Ils permettent de créer des exercices et des parcours pour travailler la coordination, la vitesse, l\'agilité et la précision des mouvements.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5PZkQHNdAJCWArUJB2SDwJ7tP_RZqr31cLA&s', '2024-10-31 09:25:59.470479', 13),
(42, 'cone losange', 1500, 'Les plots d\'entraînement de foot sont des accessoires indispensables pour les séances d\'entraînement des joueurs de football. Ils permettent de créer des exercices et des parcours pour travailler la coordination, la vitesse, l\'agilité et la précision des mouvements.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRL0n4pgGFM982886t9mVo-StkOVpItH5FevQ&s', '2024-10-31 09:26:08.204778', 13),
(43, 'cone', 2000, 'Les plots d\'entraînement de foot sont des accessoires indispensables pour les séances d\'entraînement des joueurs de football. Ils permettent de créer des exercices et des parcours pour travailler la coordination, la vitesse, l\'agilité et la précision des mouvements.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdfGE7opxqc-H48A25HJWpGzSbHq7L486BZg&s', '2024-10-31 09:26:16.820119', 13),
(44, 'bas noir long', 2000, 'Les chaussettes de football Nike sont conçues pour durer grâce à un talon et une pointe renforcés qui peuvent résister aux compétitions les plus difficiles.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPjlxj8WtCn34Wj9mpDJV3wBexf5lQTVVCpA&s', '2024-10-31 09:21:29.320468', 12),
(45, 'bas rouge long', 2000, 'Les chaussettes de football Nike sont conçues pour durer grâce à un talon et une pointe renforcés qui peuvent résister aux compétitions les plus difficiles.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCmrRSDNFbRkJJl_Ky36Y9NQwgiIueG56DFA&s', '2024-10-31 09:21:40.905695', 12),
(46, 'bas coupé', 2500, 'Les chaussettes de football Nike sont conçues pour durer grâce à un talon et une pointe renforcés qui peuvent résister aux compétitions les plus difficiles.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDWgfscImSxlymS91P09t2qGJz7Gr_KZzueQ&s', '2024-10-31 09:21:52.255169', 12),
(47, 'chaussettes coupeés', 500, 'Les chaussettes de football Nike sont conçues pour durer grâce à un talon et une pointe renforcés qui peuvent résister aux compétitions les plus difficiles.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSN1g2MxEiVHMa11uQlRneHbwiXBNT9WzVV3g&s', '2024-10-31 09:22:01.836962', 12),
(49, 'bas jaune long', 1998, 'Les chaussettes de football Nike sont conçues pour durer grâce à un talon et une pointe renforcés qui peuvent résister aux compétitions les plus difficiles.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgX0LpatiZy63Yraahl6j-a_BAlLuupTJvzA&s', '2024-10-31 09:22:10.322732', 12),
(50, 'tibia predator', 3000, 'Un protège-tibia est une plaque de protection portée par de nombreux sportifs, comme les footballeurs ou les joueurs de rugby à XV, afin de protéger leurs tibias de chocs directs. En principe obligatoire.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWqc9rqU7-JRjnbReuwcYRpm2N4DwEZLrHfw&s', '2024-10-31 09:24:22.729543', 14),
(51, 'Tibia noir', 3000, 'Un protège-tibia est une plaque de protection portée par de nombreux sportifs, comme les footballeurs ou les joueurs de rugby à XV, afin de protéger leurs tibias de chocs directs. En principe obligatoire.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8YVqRqeTTGnuSYnT9GLMDhr5E9EOe_VP6oQ&s', '2024-10-31 09:24:33.631864', 14),
(52, 'Tibia blanc', 3500, 'Un protège-tibia est une plaque de protection portée par de nombreux sportifs, comme les footballeurs ou les joueurs de rugby à XV, afin de protéger leurs tibias de chocs directs. En principe obligatoire.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4BcS75ZUP3Vn_YbRUnr362NSunSqaMw9TPA&s', '2024-10-31 09:24:42.115607', 14),
(53, 'tibia rouge', 3000, 'Un protège-tibia est une plaque de protection portée par de nombreux sportifs, comme les footballeurs ou les joueurs de rugby à XV, afin de protéger leurs tibias de chocs directs. En principe obligatoire.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbyzE3r9TLocrvCPeKZy31lTn1gWXc78ptxA&s', '2024-10-31 09:25:07.733971', 14),
(54, 'Tibia noir', 3000, 'Un protège-tibia est une plaque de protection portée par de nombreux sportifs, comme les footballeurs ou les joueurs de rugby à XV, afin de protéger leurs tibias de chocs directs. En principe obligatoire.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBFB2iH0FYYj80I7d1iGTeISB3gglsu1-HGw&s', '2024-10-31 09:24:51.049687', 14),
(55, 'Tibia bleu', 3000, 'Un protège-tibia est une plaque de protection portée par de nombreux sportifs, comme les footballeurs ou les joueurs de rugby à XV, afin de protéger leurs tibias de chocs directs. En principe obligatoire.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBiSsMbH3ASAimTGaQoiM8qEyue7GWXUCkxQ&s', '2024-10-31 09:24:58.649878', 14),
(56, 'Elastique controleur', 10000, 'Elastique pour apprendre à controler la balle\r\nUtilisé lors des entraînements, cet élastique de résistance permet de renforcer les muscles des jambes, des cuisses et des fessiers, essentiels pour les mouvements spécifiques au football. Polyvalent, il peut être utilisé pour divers exercices tels que les squats, les fentes, les sauts et les sprints.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnt-U5Z6e-bdQNrK-BLMpx4CQuMSbj86Ii3Q&s', '2024-10-31 09:28:20.896519', 15),
(57, 'Mini elastique', 1000, 'mini elastique\r\nUtilisé lors des entraînements, cet élastique de résistance permet de renforcer les muscles des jambes, des cuisses et des fessiers, essentiels pour les mouvements spécifiques au football. Polyvalent, il peut être utilisé pour divers exercices tels que les squats, les fentes, les sauts et les sprints.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQka0KXZotlh8Rxt5I4H0aKcb_UPj3SmPA4eQ&s', '2024-10-31 09:28:28.612997', 15),
(58, 'Elastique', 6000, 'Elastique long\r\nUtilisé lors des entraînements, cet élastique de résistance permet de renforcer les muscles des jambes, des cuisses et des fessiers, essentiels pour les mouvements spécifiques au football. Polyvalent, il peut être utilisé pour divers exercices tels que les squats, les fentes, les sauts et les sprints.', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn0VYw75oNOcCatOU-54bndFlxf5Seu_f9_w&s', '2024-10-31 09:28:35.577015', 15);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `my_shop_categorie`
--
ALTER TABLE `my_shop_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `my_shop_produit`
--
ALTER TABLE `my_shop_produit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `My_Shop_produit_categorie_id_aa46d471_fk_My_Shop_categorie_id` (`categorie_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `my_shop_categorie`
--
ALTER TABLE `my_shop_categorie`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `my_shop_produit`
--
ALTER TABLE `my_shop_produit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `my_shop_produit`
--
ALTER TABLE `my_shop_produit`
  ADD CONSTRAINT `My_Shop_produit_categorie_id_aa46d471_fk_My_Shop_categorie_id` FOREIGN KEY (`categorie_id`) REFERENCES `my_shop_categorie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
