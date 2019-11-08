/*
Navicat MySQL Data Transfer

Source Server         : vagrant-erp
Source Server Version : 50727
Source Host           : 192.168.0.222:3306
Source Database       : web.test.com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-11-08 18:26:50
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of game_titles
-- ----------------------------
INSERT INTO `game_titles` VALUES ('1', '1', '1', 'Zh-cn_Game_titles', '2019-11-05 13:51:47', null, null);
INSERT INTO `game_titles` VALUES ('2', '1', '2', 'En_Game_titles', '2019-11-05 13:51:47', null, null);

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(10) unsigned NOT NULL COMMENT '对应的公司id',
  `head_img_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '游戏最小缩略图',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  PRIMARY KEY (`id`),
  KEY `language_configs_locale_id_foreign` (`locale_id`),
  KEY `language_configs_type_id_foreign` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('10', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('11', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('12', '2019_09_05_013200_add_verification_to_users_table', '1');
INSERT INTO `migrations` VALUES ('13', '2019_10_10_030200_entrust_setup_tables', '1');
INSERT INTO `migrations` VALUES ('14', '2019_10_24_094607_create_news_table', '2');
INSERT INTO `migrations` VALUES ('15', '2019_11_08_033507_create_news_contents_table', '2');
INSERT INTO `migrations` VALUES ('16', '2019_11_08_034407_create_news_titles_table', '2');
INSERT INTO `migrations` VALUES ('17', '2019_11_01_082029_create_games_table', '3');
INSERT INTO `migrations` VALUES ('18', '2019_11_01_082308_update_foreign_key_to_news_table', '3');
INSERT INTO `migrations` VALUES ('19', '2019_11_08_035710_create_game_titles_table', '3');
INSERT INTO `migrations` VALUES ('20', '2019_11_08_053440_update_foreign_key_to_news_titles_table', '4');
INSERT INTO `migrations` VALUES ('21', '2019_11_08_053528_update_foreign_key_to_news_contents_table', '4');
INSERT INTO `migrations` VALUES ('29', '2019_11_08_061359_create_languages_table', '5');
INSERT INTO `migrations` VALUES ('30', '2019_11_08_061839_create_language_configs_table', '5');
INSERT INTO `migrations` VALUES ('31', '2019_11_08_063750_create_language_config_types_table', '5');
INSERT INTO `migrations` VALUES ('32', '2019_11_08_064002_update_foreign_key_to_language_configs_table', '5');

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
  PRIMARY KEY (`id`),
  KEY `news_game_id_foreign` (`game_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  PRIMARY KEY (`id`),
  KEY `news_contents_news_id_foreign` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_contents
-- ----------------------------
INSERT INTO `news_contents` VALUES ('1', '1', '1', 'Zh-cn_CONTENT', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_contents` VALUES ('2', '1', '2', 'En_CONTENT', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_contents` VALUES ('3', '2', '1', 'ZH-cn_content 2', '2019-11-05 13:44:08', null, null);
INSERT INTO `news_contents` VALUES ('4', '2', '2', 'en_content_2', '2019-11-05 13:44:08', null, null);

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
  PRIMARY KEY (`id`),
  KEY `news_titles_news_id_foreign` (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of news_titles
-- ----------------------------
INSERT INTO `news_titles` VALUES ('1', '1', '1', 'Zh-cn_TITLE', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_titles` VALUES ('2', '1', '2', 'En_TITLE', '2019-11-06 13:42:52', null, null);
INSERT INTO `news_titles` VALUES ('3', '2', '1', 'zh-cn_ title 2', '2019-11-05 13:44:08', null, null);
INSERT INTO `news_titles` VALUES ('4', '2', '2', 'en_title 2', '2019-11-05 13:44:08', null, null);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  KEY `permission_role_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  KEY `role_user_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verification_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'admin', '2280385683@qq.com', '$2y$10$ZAK8PBzyKTNVDZrFJHUva.q5SYWAozkRSdMDp8ECwKqhuL7XT7g0y', 'B9qCGsXKlbbZ2YpIuGBPVWhEreRSRiO87zl57TC7IYyWS0CWovchtZ7d5oix', '2019-11-04 01:42:00', '2019-11-04 01:42:00', '', '1', '2019-11-04 01:42:00');
