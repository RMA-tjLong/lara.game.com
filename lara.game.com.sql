/*
Navicat MySQL Data Transfer

Source Server         : vagrant-erp
Source Server Version : 50727
Source Host           : 192.168.0.222:3306
Source Database       : web.test.com

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-11-15 17:57:08
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
-- Table structure for language_config_keys
-- ----------------------------
DROP TABLE IF EXISTS `language_config_keys`;
CREATE TABLE `language_config_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '键名',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of language_config_keys
-- ----------------------------
INSERT INTO `language_config_keys` VALUES ('1', 'common.set_in', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('2', 'common.set_up', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('3', 'common.log_out', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('4', 'common.change_lang', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('5', 'common.about_us', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('6', 'common.comments', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('7', 'common.verificate', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('8', 'common.home', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('9', 'auth.email', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('10', 'auth.password', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('11', 'auth.pw_confirm', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('12', 'auth.remember_me', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('13', 'auth.forget_pw', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('14', 'auth.captcha', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('15', 'auth.nickname', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('16', 'auth.has_account', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('17', 'auth.verification_success', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('18', 'auth.verification_error', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('19', 'auth.verification_warning', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('20', 'auth.pw_reset', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('21', 'auth.send_pw_reset_link', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('22', 'warning.email_verificate_title', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('23', 'warning.email_verificate_text', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('24', 'warning.send_success', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('25', 'warning.invalid_token', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('26', 'warning.validate_success', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('27', 'email.verified_subject', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('28', 'email.verified_1st_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('29', 'email.verified_2nd_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('30', 'email.verified_3rd_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('31', 'email.verified_4th_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('32', 'email.verified_5th_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('33', 'email.verified_6th_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('34', 'email.verified_7th_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('35', 'email.reset_password_subject', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('36', 'email.reset_password_1st_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('37', 'email.reset_password_2nd_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('38', 'email.reset_password_3rd_line', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('39', 'footer.mine', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('40', 'footer.news', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('41', 'footer.shop', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('42', 'footer.forum', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('43', 'footer.option', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('44', 'left_tools.my_game', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('45', 'left_tools.my_favorite', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('46', 'left_tools.change_bg', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('47', 'left_tools.to_top', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('48', 'left_tools.search', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('49', 'filters.archive', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('50', 'filters.archive_year', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('51', 'months.1', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('52', 'months.2', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('53', 'months.3', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('54', 'months.6', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('55', 'months.5', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('56', 'months.4', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('57', 'months.9', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('58', 'months.8', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('59', 'months.7', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('60', 'months.12', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('61', 'months.11', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('62', 'months.10', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('63', 'news.news', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('64', 'news.all', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('65', 'news.channels', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('66', 'news.comprehensive_news', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('67', 'share.share_to', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('68', 'failed', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('69', 'throttle', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('70', 'previous', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('71', 'next', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('72', 'password', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('73', 'reset', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('74', 'sent', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('75', 'token', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('76', 'user', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('77', 'password', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('78', 'accepted', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('79', 'active_url', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('80', 'after', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('81', 'after_or_equal', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('82', 'alpha', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('83', 'alpha_dash', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('84', 'alpha_num', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('85', 'array', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('86', 'before', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('87', 'before_or_equal', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('88', 'between.numeric', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('89', 'between.file', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('90', 'between.string', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('91', 'between.array', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('92', 'boolean', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('93', 'confirmed', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('94', 'date', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('95', 'date_format', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('96', 'different', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('97', 'digits', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('98', 'digits_between', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('99', 'dimensions', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('100', 'distinct', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('101', 'email', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('102', 'exists', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('103', 'file', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('104', 'filled', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('105', 'image', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('106', 'in', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('107', 'in_array', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('108', 'integer', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('109', 'ip', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('110', 'ipv4', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('111', 'ipv6', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('112', 'json', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('113', 'max.numeric', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('114', 'max.file', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('115', 'max.string', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('116', 'max.array', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('117', 'mimes', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('118', 'mimetypes', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('119', 'min.numeric', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('120', 'min.string', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('121', 'min.array', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('122', 'min.file', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('123', 'not_in', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('124', 'numeric', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('125', 'present', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('126', 'regex', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('127', 'required', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('128', 'required_if', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('129', 'required_unless', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('130', 'required_with', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('131', 'required_with_all', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('132', 'required_without', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('133', 'required_without_all', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('134', 'same', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('135', 'size.numeric', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('136', 'size.file', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('137', 'size.string', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('138', 'size.array', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('139', 'string', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('140', 'timezone', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('141', 'unique', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('142', 'uploaded', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('143', 'url', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('144', 'captcha', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('145', 'attributes.captcha', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('146', 'attributes.nickname', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('147', 'attributes.password', '2019-11-15 15:25:27', null);
INSERT INTO `language_config_keys` VALUES ('148', 'attributes.email', '2019-11-15 15:25:27', null);

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
  `trans` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '翻译内容',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `key_id` int(10) unsigned NOT NULL COMMENT '对应的键值id',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of language_configs
-- ----------------------------
INSERT INTO `language_configs` VALUES ('1', '1', '2', '登录', '2019-11-15 09:46:15', null, '1', null);
INSERT INTO `language_configs` VALUES ('2', '1', '2', '注册', '2019-11-15 09:46:15', null, '2', null);
INSERT INTO `language_configs` VALUES ('3', '1', '2', '登出', '2019-11-15 09:46:15', null, '3', null);
INSERT INTO `language_configs` VALUES ('4', '1', '2', '切换语言', '2019-11-15 09:46:15', null, '4', null);
INSERT INTO `language_configs` VALUES ('5', '1', '2', '关于我们', '2019-11-15 09:46:15', null, '5', null);
INSERT INTO `language_configs` VALUES ('6', '1', '2', '留言', '2019-11-15 09:46:15', null, '6', null);
INSERT INTO `language_configs` VALUES ('7', '1', '2', '验证', '2019-11-15 09:46:15', null, '7', null);
INSERT INTO `language_configs` VALUES ('8', '1', '2', '首页', '2019-11-15 09:46:15', null, '8', null);
INSERT INTO `language_configs` VALUES ('9', '1', '2', '邮箱', '2019-11-15 09:46:15', null, '9', null);
INSERT INTO `language_configs` VALUES ('10', '1', '2', '密码', '2019-11-15 09:46:15', null, '10', null);
INSERT INTO `language_configs` VALUES ('11', '1', '2', '确认密码', '2019-11-15 09:46:15', null, '11', null);
INSERT INTO `language_configs` VALUES ('12', '1', '2', '记住密码', '2019-11-15 09:46:15', null, '12', null);
INSERT INTO `language_configs` VALUES ('13', '1', '2', '忘记密码？', '2019-11-15 09:46:15', null, '13', null);
INSERT INTO `language_configs` VALUES ('14', '1', '2', '验证码', '2019-11-15 09:46:15', null, '14', null);
INSERT INTO `language_configs` VALUES ('15', '1', '2', '昵称', '2019-11-15 09:46:15', null, '15', null);
INSERT INTO `language_configs` VALUES ('16', '1', '2', '已有帐号？前往登录', '2019-11-15 09:46:15', null, '16', null);
INSERT INTO `language_configs` VALUES ('17', '1', '2', '恭喜您，验证成功！', '2019-11-15 09:46:15', null, '17', null);
INSERT INTO `language_configs` VALUES ('18', '1', '2', '链接已失效', '2019-11-15 09:46:15', null, '18', null);
INSERT INTO `language_configs` VALUES ('19', '1', '2', '请前往注册邮箱进行激活', '2019-11-15 09:46:15', null, '19', null);
INSERT INTO `language_configs` VALUES ('20', '1', '2', '重置密码', '2019-11-15 09:46:15', null, '20', null);
INSERT INTO `language_configs` VALUES ('21', '1', '2', '发送重置密码链接', '2019-11-15 09:46:15', null, '21', null);
INSERT INTO `language_configs` VALUES ('22', '1', '2', '请激活注册邮箱', '2019-11-15 09:46:15', null, '22', null);
INSERT INTO `language_configs` VALUES ('23', '1', '2', '为保障您的账户安全，请尽快前往 :email_address 激活您的注册邮箱。未收到邮件？请点击以下链接重发邮件', '2019-11-15 09:46:15', null, '23', null);
INSERT INTO `language_configs` VALUES ('24', '1', '2', '发送成功', '2019-11-15 09:46:15', null, '24', null);
INSERT INTO `language_configs` VALUES ('25', '1', '2', '密钥不合法', '2019-11-15 09:46:15', null, '25', null);
INSERT INTO `language_configs` VALUES ('26', '1', '2', '验证成功', '2019-11-15 09:46:15', null, '26', null);
INSERT INTO `language_configs` VALUES ('27', '1', '2', '请验证邮箱', '2019-11-15 09:46:15', null, '27', null);
INSERT INTO `language_configs` VALUES ('28', '1', '2', '你好 ', '2019-11-15 09:46:15', null, '28', null);
INSERT INTO `language_configs` VALUES ('29', '1', '2', '尝试中的登陆需要进一步验证，因为我们不能识别您的设备。为了完成登录，请单击下面的链接来进行验证', '2019-11-15 09:46:15', null, '29', null);
INSERT INTO `language_configs` VALUES ('30', '1', '2', '验证链接： ', '2019-11-15 09:46:15', null, '30', null);
INSERT INTO `language_configs` VALUES ('31', '1', '2', '如果您不尝试验证登陆, 您的密码可能被泄露', '2019-11-15 09:46:15', null, '31', null);
INSERT INTO `language_configs` VALUES ('32', '1', '2', '如果要查看更多关于我们的信息，请点击 ', '2019-11-15 09:46:15', null, '32', null);
INSERT INTO `language_configs` VALUES ('33', '1', '2', '谢谢，', '2019-11-15 09:46:15', null, '33', null);
INSERT INTO `language_configs` VALUES ('34', '1', '2', '您的朋友 ', '2019-11-15 09:46:15', null, '34', null);
INSERT INTO `language_configs` VALUES ('35', '1', '2', '重置密码', '2019-11-15 09:46:15', null, '35', null);
INSERT INTO `language_configs` VALUES ('36', '1', '2', '我们发送了一个重置密码的请求到您的这个邮箱', '2019-11-15 09:46:15', null, '36', null);
INSERT INTO `language_configs` VALUES ('37', '1', '2', '如果您没有发起重置密码请求，则不需要进行任何操作', '2019-11-15 09:46:15', null, '37', null);
INSERT INTO `language_configs` VALUES ('38', '1', '2', '在地址栏复制并粘贴以下链接： ', '2019-11-15 09:46:15', null, '38', null);
INSERT INTO `language_configs` VALUES ('39', '1', '2', '我的', '2019-11-15 09:46:15', null, '39', null);
INSERT INTO `language_configs` VALUES ('40', '1', '2', '新闻', '2019-11-15 09:46:15', null, '40', null);
INSERT INTO `language_configs` VALUES ('41', '1', '2', '商城', '2019-11-15 09:46:15', null, '41', null);
INSERT INTO `language_configs` VALUES ('42', '1', '2', '论坛', '2019-11-15 09:46:15', null, '42', null);
INSERT INTO `language_configs` VALUES ('43', '1', '2', '设置', '2019-11-15 09:46:15', null, '43', null);
INSERT INTO `language_configs` VALUES ('44', '1', '2', '我的游戏', '2019-11-15 09:46:15', null, '44', null);
INSERT INTO `language_configs` VALUES ('45', '1', '2', '我的最爱', '2019-11-15 09:46:15', null, '45', null);
INSERT INTO `language_configs` VALUES ('46', '1', '2', '更换背景', '2019-11-15 09:46:15', null, '46', null);
INSERT INTO `language_configs` VALUES ('47', '1', '2', '回到顶部', '2019-11-15 09:46:15', null, '47', null);
INSERT INTO `language_configs` VALUES ('48', '1', '2', '搜索你想要的', '2019-11-15 09:46:15', null, '48', null);
INSERT INTO `language_configs` VALUES ('49', '1', '2', '存档', '2019-11-15 09:46:15', null, '49', null);
INSERT INTO `language_configs` VALUES ('50', '1', '2', '存档年份', '2019-11-15 09:46:15', null, '50', null);
INSERT INTO `language_configs` VALUES ('51', '1', '2', '1月', '2019-11-15 09:46:15', null, '51', null);
INSERT INTO `language_configs` VALUES ('52', '1', '2', '2月', '2019-11-15 09:46:15', null, '52', null);
INSERT INTO `language_configs` VALUES ('53', '1', '2', '3月', '2019-11-15 09:46:15', null, '53', null);
INSERT INTO `language_configs` VALUES ('54', '1', '2', '6月', '2019-11-15 09:46:15', null, '54', null);
INSERT INTO `language_configs` VALUES ('55', '1', '2', '5月', '2019-11-15 09:46:15', null, '55', null);
INSERT INTO `language_configs` VALUES ('56', '1', '2', '4月', '2019-11-15 09:46:15', null, '56', null);
INSERT INTO `language_configs` VALUES ('57', '1', '2', '9月', '2019-11-15 09:46:15', null, '57', null);
INSERT INTO `language_configs` VALUES ('58', '1', '2', '8月', '2019-11-15 09:46:15', null, '58', null);
INSERT INTO `language_configs` VALUES ('59', '1', '2', '7月', '2019-11-15 09:46:15', null, '59', null);
INSERT INTO `language_configs` VALUES ('60', '1', '2', '12月', '2019-11-15 09:46:15', null, '60', null);
INSERT INTO `language_configs` VALUES ('61', '1', '2', '11月', '2019-11-15 09:46:15', null, '61', null);
INSERT INTO `language_configs` VALUES ('62', '1', '2', '10月', '2019-11-15 09:46:15', null, '62', null);
INSERT INTO `language_configs` VALUES ('63', '1', '2', '新闻', '2019-11-15 09:46:15', null, '63', null);
INSERT INTO `language_configs` VALUES ('64', '1', '2', '所有新闻', '2019-11-15 09:46:15', null, '64', null);
INSERT INTO `language_configs` VALUES ('65', '1', '2', '频道', '2019-11-15 09:46:15', null, '65', null);
INSERT INTO `language_configs` VALUES ('66', '1', '2', '综合新闻', '2019-11-15 09:46:15', null, '66', null);
INSERT INTO `language_configs` VALUES ('67', '1', '2', '分享到', '2019-11-15 09:46:15', null, '67', null);
INSERT INTO `language_configs` VALUES ('68', '2', '2', 'Set in', '2019-11-15 09:46:15', null, '1', null);
INSERT INTO `language_configs` VALUES ('69', '2', '2', 'Set up', '2019-11-15 09:46:15', null, '2', null);
INSERT INTO `language_configs` VALUES ('70', '2', '2', 'Log out', '2019-11-15 09:46:15', null, '3', null);
INSERT INTO `language_configs` VALUES ('71', '2', '2', 'Change language', '2019-11-15 09:46:15', null, '4', null);
INSERT INTO `language_configs` VALUES ('72', '2', '2', 'About us', '2019-11-15 09:46:15', null, '5', null);
INSERT INTO `language_configs` VALUES ('73', '2', '2', 'Comments', '2019-11-15 09:46:15', null, '6', null);
INSERT INTO `language_configs` VALUES ('74', '2', '2', 'Verificate', '2019-11-15 09:46:15', null, '7', null);
INSERT INTO `language_configs` VALUES ('75', '2', '2', 'Home', '2019-11-15 09:46:15', null, '8', null);
INSERT INTO `language_configs` VALUES ('76', '2', '2', 'Email', '2019-11-15 09:46:15', null, '9', null);
INSERT INTO `language_configs` VALUES ('77', '2', '2', 'Password', '2019-11-15 09:46:15', null, '10', null);
INSERT INTO `language_configs` VALUES ('78', '2', '2', 'Password confirm', '2019-11-15 09:46:15', null, '11', null);
INSERT INTO `language_configs` VALUES ('79', '2', '2', 'Remember me', '2019-11-15 09:46:15', null, '12', null);
INSERT INTO `language_configs` VALUES ('80', '2', '2', 'Forget password?', '2019-11-15 09:46:15', null, '13', null);
INSERT INTO `language_configs` VALUES ('81', '2', '2', 'Captcha', '2019-11-15 09:46:15', null, '14', null);
INSERT INTO `language_configs` VALUES ('82', '2', '2', 'Nickname', '2019-11-15 09:46:15', null, '15', null);
INSERT INTO `language_configs` VALUES ('83', '2', '2', 'Existing account? Set in', '2019-11-15 09:46:15', null, '16', null);
INSERT INTO `language_configs` VALUES ('84', '2', '2', 'Congratulations, Successful verification!', '2019-11-15 09:46:15', null, '17', null);
INSERT INTO `language_configs` VALUES ('85', '2', '2', 'Link expired', '2019-11-15 09:46:15', null, '18', null);
INSERT INTO `language_configs` VALUES ('86', '2', '2', 'Please go to the registered mailbox to activate', '2019-11-15 09:46:15', null, '19', null);
INSERT INTO `language_configs` VALUES ('87', '2', '2', 'Reset Password', '2019-11-15 09:46:15', null, '20', null);
INSERT INTO `language_configs` VALUES ('88', '2', '2', 'Send Password Reset Link', '2019-11-15 09:46:15', null, '21', null);
INSERT INTO `language_configs` VALUES ('89', '2', '2', 'Please activate the registration email', '2019-11-15 09:46:15', null, '22', null);
INSERT INTO `language_configs` VALUES ('90', '2', '2', 'To keep your account secure, please go :email_address as soon as possible to activate your registered email address. Didn\'t receive the email? Please click the link below to resend the message', '2019-11-15 09:46:15', null, '23', null);
INSERT INTO `language_configs` VALUES ('91', '2', '2', 'Send successfully', '2019-11-15 09:46:15', null, '24', null);
INSERT INTO `language_configs` VALUES ('92', '2', '2', 'Invalid token', '2019-11-15 09:46:15', null, '25', null);
INSERT INTO `language_configs` VALUES ('93', '2', '2', 'Validate successfully', '2019-11-15 09:46:15', null, '26', null);
INSERT INTO `language_configs` VALUES ('94', '2', '2', 'Confirm Your Email', '2019-11-15 09:46:15', null, '27', null);
INSERT INTO `language_configs` VALUES ('95', '2', '2', 'Hey ', '2019-11-15 09:46:15', null, '28', null);
INSERT INTO `language_configs` VALUES ('96', '2', '2', 'A sign in attempt requires further verification because we did not recognize your device. To complete the sign in, click the link for verification on the unrecognized device', '2019-11-15 09:46:15', null, '29', null);
INSERT INTO `language_configs` VALUES ('97', '2', '2', 'Verification link: ', '2019-11-15 09:46:15', null, '30', null);
INSERT INTO `language_configs` VALUES ('98', '2', '2', 'If you did not attempt to sign in to your account, your password may be compromised', '2019-11-15 09:46:15', null, '31', null);
INSERT INTO `language_configs` VALUES ('99', '2', '2', 'For more information, see ', '2019-11-15 09:46:15', null, '32', null);
INSERT INTO `language_configs` VALUES ('100', '2', '2', 'Thanks,', '2019-11-15 09:46:15', null, '33', null);
INSERT INTO `language_configs` VALUES ('101', '2', '2', 'Your friends at ', '2019-11-15 09:46:15', null, '34', null);
INSERT INTO `language_configs` VALUES ('102', '2', '2', 'Reset Password', '2019-11-15 09:46:15', null, '35', null);
INSERT INTO `language_configs` VALUES ('103', '2', '2', 'You are receiving this email because we received a password reset request for your account', '2019-11-15 09:46:15', null, '36', null);
INSERT INTO `language_configs` VALUES ('104', '2', '2', 'If you did not request a password reset, no further action is required', '2019-11-15 09:46:15', null, '37', null);
INSERT INTO `language_configs` VALUES ('105', '2', '2', 'copy and paste the URL below into your web browser: ', '2019-11-15 09:46:15', null, '38', null);
INSERT INTO `language_configs` VALUES ('106', '2', '2', 'Mine', '2019-11-15 09:46:15', null, '39', null);
INSERT INTO `language_configs` VALUES ('107', '2', '2', 'News', '2019-11-15 09:46:15', null, '40', null);
INSERT INTO `language_configs` VALUES ('108', '2', '2', 'Shop', '2019-11-15 09:46:15', null, '41', null);
INSERT INTO `language_configs` VALUES ('109', '2', '2', 'Forum', '2019-11-15 09:46:15', null, '42', null);
INSERT INTO `language_configs` VALUES ('110', '2', '2', 'Option', '2019-11-15 09:46:15', null, '43', null);
INSERT INTO `language_configs` VALUES ('111', '2', '2', 'My games', '2019-11-15 09:46:15', null, '44', null);
INSERT INTO `language_configs` VALUES ('112', '2', '2', 'My favorites', '2019-11-15 09:46:15', null, '45', null);
INSERT INTO `language_configs` VALUES ('113', '2', '2', 'Change background', '2019-11-15 09:46:15', null, '46', null);
INSERT INTO `language_configs` VALUES ('114', '2', '2', 'Back to top', '2019-11-15 09:46:15', null, '47', null);
INSERT INTO `language_configs` VALUES ('115', '2', '2', 'Search what you want', '2019-11-15 09:46:15', null, '48', null);
INSERT INTO `language_configs` VALUES ('116', '2', '2', 'Archive', '2019-11-15 09:46:15', null, '49', null);
INSERT INTO `language_configs` VALUES ('117', '2', '2', 'Archive year', '2019-11-15 09:46:15', null, '50', null);
INSERT INTO `language_configs` VALUES ('118', '2', '2', 'Jan', '2019-11-15 09:46:15', null, '51', null);
INSERT INTO `language_configs` VALUES ('119', '2', '2', 'Feb', '2019-11-15 09:46:15', null, '52', null);
INSERT INTO `language_configs` VALUES ('120', '2', '2', 'Mar', '2019-11-15 09:46:15', null, '53', null);
INSERT INTO `language_configs` VALUES ('121', '2', '2', 'Apr', '2019-11-15 09:46:15', null, '56', null);
INSERT INTO `language_configs` VALUES ('122', '2', '2', 'May', '2019-11-15 09:46:15', null, '55', null);
INSERT INTO `language_configs` VALUES ('123', '2', '2', 'Jun', '2019-11-15 09:46:15', null, '54', null);
INSERT INTO `language_configs` VALUES ('124', '2', '2', 'Jul', '2019-11-15 09:46:15', null, '59', null);
INSERT INTO `language_configs` VALUES ('125', '2', '2', 'Aug', '2019-11-15 09:46:15', null, '58', null);
INSERT INTO `language_configs` VALUES ('126', '2', '2', 'Sept', '2019-11-15 09:46:15', null, '57', null);
INSERT INTO `language_configs` VALUES ('127', '2', '2', 'Oct', '2019-11-15 09:46:15', null, '62', null);
INSERT INTO `language_configs` VALUES ('128', '2', '2', 'Nov', '2019-11-15 09:46:15', null, '61', null);
INSERT INTO `language_configs` VALUES ('129', '2', '2', 'Dec', '2019-11-15 09:46:15', null, '60', null);
INSERT INTO `language_configs` VALUES ('130', '2', '2', 'News', '2019-11-15 09:46:15', null, '63', null);
INSERT INTO `language_configs` VALUES ('131', '2', '2', 'All news', '2019-11-15 09:46:15', null, '64', null);
INSERT INTO `language_configs` VALUES ('132', '2', '2', 'Channels', '2019-11-15 09:46:15', null, '65', null);
INSERT INTO `language_configs` VALUES ('133', '2', '2', 'Comprehensive news', '2019-11-15 09:46:15', null, '66', null);
INSERT INTO `language_configs` VALUES ('134', '2', '2', 'Share to', '2019-11-15 09:46:15', null, '67', null);
INSERT INTO `language_configs` VALUES ('135', '1', '1', '这些凭据与我们的记录不符', '2019-11-15 09:46:15', null, '68', null);
INSERT INTO `language_configs` VALUES ('136', '1', '1', '登录尝试次数过多，请在 :seconds 秒后再试试', '2019-11-15 09:46:15', null, '69', null);
INSERT INTO `language_configs` VALUES ('137', '2', '1', 'These credentials do not match our records.', '2019-11-15 09:46:15', null, '68', null);
INSERT INTO `language_configs` VALUES ('138', '2', '1', 'Too many login attempts. Please try again in :seconds seconds.', '2019-11-15 09:46:15', null, '69', null);
INSERT INTO `language_configs` VALUES ('139', '1', '3', '&laquo; 上一页', '2019-11-15 09:46:15', null, '70', null);
INSERT INTO `language_configs` VALUES ('140', '1', '3', '下一页 &raquo;', '2019-11-15 09:46:15', null, '71', null);
INSERT INTO `language_configs` VALUES ('141', '2', '3', '&laquo; Previous', '2019-11-15 09:46:15', null, '70', null);
INSERT INTO `language_configs` VALUES ('142', '2', '3', 'Next &raquo;', '2019-11-15 09:46:15', null, '71', null);
INSERT INTO `language_configs` VALUES ('143', '1', '4', '密码至少有6个字符并且两次输入的密码须一致', '2019-11-15 09:46:15', null, '72', null);
INSERT INTO `language_configs` VALUES ('144', '1', '4', '您的密码已成功被重置', '2019-11-15 09:46:15', null, '73', null);
INSERT INTO `language_configs` VALUES ('145', '1', '4', '我们已将重置密码链接发送至您的邮箱', '2019-11-15 09:46:15', null, '74', null);
INSERT INTO `language_configs` VALUES ('146', '1', '4', '重置密码的密钥不合法', '2019-11-15 09:46:15', null, '75', null);
INSERT INTO `language_configs` VALUES ('147', '1', '4', '没有找到绑定有该邮箱的用户', '2019-11-15 09:46:15', null, '76', null);
INSERT INTO `language_configs` VALUES ('148', '2', '4', 'Passwords must be at least six characters and match the confirmation.', '2019-11-15 09:46:15', null, '72', null);
INSERT INTO `language_configs` VALUES ('149', '2', '4', 'Your password has been reset!', '2019-11-15 09:46:15', null, '73', null);
INSERT INTO `language_configs` VALUES ('150', '2', '4', 'We have e-mailed your password reset link!', '2019-11-15 09:46:15', null, '74', null);
INSERT INTO `language_configs` VALUES ('151', '2', '4', 'This password reset token is invalid.', '2019-11-15 09:46:15', null, '75', null);
INSERT INTO `language_configs` VALUES ('152', '2', '4', 'We can\'t find a user with that e-mail address.', '2019-11-15 09:46:15', null, '76', null);
INSERT INTO `language_configs` VALUES ('153', '1', '5', '密码必须由数字、字母至少6个字符组成', '2019-11-15 09:46:15', null, '77', null);
INSERT INTO `language_configs` VALUES ('154', '2', '5', 'The password must be composed of at least 6 alphanumeric characters', '2019-11-15 09:46:15', null, '77', null);
INSERT INTO `language_configs` VALUES ('155', '1', '6', ':attribute 是被接受的', '2019-11-15 09:46:15', null, '78', null);
INSERT INTO `language_configs` VALUES ('156', '1', '6', ':attribute 必须是一个合法的 URL', '2019-11-15 09:46:15', null, '79', null);
INSERT INTO `language_configs` VALUES ('157', '1', '6', ':attribute 必须是 :date 之后的一个日期', '2019-11-15 09:46:15', null, '80', null);
INSERT INTO `language_configs` VALUES ('158', '1', '6', ':attribute 必须是 :date 或 :date 之后的一个日期', '2019-11-15 09:46:15', null, '81', null);
INSERT INTO `language_configs` VALUES ('159', '1', '6', ':attribute 必须全部由字母字符构成。', '2019-11-15 09:46:15', null, '82', null);
INSERT INTO `language_configs` VALUES ('160', '1', '6', ':attribute 必须全部由字母、数字、中划线或下划线字符构成', '2019-11-15 09:46:15', null, '83', null);
INSERT INTO `language_configs` VALUES ('161', '1', '6', ':attribute 必须全部由字母和数字构成', '2019-11-15 09:46:15', null, '84', null);
INSERT INTO `language_configs` VALUES ('162', '1', '6', ':attribute 必须是个数组', '2019-11-15 09:46:15', null, '85', null);
INSERT INTO `language_configs` VALUES ('163', '1', '6', ':attribute 必须是 :date 之前的一个日期', '2019-11-15 09:46:15', null, '86', null);
INSERT INTO `language_configs` VALUES ('164', '1', '6', ':attribute 必须是 :date 或 :date 之前的一个日期', '2019-11-15 09:46:15', null, '87', null);
INSERT INTO `language_configs` VALUES ('165', '1', '6', ':attribute 必须在 :min 到 :max 之间', '2019-11-15 09:46:15', null, '88', null);
INSERT INTO `language_configs` VALUES ('166', '1', '6', ':attribute 必须在 :min 到 :max KB之间', '2019-11-15 09:46:15', null, '89', null);
INSERT INTO `language_configs` VALUES ('167', '1', '6', ':attribute 必须在 :min 到 :max 个字符之间', '2019-11-15 09:46:15', null, '90', null);
INSERT INTO `language_configs` VALUES ('168', '1', '6', ':attribute 必须在 :min 到 :max 项之间', '2019-11-15 09:46:15', null, '91', null);
INSERT INTO `language_configs` VALUES ('169', '1', '6', ':attribute 字符必须是 true 或 false', '2019-11-15 09:46:15', null, '92', null);
INSERT INTO `language_configs` VALUES ('170', '1', '6', ':attribute 二次确认不匹配', '2019-11-15 09:46:15', null, '93', null);
INSERT INTO `language_configs` VALUES ('171', '1', '6', ':attribute 必须是一个合法的日期', '2019-11-15 09:46:15', null, '94', null);
INSERT INTO `language_configs` VALUES ('172', '1', '6', ':attribute 与给定的格式 :format 不符合', '2019-11-15 09:46:15', null, '95', null);
INSERT INTO `language_configs` VALUES ('173', '1', '6', ':attribute 必须不同于:other', '2019-11-15 09:46:15', null, '96', null);
INSERT INTO `language_configs` VALUES ('174', '1', '6', ':attribute 必须是 :digits 位', '2019-11-15 09:46:15', null, '97', null);
INSERT INTO `language_configs` VALUES ('175', '1', '6', ':attribute 必须在 :min and :max 位之间', '2019-11-15 09:46:15', null, '98', null);
INSERT INTO `language_configs` VALUES ('176', '1', '6', ':attribute 图像尺寸不合法', '2019-11-15 09:46:15', null, '99', null);
INSERT INTO `language_configs` VALUES ('177', '1', '6', ':attribute 字段值不能重复', '2019-11-15 09:46:15', null, '100', null);
INSERT INTO `language_configs` VALUES ('178', '1', '6', ':attribute 必须是一个合法的电子邮件地址', '2019-11-15 09:46:15', null, '101', null);
INSERT INTO `language_configs` VALUES ('179', '1', '6', '选定的 :attribute 是无效的', '2019-11-15 09:46:15', null, '102', null);
INSERT INTO `language_configs` VALUES ('180', '1', '6', ':attribute 必须是文件', '2019-11-15 09:46:15', null, '103', null);
INSERT INTO `language_configs` VALUES ('181', '1', '6', ':attribute 的字段是必填的', '2019-11-15 09:46:15', null, '104', null);
INSERT INTO `language_configs` VALUES ('182', '1', '6', ':attribute 必须是一个图片 (jpeg, png, bmp 或者 gif)', '2019-11-15 09:46:15', null, '105', null);
INSERT INTO `language_configs` VALUES ('183', '1', '6', '选定的 :attribute 是无效的', '2019-11-15 09:46:15', null, '106', null);
INSERT INTO `language_configs` VALUES ('184', '1', '6', ':attribute 不在 :other 中', '2019-11-15 09:46:15', null, '107', null);
INSERT INTO `language_configs` VALUES ('185', '1', '6', ':attribute 必须是个整数', '2019-11-15 09:46:15', null, '108', null);
INSERT INTO `language_configs` VALUES ('186', '1', '6', ':attribute 必须是一个合法的 IP 地址', '2019-11-15 09:46:15', null, '109', null);
INSERT INTO `language_configs` VALUES ('187', '1', '6', ':attribute 必须是一个合法的 Ipv4 地址', '2019-11-15 09:46:15', null, '110', null);
INSERT INTO `language_configs` VALUES ('188', '1', '6', ':attribute 必须是一个合法的 Ipv6 地址', '2019-11-15 09:46:15', null, '111', null);
INSERT INTO `language_configs` VALUES ('189', '1', '6', ':attribute 必须是一个合法的 JSON 字符串', '2019-11-15 09:46:15', null, '112', null);
INSERT INTO `language_configs` VALUES ('190', '1', '6', ':attribute 的最大长度为 :max 位', '2019-11-15 09:46:15', null, '113', null);
INSERT INTO `language_configs` VALUES ('191', '1', '6', ':attribute 的最大为 :max', '2019-11-15 09:46:15', null, '114', null);
INSERT INTO `language_configs` VALUES ('192', '1', '6', ':attribute 的最大长度为 :max 字符', '2019-11-15 09:46:15', null, '115', null);
INSERT INTO `language_configs` VALUES ('193', '1', '6', ':attribute 的最大个数为 :max 个', '2019-11-15 09:46:15', null, '116', null);
INSERT INTO `language_configs` VALUES ('194', '1', '6', ':attribute 的文件类型必须是:values', '2019-11-15 09:46:15', null, '117', null);
INSERT INTO `language_configs` VALUES ('195', '1', '6', ':attribute 的文件类型必须是:values', '2019-11-15 09:46:15', null, '118', null);
INSERT INTO `language_configs` VALUES ('196', '1', '6', ':attribute 的最小长度为 :min 位', '2019-11-15 09:46:15', null, '119', null);
INSERT INTO `language_configs` VALUES ('197', '1', '6', ':attribute 的最小长度为 :min 字符', '2019-11-15 09:46:15', null, '120', null);
INSERT INTO `language_configs` VALUES ('198', '1', '6', ':attribute 至少有 :min 项', '2019-11-15 09:46:15', null, '121', null);
INSERT INTO `language_configs` VALUES ('199', '1', '6', ':attribute 大小至少为:min KB', '2019-11-15 09:46:15', null, '122', null);
INSERT INTO `language_configs` VALUES ('200', '1', '6', '选定的 :attribute 是无效的', '2019-11-15 09:46:15', null, '123', null);
INSERT INTO `language_configs` VALUES ('201', '1', '6', ':attribute 必须是数字', '2019-11-15 09:46:15', null, '124', null);
INSERT INTO `language_configs` VALUES ('202', '1', '6', ':attribute 字段必须存在', '2019-11-15 09:46:15', null, '125', null);
INSERT INTO `language_configs` VALUES ('203', '1', '6', ':attribute 格式是无效的', '2019-11-15 09:46:15', null, '126', null);
INSERT INTO `language_configs` VALUES ('204', '1', '6', ':attribute 字段必须填写', '2019-11-15 09:46:15', null, '127', null);
INSERT INTO `language_configs` VALUES ('205', '1', '6', ':attribute 字段是必须的当 :other 是 :value', '2019-11-15 09:46:15', null, '128', null);
INSERT INTO `language_configs` VALUES ('206', '1', '6', ':attribute 字段是必须的除非 :other 在 :values 中', '2019-11-15 09:46:15', null, '129', null);
INSERT INTO `language_configs` VALUES ('207', '1', '6', ':attribute 字段是必须的当 :values 是存在的', '2019-11-15 09:46:15', null, '130', null);
INSERT INTO `language_configs` VALUES ('208', '1', '6', ':attribute 字段是必须的当 :values 是存在的', '2019-11-15 09:46:15', null, '131', null);
INSERT INTO `language_configs` VALUES ('209', '1', '6', ':attribute 字段是必须的当 :values 是不存在的', '2019-11-15 09:46:15', null, '132', null);
INSERT INTO `language_configs` VALUES ('210', '1', '6', ':attribute 字段是必须的当 没有一个 :values 是存在的', '2019-11-15 09:46:15', null, '133', null);
INSERT INTO `language_configs` VALUES ('211', '1', '6', ':attribute 和 :other 必须匹配', '2019-11-15 09:46:15', null, '134', null);
INSERT INTO `language_configs` VALUES ('212', '1', '6', ':attribute 必须是 :size 位', '2019-11-15 09:46:15', null, '135', null);
INSERT INTO `language_configs` VALUES ('213', '1', '6', ':attribute 必须是 :size KB', '2019-11-15 09:46:15', null, '136', null);
INSERT INTO `language_configs` VALUES ('214', '1', '6', ':attribute 必须是 :size 个字符', '2019-11-15 09:46:15', null, '137', null);
INSERT INTO `language_configs` VALUES ('215', '1', '6', ':attribute 必须包括 :size 项', '2019-11-15 09:46:15', null, '138', null);
INSERT INTO `language_configs` VALUES ('216', '1', '6', ':attribute 必须是字符串', '2019-11-15 09:46:15', null, '139', null);
INSERT INTO `language_configs` VALUES ('217', '1', '6', ':attribute 必须个有效的时区', '2019-11-15 09:46:15', null, '140', null);
INSERT INTO `language_configs` VALUES ('218', '1', '6', ':attribute 已存在', '2019-11-15 09:46:15', null, '141', null);
INSERT INTO `language_configs` VALUES ('219', '1', '6', ':attribute 上传失败', '2019-11-15 09:46:15', null, '142', null);
INSERT INTO `language_configs` VALUES ('220', '1', '6', ':attribute 无效的格式', '2019-11-15 09:46:15', null, '143', null);
INSERT INTO `language_configs` VALUES ('221', '1', '6', ':attribute 不正确', '2019-11-15 09:46:15', null, '144', null);
INSERT INTO `language_configs` VALUES ('222', '1', '6', '验证码', '2019-11-15 09:46:15', null, '145', null);
INSERT INTO `language_configs` VALUES ('223', '1', '6', '昵称', '2019-11-15 09:46:15', null, '146', null);
INSERT INTO `language_configs` VALUES ('224', '1', '6', '密码', '2019-11-15 09:46:15', null, '147', null);
INSERT INTO `language_configs` VALUES ('225', '1', '6', '邮箱', '2019-11-15 09:46:15', null, '148', null);
INSERT INTO `language_configs` VALUES ('226', '2', '6', 'The :attribute must be accepted.', '2019-11-15 09:46:15', null, '78', null);
INSERT INTO `language_configs` VALUES ('227', '2', '6', 'The :attribute is not a valid URL.', '2019-11-15 09:46:15', null, '79', null);
INSERT INTO `language_configs` VALUES ('228', '2', '6', 'The :attribute must be a date after :date.', '2019-11-15 09:46:15', null, '80', null);
INSERT INTO `language_configs` VALUES ('229', '2', '6', 'The :attribute must be a date after or equal to :date.', '2019-11-15 09:46:15', null, '81', null);
INSERT INTO `language_configs` VALUES ('230', '2', '6', 'The :attribute may only contain letters.', '2019-11-15 09:46:15', null, '82', null);
INSERT INTO `language_configs` VALUES ('231', '2', '6', 'The :attribute may only contain letters, numbers, and dashes.', '2019-11-15 09:46:15', null, '83', null);
INSERT INTO `language_configs` VALUES ('232', '2', '6', 'The :attribute may only contain letters and numbers.', '2019-11-15 09:46:15', null, '84', null);
INSERT INTO `language_configs` VALUES ('233', '2', '6', 'The :attribute must be an array.', '2019-11-15 09:46:15', null, '85', null);
INSERT INTO `language_configs` VALUES ('234', '2', '6', 'The :attribute must be a date before :date.', '2019-11-15 09:46:15', null, '86', null);
INSERT INTO `language_configs` VALUES ('235', '2', '6', 'The :attribute must be a date before or equal to :date.', '2019-11-15 09:46:15', null, '87', null);
INSERT INTO `language_configs` VALUES ('236', '2', '6', 'The :attribute must be between :min and :max.', '2019-11-15 09:46:15', null, '88', null);
INSERT INTO `language_configs` VALUES ('237', '2', '6', 'The :attribute must be between :min and :max kilobytes.', '2019-11-15 09:46:15', null, '89', null);
INSERT INTO `language_configs` VALUES ('238', '2', '6', 'The :attribute must be between :min and :max characters.', '2019-11-15 09:46:15', null, '90', null);
INSERT INTO `language_configs` VALUES ('239', '2', '6', 'The :attribute must have between :min and :max items.', '2019-11-15 09:46:15', null, '91', null);
INSERT INTO `language_configs` VALUES ('240', '2', '6', 'The :attribute field must be true or false.', '2019-11-15 09:46:15', null, '92', null);
INSERT INTO `language_configs` VALUES ('241', '2', '6', 'The :attribute confirmation does not match.', '2019-11-15 09:46:15', null, '93', null);
INSERT INTO `language_configs` VALUES ('242', '2', '6', 'The :attribute is not a valid date.', '2019-11-15 09:46:15', null, '94', null);
INSERT INTO `language_configs` VALUES ('243', '2', '6', 'The :attribute does not match the format :format.', '2019-11-15 09:46:15', null, '95', null);
INSERT INTO `language_configs` VALUES ('244', '2', '6', 'The :attribute and :other must be different.', '2019-11-15 09:46:15', null, '96', null);
INSERT INTO `language_configs` VALUES ('245', '2', '6', 'The :attribute must be :digits digits.', '2019-11-15 09:46:15', null, '97', null);
INSERT INTO `language_configs` VALUES ('246', '2', '6', 'The :attribute must be between :min and :max digits.', '2019-11-15 09:46:15', null, '98', null);
INSERT INTO `language_configs` VALUES ('247', '2', '6', 'The :attribute has invalid image dimensions.', '2019-11-15 09:46:15', null, '99', null);
INSERT INTO `language_configs` VALUES ('248', '2', '6', 'The :attribute field has a duplicate value.', '2019-11-15 09:46:15', null, '100', null);
INSERT INTO `language_configs` VALUES ('249', '2', '6', 'The :attribute must be a valid email address.', '2019-11-15 09:46:15', null, '101', null);
INSERT INTO `language_configs` VALUES ('250', '2', '6', 'The selected :attribute is invalid.', '2019-11-15 09:46:15', null, '102', null);
INSERT INTO `language_configs` VALUES ('251', '2', '6', 'The :attribute must be a file.', '2019-11-15 09:46:15', null, '103', null);
INSERT INTO `language_configs` VALUES ('252', '2', '6', 'The :attribute field must have a value.', '2019-11-15 09:46:15', null, '104', null);
INSERT INTO `language_configs` VALUES ('253', '2', '6', 'The :attribute must be an image.', '2019-11-15 09:46:15', null, '105', null);
INSERT INTO `language_configs` VALUES ('254', '2', '6', 'The selected :attribute is invalid.', '2019-11-15 09:46:15', null, '106', null);
INSERT INTO `language_configs` VALUES ('255', '2', '6', 'The :attribute field does not exist in :other.', '2019-11-15 09:46:15', null, '107', null);
INSERT INTO `language_configs` VALUES ('256', '2', '6', 'The :attribute must be an integer.', '2019-11-15 09:46:15', null, '108', null);
INSERT INTO `language_configs` VALUES ('257', '2', '6', 'The :attribute must be a valid IP address.', '2019-11-15 09:46:15', null, '109', null);
INSERT INTO `language_configs` VALUES ('258', '2', '6', 'The :attribute must be a valid IPv4 address.', '2019-11-15 09:46:15', null, '110', null);
INSERT INTO `language_configs` VALUES ('259', '2', '6', 'The :attribute must be a valid IPv6 address.', '2019-11-15 09:46:15', null, '111', null);
INSERT INTO `language_configs` VALUES ('260', '2', '6', 'The :attribute must be a valid JSON string.', '2019-11-15 09:46:15', null, '112', null);
INSERT INTO `language_configs` VALUES ('261', '2', '6', 'The :attribute may not be greater than :max.', '2019-11-15 09:46:15', null, '113', null);
INSERT INTO `language_configs` VALUES ('262', '2', '6', 'The :attribute may not be greater than :max kilobytes.', '2019-11-15 09:46:15', null, '114', null);
INSERT INTO `language_configs` VALUES ('263', '2', '6', 'The :attribute may not be greater than :max characters.', '2019-11-15 09:46:15', null, '115', null);
INSERT INTO `language_configs` VALUES ('264', '2', '6', 'The :attribute may not have more than :max items.', '2019-11-15 09:46:15', null, '116', null);
INSERT INTO `language_configs` VALUES ('265', '2', '6', 'The :attribute must be a file of type: :values.', '2019-11-15 09:46:15', null, '117', null);
INSERT INTO `language_configs` VALUES ('266', '2', '6', 'The :attribute must be a file of type: :values.', '2019-11-15 09:46:15', null, '118', null);
INSERT INTO `language_configs` VALUES ('267', '2', '6', 'The :attribute must be at least :min.', '2019-11-15 09:46:15', null, '119', null);
INSERT INTO `language_configs` VALUES ('268', '2', '6', 'The :attribute must be at least :min kilobytes.', '2019-11-15 09:46:15', null, '122', null);
INSERT INTO `language_configs` VALUES ('269', '2', '6', 'The :attribute must be at least :min characters.', '2019-11-15 09:46:15', null, '120', null);
INSERT INTO `language_configs` VALUES ('270', '2', '6', 'The :attribute must have at least :min items.', '2019-11-15 09:46:15', null, '121', null);
INSERT INTO `language_configs` VALUES ('271', '2', '6', 'The selected :attribute is invalid.', '2019-11-15 09:46:15', null, '123', null);
INSERT INTO `language_configs` VALUES ('272', '2', '6', 'The :attribute must be a number.', '2019-11-15 09:46:15', null, '124', null);
INSERT INTO `language_configs` VALUES ('273', '2', '6', 'The :attribute field must be present.', '2019-11-15 09:46:15', null, '125', null);
INSERT INTO `language_configs` VALUES ('274', '2', '6', 'The :attribute format is invalid.', '2019-11-15 09:46:15', null, '126', null);
INSERT INTO `language_configs` VALUES ('275', '2', '6', 'The :attribute field is required.', '2019-11-15 09:46:15', null, '127', null);
INSERT INTO `language_configs` VALUES ('276', '2', '6', 'The :attribute field is required when :other is :value.', '2019-11-15 09:46:15', null, '128', null);
INSERT INTO `language_configs` VALUES ('277', '2', '6', 'The :attribute field is required unless :other is in :values.', '2019-11-15 09:46:15', null, '129', null);
INSERT INTO `language_configs` VALUES ('278', '2', '6', 'The :attribute field is required when :values is present.', '2019-11-15 09:46:15', null, '130', null);
INSERT INTO `language_configs` VALUES ('279', '2', '6', 'The :attribute field is required when :values is present.', '2019-11-15 09:46:15', null, '131', null);
INSERT INTO `language_configs` VALUES ('280', '2', '6', 'The :attribute field is required when :values is not present.', '2019-11-15 09:46:15', null, '132', null);
INSERT INTO `language_configs` VALUES ('281', '2', '6', 'The :attribute field is required when none of :values are present.', '2019-11-15 09:46:15', null, '133', null);
INSERT INTO `language_configs` VALUES ('282', '2', '6', 'The :attribute and :other must match.', '2019-11-15 09:46:15', null, '134', null);
INSERT INTO `language_configs` VALUES ('283', '2', '6', 'The :attribute must be :size.', '2019-11-15 09:46:15', null, '135', null);
INSERT INTO `language_configs` VALUES ('284', '2', '6', 'The :attribute must be :size kilobytes.', '2019-11-15 09:46:15', null, '136', null);
INSERT INTO `language_configs` VALUES ('285', '2', '6', 'The :attribute must be :size characters.', '2019-11-15 09:46:15', null, '137', null);
INSERT INTO `language_configs` VALUES ('286', '2', '6', 'The :attribute must contain :size items.', '2019-11-15 09:46:15', null, '138', null);
INSERT INTO `language_configs` VALUES ('287', '2', '6', 'The :attribute must be a string.', '2019-11-15 09:46:15', null, '139', null);
INSERT INTO `language_configs` VALUES ('288', '2', '6', 'The :attribute must be a valid zone.', '2019-11-15 09:46:15', null, '140', null);
INSERT INTO `language_configs` VALUES ('289', '2', '6', 'The :attribute has already been taken.', '2019-11-15 09:46:15', null, '141', null);
INSERT INTO `language_configs` VALUES ('290', '2', '6', 'The :attribute failed to upload.', '2019-11-15 09:46:15', null, '142', null);
INSERT INTO `language_configs` VALUES ('291', '2', '6', 'The :attribute format is invalid.', '2019-11-15 09:46:15', null, '143', null);
INSERT INTO `language_configs` VALUES ('292', '2', '6', 'The :attribute is not correct.', '2019-11-15 09:46:15', null, '144', null);
INSERT INTO `language_configs` VALUES ('293', '2', '6', 'code of captcha', '2019-11-15 09:46:15', null, '145', null);
INSERT INTO `language_configs` VALUES ('294', '2', '6', 'nickname', '2019-11-15 09:46:15', null, '146', null);
INSERT INTO `language_configs` VALUES ('295', '2', '6', 'password', '2019-11-15 09:46:15', null, '147', null);
INSERT INTO `language_configs` VALUES ('296', '2', '6', 'email', '2019-11-15 09:46:15', null, '148', null);

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '语言名',
  `code` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '语言代码',
  `is_default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间，如果存在则表示该条数据已被删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO `languages` VALUES ('1', '简体中文', 'zh-CN', '1', '2019-11-08 14:42:02', '2019-11-08 14:42:05', null);
INSERT INTO `languages` VALUES ('2', 'English', 'en', '0', '2019-11-08 14:42:02', '2019-11-08 14:42:02', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `migrations` VALUES ('63', '2019_11_15_072227_create_language_config_keys', '4');
INSERT INTO `migrations` VALUES ('64', '2019_11_15_071952_update_language_configs_table_add_deleted_at_and_update_config_key', '5');

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
INSERT INTO `news` VALUES ('2', '1', 'AUTHOR2', '2016-12-31 23:59:59', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
INSERT INTO `news_to_tags` VALUES ('1', '1');

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
