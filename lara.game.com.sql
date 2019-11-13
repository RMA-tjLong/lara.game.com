/*
Navicat MySQL Data Transfer

Source Server         : vagrant-erp
Source Server Version : 50727
Source Host           : 192.168.0.222:3306
Source Database       : web.test.com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-11-13 18:02:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for game_titles
-- ----------------------------
DROP TABLE IF EXISTS `game_titles`;
CREATE TABLE `game_titles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(10) unsigned NOT NULL COMMENT '对应的游戏id',
  `locale_id` int(10) unsigned NOT NULL COMMENT '对应的翻译id',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '游戏名称',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of game_titles
-- ----------------------------
INSERT INTO `game_titles` VALUES ('1', '1', '1', '中文 标题', '2019-11-05 13:51:47', null, null);
INSERT INTO `game_titles` VALUES ('2', '1', '2', 'eng title', '2019-11-05 13:51:47', null, null);

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL COMMENT '对应的公司id',
  `head_img_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '游戏最小缩略图',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of games
-- ----------------------------
INSERT INTO `games` VALUES ('1', '1', 'URL', '2019-11-06 13:44:27', null, null);

-- ----------------------------
-- Table structure for language_config_types
-- ----------------------------
DROP TABLE IF EXISTS `language_config_types`;
CREATE TABLE `language_config_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '分类名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of language_config_types
-- ----------------------------
INSERT INTO `language_config_types` VALUES ('1', 'auth', '2019-11-08 14:44:54', null);
INSERT INTO `language_config_types` VALUES ('2', 'language', '2019-11-08 14:44:54', null);
INSERT INTO `language_config_types` VALUES ('3', 'pagination', '2019-11-08 14:44:54', null);
INSERT INTO `language_config_types` VALUES ('4', 'passwords', '2019-11-08 14:44:54', null);
INSERT INTO `language_config_types` VALUES ('5', 'regex', '2019-11-08 14:44:54', null);
INSERT INTO `language_config_types` VALUES ('6', 'validation', '2019-11-08 14:44:54', null);

-- ----------------------------
-- Table structure for language_configs
-- ----------------------------
DROP TABLE IF EXISTS `language_configs`;
CREATE TABLE `language_configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locale_id` int(10) unsigned NOT NULL COMMENT '对应的语言id',
  `type_id` int(10) unsigned NOT NULL COMMENT '对应的分类id',
  `name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '翻译名，管理员不得编辑，如果有点号分隔则为多级翻译',
  `trans` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '翻译内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of language_configs
-- ----------------------------

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '语言名',
  `code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '语言代码',
  `is_enabled` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否开启',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', '简体中文', 'zh-CN', '1', '1', '2019-11-08 14:42:02', '2019-11-08 14:42:05', null);
INSERT INTO `languages` VALUES ('2', 'English', 'en', '1', '0', '2019-11-08 14:42:02', '2019-11-08 14:42:02', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('53', '2019_11_08_061359_create_languages_table', '1');
INSERT INTO `migrations` VALUES ('54', '2019_11_08_061839_create_language_configs_table', '1');
INSERT INTO `migrations` VALUES ('55', '2019_11_08_063750_create_language_config_types_table', '1');
INSERT INTO `migrations` VALUES ('56', '2019_11_10_052230_create_news_tag_titles_table', '1');
INSERT INTO `migrations` VALUES ('42', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('43', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('44', '2019_09_05_013200_add_verification_to_users_table', '1');
INSERT INTO `migrations` VALUES ('45', '2019_10_10_030200_entrust_setup_tables', '1');
INSERT INTO `migrations` VALUES ('46', '2019_10_24_094607_create_news_table', '1');
INSERT INTO `migrations` VALUES ('47', '2019_11_01_070026_create_news_tags_table', '1');
INSERT INTO `migrations` VALUES ('48', '2019_11_01_070137_create_news_to_tags_table', '1');
INSERT INTO `migrations` VALUES ('49', '2019_11_01_082029_create_games_table', '1');
INSERT INTO `migrations` VALUES ('50', '2019_11_08_033507_create_news_contents_table', '1');
INSERT INTO `migrations` VALUES ('51', '2019_11_08_034407_create_news_titles_table', '1');
INSERT INTO `migrations` VALUES ('52', '2019_11_08_035710_create_game_titles_table', '1');
INSERT INTO `migrations` VALUES ('61', '2019_11_11_090844_update_news_tags_table_add_code_and_is_comprehensive', '2');
INSERT INTO `migrations` VALUES ('62', '2019_11_11_093511_update_news_tags_table_add_sort', '3');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `game_id` int(10) unsigned NOT NULL COMMENT '对应的游戏id',
  `author` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '新闻作者',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '1', 'AUTHOR', '2019-11-05 13:44:08', null, null);
INSERT INTO `news` VALUES ('2', '1', 'AUTHOR2', '2019-11-05 13:44:08', null, null);

-- ----------------------------
-- Table structure for news_contents
-- ----------------------------
DROP TABLE IF EXISTS `news_contents`;
CREATE TABLE `news_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL COMMENT '对应的新闻id',
  `locale_id` int(10) unsigned NOT NULL COMMENT '对应的翻译id',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '新闻内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_contents
-- ----------------------------
INSERT INTO `news_contents` VALUES ('1', '1', '1', '中文 内容', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_contents` VALUES ('2', '1', '2', 'eng content', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_contents` VALUES ('3', '2', '1', '中文 内容2', '2019-11-05 13:44:08', null, null);
INSERT INTO `news_contents` VALUES ('4', '2', '2', '<img src=\"https://steamcdn-a.akamaihd.net/steamcommunity/public/images/clans/27766192/0a5553b61e1df2dff53c059e7c57849378d0c69f.jpg\"><br><br>Behind the scenes at Steam, we create many experimental features with codenames like <i>The Peabody Recommender</i> and<i> Organize Your Steam Library Using Morse Code</i>. For the first time, we\'re giving these works-in-progress a home called <a class=\"bb_link\" href=\"https://store.steampowered.com/labs/\" target=\"_blank\" rel=\"noreferrer\">Steam Labs</a>, where you can interact with them, tell us whether you think they\'re worth pursuing further, and if so, share your thoughts on how they should evolve. <br><br>We\'ve selected three initial experiments to share as we launch the Labs. Each of these is designed to help people find the games they\'ll love.<br><br><b><a class=\"bb_link\" href=\"https://store.steampowered.com/labs/microtrailers\" target=\"_blank\" rel=\"noreferrer\">Micro Trailers</a></b> are lovingly-generated six-second game trailers, arranged on a page so you can digest them all at a glance. Check out our new micro trailer collections for adventure games, RPGs, builders, and more.<br><br><b><a class=\"bb_link\" href=\"https://store.steampowered.com/recommender\" target=\"_blank\" rel=\"noreferrer\">The Interactive Recommender</a></b> looks at your top-played games and uses machine learning to recommend other titles it thinks you\'ll love. Find old classics by directing it toward popular titles released in the past ten years, or discover that diamond-in-the-rough by zeroing in on niche games launched in the past six months.<br><br><b><a class=\"bb_link\" href=\"https://store.steampowered.com/labs/automaticshow\" target=\"_blank\" rel=\"noreferrer\">The Automated Show</a></b> is a half-hour video featuring the latest Steam launches. Leave it on a second monitor while you work, or glue your eyeballs to it and let hundreds of games wash over you.<br><br>So pop on your lab coat, <a class=\"bb_link\" href=\"https://store.steampowered.com/labs\" target=\"_blank\" rel=\"noreferrer\">try the experiments</a>, and then <a class=\"bb_link\" href=\"https://steamcommunity.com/groups/SteamLabs/discussions\" target=\"_blank\" rel=\"noreferrer\">share your feedback</a> to help shape the future of Steam.<br><br>To follow future news and additions to Steam Labs, <a class=\"bb_link\" href=\"https://steamcommunity.com/groups/SteamLabs\" target=\"_blank\" rel=\"noreferrer\">join the Steam Labs Community Group</a>, where we\'ll share announcements and updates.<br><br>Cheers!<br>-The Steam Team		<div style=\"clear: both;\"></div>', '2019-11-05 13:44:08', null, null);

-- ----------------------------
-- Table structure for news_tag_titles
-- ----------------------------
DROP TABLE IF EXISTS `news_tag_titles`;
CREATE TABLE `news_tag_titles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_tag_id` int(10) unsigned NOT NULL COMMENT '新闻标签名',
  `locale_id` int(10) unsigned NOT NULL COMMENT '对应的翻译id',
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标签名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_tag_titles
-- ----------------------------
INSERT INTO `news_tag_titles` VALUES ('1', '1', '1', '测试', '2019-11-11 17:32:35', null, null);
INSERT INTO `news_tag_titles` VALUES ('2', '1', '2', 'test', '2019-11-11 17:32:35', null, null);

-- ----------------------------
-- Table structure for news_tags
-- ----------------------------
DROP TABLE IF EXISTS `news_tags`;
CREATE TABLE `news_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  `code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '新闻标签唯一代码标识',
  `is_comprehensive` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为综合新闻',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_tags
-- ----------------------------
INSERT INTO `news_tags` VALUES ('1', '2019-11-13 14:36:52', null, null, 'test', '1', '0');

-- ----------------------------
-- Table structure for news_titles
-- ----------------------------
DROP TABLE IF EXISTS `news_titles`;
CREATE TABLE `news_titles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL COMMENT '对应的新闻id',
  `locale_id` int(10) unsigned NOT NULL COMMENT '对应的翻译id',
  `title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '新闻标题',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_titles
-- ----------------------------
INSERT INTO `news_titles` VALUES ('1', '1', '1', '中文 标题1', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_titles` VALUES ('2', '1', '2', 'eng title1', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_titles` VALUES ('3', '2', '1', '中文 标题2', '2019-11-05 13:44:08', null, null);
INSERT INTO `news_titles` VALUES ('4', '2', '2', 'eng title2', '2019-11-05 13:44:08', null, null);

-- ----------------------------
-- Table structure for news_to_tags
-- ----------------------------
DROP TABLE IF EXISTS `news_to_tags`;
CREATE TABLE `news_to_tags` (
  `news_id` int(10) unsigned NOT NULL COMMENT '对应的新闻id',
  `tag_id` int(10) unsigned NOT NULL COMMENT '对应的标签id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_to_tags
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verification_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '2280385683@qq.com', '$2y$10$ZAK8PBzyKTNVDZrFJHUva.q5SYWAozkRSdMDp8ECwKqhuL7XT7g0y', 'B9qCGsXKlbbZ2YpIuGBPVWhEreRSRiO87zl57TC7IYyWS0CWovchtZ7d5oix', '2019-11-04 01:42:00', '2019-11-04 01:42:00', '', '1', '2019-11-04 01:42:00');
