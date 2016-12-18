/*
SQLyog Ultimate v11.27 (32 bit)
MySQL - 5.6.31 : Database - cmoc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cmoc` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cmoc`;

/*Table structure for table `sequence` */

DROP TABLE IF EXISTS `sequence`;

CREATE TABLE `sequence` (
  `name` varchar(50) NOT NULL,
  `current_value` int(11) NOT NULL,
  `increment` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sequence` */

insert  into `sequence`(`name`,`current_value`,`increment`) values ('seq_family_no',10013,1);

/*Table structure for table `t_activity_child` */

DROP TABLE IF EXISTS `t_activity_child`;

CREATE TABLE `t_activity_child` (
  `id` int(22) unsigned NOT NULL AUTO_INCREMENT,
  `child_id` int(22) DEFAULT NULL COMMENT '小孩编号',
  `child_img` varchar(128) DEFAULT NULL COMMENT '小孩头像',
  `child_title` varchar(128) DEFAULT NULL COMMENT '小孩头衔',
  `child_comment` varchar(1000) DEFAULT NULL COMMENT '小孩评语',
  `activity_id` int(22) NOT NULL COMMENT '活动编号',
  `marine_id` int(22) DEFAULT NULL COMMENT '战队编号',
  `creater_user_id` int(11) DEFAULT NULL COMMENT '创建人用户id',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_user_id` int(11) DEFAULT NULL COMMENT '更新人用户id',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N有效 Y无效',
  PRIMARY KEY (`id`),
  KEY `idx_child_id` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动小孩信息';

/*Data for the table `t_activity_child` */

/*Table structure for table `t_activity_family` */

DROP TABLE IF EXISTS `t_activity_family`;

CREATE TABLE `t_activity_family` (
  `id` int(22) unsigned NOT NULL AUTO_INCREMENT,
  `child_id` int(22) DEFAULT NULL COMMENT '小孩编号',
  `child_img` varchar(128) DEFAULT NULL COMMENT '小孩头像',
  `child_title` varchar(128) DEFAULT NULL COMMENT '小孩头衔',
  `child_comment` varchar(1000) DEFAULT NULL COMMENT '小孩评语',
  `activity_id` int(22) NOT NULL COMMENT '活动编号',
  `marine_id` int(22) DEFAULT NULL COMMENT '战队编号',
  `creater_user_id` int(11) DEFAULT NULL COMMENT '创建人用户id',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_user_id` int(11) DEFAULT NULL COMMENT '更新人用户id',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N有效 Y无效',
  PRIMARY KEY (`id`),
  KEY `idx_child_id` (`child_id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COMMENT='活动报名家庭信息';

/*Data for the table `t_activity_family` */

insert  into `t_activity_family`(`id`,`child_id`,`child_img`,`child_title`,`child_comment`,`activity_id`,`marine_id`,`creater_user_id`,`creater`,`create_time`,`updater_user_id`,`updater`,`update_time`,`is_delete`) values (66,NULL,NULL,NULL,NULL,5,23,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(67,NULL,NULL,NULL,NULL,5,23,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(68,NULL,NULL,NULL,NULL,5,23,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(69,NULL,NULL,NULL,NULL,5,23,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(70,NULL,NULL,NULL,NULL,5,23,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(71,NULL,NULL,NULL,NULL,5,24,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(72,NULL,NULL,NULL,NULL,5,24,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(73,NULL,NULL,NULL,NULL,5,24,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(74,NULL,NULL,NULL,NULL,5,24,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(75,NULL,NULL,NULL,NULL,5,24,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(76,NULL,NULL,NULL,NULL,5,25,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(77,NULL,NULL,NULL,NULL,5,25,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(78,NULL,NULL,NULL,NULL,5,25,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(79,NULL,NULL,NULL,NULL,5,25,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(80,NULL,NULL,NULL,NULL,5,25,1,'管理员','2016-12-08 13:03:39',NULL,NULL,NULL,'N'),(81,NULL,NULL,NULL,NULL,6,26,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(82,NULL,NULL,NULL,NULL,6,26,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(83,NULL,NULL,NULL,NULL,6,26,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(84,NULL,NULL,NULL,NULL,6,26,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(85,NULL,NULL,NULL,NULL,6,26,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(86,NULL,NULL,NULL,NULL,6,27,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(87,NULL,NULL,NULL,NULL,6,27,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(88,NULL,NULL,NULL,NULL,6,27,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(89,NULL,NULL,NULL,NULL,6,27,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(90,NULL,NULL,NULL,NULL,6,27,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(91,NULL,NULL,NULL,NULL,6,28,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(92,NULL,NULL,NULL,NULL,6,28,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(93,NULL,NULL,NULL,NULL,6,28,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(94,NULL,NULL,NULL,NULL,6,28,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N'),(95,NULL,NULL,NULL,NULL,6,28,1,'管理员','2016-12-08 13:24:04',NULL,NULL,NULL,'N');

/*Table structure for table `t_activity_hm_sign` */

DROP TABLE IF EXISTS `t_activity_hm_sign`;

CREATE TABLE `t_activity_hm_sign` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `activity_id` int(22) NOT NULL COMMENT '活动id',
  `line_id` int(22) DEFAULT NULL COMMENT '线路id',
  `marine_id` int(22) DEFAULT NULL COMMENT '战队id',
  `hm_id` int(22) NOT NULL COMMENT '透明人id',
  `sign_date` varchar(8) DEFAULT NULL COMMENT '报名日期',
  `is_effect` int(2) DEFAULT '0' COMMENT '是否生效 0否 1是',
  `effect_date` varchar(8) DEFAULT NULL COMMENT '生效日期',
  `score` decimal(8,2) DEFAULT NULL COMMENT '评分',
  `judge` varchar(512) DEFAULT NULL COMMENT '评价',
  `creater_user_id` int(11) DEFAULT NULL COMMENT '创建人用户id',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `updater_user_id` int(11) DEFAULT NULL COMMENT '更新人用户id',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N有效 Y失效',
  `reason` varchar(256) DEFAULT NULL COMMENT '审核不通过原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='透明人活动报名表';

/*Data for the table `t_activity_hm_sign` */

insert  into `t_activity_hm_sign`(`id`,`activity_id`,`line_id`,`marine_id`,`hm_id`,`sign_date`,`is_effect`,`effect_date`,`score`,`judge`,`creater_user_id`,`creater`,`create_time`,`updater_user_id`,`updater`,`update_time`,`is_delete`,`reason`) values (17,3,NULL,15,31,'20161205',1,'20161205',NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,'admin','2016-12-06 00:48:54','N',NULL),(18,3,NULL,15,22,'20161205',1,'20161205',NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL),(19,3,NULL,16,23,'20161205',1,'20161205',NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL),(20,3,NULL,16,24,'20161205',1,'20161205',NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL),(21,3,NULL,17,25,'20161205',1,'20161205',NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL),(22,3,NULL,17,26,'20161205',1,'20161205',NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL),(23,3,NULL,18,27,'20161205',0,'20161205',NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL),(24,3,NULL,18,28,'20161205',0,NULL,NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'Y','发斯蒂芬'),(25,3,NULL,19,29,'20161205',1,NULL,NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL),(26,3,NULL,19,30,'20161205',0,NULL,NULL,NULL,1,'管理员','2016-12-05 22:03:20',NULL,NULL,NULL,'N',NULL);

/*Table structure for table `t_activity_info` */

DROP TABLE IF EXISTS `t_activity_info`;

CREATE TABLE `t_activity_info` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(128) NOT NULL COMMENT '活动名称',
  `start_date` datetime NOT NULL COMMENT '活动开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '活动结束日期',
  `activity_addr` varchar(256) DEFAULT NULL COMMENT '活动地址',
  `line_name` varchar(256) DEFAULT NULL COMMENT '活动线路',
  `line_id` int(11) DEFAULT NULL COMMENT '活动线路id',
  `activity_peoples` int(11) DEFAULT NULL COMMENT '活动满员人数',
  `activity_img_url` varchar(256) DEFAULT NULL COMMENT '活动图片url',
  `qrcode_url` varchar(256) DEFAULT NULL COMMENT '报名二维码',
  `city` varchar(128) DEFAULT NULL COMMENT '城市',
  `city_id` int(11) DEFAULT NULL COMMENT '城市id',
  `activity_num` varchar(128) DEFAULT NULL COMMENT '活动期数',
  `activity_desc` varchar(512) DEFAULT NULL COMMENT '活动描述',
  `activity_type` varchar(8) NOT NULL COMMENT '活动类型',
  `year` int(8) DEFAULT NULL COMMENT '年份',
  `month` int(2) DEFAULT NULL COMMENT '月份',
  `product_id` int(11) NOT NULL COMMENT '课程编号',
  `creater_user_id` int(11) DEFAULT NULL COMMENT '创建人用户id',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_user_id` int(11) DEFAULT NULL COMMENT '更新人用户id',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `updater_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N有效 Y失效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='活动信息';

/*Data for the table `t_activity_info` */

insert  into `t_activity_info`(`id`,`activity_name`,`start_date`,`end_date`,`activity_addr`,`line_name`,`line_id`,`activity_peoples`,`activity_img_url`,`qrcode_url`,`city`,`city_id`,`activity_num`,`activity_desc`,`activity_type`,`year`,`month`,`product_id`,`creater_user_id`,`creater`,`create_time`,`updater_user_id`,`updater`,`updater_time`,`is_delete`) values (1,'西域骑游','2016-12-16 13:14:00','2016-12-20 13:14:00','上海医疗',NULL,NULL,30,'jpg____imgextra__ACTIVITY__2016__b96698b2-9ba7-45bf-9c5c-97f610eef957.jpg',NULL,'1',NULL,'第1期','','1',2016,12,1,1,'管理员','2016-12-16 13:15:00',1,'管理员','2016-12-16 13:20:28','N');

/*Table structure for table `t_activity_marines` */

DROP TABLE IF EXISTS `t_activity_marines`;

CREATE TABLE `t_activity_marines` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `marine_name` varchar(128) NOT NULL COMMENT '战队名称',
  `marine_img` varchar(128) DEFAULT NULL COMMENT '战队图片',
  `marine_slogan` varchar(256) DEFAULT NULL COMMENT '战队口号',
  `marine_prize` varchar(128) DEFAULT NULL COMMENT '战队奖项',
  `line_name` varchar(128) DEFAULT NULL COMMENT '线路名称',
  `line_id` int(11) DEFAULT NULL COMMENT '线路id',
  `activity_id` int(11) DEFAULT NULL COMMENT '活动id',
  `status` int(2) DEFAULT '0' COMMENT '战队状态 0:准备中 1:已绑定',
  `comment` varchar(512) DEFAULT NULL COMMENT '总评',
  `votes` int(11) DEFAULT '0' COMMENT '支持票数',
  `readnum` int(11) DEFAULT '0' COMMENT '阅读量',
  `score` int(11) DEFAULT '0' COMMENT '得分',
  `qrcode_url` varchar(256) DEFAULT NULL COMMENT '微信二维码',
  `creater_user_id` int(11) DEFAULT NULL COMMENT '创建人用户id',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_user_id` int(11) DEFAULT NULL COMMENT '更新人用户id',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N有效 Y失效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动战队信息';

/*Data for the table `t_activity_marines` */

/*Table structure for table `t_activity_marines_support` */

DROP TABLE IF EXISTS `t_activity_marines_support`;

CREATE TABLE `t_activity_marines_support` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `openid` varchar(128) DEFAULT NULL COMMENT '公众号开放id',
  `nickName` varchar(128) DEFAULT NULL COMMENT '昵称',
  `img_url` varchar(128) DEFAULT NULL COMMENT '图片url',
  `activity_id` int(11) DEFAULT NULL COMMENT '活动id',
  `margin_id` int(22) DEFAULT NULL COMMENT '战队id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='战队支持记录';

/*Data for the table `t_activity_marines_support` */

/*Table structure for table `t_activity_resource` */

DROP TABLE IF EXISTS `t_activity_resource`;

CREATE TABLE `t_activity_resource` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `url` varchar(128) NOT NULL COMMENT '资源路径',
  `activity_id` int(22) DEFAULT NULL COMMENT '活动id',
  `marine_id` int(22) NOT NULL COMMENT '战队id',
  `hm_id` int(22) NOT NULL COMMENT '透明人id',
  `resource_type` varchar(2) DEFAULT NULL COMMENT '资源类型 1图片 2视频 3语音 4文字 5定位',
  `resource` varchar(1000) DEFAULT NULL COMMENT '资源',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N有效 Y失效',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动资源表';

/*Data for the table `t_activity_resource` */

/*Table structure for table `t_activity_teacher` */

DROP TABLE IF EXISTS `t_activity_teacher`;

CREATE TABLE `t_activity_teacher` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '老师姓名',
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `activity_id` int(11) DEFAULT NULL COMMENT '活动编号',
  `marine_id` int(11) DEFAULT NULL COMMENT '活动编号',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N正常 Y无效',
  `creater_user_id` int(11) DEFAULT NULL COMMENT '创建人用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `updater_user_id` int(11) DEFAULT NULL COMMENT '更新人用户id',
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='活动参与老师';

/*Data for the table `t_activity_teacher` */

insert  into `t_activity_teacher`(`id`,`name`,`mobile`,`activity_id`,`marine_id`,`is_delete`,`creater_user_id`,`create_time`,`creater`,`updater_user_id`,`update_time`,`updater`) values (9,'张师一','13681981231',3,15,'N',1,'2016-12-05 22:03:20','管理员',NULL,'0000-00-00 00:00:00',NULL),(10,'李师二','13681981232',3,15,'N',1,'2016-12-05 22:03:20','管理员',NULL,'0000-00-00 00:00:00',NULL),(13,'李老师','13710000000',5,23,'N',1,'2016-12-08 13:03:39','管理员',NULL,'0000-00-00 00:00:00',NULL),(14,'王老师','13710000001',5,23,'N',1,'2016-12-08 13:03:39','管理员',NULL,'0000-00-00 00:00:00',NULL),(15,'李老师','13710000000',6,26,'N',1,'2016-12-08 13:24:04','管理员',NULL,'0000-00-00 00:00:00',NULL),(16,'王老师','13710000001',6,26,'N',1,'2016-12-08 13:24:04','管理员',NULL,'0000-00-00 00:00:00',NULL);

/*Table structure for table `t_buy_record` */

DROP TABLE IF EXISTS `t_buy_record`;

CREATE TABLE `t_buy_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(128) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT '产品id',
  `product_name` varchar(128) DEFAULT NULL COMMENT '产品名称',
  `product_type` varchar(2) DEFAULT NULL COMMENT '商品类型 1活动 2课程 3小商品',
  `mobile` varchar(11) DEFAULT NULL COMMENT '购买人手机号码',
  `amount` decimal(22,2) DEFAULT NULL COMMENT '支付金额',
  `exchangePoints` int(11) DEFAULT NULL COMMENT '积分兑换点',
  `give_points` int(11) DEFAULT NULL COMMENT '赠送积点',
  `buy_type` varchar(2) DEFAULT '1' COMMENT '购买类型 1现金 2积分',
  `is_delete` varchar(2) DEFAULT 'N',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购买记录';

/*Data for the table `t_buy_record` */

/*Table structure for table `t_child_sign_info` */

DROP TABLE IF EXISTS `t_child_sign_info`;

CREATE TABLE `t_child_sign_info` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `child_idcard` varchar(32) NOT NULL COMMENT '小孩证件号码',
  `child_name` varchar(128) NOT NULL COMMENT '小孩姓名',
  `child_mobile` varchar(11) DEFAULT NULL COMMENT '小孩手机号码',
  `child_age` int(4) DEFAULT NULL COMMENT '小孩年龄',
  `child_sex` varchar(2) DEFAULT NULL COMMENT '小孩性别F男M女',
  `is_disease` varchar(1) DEFAULT 'N' COMMENT '有无疾病N无 Y有',
  `disease_desc` varchar(256) DEFAULT NULL COMMENT '病情描述',
  `emer_name` varchar(128) DEFAULT NULL COMMENT '紧急联系人姓名',
  `emer_mobile` varchar(11) NOT NULL COMMENT '紧急联系人号码',
  `city` varchar(8) DEFAULT NULL COMMENT '城市',
  `product_id` int(11) DEFAULT NULL COMMENT '课程编号',
  `sign_resource` varchar(16) DEFAULT NULL COMMENT '报名渠道 SCHOOL学校 ONLINE线上',
  `sign_relation` varchar(8) DEFAULT NULL COMMENT '家长报名关系',
  `parent_id` int(11) DEFAULT NULL COMMENT '报名家长编号',
  `family_no` varchar(32) NOT NULL COMMENT '家庭编号',
  `is_effect` int(1) DEFAULT '0' COMMENT '是否生效 0未生效 1已生效（家长支付成功）',
  `status` varchar(8) DEFAULT '001' COMMENT '状态 001等待中 002已开课',
  `is_phone_confirm` int(1) DEFAULT '0' COMMENT '0:未电话确认 1：已电话确认',
  `order_no` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_user_id` int(11) DEFAULT NULL,
  `updater` varchar(128) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_idcard` (`child_idcard`),
  KEY `idx_name` (`child_name`),
  KEY `idx_orderNo` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='小孩报名信息表';

/*Data for the table `t_child_sign_info` */

insert  into `t_child_sign_info`(`id`,`child_idcard`,`child_name`,`child_mobile`,`child_age`,`child_sex`,`is_disease`,`disease_desc`,`emer_name`,`emer_mobile`,`city`,`product_id`,`sign_resource`,`sign_relation`,`parent_id`,`family_no`,`is_effect`,`status`,`is_phone_confirm`,`order_no`,`create_time`,`update_user_id`,`updater`,`update_time`) values (1,'220622197910251217','胡小一',NULL,12,'F','Y','哮喘病','胡大一','13681984145',NULL,1,'ONLINE','1',1,'10007',1,'001',1,'11216552354811','2016-12-16 10:27:15',NULL,NULL,NULL),(2,'632821197906134504','胡小二',NULL,12,'F','N','','胡大二','13681984245',NULL,1,'ONLINE','1',2,'10008',1,'001',0,'16093402','2016-12-16 10:50:09',NULL,NULL,NULL),(3,'370686198703233154','胡小三',NULL,12,'F','N','','胡大三','13681984345',NULL,1,'ONLINE','1',3,'10009',1,'001',0,'16509403','2016-12-16 10:50:50',NULL,NULL,NULL),(6,'41072419850823867X','胡小五',NULL,12,'F','N','','胡大五','13681984545',NULL,1,'ONLINE','1',5,'10011',1,'001',0,'18774146','2016-12-16 10:54:37',NULL,NULL,NULL),(7,'411401199203299126','胡小六',NULL,12,'F','N','','胡大六','13681984645',NULL,1,'ONLINE','1',5,'10012',1,'001',0,'19022377','2016-12-16 10:55:02',NULL,NULL,NULL),(8,'65232819770813191X','胡小七',NULL,12,'F','N','','胡大七','13681984745',NULL,1,'ONLINE','2',5,'10013',1,'001',0,'10271218','2016-12-16 10:57:07',NULL,NULL,NULL);

/*Table structure for table `t_content_img_group` */

DROP TABLE IF EXISTS `t_content_img_group`;

CREATE TABLE `t_content_img_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) DEFAULT NULL COMMENT '标题',
  `img_url` varchar(128) NOT NULL COMMENT '图片地址',
  `link_url` varchar(128) DEFAULT NULL COMMENT '链接',
  `position` varchar(32) DEFAULT NULL COMMENT '位置',
  `shelves` int(2) DEFAULT '0' COMMENT '1上架 0下架',
  `is_delete` varchar(2) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `creater` varchar(128) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user_id` int(11) DEFAULT NULL,
  `updater` varchar(128) DEFAULT NULL,
  `update_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站内图组';

/*Data for the table `t_content_img_group` */

/*Table structure for table `t_course_buyer_info` */

DROP TABLE IF EXISTS `t_course_buyer_info`;

CREATE TABLE `t_course_buyer_info` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '姓名',
  `mobile` varchar(11) NOT NULL COMMENT '手机号',
  `wechat_num` varchar(128) DEFAULT NULL COMMENT '微信号',
  `openid` varchar(128) DEFAULT NULL,
  `head_img` varchar(128) DEFAULT NULL COMMENT '头像',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_mobile` (`mobile`),
  KEY `idx_openid` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='课程购买人信息';

/*Data for the table `t_course_buyer_info` */

insert  into `t_course_buyer_info`(`id`,`name`,`mobile`,`wechat_num`,`openid`,`head_img`,`creater`,`create_time`) values (1,'张三','13611111111',NULL,NULL,NULL,NULL,'2016-12-10 18:07:40'),(2,'张思','13611111112',NULL,NULL,NULL,NULL,'2016-12-10 18:07:49'),(3,'张明','13611111113',NULL,NULL,NULL,NULL,'2016-12-10 18:07:50'),(4,'王五','13611111115',NULL,NULL,NULL,NULL,'2016-12-10 18:08:35'),(5,'王二小','13611111116',NULL,NULL,NULL,NULL,'2016-12-10 18:08:42'),(6,'王晓宇','13611111116',NULL,NULL,NULL,NULL,'2016-12-10 18:08:59'),(7,'王天明','1361111111',NULL,NULL,NULL,NULL,'2016-12-10 18:09:12'),(8,'王大力','13611111119',NULL,NULL,NULL,NULL,'2016-12-10 18:09:23'),(9,'天明','13611111121',NULL,NULL,NULL,NULL,'2016-12-10 18:09:38'),(10,'天涯','13611111122',NULL,NULL,NULL,NULL,'2016-12-10 18:09:44'),(11,'胡启萌','13681984045','','',NULL,'admin','2016-12-11 01:56:52');

/*Table structure for table `t_course_info` */

DROP TABLE IF EXISTS `t_course_info`;

CREATE TABLE `t_course_info` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(256) NOT NULL COMMENT '课程名称',
  `course_num` varchar(256) DEFAULT NULL COMMENT '课程期数',
  `course_type` varchar(8) NOT NULL COMMENT '课程类型',
  `course_img` varchar(128) DEFAULT NULL COMMENT '课程主图',
  `city` varchar(8) DEFAULT NULL COMMENT '城市',
  `addr` varchar(256) DEFAULT NULL COMMENT '地址',
  `start_date` datetime NOT NULL COMMENT '开始日期',
  `end_date` datetime DEFAULT NULL COMMENT '结束日期',
  `res_amount` decimal(22,2) NOT NULL COMMENT '预约金',
  `total_price` decimal(22,2) NOT NULL COMMENT '总价',
  `activity_price` decimal(22,2) DEFAULT NULL COMMENT '活动价',
  `course_peoples` int(11) DEFAULT NULL COMMENT '课程开课人数',
  `course_desc` varchar(512) DEFAULT NULL COMMENT '课程描述',
  `shelves` int(4) DEFAULT '0' COMMENT '上下架 0 待审核 1上架 2下架',
  `course_details` mediumblob COMMENT '课程详情',
  `is_delete` varchar(2) DEFAULT 'N',
  `creater_id` int(22) DEFAULT NULL COMMENT '创建人id',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_id` int(22) DEFAULT NULL COMMENT '更新人id',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='课程信息表';

/*Data for the table `t_course_info` */

insert  into `t_course_info`(`id`,`course_name`,`course_num`,`course_type`,`course_img`,`city`,`addr`,`start_date`,`end_date`,`res_amount`,`total_price`,`activity_price`,`course_peoples`,`course_desc`,`shelves`,`course_details`,`is_delete`,`creater_id`,`creater`,`create_time`,`updater_id`,`updater`,`update_time`) values (1,'软件工程师 5年以上 上海',NULL,'1','jpg____imgextra__COURSE__16626e61-38a3-4bb8-a5f3-67b4bdb59ee3.jpg','2','的所发生的','2016-12-13 02:45:00','2016-12-22 16:25:00','12.00','24.00',NULL,NULL,'方式',1,'<p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247);\">坚持，让我遇到困难不轻易放弃；坚持，让我坚定自己，朝着自己的目标努力；坚持，辅助我走向成功的道路。只要坚持，成长道路上的泪水都会变成收获。</p><p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247);\"><img src=\"/taoxuequ/xuequ/jpg____imgextra__upload__20161210__1481307557784069756.jpg\" title=\"1481307557784069756.jpg\" alt=\"马三.jpg\"/></p><p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247);\">　　在2012年春节到来之际，我们“李平少儿艺术团”经过四年的努力与坚持，终于在春节前夕，荣幸地去北京参加了第六届“和谐春晚”全国青少年少儿艺术电视展演活动。</p><p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247);\">　　<a href=\"http://m.xue110.top\" target=\"_blank\" title=\"世界\">回想过去的四年里</a>，<img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/>我们每天都重复练习着比赛的动作，参赛的技巧，每次汗水都浸湿了我们的衣服。有时候为了练习一些高难度的动作和技巧，我们经常疼得忍不住地流下了泪。在舞蹈技巧练习中，我最难克服的一个动作是前桥，我学这个动作的时候，教技巧的老师辛苦地帮助我练习，但是总达不到理想的效果。老师很着急，我自己也很着急。于是，每天回到家中，我都要在家里一遍一遍地练习，哪怕汗水浸湿自己的衣服……最后在爸爸的帮助、自己的坚持努力下，我终于克服了这个难关。我们每一位学员都没有放弃每一次的练习，继续努力着，哪怕付出再多的泪水和汗水，我们也依然向我们的目标努力着、前进着。</p><p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247);\">　　我们的努力终于得到了回报，春节前夕我们得到了北京“和谐春晚”组委会的邀请。2012年1月15日，我终身难忘的日子，我们终于要踏上梦想的旅程了。到北京演出那天，我们走进人民大会堂，在这座庄严宏伟的大会堂里，我们和国家领导人合影，各级首长，给了我们很大的鼓励和支持，还对我们给予了希望。我们参赛的节目是孔雀舞—《云之南》，在人民大会堂的舞台上，我们跳得可专心了，把平时扎实的基础展示得淋漓尽致，当我们摆出“孔雀开屏”最后这个压轴造型时，得到了观众们最热烈的掌声。比赛结束后，导演对我们的表演给予了最高的评价，他说：“你们来自个旧，祖国的名城，世界的锡都，你们是精英的演员。”他的这番话，虽然简短，但是给了我们所付出的努力最好的评价。我们的《云之南》，获得了此次活动的最高奖项“国星奖”，当我们听到这个好消息的时候，大家都激动的跳起来，互相拥抱，流下了高兴的泪水。</p><p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247);\">　　我们做到了最好，实现了愿望，这份荣耀和我们的坚持、努力是分不开的。这段经历，在我的成长日记中又添了一段美妙的旋律，不管是现在还是将来，每当我想起自己的这段人生历练，我都不会因碌碌无为而羞耻，更不会因虚度年华而悔恨！</p><p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247);\">&nbsp;&nbsp;&nbsp;&nbsp;初二:华芸靖</p><p style=\"font-size: 14px; margin-top: 0px; margin-bottom: 0px; padding: 0px; letter-spacing: 1px; word-wrap: break-word; color: rgb(51, 51, 51); font-family: 微软雅黑, Arial; white-space: normal; background-color: rgb(247, 247, 247); text-align: center;\"><strong><span style=\"font-size: 10.5pt; font-family: 宋体;\">作文网专稿 未经允许不得转载</span></strong></p><p><br/></p>','N',NULL,NULL,'2016-12-10 02:27:52',1,'管理员','2016-12-10 02:37:53'),(3,'互联网时代的商业模式进化，2天1夜实战陪练',NULL,'1','jpg____imgextra__COURSE__cfa48326-e2e1-4d10-be21-a6b9301d9bd2.jpg','2','的所发生的','2016-12-14 16:57:00','2016-12-27 16:57:00','500.00','4245.00',NULL,NULL,'都听说过许多商业模式，那我们深化到不变的底层商业逻辑，又进化至拥抱变化的赋能型结构，一起练练商业模式的背后。',1,'<section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; clear: both; min-height: 1em; white-space: pre-wrap; text-indent: 0em; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; clear: both; min-height: 1em; white-space: pre-wrap; text-indent: 0em; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">面向未来、连接未来的商业模式</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">底层逻辑都有哪些共性？</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">哪些新的商业机会和模式将随之产生？</span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">企业如何借助新思维、新技术</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">完成商业模式进化？</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">每个企业的资源能力都不同</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">在新商业模式进化过程中</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">都会遇到哪些坑，该如何应对？</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">问题的答案，和你的个性化进化路径，尽在</span></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">林桂平（林博）的</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">《互联网时代的商业模式进化》陪练小课堂。林博用整整</span><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">2天1夜</span></strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">，带你<strong style=\"margin: 0px; padding: 0px; text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">直奔商业模式底层逻辑和设计方法，陪你</span></span></strong></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">动手进化自己的商业模式。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 0em; clear: both; min-height: 1em; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">课上缩减理论知识的展开，把更多的时间留给了互动实战陪练，因此</span></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">请你务必在课前阅读以下两本书：</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">《商业模式的经济解释》、</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">《透析盈利模式》；</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(196, 189, 151); font-family: 微软雅黑, sans-serif; text-indent: 0em;\">补充阅读另外两本书：《商业模式新生代》、《重新定义公司》。</span></p></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">01</p></section></section></section><section><section><section><section><section><section><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(62, 62, 62); clear: both; min-height: 1em; white-space: pre-wrap; line-height: 25.6px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">感谢 <strong style=\"margin: 0px; padding: 0px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></strong></strong></span></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(62, 62, 62); clear: both; min-height: 1em; white-space: pre-wrap; line-height: 25.6px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(62, 62, 62); text-align: left;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\">感谢高维学堂的七年级师姐、金卫信创始人／“小豆苗”疫苗管理APP联合创始人<strong style=\"margin: 0px; padding: 0px;\">苏孟媛，</strong>感谢她推荐了商业模式大咖<strong style=\"margin: 0px; padding: 0px;\">林桂平</strong>来高维学堂开讲陪练《互联网时代的商业模式进化》。</span></p></section></section></section></section></section></section><section><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; clear: both; min-height: 1em; white-space: pre-wrap; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><section><section><section><section><section><section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">02</p></section></section></section><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; clear: both; min-height: 1em; white-space: pre-wrap; line-height: 25.6px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">实战大咖 </strong></span><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; clear: both; min-height: 1em; white-space: pre-wrap; line-height: 25.6px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\"></strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; white-space: pre-wrap; font-size: 12px;\">林桂平｜元智商业模式研究院院长</span></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; white-space: pre-wrap; font-size: 12px;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\">林桂平，昵称林博，十年如一日和魏炜、朱武祥两位教授专注于商业模式的研究和实务，荣获<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); text-align: center;\">第四届<strong style=\"margin: 0px; padding: 0px;\">管理科学奖</strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(147, 137, 83); font-size: 14px;\">（管理科学领域的奥斯卡金像奖）</span>，著有<strong style=\"margin: 0px; padding: 0px;\">《商业模式经济解释》、《透析盈利模式》</strong>等畅销书</span></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px; white-space: pre-wrap;\">。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px; white-space: pre-wrap;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><img src=\"http://gwxt.wobao.la/upload/20161022/6361277331481686662586312.jpg\" title=\"林博简介.jpg\" alt=\"林博简介.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); white-space: pre-wrap;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); white-space: pre-wrap;\">林博兼具信息科学、金融学两大学科背景，擅长把<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">互联网的“巧”、</span>金融的“力”融合进了商业模式的设计。他身入企业中</span></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; white-space: pre-wrap; font-size: 15px;\">助力创维集团打赢家电产业最后的战场——5年开创了3000多家O2O直营店零售体系。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><br/></p></section></section></section></section></section></section></section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">03</p></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">课程内容 </strong></span><strong style=\"margin: 0px; padding: 0px; color: rgb(184, 28, 34); white-space: normal; font-family: sans-serif;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></strong></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"></span></p><p style=\"margin-top: 8px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; text-align: center; line-height: 1.75em; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 18px; font-family: Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px;\">《互联网时代的商业模式进化》</strong></span></p><p><section><section><section><section><section><section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">一个公司不能只因为一个商业模式成为优秀的公司，但是一个优秀的公司一定拥有一个优秀的商业模式。<br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">一个优秀的商业模式既不是一蹴而就的，在实践中也不是一成不变的。</span></span></strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">一方面，一个优秀的商业模式需要在实践中不断的尝试、修正甚至是不断的试错而日益成熟；</span></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px; color: rgb(102, 102, 102);\">另一方面，一个成熟的商业模式也会随着产业环境和竞争态势发生了变化而显得不再适应不再有优势，需要进行新的设计和进化调整。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">因此，一个企业有好的商业模式，固然不错，但<strong style=\"margin: 0px; padding: 0px;\">拥有一套进化商业模式的能力，在新旧交替的时代显得尤为更加重要。</strong>错失一步，就错过了整个时代。</span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361545770286715369378448.jpg\" title=\"商模4.jpg\" alt=\"商模4.jpg\"/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">重新思考：什么是对的商业模式？标准是什么？</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><br/></span></span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px; color: rgb(63, 63, 63);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\">如何正确验证、推演你的商业模式？如何减少犯错？</span></span></p></section></section></section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">从凭直觉创业步入到科学创业，<strong style=\"margin: 0px; padding: 0px;\">理解商业模式底层逻辑，是你决策的重要依据</strong><strong style=\"margin: 0px; padding: 0px;\">。</strong></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">避开很多创新都是大大的投入，傻傻的坚持，呵呵的收尾。</span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><img src=\"http://gwxt.wobao.la/upload/20161110/6361437353922914325995960.jpg\" title=\"QQ20161110-0.jpg\" alt=\"QQ20161110-0.jpg\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(0, 0, 0); font-size: 15px;\"><strong style=\"margin: 0px; padding: 0px;\">亲自动手：什么是好的商业模式？该如何设计？</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><br/></span></strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\">没有人比你更懂自己的企业和行业，因此设计商业模式的关键主体是创始人自己。但是，创始人没有必要成为理论家，正确地理解商业模式的底层逻辑，并掌握商业模式的设计方法工具，加以运用就行了。</span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">设计一个好的商业模式事半功倍，反之亦然。</span></span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361545814820261325961303.jpg\" title=\"商模3.jpg\" alt=\"商模3.jpg\"/></span></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">找到利益相关者，设计交易结构，把他们连接在一起并创造最大化的价值，这就是商业模式设计，这是一个看似简单却很考究的复杂工程。</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">为帮助同学容易掌握商业模式设计方法，林博带着大家从</span></span><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\">“利益相关者”入手分类（用户、员工、合作伙伴、竞争对手），再与每一类利益相关者的“交易结构”利用工具进行拆解。</span></span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><br/></span></span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px; color: rgb(102, 102, 102);\">针对阻碍企业快速发展的利益相关者，现场进行<strong style=\"margin: 0px; padding: 0px;\">创新设计、重构优化与他的交易结构，</strong>让企业有机会突破发展瓶颈，带来新一轮的快速增长。</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><br/></span></span><img src=\"http://gwxt.wobao.la/upload/20161027/6361313175289886129304548.jpg\" title=\"交易结构.jpg\" alt=\"交易结构.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px; font-size: 15px;\">探索进化：如何构建具有自我进化能力的赋能型交易结构？有哪些注意事项？</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><img src=\"http://gwxt.wobao.la/upload/20160807/6360616704872991534829966.jpg\" title=\"商模16.jpg\"/><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361546340277733008296057.jpg\" title=\"商模5.jpg\" alt=\"商模5.jpg\"/></span><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361546621882803955458866.jpg\" title=\"商模8.jpg\" alt=\"商模8.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361546624171954353999670.jpg\" title=\"商模7.jpg\" alt=\"商模7.jpg\"/></p></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361546661722810311348972.jpg\" title=\"商模9.jpg\" alt=\"商模9.jpg\"/><img src=\"http://gwxt.wobao.la/upload/20161123/6361546663972408413245850.jpg\" title=\"商模10.jpg\" alt=\"商模10.jpg\"/></p><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361546665292966932707905.jpg\" title=\"商模12.jpg\" alt=\"商模12.jpg\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p></section></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p></section></section></section></section></section></section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">04</p></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">学习收益 </strong></span><strong style=\"margin: 0px; padding: 0px; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></strong></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><section><section><section><section><section><section><section><section><section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-family: inherit; font-style: inherit; font-variant-caps: inherit;\">帮你形成商业模式的底层认知体系和自我进化设计能力，助你突破瓶颈实现企业价值最大化，更期待你成为新世界物种。</span></p></section></section></section></section></section></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">➀&nbsp;<strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\">系统地学习商业模式思维和视角</span></strong></span></span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><br/></span></span></span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\">林博用庖丁解牛式的详尽解析，从招数到心法，将自己多年来的研究和实践心得毫无保留地呈现给学员。</span></span></span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><br/></span></span></span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\">只有理解了商业模式的核心底层逻辑，才能更好地跨界学习优秀模式，并正确应用到自己企业。这会使你创新商业模式的落地效率和<strong style=\"margin: 0px; padding: 0px;\">成功几率大大提高</strong>。</span></span></span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">➁&nbsp;</span></span></span></span><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\">掌握商业模式设计方法工具</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><section><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\">更难能可贵的是，这是一堂商业模式的设计指南和实战陪练，梳理清楚自己现有的商业模式，科学设计适合自己的新商业模式。</span></span></span></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\">林博为你详细勾画出进化商业模式可行的路径图，几乎每个阶段的创业者都可以从中找到自己所处的阶段。往前看，你能找到自己踩过的坑走过的弯路；往后看，你能看到自己要面临的挑战和发现新的机会。</span></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-align: center;\"><br/></span></span></span></p></section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><img src=\"http://gwxt.wobao.la/upload/20160901/6360832028466223628356142.jpg\" title=\"商模文案配图3.jpg\" alt=\"商模文案配图3.jpg\"/><br/></p></section></section></section></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">05</p></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">适宜学习对象 </strong></span><strong style=\"margin: 0px; padding: 0px; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></strong></strong></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p><section><section><section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><img src=\"http://gwxt.wobao.la/upload/20161123/6361546740351143942235166.jpg\" title=\"商模11.jpg\" alt=\"商模11.jpg\"/></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-align: left;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\">因此建议参与实战对象：创始人、CEO、<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\">总经理、</span>副总经理、企业核心中高层（HRD、事业部负责人、战略部负责人）。</span><br/></p></section></section></section></section></section></section></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">06</p></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">众筹玩法 </strong></span><strong style=\"margin: 0px; padding: 0px; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></strong></strong></strong></p><p><section><section><section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0); font-size: 15px;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(184, 28, 34); text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; white-space: pre-wrap; color: rgb(136, 136, 136); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">✰ 新一代上课方式——众筹大咖，创业陪练</strong></strong></span></p><p style=\"margin-top: 15px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117); font-size: 15px;\">✓</span></strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\">&nbsp;<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0);\"><strong style=\"margin: 0px; padding: 0px;\">众筹步骤：</strong></span></span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117); box-sizing: border-box !important; max-width: 100%; word-wrap: break-word !important;\">➀&nbsp;</span><strong style=\"margin: 0px; padding: 0px;\">预约</strong>你心仪的实战大咖<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 12px;\">（预约金500元，审核通过后进班群，审核不通过全额退还预约金）</span></span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); white-space: pre-wrap; font-size: 12px;\"></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117); box-sizing: border-box !important; max-width: 100%; word-wrap: break-word !important;\">➁&nbsp;</span><strong style=\"margin: 0px; padding: 0px;\">提交</strong>你的需求和问题给大咖</span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117); box-sizing: border-box !important; max-width: 100%; word-wrap: break-word !important;\">➂&nbsp;</span>达到<strong style=\"margin: 0px; padding: 0px;\">成班</strong>人数，众筹成功</span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">➃&nbsp;</span><strong style=\"margin: 0px; padding: 0px;\">封班</strong>后课程总成本除以总人数，大家AA支付学费<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 12px;\">（人越多学费越低）</span></span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">➄&nbsp;</span><strong style=\"margin: 0px; padding: 0px;\">开班</strong>上课，大咖面对面实战陪练</span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><br/></span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; white-space: pre-wrap;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); white-space: normal;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">✓</span>&nbsp;</span></strong></span></span></strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0);\"><strong style=\"margin: 0px; padding: 0px;\">开小灶特权：</strong></span></span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">➀</span>前9名包养的同学，和&nbsp;<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">➁</span>组团学习人数最多的小分队，都分别享有与老师共进午餐、深度私聊的<strong style=\"margin: 0px; padding: 0px;\">开小灶</strong>特权！</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; line-height: normal;\"><br/></p></section></section></section></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">07</p></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">众筹好处 </strong></span><strong style=\"margin: 0px; padding: 0px; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></strong></strong></strong></p><p><section><section><section><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0); font-size: 15px;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(184, 28, 34); text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; white-space: pre-wrap; color: rgb(136, 136, 136); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">✰ 众筹上课的两大好处</strong></strong></span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117);\">➀&nbsp;</span>同学们推荐、筛选出各细分领域<strong style=\"margin: 0px; padding: 0px;\">最实战的大咖</strong>，让培训告别纸上谈兵，告别鸡汤误人，<strong style=\"margin: 0px; padding: 0px;\">不浪费宝贵时间。</strong></span></p><p style=\"margin-top: 10px; margin-bottom: 0px; padding: 0px; list-style: none;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(102, 102, 102); font-size: 15px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(23, 52, 117); box-sizing: border-box !important; max-width: 100%; word-wrap: break-word !important;\">➁&nbsp;</span>然后通过互联网众筹的方式，<strong style=\"margin: 0px; padding: 0px;\">直接AA包养实战大咖</strong>，大幅度降低了培训组织成本，人人获得最高性价比的学费，<strong style=\"margin: 0px; padding: 0px;\">不花冤枉钱。</strong></span></p></section></section></section></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p><section><section><section><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0.1em 0.4em; list-style: none;\">08</p></section></section></section></p><p class=\"\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, Arial, sans-serif; line-height: 25.6px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34);\"><strong style=\"margin: 0px; padding: 0px;\">温馨提示<strong style=\"margin: 0px; padding: 0px;\"> </strong><strong style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px;\"><strong style=\"margin: 0px; padding: 0px; white-space: normal;\"><strong style=\"margin: 0px; padding: 0px; color: rgb(62, 62, 62); white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(184, 28, 34); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">▽</span></strong></strong></strong></strong></strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><strong style=\"margin: 0px; padding: 0px;\">课程时间</strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">丨12月17-18日（周六、日）</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); line-height: normal;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: normal;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><strong style=\"margin: 0px; padding: 0px;\">课程地点</strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">丨</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-family: &quot;Microsoft YaHei&quot;, SimHei, arial; text-align: justify; text-decoration: inherit;\">&nbsp;北京</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); font-family: 微软雅黑; line-height: 23px; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0);\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(0, 0, 0); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">课程总成本</span></strong></span></span>丨课程总成本</span>共145330元<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-family: inherit; text-decoration: inherit; font-size: 12px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); font-family: inherit; white-space: pre-wrap; text-decoration: inherit;\">（</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; white-space: pre-wrap; text-decoration: inherit; font-family: 微软雅黑;\">按成本定总价，</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); font-family: inherit; white-space: pre-wrap; text-decoration: inherit;\">含老师2天课酬、差旅，场地、茶歇、餐饮，教材、发票、服务费）</span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(62, 62, 62); line-height: 25px; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; font-size: 12px; color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 23px; text-decoration: inherit; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 14px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"> 15人成班，人均AA学费</span></strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-decoration: underline; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(192, 0, 0); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">9686</span></strong></span><strong style=\"margin: 0px; padding: 0px; font-size: 12px; color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 23px; text-decoration: inherit; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 14px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">元／人</span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255); color: rgb(62, 62, 62); line-height: 25px; clear: both; min-height: 1em; white-space: pre-wrap; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; font-size: 12px; color: rgb(51, 51, 51); font-family: 微软雅黑; line-height: 23px; text-decoration: inherit; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 14px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 12px;\">人越多，学费还能再低！</span></span></strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 23px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">30人封班，人均AA学费</strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; text-decoration: underline; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(192, 0, 0); max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">4843</span></strong></span><strong style=\"margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">元／人</strong></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; font-family: 微软雅黑; line-height: 23px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-size: 14px; background-color: rgb(255, 255, 255); clear: both; min-height: 1em; white-space: pre-wrap; font-family: 微软雅黑; line-height: 23px; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><strong style=\"margin: 0px; padding: 0px;\">温馨提醒</strong></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\">丨支付包养预约金500元后，请务必加班主任微信进班群</span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; font-family: inherit; font-size: 1em; background-color: rgb(255, 255, 255); text-align: justify; color: rgb(62, 62, 62); line-height: 25px; clear: both; min-height: 1em; white-space: pre-wrap; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><br/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none;\"><strong style=\"margin: 0px; padding: 0px;\">丨北京班主任丨</strong></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: inherit; font-family: inherit; font-size: 1em; white-space: normal; background-color: rgb(255, 255, 255); line-height: 25px; clear: both; min-height: 1em; text-align: center; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 14px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-family: inherit; color: rgb(51, 51, 51); letter-spacing: 0.133333px; white-space: pre-wrap; max-width: 100%; line-height: 1.4; text-decoration: inherit; box-sizing: border-box !important; word-wrap: break-word !important;\">肖晓老师 </span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-family: inherit; color: rgb(51, 51, 51); letter-spacing: 0.133333px; white-space: pre-wrap; max-width: 100%; line-height: 1.4; text-decoration: inherit; box-sizing: border-box !important; word-wrap: break-word !important;\">18575688856 </span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-family: inherit; color: rgb(51, 51, 51); letter-spacing: 0.133333px; white-space: pre-wrap; line-height: 1.4; text-decoration: inherit;\">微信eroline0124</span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); text-align: justify;\"></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: inherit; font-family: inherit; font-size: 1em; white-space: normal; background-color: rgb(255, 255, 255); line-height: 25px; clear: both; min-height: 1em; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 14px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;\"><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(62, 62, 62); text-align: justify;\"><br/></span></span></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><strong style=\"margin: 0px; padding: 0px; font-size: 15px; font-family: Roboto, &quot;Helvetica Neue&quot;, &quot;Segoe UI&quot;, Verdana, Tahoma, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; letter-spacing: 0.133333px;\"><strong style=\"margin: 0px; padding: 0px; font-size: 14px;\">服务机构</strong>｜<span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0); font-size: 16px;\"><strong style=\"margin: 0px; padding: 0px;\">高维学堂</strong></span><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0);\"><strong style=\"margin: 0px; padding: 0px;\">－</strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; font-size: 14px;\"></span></span></strong><span style=\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: transparent; user-select: none; color: rgb(192, 0, 0);\">共筹大咖，创业陪练</span></p><p><section><section>&nbsp;</section></section></p><p><br/></p>','N',1,'管理员','2016-12-10 17:51:55',NULL,NULL,NULL),(4,'我要去西藏',NULL,'1','jpg____imgextra__COURSE__a95e76fb-abcf-4e04-a459-eff91b05f4ed.jpg','1','','2016-12-14 14:57:00','2016-12-20 14:57:00','500.00','4900.00',NULL,20,'这是一首满溢流离格调的感伤情歌。绵绵的嗓音唱出了千丝万缕的情思，悠长的马头琴声谱出了萧瑟的草原秋色。它能让因爱而伤的心得到贴心的抚慰，进而开始舒缓的祭奠。',1,'<ul class=\"lemmaWgt-lemmaTitle lemmaWgt-lemmaTitle- list-paddingleft-2\" style=\"margin: 0px 0px 10px; padding: 0px; width: 700px; font-family: arial, tahoma, &#39;Microsoft Yahei&#39;, 宋体, sans-serif; color: rgb(51, 51, 51); font-size: 12px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"><li><h1 style=\"margin: 0px 10px 0px 0px; padding: 0px; font-size: 34px; display: inline; line-height: 1.15; font-weight: 400; vertical-align: sub;\">我要去西藏</h1><p>&nbsp;</p><h2 style=\"margin: 0px 10px 0px -10px; padding: 0px; font-size: 20px; display: inline; font-weight: 400; vertical-align: sub;\">（歌手乌兰托娅的音乐专辑）</h2><p>&nbsp;<a class=\"edit-lemma cmn-btn-hover-blue cmn-btn-28 j-edit-link\" style=\"color: rgb(102, 102, 102); display: inline-block; border: 1px solid rgb(197, 197, 197); border-radius: 3px; text-align: center; line-height: 14px; padding: 6px 0px; position: relative; margin: 0px 5px 0px 0px; width: 60px; outline: 0px; height: 14px; top: -2px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><span class=\"cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma\" style=\"font-family: baikeFont_layout; -webkit-font-smoothing: antialiased; speak: none; line-height: 12px; outline: 0px; margin: 0px 7px 0px 0px; vertical-align: text-top; color: rgb(82, 163, 245);\"></span>编辑</a></p></li></ul><p>《我要去西藏》是歌手<a target=\"_blank\" href=\"http://baike.baidu.com/view/1329345.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">乌兰托娅</a>2009年发布的专辑名和主打歌曲名称，共有10首歌曲。</p><ul class=\"basicInfo-block basicInfo-left list-paddingleft-2\" style=\"margin: 0px; padding: 0px; width: 395px; float: left;\"><li><p>中文名称</p></li><li><p>我要去西藏</p></li><li><p>外文名称</p></li><li><p>I will go to Tibet</p></li><li><p>所属专辑</p></li><li><p>《我要去西藏》</p></li><li><p>歌曲时长</p></li><li><p>04：37</p></li></ul><ul class=\"basicInfo-block basicInfo-right list-paddingleft-2\" style=\"margin: 0px; padding: 0px; width: 395px; float: left;\"><li><p>发行时间</p></li><li><p>2009年1月17日</p></li><li><p>歌曲原唱</p></li><li><p>乌兰托娅</p></li><li><p>填&nbsp;&nbsp;&nbsp;&nbsp;词</p></li><li><p>刘新圈</p></li><li><p>谱&nbsp;&nbsp;&nbsp;&nbsp;曲</p></li><li><p>石磊</p></li><li><p>歌曲语言</p></li><li><p>汉语</p></li></ul><h2 class=\"block-title\" style=\"margin: 22px 0px 0px 20px; padding: 0px; font-size: 18px; float: left; width: 63px; height: 48px; text-align: center; line-height: 48px; font-weight: 400;\">目录</h2><ol style=\"list-style-type: none;\" class=\" list-paddingleft-2\"><li><p><span class=\"index\" style=\"display: inline-block; width: 18px; font-size: 16px; padding-left: 20px; padding-right: 8px; vertical-align: top; text-align: right; color: rgb(99, 160, 223);\">1</span>&nbsp;<span class=\"text\" style=\"display: inline-block; font-size: 16px; vertical-align: top; width: 180px;\"><a href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#1\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">专辑信息</a></span></p></li><li><p><span class=\"index\" style=\"display: inline-block; padding-left: 41px; padding-right: 5px; width: 5px; line-height: 16px; vertical-align: top; color: rgb(204, 204, 204);\">▪</span>&nbsp;<span class=\"text\" style=\"display: inline-block; line-height: 16px; width: 175px; vertical-align: top;\"><a href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#1_1\" style=\"color: rgb(51, 51, 51); text-decoration: none;\">曲目</a></span></p></li><li><p><span class=\"index\" style=\"display: inline-block; padding-left: 41px; padding-right: 5px; width: 5px; line-height: 16px; vertical-align: top; color: rgb(204, 204, 204);\">▪</span>&nbsp;<span class=\"text\" style=\"display: inline-block; line-height: 16px; width: 175px; vertical-align: top;\"><a href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#1_2\" style=\"color: rgb(51, 51, 51); text-decoration: none;\">主打歌曲</a></span></p></li><li><p><span class=\"index\" style=\"display: inline-block; width: 18px; font-size: 16px; padding-left: 20px; padding-right: 8px; vertical-align: top; text-align: right; color: rgb(99, 160, 223);\">2</span>&nbsp;<span class=\"text\" style=\"display: inline-block; font-size: 16px; vertical-align: top; width: 180px;\"><a href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#2\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">版权声明</a></span></p></li><li><p><span class=\"index\" style=\"display: inline-block; width: 18px; font-size: 16px; padding-left: 20px; padding-right: 8px; vertical-align: top; text-align: right; color: rgb(99, 160, 223);\">3</span>&nbsp;<span class=\"text\" style=\"display: inline-block; font-size: 16px; vertical-align: top; width: 180px;\"><a href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#3\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">同名歌词</a></span></p></li></ol><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><h2 class=\"title-text\" style=\"margin: 0px; padding: 0px 8px 0px 18px; font-size: 22px; color: rgb(0, 0, 0); float: left; font-weight: 400; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">专辑信息</h2><p><a class=\"edit-icon j-edit-link\" style=\"color: rgb(136, 136, 136); display: block; float: right; height: 22px; line-height: 22px; padding-left: 24px; font-size: 12px; font-family: SimSun; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><span class=\"cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma\" style=\"font-family: baikeFont_layout; -webkit-font-smoothing: antialiased; speak: none; line-height: 1; outline: 0px; margin: 0px 3px 0px 0px; vertical-align: text-bottom; color: rgb(170, 170, 170);\"></span>编辑</a></p><p>歌手:&nbsp;<a target=\"_blank\" href=\"http://baike.baidu.com/view/1329345.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">乌兰托娅</a></p><p>发行：<a target=\"_blank\" href=\"http://baike.baidu.com/view/294025.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">广东星文文化传播有限公司</a></p><p>出版：<a target=\"_blank\" href=\"http://baike.baidu.com/view/3607967.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">广东音像出版社</a></p><p>发行时间：2009年1月17日</p><p>ISRC:CN-F18-09-323-00/A.J6</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">曲目</h3><p>01、我要去西藏</p><p><a class=\"image-link\" href=\"http://baike.baidu.com/pic/%E6%88%91%E8%A6%81%E5%8E%BB%E8%A5%BF%E8%97%8F/34785/0/f7657560dabcd91eeaf8f84f?fr=lemma&ct=single\" target=\"_blank\" title=\"专辑《我要去西藏》\" style=\"color: rgb(19, 110, 194); text-decoration: none; display: block; width: 220px; height: 193px;\"><img class=\"\" src=\"http://g.hiphotos.baidu.com/baike/s%3D220/sign=5c0de75b4a90f60300b09b450913b370/503d269759ee3d6d8374eca143166d224f4ade2e.jpg\" alt=\"专辑《我要去西藏》\"/></a><span class=\"description\" style=\"display: block; color: rgb(85, 85, 85); font-size: 12px; text-indent: 0px; font-family: 宋体; word-wrap: break-word; word-break: break-all; line-height: 15px; padding: 8px 7px; min-height: 12px; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(224, 224, 224);\">专辑《我要去西藏》</span></p><p>02、<a target=\"_blank\" href=\"http://baike.baidu.com/view/1524387.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">高原蓝</a></p><p>03、<a target=\"_blank\" href=\"http://baike.baidu.com/view/1524380.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">爱不在就放手</a></p><p>04、<a target=\"_blank\" href=\"http://baike.baidu.com/view/408091.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">套马杆</a></p><p>05、<a target=\"_blank\" href=\"http://baike.baidu.com/view/867025.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">塑料花</a></p><p>06、今夜的草原</p><p>07、莲的心事</p><p>08、<a target=\"_blank\" href=\"http://baike.baidu.com/view/60061.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">火凤凰</a></p><p>09、七月的草原</p><p>10、幸福的花儿开</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><h3 class=\"title-text\" style=\"margin: 0px; padding: 0px; font-size: 18px; font-weight: 400;\">主打歌曲</h3><p>《<a target=\"_blank\" href=\"http://baike.baidu.com/view/1524380.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">爱不在就放手</a>》<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[1]</span><a class=\"sup-anchor\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a></p><p>这是一首<a target=\"_blank\" href=\"http://baike.baidu.com/view/1322230.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">满溢</a>流离格调的感伤情歌。绵绵的嗓音唱出了千丝万缕的情思，悠长的<a target=\"_blank\" href=\"http://baike.baidu.com/view/18020.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">马头琴</a>声谱出了萧瑟的草原秋色。它能让因爱而伤的心得到贴心的抚慰，进而开始舒缓的祭奠。</p><p>《<a target=\"_blank\" href=\"http://baike.baidu.com/view/1524387.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">高原蓝</a>》<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[2]</span><a class=\"sup-anchor\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a></p><p>高亢的音调、宽广的境界，宛如<a target=\"_blank\" href=\"http://baike.baidu.com/view/420520.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">鄂尔多斯高原</a>的壮阔无垠。欢腾的马头琴声生动地塑造了草原上方湛蓝的天、洁白的云、绽红的霞。美丽的草原、透彻的琴声、欢乐的歌谣交织在一起，浑然一色，令人心旷神怡。</p><p>《<a target=\"_blank\" href=\"http://baike.baidu.com/view/60061.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">火凤凰</a>》</p><p>在热情而奔放的歌唱中，即有心上人的楚楚形象，又有绮丽的高原轮廓。激情的歌声蕴含着高原女子追求爱情与理想的执著与勇气。而高昂的<a target=\"_blank\" href=\"http://baike.baidu.com/view/18020.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">马头琴</a>声更是如<a target=\"_blank\" href=\"http://baike.baidu.com/view/60061.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">火凤凰</a>般传达了热烈而张狂的听觉冲击，能够让人们低沉的心境得到暂时的升腾。</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><h2 class=\"title-text\" style=\"margin: 0px; padding: 0px 8px 0px 18px; font-size: 22px; color: rgb(0, 0, 0); float: left; font-weight: 400; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">版权声明</h2><p><a class=\"edit-icon j-edit-link\" style=\"color: rgb(136, 136, 136); display: block; float: right; height: 22px; line-height: 22px; padding-left: 24px; font-size: 12px; font-family: SimSun; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><span class=\"cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma\" style=\"font-family: baikeFont_layout; -webkit-font-smoothing: antialiased; speak: none; line-height: 1; outline: 0px; margin: 0px 3px 0px 0px; vertical-align: text-bottom; color: rgb(170, 170, 170);\"></span>编辑</a></p><p>《我要去西藏》是乌兰托娅在2009年1月17日发布《我要去西藏》专辑中收录的单曲，2011年乌兰托娅因未续约广州新月演艺经纪有限公司而失去演唱权（不代表这首歌的原唱从此以后不是她）；<a target=\"_blank\" href=\"http://baike.baidu.com/view/3272140.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">乌兰图雅</a>是在2011年取得《套马杆》、《我要去西藏》的版权，并成为唯一合法演唱者。（乌兰图雅只是有演唱权，并非是乌兰图雅原唱，原唱与拥有歌曲的演唱权是两回事，也就是说，原唱还是乌兰托娅，在此特别声明。）</p><p><a class=\"lemma-anchor para-title\" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a><a class=\"lemma-anchor \" style=\"color: rgb(19, 110, 194); position: absolute; top: -50px;\"></a></p><h2 class=\"title-text\" style=\"margin: 0px; padding: 0px 8px 0px 18px; font-size: 22px; color: rgb(0, 0, 0); float: left; font-weight: 400; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\">同名歌词</h2><p><a class=\"edit-icon j-edit-link\" style=\"color: rgb(136, 136, 136); display: block; float: right; height: 22px; line-height: 22px; padding-left: 24px; font-size: 12px; font-family: SimSun; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><span class=\"cmn-icon wiki-lemma-icons wiki-lemma-icons_edit-lemma\" style=\"font-family: baikeFont_layout; -webkit-font-smoothing: antialiased; speak: none; line-height: 1; outline: 0px; margin: 0px 3px 0px 0px; vertical-align: text-bottom; color: rgb(170, 170, 170);\"></span>编辑</a></p><p><span style=\"font-weight: 700;\">作词：</span>刘新圈</p><p><span style=\"font-weight: 700;\">作曲：</span>石磊</p><p><span style=\"font-weight: 700;\">演唱：乌兰托娅</span></p><p><span style=\"font-weight: 700;\">歌词：</span></p><p>佛光穿过</p><p>无边的苍凉</p><p>有一个声音幸福安详</p><p>清晨我挥动白云的翅膀</p><p>夜晚我<a target=\"_blank\" href=\"http://baike.baidu.com/view/409510.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">匍匐</a>在你的天堂</p><p>生灵顺从<a target=\"_blank\" href=\"http://baike.baidu.com/view/2164.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">雅鲁藏布江</a>流淌</p><p>时光在<a target=\"_blank\" href=\"http://baike.baidu.com/view/1663.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">布达拉宫</a>越拉越长</p><p>无边的草原放开怀抱</p><p>我是一只温顺的绵羊</p><p>我要去西藏</p><p>我要去西藏</p><p>仰望雪域两茫茫</p><p><a class=\"image-link\" href=\"http://baike.baidu.com/pic/%E6%88%91%E8%A6%81%E5%8E%BB%E8%A5%BF%E8%97%8F/34785/0/caef76094b36acaf8ad56ae775d98d1001e99cf0?fr=lemma&ct=single\" target=\"_blank\" title=\"\" style=\"color: rgb(19, 110, 194); text-decoration: none; display: block; width: 220px; height: 123px;\"><img class=\"\" src=\"http://e.hiphotos.baidu.com/baike/s%3D220/sign=561777226263f624185d3e01b744eb32/caef76094b36acaf8ad56ae775d98d1001e99cf0.jpg\" alt=\"\"/></a></p><p>风光旖旎草色青青</p><p>随处都是我心灵的牧场</p><p>我要去西藏</p><p>我要去西藏</p><p>仰望生死两茫茫</p><p>习惯了孤独黑夜漫长</p><p><a target=\"_blank\" href=\"http://baike.baidu.com/view/11291.htm\" style=\"color: rgb(19, 110, 194); text-decoration: none;\">雪莲花</a>盛开在我的心房<span style=\"font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; margin-left: 2px; color: rgb(51, 102, 204); cursor: default; padding: 0px 2px;\">[3]</span><a class=\"sup-anchor\" style=\"color: rgb(19, 110, 194); position: relative; top: -50px; font-size: 0px; line-height: 0;\">&nbsp;</a></p><ul class=\"lemma-reference collapse nslog-area log-set-param list-paddingleft-2\" style=\"margin: 30px 0px; padding: 0px; clear: both; color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 12px; line-height: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"><li><p>参考资料<span class=\"toggle\" style=\"display: block; cursor: pointer; float: right; margin: 20px 20px 0px 0px; width: 15px; height: 20px; background: url(&quot;http://baike.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/lemmaReference/img/reference_toggle_37a1119.png&quot;) 5px 8px no-repeat;\"></span></p></li><li><p><br/></p></li><ul class=\"reference-list list-paddingleft-2\" style=\"list-style-type: none;\"><li><p><span class=\"index\" style=\"color: rgb(102, 102, 102); float: left;\">1.</span><a class=\"gotop anchor\" title=\"向上跳转\" href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#ref_[1]_8194094\" style=\"color: rgb(102, 102, 102); text-decoration: none; width: 15px; height: 14px; overflow: hidden; display: inline-block; margin-right: 4px; float: left; margin-top: 3px; background: url(&quot;http://baike.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/lemmaReference/img/view_reference_19e8a75.gif&quot;) 0px -14px no-repeat;\">&nbsp;&nbsp;</a><a href=\"http://baike.baidu.com/redirect/10e6sg_Jkt0TBVWRclNEfoQBpTF800HaHw3i7WDOBdoz48Vqmx0yVoXYHITrwuPygmIvAgZhBgOlJLoq12BIzH9pjcCJ\" target=\"_blank\" class=\"text\" style=\"color: rgb(102, 102, 102); text-decoration: none;\">乌兰托娅-爱不在就放手资料<span class=\"linkout\" style=\"padding-right: 18px; background: url(&quot;http://baike.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/lemmaReference/img/view_reference_19e8a75.gif&quot;) 100% 2px no-repeat;\">&nbsp;</span></a>&nbsp;<span class=\"site\">．豆瓣音乐</span>[引用日期2014-02-7]</p></li><li><p><span class=\"index\" style=\"color: rgb(102, 102, 102); float: left;\">2.</span><a class=\"gotop anchor\" title=\"向上跳转\" href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#ref_[2]_8194094\" style=\"color: rgb(102, 102, 102); text-decoration: none; width: 15px; height: 14px; overflow: hidden; display: inline-block; margin-right: 4px; float: left; margin-top: 3px; background: url(&quot;http://baike.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/lemmaReference/img/view_reference_19e8a75.gif&quot;) 0px -14px no-repeat;\">&nbsp;&nbsp;</a><a href=\"http://baike.baidu.com/redirect/524bL0K9-v_I0KUaoCrCp8p6y9KLiJ0ihfD6e8Dgl8d346uJYmiYAEZTPODSBAJF0vPOQ6GXPSikxu6pxlsE0vv9QaRz\" target=\"_blank\" class=\"text\" style=\"color: rgb(102, 102, 102); text-decoration: none;\">乌兰托娅-高原蓝资料<span class=\"linkout\" style=\"padding-right: 18px; background: url(&quot;http://baike.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/lemmaReference/img/view_reference_19e8a75.gif&quot;) 100% 2px no-repeat;\">&nbsp;</span></a>&nbsp;<span class=\"site\">．豆瓣音乐</span>[引用日期2014-02-7]</p></li><li><p><span class=\"index\" style=\"color: rgb(102, 102, 102); float: left;\">3.</span><a class=\"gotop anchor\" title=\"向上跳转\" href=\"http://baike.baidu.com/link?url=E3WJJPCGeE9Xkjgwatm_3ee5lkKGAqpHS5jUPmb9YFvor_lSFtHBA44ED82yNWNJ-mwOENVf7CYBATyxxt5eV2hSLHAtpFyG50D2Y9nzXSId7Kr_eUsENWG8To4rr8GYr0t35JbTu4kP2i-aAUVQ-K#ref_[3]_8194094\" style=\"color: rgb(102, 102, 102); text-decoration: none; width: 15px; height: 14px; overflow: hidden; display: inline-block; margin-right: 4px; float: left; margin-top: 3px; background: url(&quot;http://baike.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/lemmaReference/img/view_reference_19e8a75.gif&quot;) 0px -14px no-repeat;\">&nbsp;&nbsp;</a><a href=\"http://baike.baidu.com/redirect/6528jhhdiDbGDU-E9rGNtetiRBTyRWAfeSw4gaTlbMQJtsXfoAuU7OZuhzOwE6Qw0DRImb5Qskyx6VfS9rMzSGJtvKHINtVCsvE\" target=\"_blank\" class=\"text\" style=\"color: rgb(102, 102, 102); text-decoration: none;\">我要去西藏<span class=\"linkout\" style=\"padding-right: 18px; background: url(&quot;http://baike.bdimg.com/static/wiki-lemma/widget/lemma_content/mainContent/lemmaReference/img/view_reference_19e8a75.gif&quot;) 100% 2px no-repeat;\">&nbsp;</span></a>&nbsp;<span class=\"site\">．百度音乐</span>[引用日期2014-04-3]</p></li></ul></ul><p>词条标签：</p><ul class=\" list-paddingleft-2\"><li><p><span class=\"taglist\">音乐作品&nbsp;</span>，<span class=\"taglist\">&nbsp;娱乐作品&nbsp;</span>，<span class=\"taglist\">&nbsp;单曲</span></p></li></ul><p><br/></p>','N',1,'管理员','2016-12-13 14:59:10',1,'管理员','2016-12-13 15:14:04');

/*Table structure for table `t_goods_detail` */

DROP TABLE IF EXISTS `t_goods_detail`;

CREATE TABLE `t_goods_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(128) NOT NULL COMMENT '商品名称',
  `stock` int(11) NOT NULL COMMENT '库存',
  `goods_no` varchar(32) NOT NULL COMMENT '商品编号',
  `color` varchar(64) DEFAULT NULL COMMENT '商品颜色',
  `main_img` varchar(128) NOT NULL COMMENT '商品主图',
  `price` decimal(22,2) NOT NULL COMMENT '原价',
  `discount_price` decimal(22,2) DEFAULT NULL COMMENT '折扣价',
  `points` int(11) DEFAULT NULL COMMENT '积分兑换点',
  `product_desc_url` varchar(258) DEFAULT NULL COMMENT '商品描述url',
  `creater_user_id` int(11) DEFAULT NULL COMMENT '创建人用户id',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater_user_id` int(11) DEFAULT NULL COMMENT '更新人用户id',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `updater_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_delete` varchar(2) DEFAULT NULL COMMENT '是否有效 N正常 Y失效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_goods_detail` */

/*Table structure for table `t_hollow_man_info` */

DROP TABLE IF EXISTS `t_hollow_man_info`;

CREATE TABLE `t_hollow_man_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hm_name` varchar(128) NOT NULL COMMENT '透明人姓名',
  `hm_mobile` varchar(11) NOT NULL COMMENT '透明人手机号码',
  `id_type` varchar(8) DEFAULT NULL COMMENT '透明人证件类型',
  `id_card` varchar(64) DEFAULT NULL COMMENT '透明人证件号码',
  `addr` varchar(128) DEFAULT NULL COMMENT '透明人住址',
  `place` varchar(128) DEFAULT NULL COMMENT '籍贯',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别 F男 M女',
  `grade` varchar(32) DEFAULT NULL COMMENT '籍贯',
  `schoole` varchar(128) DEFAULT NULL COMMENT '透明人学校名称',
  `id_photo` varchar(128) DEFAULT NULL COMMENT '证件照',
  `kim_name` varchar(128) DEFAULT NULL COMMENT '透明人亲属姓名',
  `kim_mobile` varchar(11) DEFAULT NULL COMMENT '透明人亲属手机号码',
  `is_active` int(2) DEFAULT '0' COMMENT '是否激活 0未激活 1已激活',
  `active_date` varchar(8) DEFAULT NULL COMMENT '激活日期',
  `openid` varchar(64) DEFAULT NULL COMMENT '用户的标识，对当前公众号唯一',
  `level` varchar(4) DEFAULT NULL COMMENT '级别',
  `score` decimal(8,2) DEFAULT NULL COMMENT '评分',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(128) DEFAULT NULL COMMENT '变更人',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '变更时间',
  `is_delete` varchar(2) DEFAULT 'N' COMMENT '是否有效 N有效 Y失效',
  `reason` varchar(256) DEFAULT NULL COMMENT '审核不通过原因',
  PRIMARY KEY (`id`),
  KEY `idx_hm_name` (`hm_name`),
  KEY `idx_hm_mobile` (`hm_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='透明人信息';

/*Data for the table `t_hollow_man_info` */

insert  into `t_hollow_man_info`(`id`,`hm_name`,`hm_mobile`,`id_type`,`id_card`,`addr`,`place`,`sex`,`grade`,`schoole`,`id_photo`,`kim_name`,`kim_mobile`,`is_active`,`active_date`,`openid`,`level`,`score`,`creater`,`create_time`,`updater`,`update_time`,`is_delete`,`reason`) values (21,'张透一','13681984634',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(22,'张透二','13681984635',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(23,'刘透一','13681984632',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(24,'刘透二','13681984633',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(25,'马透一','13681984739',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(26,'马透二','13681984738',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(27,'黄透一','13681984836',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(28,'黄透二','13681984837',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(29,'青透一','13681984936',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'N',NULL),(30,'青透二','13681984937',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'20161205','oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'管理员','2016-12-05 22:03:20',NULL,NULL,'Y','有毛病'),(31,'胡启萌','13681984045','01','429004199006274911',NULL,'','F','大四','','/imgextra/IDPHOTO/oqyqUwq_YY84qjFWUtn6Ti4XIROE.jpg',NULL,NULL,1,NULL,'oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'admin','2016-12-05 22:42:57',NULL,NULL,'N',NULL),(32,'测试一','13601940452','01','429004166009271411',NULL,NULL,'F','大三',NULL,NULL,NULL,NULL,1,NULL,'oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'admin','2016-12-08 16:19:41',NULL,NULL,'N',NULL),(33,'测试二','13601940453','01','429004166009271412',NULL,NULL,'F','大三',NULL,NULL,NULL,NULL,1,NULL,'oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'admin','2016-12-08 16:20:08',NULL,NULL,'N',NULL),(34,'测试三','13601940454','01','429004166009271413',NULL,NULL,'F','大三',NULL,NULL,NULL,NULL,1,NULL,'oqyqUwq_YY84qjFWUtn6Ti4XIROE',NULL,NULL,'admin','2016-12-08 16:20:43',NULL,NULL,'N',NULL);

/*Table structure for table `t_img_group` */

DROP TABLE IF EXISTS `t_img_group`;

CREATE TABLE `t_img_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(12) NOT NULL COMMENT '位置',
  `title` varchar(256) DEFAULT NULL COMMENT '标题',
  `img_url` varchar(128) NOT NULL COMMENT '图片地址',
  `link_url` varchar(128) DEFAULT NULL COMMENT '链接地址',
  `city` varchar(12) DEFAULT NULL COMMENT '城市',
  `shelves` int(2) DEFAULT '1' COMMENT '1上架 0下架',
  `creater` varchar(128) DEFAULT NULL,
  `create_user_id` int(11) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user_id` int(11) DEFAULT NULL,
  `updater` varchar(128) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='图组表';

/*Data for the table `t_img_group` */

insert  into `t_img_group`(`id`,`position`,`title`,`img_url`,`link_url`,`city`,`shelves`,`creater`,`create_user_id`,`create_time`,`update_user_id`,`updater`,`update_time`) values (1,'1','僧多粥少、收费傲娇 武汉1小区幼儿园乱象丛生','jpg____imgextra__COURSE__25cae320-13db-4a22-a081-027f2b58ba01.jpg','https://segmentfault.com/a/1190000000626031','1',1,NULL,NULL,'2016-12-18 18:28:03',1,'管理员','2016-12-18 18:28:04'),(2,'2','7月光谷南房价赶超二环 揭秘光谷房价连续6个月暴涨背后(图)','jpg____imgextra__COURSE__0adefd62-cae0-4314-a5f1-271b490f9d11.jpg','http://www.cnblogs.com/chuaWeb/p/5121460.html','',1,'管理员',1,'2016-12-13 18:28:50',NULL,NULL,NULL),(3,'1','天涯此次还会给','jpg____imgextra__COURSE__e4f8d3df-00fa-4f7a-8d12-cc1a391823cb.jpg','http://m.xue110.top/','1',1,NULL,NULL,'2016-12-18 18:31:31',1,'管理员','2016-12-18 18:31:31');

/*Table structure for table `t_parent_info` */

DROP TABLE IF EXISTS `t_parent_info`;

CREATE TABLE `t_parent_info` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `relation` varchar(4) DEFAULT NULL COMMENT '关系',
  `parent_mobile` varchar(11) NOT NULL COMMENT '家长联系电话',
  `parent_name` varchar(128) DEFAULT NULL COMMENT '家长姓名',
  `wechat_num` varchar(64) DEFAULT NULL COMMENT '微信号',
  `openid` varchar(128) NOT NULL COMMENT '用户的标识，对当前公众号唯一',
  `city` varchar(8) DEFAULT NULL COMMENT '城市',
  `points` int(11) DEFAULT NULL COMMENT '积分点',
  `head_img` varchar(128) DEFAULT NULL COMMENT '头像',
  `family_no` varchar(64) NOT NULL COMMENT '家庭编号',
  `is_delete` varchar(2) DEFAULT 'N',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`),
  KEY `idx_mobile` (`parent_mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='家长信息';

/*Data for the table `t_parent_info` */

insert  into `t_parent_info`(`id`,`relation`,`parent_mobile`,`parent_name`,`wechat_num`,`openid`,`city`,`points`,`head_img`,`family_no`,`is_delete`,`create_time`) values (1,'1','13681984145','胡大一',NULL,'1111',NULL,NULL,NULL,'10007','N','2016-12-16 10:27:15'),(2,'1','13681984245','胡大二',NULL,'1112',NULL,NULL,NULL,'10008','N','2016-12-16 10:50:09'),(3,'1','13681984345','胡大三',NULL,'1113',NULL,NULL,NULL,'10009','N','2016-12-16 10:50:50'),(5,'2','13681984545','胡大五',NULL,'1115',NULL,NULL,NULL,'10011','N','2016-12-16 10:54:37');

/*Table structure for table `t_product_order` */

DROP TABLE IF EXISTS `t_product_order`;

CREATE TABLE `t_product_order` (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(64) NOT NULL COMMENT '订单编号',
  `cust_id` int(22) NOT NULL COMMENT '客户id',
  `product_id` int(22) NOT NULL COMMENT '产品id',
  `product_type` varchar(8) NOT NULL COMMENT '产品类型 COURSE 课程',
  `res_amount` decimal(22,2) DEFAULT NULL COMMENT '预付金',
  `total_amount` decimal(22,2) DEFAULT NULL COMMENT '总价',
  `exchangePoints` int(11) DEFAULT NULL COMMENT '积分兑换点',
  `give_points` int(11) DEFAULT NULL COMMENT '赠送积分',
  `channel` varchar(16) DEFAULT NULL COMMENT '支付渠道(99Bill,ChinaPlay,WeiXin,ALiPay)',
  `commision` decimal(11,2) DEFAULT NULL COMMENT '佣金',
  `commistion_rate` varchar(16) DEFAULT NULL COMMENT '佣金率',
  `bank_code` varchar(32) DEFAULT NULL COMMENT '银行编码',
  `bank_no` varchar(32) DEFAULT NULL COMMENT '银行卡号',
  `trans_no` varchar(64) DEFAULT NULL COMMENT '交易流水号',
  `bank_trans_no` varchar(64) DEFAULT NULL COMMENT '银行交易流水号',
  `pay_submit_time` timestamp NULL DEFAULT NULL COMMENT '支付提交时间',
  `pay_callback_time` timestamp NULL DEFAULT NULL COMMENT '支付回调时间',
  `order_status` varchar(4) NOT NULL DEFAULT '001' COMMENT '订单状态 000成功 001待支付 002支付失败 003处理中',
  `error_code` varchar(16) DEFAULT NULL COMMENT '交易失败code',
  `error_reason` varchar(256) DEFAULT NULL COMMENT '交易失败原因',
  `is_delete` varchar(2) DEFAULT 'N',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='产品订单表';

/*Data for the table `t_product_order` */

insert  into `t_product_order`(`id`,`order_no`,`cust_id`,`product_id`,`product_type`,`res_amount`,`total_amount`,`exchangePoints`,`give_points`,`channel`,`commision`,`commistion_rate`,`bank_code`,`bank_no`,`trans_no`,`bank_trans_no`,`pay_submit_time`,`pay_callback_time`,`order_status`,`error_code`,`error_reason`,`is_delete`,`create_time`,`update_time`) values (1,'11216552354811',1,1,'COURSE','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000',NULL,NULL,'N','2016-12-16 10:27:15',NULL),(2,'16093402',2,1,'COURSE','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000',NULL,NULL,'N','2016-12-16 10:50:09',NULL),(3,'16509403',3,1,'COURSE','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000',NULL,NULL,'N','2016-12-16 10:50:50',NULL),(6,'18774146',5,1,'COURSE','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000',NULL,NULL,'N','2016-12-16 10:54:37',NULL),(7,'19022377',5,1,'COURSE','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000',NULL,NULL,'N','2016-12-16 10:55:02',NULL),(8,'10271218',5,1,'COURSE','12.00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'000',NULL,NULL,'N','2016-12-16 10:57:07',NULL);

/*Table structure for table `t_sys_dict_data` */

DROP TABLE IF EXISTS `t_sys_dict_data`;

CREATE TABLE `t_sys_dict_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_type_id` int(11) NOT NULL COMMENT '字典类型id',
  `dict_data_key` int(11) NOT NULL COMMENT '字典数据key',
  `dict_data_value` varchar(128) NOT NULL COMMENT '字典数据名称',
  `is_active` int(2) DEFAULT '1' COMMENT '1有效 0禁用',
  `create_user_id` int(11) DEFAULT NULL,
  `creater` varchar(128) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user_id` int(11) DEFAULT NULL,
  `updater` varchar(128) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

/*Data for the table `t_sys_dict_data` */

insert  into `t_sys_dict_data`(`id`,`dict_type_id`,`dict_data_key`,`dict_data_value`,`is_active`,`create_user_id`,`creater`,`create_time`,`update_user_id`,`updater`,`update_time`) values (1,1,1,'城市体验',1,1,'管理员','2016-12-12 21:01:28',NULL,NULL,NULL),(2,3,1,'佛山',1,1,'管理员','2016-12-12 21:56:41',NULL,NULL,NULL),(3,3,2,'广州',1,1,'管理员','2016-12-12 21:56:52',NULL,NULL,NULL),(4,1,2,'亲子活动',1,1,'管理员','2016-12-13 00:11:05',NULL,NULL,NULL),(5,1,3,'育婴幼儿',1,1,'管理员','2016-12-13 00:11:24',NULL,NULL,NULL),(6,1,4,'创客大赛',1,1,'管理员','2016-12-13 13:59:08',NULL,NULL,NULL),(7,1,5,'飞行体验',1,1,'管理员','2016-12-13 14:02:18',NULL,NULL,NULL),(8,2,1,'创客学习',1,1,'管理员','2016-12-13 14:07:00',1,'管理员','2016-12-13 14:56:47'),(9,2,2,'校园活动',1,1,'管理员','2016-12-13 14:19:43',NULL,NULL,NULL),(10,2,3,'课外活动',1,1,'管理员','2016-12-13 14:20:17',NULL,NULL,NULL),(11,2,4,'体验穿越',1,1,'管理员','2016-12-13 14:50:42',NULL,NULL,NULL),(12,9,1,'头部营销',1,1,'管理员','2016-12-13 15:50:47',NULL,NULL,NULL),(13,9,2,'中位营销',1,1,'管理员','2016-12-13 18:27:44',NULL,NULL,NULL),(14,10,1,'爸爸',1,1,'管理员','2016-12-15 13:55:51',NULL,NULL,NULL),(15,10,2,'妈妈',1,1,'管理员','2016-12-15 13:55:59',NULL,NULL,NULL),(16,10,3,'爷爷',1,1,'管理员','2016-12-15 13:56:10',NULL,NULL,NULL),(17,10,4,'奶奶',1,1,'管理员','2016-12-15 13:56:19',NULL,NULL,NULL),(18,10,5,'哥哥',1,1,'管理员','2016-12-15 13:56:40',NULL,NULL,NULL),(19,10,6,'姐姐',1,1,'管理员','2016-12-15 13:56:50',NULL,NULL,NULL),(20,10,7,'其他',1,1,'管理员','2016-12-15 13:57:05',NULL,NULL,NULL);

/*Table structure for table `t_sys_dict_type` */

DROP TABLE IF EXISTS `t_sys_dict_type`;

CREATE TABLE `t_sys_dict_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_type_name` varchar(128) DEFAULT NULL COMMENT '字典类型名称',
  `dict_code` varchar(32) DEFAULT NULL COMMENT '字典类型code',
  `is_active` int(2) DEFAULT '1' COMMENT '1有效 0禁用',
  `create_user_id` int(11) DEFAULT NULL,
  `creater` varchar(128) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_user_id` int(11) DEFAULT NULL,
  `updater` varchar(128) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字段类型表';

/*Data for the table `t_sys_dict_type` */

insert  into `t_sys_dict_type`(`id`,`dict_type_name`,`dict_code`,`is_active`,`create_user_id`,`creater`,`create_time`,`update_user_id`,`updater`,`update_time`) values (1,'活动类型','activity_type',1,1,'管理员','2016-12-12 17:19:28',1,'管理员','2016-12-12 23:56:53'),(2,'课程类型','course_type',1,1,'管理员','2016-12-12 18:01:37',1,'管理员','2016-12-13 15:32:45'),(3,'城市','city',1,1,'管理员','2016-12-12 21:56:32',NULL,NULL,NULL),(4,'证件类型','id_card',1,1,'管理员','2016-12-12 23:22:12',NULL,NULL,NULL),(9,'图组位置','img_group',1,1,'管理员','2016-12-13 15:49:50',NULL,NULL,NULL),(10,'亲属关系','relation',1,1,'管理员','2016-12-15 13:55:33',NULL,NULL,NULL);

/*Table structure for table `t_sys_resource` */

DROP TABLE IF EXISTS `t_sys_resource`;

CREATE TABLE `t_sys_resource` (
  `ID_RESOURCE` int(11) NOT NULL COMMENT '主键',
  `RESOURCE_NAME` varchar(128) NOT NULL COMMENT '资源名称',
  `RESOURCE_URL` varchar(256) DEFAULT NULL COMMENT '资源请求路径',
  `RESOURCE_TYPE` varchar(16) NOT NULL COMMENT '资源类型 M:菜单 P:页面 O:按钮',
  `RESOURCE_CODE` varchar(64) NOT NULL COMMENT '资源唯一标识',
  `PARENT_RESOURCE_ID` int(11) DEFAULT NULL COMMENT '父资源Id',
  `WEIGHT` int(11) NOT NULL COMMENT '顺序权重',
  `CREATOR` varchar(64) DEFAULT NULL COMMENT '创建人',
  `LAST_UPDATOR` varchar(64) DEFAULT NULL COMMENT '最新更新人',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `IS_DELETE` varchar(1) DEFAULT 'N' COMMENT '是否删除 Y 删除 N不删除',
  `IS_QUICK_MENU` varchar(1) DEFAULT NULL COMMENT '是否删除 Y 删除 N不删除',
  `IS_SYSTEM_CONF_MENU` varchar(1) DEFAULT NULL COMMENT '系统配置菜单 Y 是 N 不是',
  PRIMARY KEY (`ID_RESOURCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_sys_resource` */

insert  into `t_sys_resource`(`ID_RESOURCE`,`RESOURCE_NAME`,`RESOURCE_URL`,`RESOURCE_TYPE`,`RESOURCE_CODE`,`PARENT_RESOURCE_ID`,`WEIGHT`,`CREATOR`,`LAST_UPDATOR`,`CREATE_TIME`,`LAST_UPDATE_TIME`,`IS_DELETE`,`IS_QUICK_MENU`,`IS_SYSTEM_CONF_MENU`) values (10,'子帐户与权限管理',NULL,'M','authority_manage',0,10,'admin',NULL,'2015-09-21 16:20:53',NULL,'N','N',''),(20,'站内管理',NULL,'M','content_manage',0,20,'admin',NULL,'2015-09-17 11:08:23',NULL,'N','N',''),(30,'活动管理',NULL,'M','activity_manage',0,30,'admin',NULL,'2015-09-21 16:26:32',NULL,'N','N',''),(40,'课程管理',NULL,'M','course_manage',0,25,'admin',NULL,'2015-09-25 17:14:01',NULL,'N','N',''),(50,'家长管理',NULL,'M','family_manage',0,50,'admin',NULL,'2015-09-25 17:14:01',NULL,'N','N',''),(60,'透明人管理',NULL,'M','hollow_man_manage',0,60,'admin',NULL,'2015-09-25 17:14:01',NULL,'N','N',''),(70,'评论管理',NULL,'M','comment_manage',0,70,'admin',NULL,'2015-09-25 17:14:01',NULL,'N','N',''),(100,'财房管理',NULL,'M','money_manage',0,100,'admin',NULL,'2015-09-25 17:14:01',NULL,'N','N',''),(1010,'角色管理','/power/role','M','role_manage',10,10,'admin',NULL,'2016-11-13 11:39:07',NULL,'N',NULL,''),(1015,'用户管理','/power/user','M','user_manage',10,20,'admin',NULL,'2016-11-13 11:43:16',NULL,'N',NULL,''),(1020,'菜单管理','/power/menu','M','menu_manage',10,30,'admin',NULL,'2016-11-13 19:35:02',NULL,'Y',NULL,''),(2010,'图组管理','/content/img/group','M','content_img_group',20,10,'admin',NULL,'2016-11-13 21:00:51',NULL,'N',NULL,''),(2020,'站内文章编辑','/content/article/edit','M','content_article_edit',20,20,'admin',NULL,'2016-11-25 09:27:14',NULL,'Y',NULL,NULL),(2030,'关键词管理','/content/keyword','M','content_keyword',20,30,'admin',NULL,'2016-12-03 15:03:28',NULL,'Y',NULL,NULL),(2050,'数据字典','/content/dict','M','dict_manage',20,50,'admin',NULL,'2016-12-12 11:44:32',NULL,'N',NULL,NULL),(3010,'活动管理','/activity/manage','M','activity_manage',30,10,'admin',NULL,'2016-11-13 12:04:08',NULL,'N',NULL,''),(3020,'名单管理','/activity/namelist','M','activity_namelist',30,30,'admin',NULL,'2016-11-20 02:22:34',NULL,'N',NULL,''),(3030,'战队管理','/activity/marines','M','activity_marines',30,20,'admin',NULL,'2016-11-20 02:23:40',NULL,'N','N',''),(3035,'活动透明人查询','/activity/hm','M','activity_hm',30,35,'admin',NULL,'2016-11-24 21:01:46',NULL,'N',NULL,''),(3040,'透明人资源管理','/activity/hm/resource','M','hollow_man_activity_resource',30,40,'admin',NULL,'2016-11-13 19:40:39',NULL,'N',NULL,''),(3050,'活动老师查询','/activity/teacher','M','activity_teacher',30,50,'admin',NULL,'2016-11-24 21:55:15',NULL,'N',NULL,''),(3060,'透明人活动报名审核','/activity/hmsign/audit','M','hollow_man_sign_audit',30,60,'admin',NULL,'2016-12-08 14:07:45',NULL,'N',NULL,NULL),(4010,'课程管理','/course/manage','M','course_manage',40,10,'admin',NULL,'2016-12-09 22:18:19',NULL,'N',NULL,NULL),(4020,'课程预约记录','/course/sign/record','M','course_buy_record',40,20,'admin',NULL,'2016-12-13 18:31:33',NULL,'N',NULL,NULL),(5010,'家长绑定查询','/parent/bind/query','M','parent_bind_query',50,10,'admin',NULL,'2016-11-13 19:37:24',NULL,'N',NULL,''),(5020,'家长购买记录','/parent/buy/record','M','parent_buy_record',50,20,'admin',NULL,'2016-11-13 19:38:18',NULL,'N',NULL,''),(6010,'透明人查询','/hm/query','M','hollow_man_query',60,10,'admin',NULL,'2016-11-13 19:39:47',NULL,'N',NULL,''),(6020,'透明人注册审核','/hm/register/audit','M','hollow_man_register_query',60,20,'admin',NULL,'2016-12-08 14:09:45',NULL,'N',NULL,NULL);

/*Table structure for table `t_sys_resource_role_rel` */

DROP TABLE IF EXISTS `t_sys_resource_role_rel`;

CREATE TABLE `t_sys_resource_role_rel` (
  `ID_RESOURCE_ROLE_REL` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ID_RESOURCE` int(11) NOT NULL COMMENT '系统资源ID',
  `ID_ROLE` int(11) NOT NULL COMMENT '角色ID',
  `CREATOR` varchar(64) DEFAULT NULL COMMENT '创建人',
  `LAST_UPDATOR` varchar(64) DEFAULT NULL COMMENT '最后更新人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后更新时间',
  `IS_DELETE` varchar(1) DEFAULT 'N' COMMENT '是否删除 Y 删除 N不删除',
  PRIMARY KEY (`ID_RESOURCE_ROLE_REL`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='系统资源与角色的关系表';

/*Data for the table `t_sys_resource_role_rel` */

insert  into `t_sys_resource_role_rel`(`ID_RESOURCE_ROLE_REL`,`ID_RESOURCE`,`ID_ROLE`,`CREATOR`,`LAST_UPDATOR`,`CREATE_TIME`,`LAST_UPDATE_TIME`,`IS_DELETE`) values (49,30,2,NULL,NULL,'2016-11-16 22:16:48',NULL,'N'),(50,3010,2,NULL,NULL,'2016-11-16 22:16:48',NULL,'N'),(51,60,2,NULL,NULL,'2016-11-16 22:16:48',NULL,'N'),(52,6010,2,NULL,NULL,'2016-11-16 22:16:48',NULL,'N'),(53,6020,2,NULL,NULL,'2016-11-16 22:16:48',NULL,'N'),(58,30,3,NULL,NULL,'2016-11-19 16:58:38',NULL,'N'),(59,3010,3,NULL,NULL,'2016-11-19 16:58:38',NULL,'N'),(125,10,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(126,1010,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(127,1015,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(128,1020,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(129,20,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(130,2010,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(131,30,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(132,3010,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(133,50,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(134,5010,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(135,5020,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(136,60,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N'),(137,6010,1,NULL,NULL,'2016-11-25 15:09:46',NULL,'N');

/*Table structure for table `t_sys_role` */

DROP TABLE IF EXISTS `t_sys_role`;

CREATE TABLE `t_sys_role` (
  `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_NAME` varchar(128) NOT NULL COMMENT '角色名称',
  `ROLE_DESC` varchar(256) DEFAULT NULL COMMENT '角色描述',
  `CREATOR` varchar(64) DEFAULT NULL COMMENT '创建人',
  `LAST_UPDATOR` varchar(64) DEFAULT NULL COMMENT '最后更新人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后更新时间',
  `IS_DELETE` varchar(1) DEFAULT 'N' COMMENT '是否删除 Y 删除 N不删除',
  PRIMARY KEY (`ID_ROLE`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `t_sys_role` */

insert  into `t_sys_role`(`ID_ROLE`,`ROLE_NAME`,`ROLE_DESC`,`CREATOR`,`LAST_UPDATOR`,`CREATE_TIME`,`LAST_UPDATE_TIME`,`IS_DELETE`) values (1,'管理员','活动管理员','???','admin','2016-11-16 21:51:09','2016-11-25 15:09:47','N'),(2,'活动管理员','活动管理员','???',NULL,'2016-11-16 22:16:49',NULL,'N'),(3,'活动管理员','活动管理员','admin','admin','2016-11-19 16:06:20','2016-11-19 16:58:38','N');

/*Table structure for table `t_sys_user` */

DROP TABLE IF EXISTS `t_sys_user`;

CREATE TABLE `t_sys_user` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `USER_ACCOUNT` varchar(45) NOT NULL COMMENT '用户登陆账号',
  `USER_NAME` varchar(45) NOT NULL COMMENT '姓名',
  `PASSWORD` varchar(100) NOT NULL COMMENT '密码',
  `VALID_FLAG` int(11) NOT NULL DEFAULT '1' COMMENT '有效性 1：有效 0：失效',
  `CREATOR` varchar(64) DEFAULT NULL COMMENT '创建人',
  `LAST_UPDATOR` varchar(64) DEFAULT NULL COMMENT '最后更新人',
  `CREATE_TIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后更新时间',
  `user_type` int(11) DEFAULT '2' COMMENT '账户类型 1管理员 2一般账户',
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

/*Data for the table `t_sys_user` */

insert  into `t_sys_user`(`ID_USER`,`USER_ACCOUNT`,`USER_NAME`,`PASSWORD`,`VALID_FLAG`,`CREATOR`,`LAST_UPDATOR`,`CREATE_TIME`,`LAST_UPDATE_TIME`,`user_type`) values (1,'admin','管理员','c4ca4238a0b923820dcc509a6f75849b',1,'default',NULL,'2016-11-02 15:03:18',NULL,1),(7,'abc','abc','',1,'default','admin','2016-11-17 00:37:43','2016-11-25 14:45:46',2),(8,'ab','ab','',0,'admin','admin','2016-11-17 00:42:38','2016-11-17 01:21:21',2),(9,'abcd','abcd','e2fc714c4727ee9395f324cd2e7f331f',1,'admin',NULL,'2016-11-17 01:11:04',NULL,2);

/*Table structure for table `t_sys_user_role_rel` */

DROP TABLE IF EXISTS `t_sys_user_role_rel`;

CREATE TABLE `t_sys_user_role_rel` (
  `ID_USER_ROLE_REL` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ID_USER` int(11) NOT NULL COMMENT '用户ID',
  `ID_ROLE` int(11) NOT NULL COMMENT '角色ID',
  `CREATOR` varchar(64) DEFAULT NULL COMMENT '创建人',
  `LAST_UPDATOR` varchar(64) DEFAULT NULL COMMENT '最后更新人',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `LAST_UPDATE_TIME` datetime DEFAULT NULL COMMENT '最后更新时间',
  `IS_DELETE` varchar(1) DEFAULT 'N' COMMENT '是否删除 Y 删除 N不删除',
  PRIMARY KEY (`ID_USER_ROLE_REL`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='用户与角色的关系表';

/*Data for the table `t_sys_user_role_rel` */

insert  into `t_sys_user_role_rel`(`ID_USER_ROLE_REL`,`ID_USER`,`ID_ROLE`,`CREATOR`,`LAST_UPDATOR`,`CREATE_TIME`,`LAST_UPDATE_TIME`,`IS_DELETE`) values (8,9,2,NULL,NULL,'2016-11-17 01:11:04',NULL,'N'),(9,8,2,NULL,NULL,'2016-11-17 01:21:21',NULL,'N'),(10,7,2,NULL,NULL,'2016-11-25 14:45:46',NULL,'N'),(11,7,3,NULL,NULL,'2016-11-25 14:45:46',NULL,'N');

/*Table structure for table `t_validate_code` */

DROP TABLE IF EXISTS `t_validate_code`;

CREATE TABLE `t_validate_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL COMMENT '手机号码',
  `code` varchar(16) NOT NULL COMMENT '验证码',
  `ip` varchar(32) DEFAULT NULL COMMENT 'ip',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `idx_mobile` (`mobile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='验证码表';

/*Data for the table `t_validate_code` */

/*Table structure for table `t_wechat_keyword` */

DROP TABLE IF EXISTS `t_wechat_keyword`;

CREATE TABLE `t_wechat_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(64) DEFAULT NULL COMMENT '关键词',
  `msgType` varchar(32) DEFAULT NULL COMMENT '消息类型 文本:text 图片:image 视频:video 语音:music 图文:news',
  `isDelete` varchar(2) DEFAULT 'N' COMMENT '是否有效',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_keyword` (`keyword`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='微信关键词管理';

/*Data for the table `t_wechat_keyword` */

insert  into `t_wechat_keyword`(`id`,`keyword`,`msgType`,`isDelete`,`creater`,`createTime`,`updater`,`updateTime`) values (1,'透明人','news','N',NULL,'2016-12-03 18:13:03',NULL,'0000-00-00 00:00:00');

/*Table structure for table `t_wechat_receive_message` */

DROP TABLE IF EXISTS `t_wechat_receive_message`;

CREATE TABLE `t_wechat_receive_message` (
  `msg_Id` char(64) NOT NULL COMMENT '消息id',
  `hm_Sign_Id` int(22) DEFAULT NULL COMMENT '透明人注册id',
  `to_User_Name` varchar(128) DEFAULT NULL COMMENT '开发者微信号',
  `from_User_Name` varchar(128) DEFAULT NULL COMMENT '发送方帐号（一个OpenID）',
  `msg_Type` varchar(32) NOT NULL COMMENT '消息类型 文本:text 图片:image 视频:video 语音:music 图文:news',
  `media_Id` varchar(128) DEFAULT NULL COMMENT '通过素材管理接口上传多媒体文件',
  `content` varchar(512) DEFAULT NULL COMMENT '文本内容',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `format` varchar(32) DEFAULT NULL COMMENT '语音格式',
  `recognition` varchar(128) DEFAULT NULL COMMENT '语音识别结果',
  `pic_Url` varchar(128) DEFAULT NULL COMMENT '图片Url',
  `url` varchar(128) DEFAULT NULL COMMENT '链接',
  `music_Url` varchar(128) DEFAULT NULL COMMENT '音乐链接',
  `hq_Music_Url` varchar(128) DEFAULT NULL COMMENT '高质量音乐链接，WIFI环境优先使用该链接播放音乐',
  `thumb_Media_Id` varchar(128) DEFAULT NULL COMMENT '缩略图的媒体id，通过素材管理接口上传多媒体文件，得到的id',
  `location_X` float DEFAULT NULL COMMENT '地理位置维度',
  `location_Y` float DEFAULT NULL COMMENT '地理位置经度',
  `scale` int(10) DEFAULT NULL COMMENT '地图缩放大小',
  `label` varchar(128) DEFAULT NULL COMMENT '地理位置信息',
  `sys_Url` varchar(128) DEFAULT NULL COMMENT '系统路径',
  `is_Delete` varchar(2) DEFAULT 'N',
  `create_Time` datetime NOT NULL COMMENT '创建时间',
  `sys_Create_Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '系统创建时间',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `update_Time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`msg_Id`),
  KEY `idx_hm_sign_id` (`hm_Sign_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='接收微信端消息';

/*Data for the table `t_wechat_receive_message` */

insert  into `t_wechat_receive_message`(`msg_Id`,`hm_Sign_Id`,`to_User_Name`,`from_User_Name`,`msg_Type`,`media_Id`,`content`,`title`,`description`,`format`,`recognition`,`pic_Url`,`url`,`music_Url`,`hq_Music_Url`,`thumb_Media_Id`,`location_X`,`location_Y`,`scale`,`label`,`sys_Url`,`is_Delete`,`create_Time`,`sys_Create_Time`,`updater`,`update_Time`) values ('6360818360834828101',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:41','2016-12-07 15:13:41',NULL,'0000-00-00 00:00:00'),('6360818360834828102',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828103',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828104',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828105',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828106',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828107',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828108',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828109',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828111',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'11','N','2016-12-07 15:13:42','2016-12-07 15:13:42',NULL,'0000-00-00 00:00:00'),('6360818360834828701',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo','c6VcRU7qlVxIyVmxEVwVx0r2PWlXGZ1uq9AhqIgq2i3hjXeRfvotIk23SjGWWJqV',NULL,NULL,NULL,NULL,NULL,'/videoxtra/3/4PD2t_A3od7z812OyB6GVkVt1fsE_Nc5mwmApZMo-C_G-NEnGTsEPj48Ydw2m6Pk.jpeg',NULL,NULL,NULL,'4PD2t_A3od7z812OyB6GVkVt1fsE_Nc5mwmApZMo-C_G-NEnGTsEPj48Ydw2m6Pk',NULL,NULL,NULL,NULL,'/videoxtra/3/c6VcRU7qlVxIyVmxEVwVx0r2PWlXGZ1uq9AhqIgq2i3hjXeRfvotIk23SjGWWJqV.mp4','N','1970-01-18 11:23:13','2016-12-06 14:28:01',NULL,'0000-00-00 00:00:00'),('6360818360834828702',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:11:38','2016-12-07 15:11:38',NULL,'0000-00-00 00:00:00'),('6360818360834828703',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:33','2016-12-07 15:12:33',NULL,'0000-00-00 00:00:00'),('6360818360834828704',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:33','2016-12-07 15:12:33',NULL,'0000-00-00 00:00:00'),('6360818360834828705',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:33','2016-12-07 15:12:33',NULL,'0000-00-00 00:00:00'),('6360818360834828706',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:34','2016-12-07 15:12:34',NULL,'0000-00-00 00:00:00'),('6360818360834828707',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:34','2016-12-07 15:12:34',NULL,'0000-00-00 00:00:00'),('6360818360834828708',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:34','2016-12-07 15:12:34',NULL,'0000-00-00 00:00:00'),('6360818360834828709',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:34','2016-12-07 15:12:34',NULL,'0000-00-00 00:00:00'),('6360818360834828710',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:34','2016-12-07 15:12:34',NULL,'0000-00-00 00:00:00'),('6360818360834828711',17,'gh_c171dcbc9956','oqyqUwq_YY84qjFWUtn6Ti4XIROE','shortvideo',NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/imgextra/3/di0EeEgLdiBIHPqT2XNFUaFDYQdQAUpqAwfs9pBTvwmY6cYNZPIkrNC0huWmdU9V.jpeg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://120.77.54.247:8020/filextra/ab.MP4','N','2016-12-07 15:12:34','2016-12-07 15:12:34',NULL,'0000-00-00 00:00:00');

/*Table structure for table `t_wechat_send_message` */

DROP TABLE IF EXISTS `t_wechat_send_message`;

CREATE TABLE `t_wechat_send_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyId` int(11) DEFAULT NULL COMMENT '关键词id',
  `keyword` varchar(64) DEFAULT NULL COMMENT '关键词',
  `msgType` varchar(32) NOT NULL COMMENT '消息类型 文本:text 图片:image 视频:video 语音:music 图文:news',
  `mediaId` varchar(128) DEFAULT NULL COMMENT '通过素材管理接口上传多媒体文件',
  `content` varchar(512) DEFAULT NULL COMMENT '文本内容',
  `title` varchar(128) DEFAULT NULL COMMENT '标题',
  `description` varchar(256) DEFAULT NULL COMMENT '描述',
  `picUrl` varchar(128) DEFAULT NULL COMMENT '图片Url',
  `url` varchar(128) DEFAULT NULL COMMENT '链接',
  `musicUrl` varchar(128) DEFAULT NULL COMMENT '音乐链接',
  `hqMusicUrl` varchar(128) DEFAULT NULL COMMENT '高质量音乐链接，WIFI环境优先使用该链接播放音乐',
  `thumbMediaId` varchar(128) DEFAULT NULL COMMENT '缩略图的媒体id，通过素材管理接口上传多媒体文件，得到的id',
  `isDelete` varchar(2) DEFAULT 'N',
  `creater` varchar(128) DEFAULT NULL COMMENT '创建人',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(128) DEFAULT NULL COMMENT '更新人',
  `updateTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='微信发送消息';

/*Data for the table `t_wechat_send_message` */

insert  into `t_wechat_send_message`(`id`,`keyId`,`keyword`,`msgType`,`mediaId`,`content`,`title`,`description`,`picUrl`,`url`,`musicUrl`,`hqMusicUrl`,`thumbMediaId`,`isDelete`,`creater`,`createTime`,`updater`,`updateTime`) values (1,1,'透明人','news',NULL,NULL,'透明人管理中心',NULL,'http://www.xue110.top:80/images/m-taoxuequ.jpg','http://m.xue110.top/hm',NULL,NULL,NULL,'N',NULL,'2016-12-04 00:01:11',NULL,'0000-00-00 00:00:00'),(2,1,'透明人','news',NULL,NULL,'透明人微信直播教程',NULL,'http://m.xue110.top:80/images/slider1.jpg','http://mp.weixin.qq.com/s/KN6d3mzGB9e35FLD0ctaZg',NULL,NULL,NULL,'N',NULL,'2016-12-04 00:02:41',NULL,'0000-00-00 00:00:00');

/* Function  structure for function  `currval` */

/*!50003 DROP FUNCTION IF EXISTS `currval` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `currval`(seq_name VARCHAR(50)) RETURNS int(11)
    DETERMINISTIC
BEGIN
     DECLARE value INTEGER; 
     SET value = 0; 
     SELECT current_value INTO value 
          FROM sequence
          WHERE name = seq_name; 
     RETURN value; 
END */$$
DELIMITER ;

/* Function  structure for function  `nextval` */

/*!50003 DROP FUNCTION IF EXISTS `nextval` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `nextval`(seq_name VARCHAR(50)) RETURNS int(11)
    DETERMINISTIC
BEGIN
     UPDATE sequence
          SET current_value = current_value + increment 
          WHERE name = seq_name; 
     RETURN currval(seq_name); 
END */$$
DELIMITER ;

/* Function  structure for function  `setval` */

/*!50003 DROP FUNCTION IF EXISTS `setval` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `setval`(seq_name VARCHAR(50), value INTEGER) RETURNS int(11)
    DETERMINISTIC
BEGIN
     UPDATE sequence
          SET current_value = value 
          WHERE name = seq_name; 
     RETURN currval(seq_name); 
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
