/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : db1

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-11-09 14:32:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` varchar(64) NOT NULL DEFAULT 'company',
  `company_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'hp');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` varchar(64) NOT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_addr`
-- ----------------------------
DROP TABLE IF EXISTS `customer_addr`;
CREATE TABLE `customer_addr` (
  `customer_addr` varchar(64) NOT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customer_addr`),
  KEY `custom` (`customer_id`),
  CONSTRAINT `custom` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_addr
-- ----------------------------

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` varchar(64) NOT NULL,
  `employee_name` varchar(64) DEFAULT NULL,
  `employee_address` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `good_id` varchar(64) NOT NULL,
  `good_name` varchar(64) DEFAULT NULL,
  `good_price` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `hotnews`
-- ----------------------------
DROP TABLE IF EXISTS `hotnews`;
CREATE TABLE `hotnews` (
  `hotnews_id` varchar(64) NOT NULL,
  `hotnews_an` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`hotnews_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotnews
-- ----------------------------
INSERT INTO `hotnews` VALUES ('795528865165479936', 'hp');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` varchar(64) NOT NULL,
  `customer_id` varchar(64) NOT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `order_items`
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `order_items_id` varchar(64) NOT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`order_items_id`),
  KEY `order` (`order_id`),
  CONSTRAINT `order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_items
-- ----------------------------

-- ----------------------------
-- Table structure for `travelrecord`
-- ----------------------------
DROP TABLE IF EXISTS `travelrecord`;
CREATE TABLE `travelrecord` (
  `travelrecord_id` varchar(255) NOT NULL,
  `travelrecord_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`travelrecord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelrecord
-- ----------------------------
db2.sql
/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : db2

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-11-09 14:32:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` varchar(64) NOT NULL DEFAULT 'company',
  `company_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'hp');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `customer_id` varchar(64) NOT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_addr`
-- ----------------------------
DROP TABLE IF EXISTS `customer_addr`;
CREATE TABLE `customer_addr` (
  `customer_addr` varchar(64) NOT NULL,
  `customer_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customer_addr`),
  KEY `custom` (`customer_id`),
  CONSTRAINT `custom` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_addr
-- ----------------------------

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `employee_id` varchar(64) NOT NULL,
  `employee_name` varchar(64) DEFAULT NULL,
  `employee_address` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `good_id` varchar(64) NOT NULL,
  `good_name` varchar(64) DEFAULT NULL,
  `good_price` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`good_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------

-- ----------------------------
-- Table structure for `hotnews`
-- ----------------------------
DROP TABLE IF EXISTS `hotnews`;
CREATE TABLE `hotnews` (
  `hotnews_id` varchar(64) NOT NULL,
  `hotnews_an` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`hotnews_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotnews
-- ----------------------------
INSERT INTO `hotnews` VALUES ('1', 'hp');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orders_id` varchar(64) NOT NULL,
  `customer_id` varchar(64) NOT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `order_items`
-- ----------------------------
DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `order_items_id` varchar(64) NOT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`order_items_id`),
  KEY `order` (`order_id`),
  CONSTRAINT `order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_items
-- ----------------------------

-- ----------------------------
-- Table structure for `travelrecord`
-- ----------------------------
DROP TABLE IF EXISTS `travelrecord`;
CREATE TABLE `travelrecord` (
  `travelrecord_id` varchar(255) NOT NULL,
  `travelrecord_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`travelrecord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelrecord
-- ----------------------------
db3.sql
/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : db3

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-11-09 14:32:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `company_id` varchar(64) NOT NULL DEFAULT 'company',
  `company_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', 'hp');

-- ----------------------------
-- Table structure for `hotnews`
-- ----------------------------
DROP TABLE IF EXISTS `hotnews`;
CREATE TABLE `hotnews` (
  `hotnews_id` varchar(64) NOT NULL,
  `hotnews_an` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`hotnews_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotnews
-- ----------------------------

-- ----------------------------
-- Table structure for `travelrecord`
-- ----------------------------
DROP TABLE IF EXISTS `travelrecord`;
CREATE TABLE `travelrecord` (
  `travelrecord_id` varchar(255) NOT NULL,
  `travelrecord_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`travelrecord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travelrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `t_range_date`
-- ----------------------------
 CREATE TABLE `t_range_date` ( 
	`id` INT NOT NULL, 
	`date` DATE NULL, 
	`date_str` VARCHAR(45) NULL, 
	`context` VARCHAR(45) NULL, PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_range_date
-- ----------------------------
INSERT INTO t_range_date (id,date_str,context) VALUES(1,'2015-01-01','month-1-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(2,'2015-02-01','month-2-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(3,'2015-03-01','month-3-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(4,'2015-04-01','month-4-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(5,'2015-05-01','month-5-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(6,'2015-06-01','month-6-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(7,'2015-07-01','month-7-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(8,'2015-08-01','month-8-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(9,'2015-09-01','month-9-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(10,'2015-10-01','month-10-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(11,'2015-11-01','month-11-str');
INSERT INTO t_range_date (id,date_str,context) VALUES(12,'2015-12-01','month-12-str');

-- ----------------------------
-- Table structure for `msg`
-- ----------------------------
CREATE TABLE `msg` (
  `id` BIGINT(20) NOT NULL,
  `content` VARCHAR(4000) DEFAULT NULL,
  `create_time` DATETIME DEFAULT NULL COMMENT '创建时间',
  `create_date` INT(8) DEFAULT NULL COMMENT '按月分表字段，不能为空。',
  PRIMARY KEY (`id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg
-- ----------------------------
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('1','content1','2017-01-29 16:11:59','20170129');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('2','content2','2017-02-28 16:11:59','20170228');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('3','content3','2017-03-29 16:11:59','20170329');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('4','content4','2017-04-29 16:11:59','20170429');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('5','content5','2017-05-29 16:11:59','20170529');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('6','content6','2017-06-29 16:11:59','20170629');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('7','content7','2017-07-29 16:11:59','20170729');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('8','content8','2017-08-29 16:11:59','20170829');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('9','content9','2017-09-29 16:11:59','20170929');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('10','content10','2017-10-29 16:11:59','20171029');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('11','content11','2017-11-29 16:11:59','20171129');
INSERT INTO `msg` (`id`, `content`, `create_time`, `create_date`) VALUES('12','content12','2017-12-29 16:11:59','20171229');
