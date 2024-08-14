/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t345`;
CREATE DATABASE IF NOT EXISTS `t345` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t345`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 3, '收货人1', '17703786901', '地址1', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, 1, '收货人2', '17703786902', '地址2', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, 1, '收货人3', '17703786903', '地址3', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, 1, '收货人5', '17703786905', '地址5', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, 2, '收货人6', '17703786906', '地址6', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, 1, '收货人7', '17703786907', '地址7', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, 3, '收货人8', '17703786908', '地址8', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, 1, '收货人9', '17703786909', '地址9', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, 1, '收货人10', '17703786910', '地址10', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, 1, '收货人11', '17703786911', '地址11', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, 3, '收货人12', '17703786912', '地址12', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, 3, '收货人13', '17703786913', '地址13', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, 1, '收货人14', '17703786914', '地址14', 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(15, 4, '张三', '17755552222', '地址121', 2, '2023-04-22 05:17:42', '2023-04-22 05:17:41', '2023-04-22 05:17:42');

DROP TABLE IF EXISTS `caomei`;
CREATE TABLE IF NOT EXISTS `caomei` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `caomei_name` varchar(200) DEFAULT NULL COMMENT '草莓名称  Search111 ',
  `caomei_uuid_number` varchar(200) DEFAULT NULL COMMENT '草莓编号',
  `caomei_photo` varchar(200) DEFAULT NULL COMMENT '草莓照片',
  `caomei_types` int DEFAULT NULL COMMENT '草莓类型 Search111',
  `caomei_kucun_number` int DEFAULT NULL COMMENT '草莓库存',
  `caomei_old_money` decimal(10,2) DEFAULT NULL COMMENT '草莓原价 ',
  `caomei_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/斤',
  `caomei_cangku` varchar(200) DEFAULT NULL COMMENT '所属仓库 Search111',
  `caomei_clicknum` int DEFAULT NULL COMMENT '草莓热度',
  `caomei_content` longtext COMMENT '草莓介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `caomei_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='草莓';

DELETE FROM `caomei`;
INSERT INTO `caomei` (`id`, `caomei_name`, `caomei_uuid_number`, `caomei_photo`, `caomei_types`, `caomei_kucun_number`, `caomei_old_money`, `caomei_new_money`, `caomei_cangku`, `caomei_clicknum`, `caomei_content`, `shangxia_types`, `caomei_delete`, `insert_time`, `create_time`) VALUES
	(1, '草莓名称1', '1682140183806', 'upload/caomei1.jpg', 2, 101, 758.01, 190.47, '所属仓库1', 31, '草莓介绍1', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, '草莓名称2', '1682140183824', 'upload/caomei2.jpg', 4, 102, 861.35, 312.51, '所属仓库2', 449, '草莓介绍2', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, '草莓名称3', '1682140183803', 'upload/caomei3.jpg', 4, 100, 663.36, 407.21, '所属仓库3', 446, '草莓介绍3', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, '草莓名称4', '1682140183840', 'upload/caomei4.jpg', 2, 104, 753.18, 495.67, '所属仓库4', 427, '草莓介绍4', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, '草莓名称5', '1682140183764', 'upload/caomei5.jpg', 1, 105, 640.75, 247.24, '所属仓库5', 111, '草莓介绍5', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, '草莓名称6', '1682140183813', 'upload/caomei6.jpg', 3, 106, 739.83, 277.57, '所属仓库6', 48, '草莓介绍6', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, '草莓名称7', '1682140183840', 'upload/caomei7.jpg', 2, 106, 605.11, 406.55, '所属仓库7', 217, '草莓介绍7', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, '草莓名称8', '1682140183844', 'upload/caomei8.jpg', 2, 108, 912.05, 204.06, '所属仓库8', 168, '草莓介绍8', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, '草莓名称9', '1682140183848', 'upload/caomei9.jpg', 3, 103, 882.81, 303.96, '所属仓库9', 427, '草莓介绍9', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, '草莓名称10', '1682140183843', 'upload/caomei10.jpg', 3, 1010, 787.88, 373.57, '所属仓库10', 163, '草莓介绍10', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, '草莓名称11', '1682140183832', 'upload/caomei11.jpg', 1, 1011, 740.38, 119.70, '所属仓库11', 106, '草莓介绍11', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, '草莓名称12', '1682140183758', 'upload/caomei12.jpg', 3, 1012, 829.00, 54.12, '所属仓库12', 347, '草莓介绍12', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, '草莓名称13', '1682140183817', 'upload/caomei13.jpg', 2, 1013, 925.85, 475.57, '所属仓库13', 357, '草莓介绍13', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, '草莓名称14', '1682140183766', 'upload/caomei14.jpg', 1, 1010, 680.82, 345.01, '所属仓库14但是跟都是干湿的', 429, '<p>草莓介绍14发给股份第三个发送到股份收到货公司发的个大师傅大师傅</p>', 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43');

DROP TABLE IF EXISTS `caomei_collection`;
CREATE TABLE IF NOT EXISTS `caomei_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caomei_id` int DEFAULT NULL COMMENT '草莓',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `caomei_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='草莓收藏';

DELETE FROM `caomei_collection`;
INSERT INTO `caomei_collection` (`id`, `caomei_id`, `yonghu_id`, `caomei_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, 2, 3, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, 3, 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, 4, 3, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, 5, 3, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, 6, 2, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, 7, 3, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, 8, 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, 9, 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, 10, 2, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, 11, 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, 12, 2, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, 13, 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, 14, 1, 1, '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(15, 13, 4, 1, '2023-04-22 05:18:32', '2023-04-22 05:18:32'),
	(16, 9, 4, 1, '2023-04-22 05:18:36', '2023-04-22 05:18:36'),
	(17, 7, 1, 1, '2024-08-04 05:36:26', '2024-08-04 05:36:26');

DROP TABLE IF EXISTS `caomei_commentback`;
CREATE TABLE IF NOT EXISTS `caomei_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caomei_id` int DEFAULT NULL COMMENT '草莓',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `caomei_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='草莓评价';

DELETE FROM `caomei_commentback`;
INSERT INTO `caomei_commentback` (`id`, `caomei_id`, `yonghu_id`, `caomei_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-04-22 05:09:43', '回复信息1', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, 2, 2, '评价内容2', '2023-04-22 05:09:43', '回复信息2', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, 3, 1, '评价内容3', '2023-04-22 05:09:43', '回复信息3', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, 4, 1, '评价内容4', '2023-04-22 05:09:43', '回复信息4', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, 5, 3, '评价内容5', '2023-04-22 05:09:43', '回复信息5', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, 6, 1, '评价内容6', '2023-04-22 05:09:43', '回复信息6', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, 7, 1, '评价内容7', '2023-04-22 05:09:43', '回复信息7', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, 8, 3, '评价内容8', '2023-04-22 05:09:43', '回复信息8', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, 9, 2, '评价内容9', '2023-04-22 05:09:43', '回复信息9', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, 10, 3, '评价内容10', '2023-04-22 05:09:43', '回复信息10', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, 11, 3, '评价内容11', '2023-04-22 05:09:43', '回复信息11', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, 12, 2, '评价内容12', '2023-04-22 05:09:43', '回复信息12', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, 13, 3, '评价内容13', '2023-04-22 05:09:43', '回复信息13', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, 14, 2, '评价内容14', '2023-04-22 05:09:43', '回复信息14', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(15, 9, 4, '电光火石个发的感受到', '2023-04-22 05:19:51', NULL, NULL, '2023-04-22 05:19:51');

DROP TABLE IF EXISTS `caomei_order`;
CREATE TABLE IF NOT EXISTS `caomei_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caomei_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `caomei_id` int DEFAULT NULL COMMENT '草莓',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买斤数',
  `caomei_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `caomei_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `caomei_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `caomei_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `caomei_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='草莓订单';

DELETE FROM `caomei_order`;
INSERT INTO `caomei_order` (`id`, `caomei_order_uuid_number`, `address_id`, `caomei_id`, `yonghu_id`, `buy_number`, `caomei_order_true_price`, `caomei_order_courier_name`, `caomei_order_courier_number`, `caomei_order_types`, `caomei_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1682140574288', 3, 3, 1, 1, 407.21, NULL, NULL, 101, 1, '2023-04-22 05:16:14', '2023-04-22 05:16:14'),
	(2, '1682140698813', 15, 14, 4, 2, 690.02, NULL, NULL, 101, 1, '2023-04-22 05:18:19', '2023-04-22 05:18:19'),
	(3, '1682140720746', 15, 9, 4, 2, 607.92, NULL, NULL, 101, 1, '2023-04-22 05:18:41', '2023-04-22 05:18:41'),
	(4, '1682140727898', 15, 14, 4, 2, 690.02, NULL, NULL, 101, 1, '2023-04-22 05:18:48', '2023-04-22 05:18:48'),
	(5, '1682140727898', 15, 9, 4, 4, 1215.84, '疏风', '154153415354', 105, 1, '2023-04-22 05:18:48', '2023-04-22 05:18:48'),
	(6, '1682140727898', 15, 2, 4, 2, 625.02, NULL, NULL, 102, 1, '2023-04-22 05:18:48', '2023-04-22 05:18:48'),
	(7, '1722749805571', 7, 7, 1, 1, 406.55, NULL, NULL, 101, 1, '2024-08-04 05:36:46', '2024-08-04 05:36:46'),
	(8, '1722749805571', 7, 3, 1, 2, 814.42, NULL, NULL, 101, 1, '2024-08-04 05:36:46', '2024-08-04 05:36:46');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `caomei_id` int DEFAULT NULL COMMENT '草莓',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1挂号第三个第三个', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(17, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-22 05:08:16'),
	(18, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-22 05:08:16'),
	(19, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-22 05:08:16'),
	(20, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-22 05:08:16'),
	(21, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-04-22 05:08:16'),
	(22, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-04-22 05:08:16'),
	(23, 'caomei_types', '草莓类型', 1, '草莓类型1', NULL, NULL, '2023-04-22 05:08:16'),
	(24, 'caomei_types', '草莓类型', 2, '草莓类型2', NULL, NULL, '2023-04-22 05:08:16'),
	(25, 'caomei_types', '草莓类型', 3, '草莓类型3', NULL, NULL, '2023-04-22 05:08:16'),
	(26, 'caomei_types', '草莓类型', 4, '草莓类型4', NULL, NULL, '2023-04-22 05:08:16'),
	(27, 'caomei_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-04-22 05:08:16'),
	(28, 'caomei_order_types', '订单类型', 101, '已支付', NULL, NULL, '2023-04-22 05:08:16'),
	(29, 'caomei_order_types', '订单类型', 102, '已退款', NULL, NULL, '2023-04-22 05:08:16'),
	(30, 'caomei_order_types', '订单类型', 103, '已发货', NULL, NULL, '2023-04-22 05:08:16'),
	(31, 'caomei_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-04-22 05:08:16'),
	(32, 'caomei_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-04-22 05:08:16'),
	(33, 'caomei_order_payment_types', '订单支付类型', 1, '余额', NULL, NULL, '2023-04-22 05:08:16'),
	(34, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-04-22 05:08:16'),
	(35, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-04-22 05:08:16'),
	(36, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-22 05:08:16'),
	(37, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-22 05:08:16'),
	(38, 'wendujiankong_types', '温度监控类型', 1, '监控类型1', NULL, NULL, '2023-04-22 05:08:16'),
	(39, 'wendujiankong_types', '温度监控类型', 2, '监控类型2', NULL, NULL, '2023-04-22 05:08:16'),
	(40, 'wendujiankong_types', '温度监控类型', 3, '监控类型3', NULL, NULL, '2023-04-22 05:08:16'),
	(41, 'wendujiankong_types', '温度监控类型', 4, '监控类型4', NULL, NULL, '2023-04-22 05:08:16'),
	(42, 'shidujiankong_types', '湿度监控类型', 1, '监控类型1', NULL, NULL, '2023-04-22 05:08:16'),
	(43, 'shidujiankong_types', '湿度监控类型', 2, '监控类型2', NULL, NULL, '2023-04-22 05:08:16'),
	(44, 'shidujiankong_types', '湿度监控类型', 3, '监控类型3', NULL, NULL, '2023-04-22 05:08:16'),
	(45, 'shidujiankong_types', '湿度监控类型', 4, '监控类型4', NULL, NULL, '2023-04-22 05:08:16'),
	(46, 'zhongzhijihua_types', '种植计划类型', 1, '种植计划类型1', NULL, NULL, '2023-04-22 05:08:16'),
	(47, 'zhongzhijihua_types', '种植计划类型', 2, '种植计划类型2', NULL, NULL, '2023-04-22 05:08:16'),
	(48, 'zhongzhijihua_types', '种植计划类型', 3, '种植计划类型3', NULL, NULL, '2023-04-22 05:08:16'),
	(49, 'zhongzhijihua_types', '种植计划类型', 4, '种植计划类型4', NULL, NULL, '2023-04-22 05:08:16'),
	(50, 'yujing_types', '预警类型', 1, '预警类型1', NULL, NULL, '2023-04-22 05:08:16'),
	(51, 'yujing_types', '预警类型', 2, '预警类型2', NULL, NULL, '2023-04-22 05:08:16'),
	(52, 'yujing_types', '预警类型', 3, '预警类型3', NULL, NULL, '2023-04-22 05:08:16'),
	(53, 'yujing_types', '预警类型', 4, '预警类型4', NULL, NULL, '2023-04-22 05:08:16'),
	(54, 'zhongzhijihua_types', '种植计划类型', 5, '种植计划类型5', NULL, '', '2023-04-22 05:19:20');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-22 05:09:43', '公告详情1', '2023-04-22 05:09:43'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-04-22 05:09:43', '公告详情2', '2023-04-22 05:09:43'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-04-22 05:09:43', '公告详情3', '2023-04-22 05:09:43'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-22 05:09:43', '公告详情4', '2023-04-22 05:09:43'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-04-22 05:09:43', '公告详情5', '2023-04-22 05:09:43'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-22 05:09:43', '公告详情6', '2023-04-22 05:09:43'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-04-22 05:09:43', '公告详情7', '2023-04-22 05:09:43'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-04-22 05:09:43', '公告详情8', '2023-04-22 05:09:43'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-04-22 05:09:43', '公告详情9', '2023-04-22 05:09:43'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-04-22 05:09:43', '公告详情10', '2023-04-22 05:09:43'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 1, '2023-04-22 05:09:43', '公告详情11', '2023-04-22 05:09:43'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-04-22 05:09:43', '公告详情12', '2023-04-22 05:09:43'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-22 05:09:43', '公告详情13', '2023-04-22 05:09:43'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-04-22 05:09:43', '公告详情14', '2023-04-22 05:09:43');

DROP TABLE IF EXISTS `shidujiankong`;
CREATE TABLE IF NOT EXISTS `shidujiankong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shidujiankong_uuid_number` varchar(200) DEFAULT NULL COMMENT '湿度监控编号',
  `shidujiankong_address` varchar(200) DEFAULT NULL COMMENT '湿度监控地点',
  `shidujiankong_types` int DEFAULT NULL COMMENT '湿度监控类型 Search111',
  `shidujiankong_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `shidujiankong_shuzi` decimal(10,2) DEFAULT NULL COMMENT '湿度',
  `shidujiankong_time` timestamp NULL DEFAULT NULL COMMENT '监控时间',
  `shidujiankong_content` longtext COMMENT '监控备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='湿度监控';

DELETE FROM `shidujiankong`;
INSERT INTO `shidujiankong` (`id`, `shidujiankong_uuid_number`, `shidujiankong_address`, `shidujiankong_types`, `shidujiankong_file`, `shidujiankong_shuzi`, `shidujiankong_time`, `shidujiankong_content`, `insert_time`, `create_time`) VALUES
	(1, '1682140183813', '湿度监控地点1', 3, 'upload/file.rar', 794.15, '2023-04-22 05:09:43', '监控备注1', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, '1682140183802', '湿度监控地点2', 2, 'upload/file.rar', 749.24, '2023-04-22 05:09:43', '监控备注2', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, '1682140183774', '湿度监控地点3', 2, 'upload/file.rar', 998.33, '2023-04-22 05:09:43', '监控备注3', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, '1682140183762', '湿度监控地点4', 4, 'upload/file.rar', 398.45, '2023-04-22 05:09:43', '监控备注4', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, '1682140183809', '湿度监控地点5', 2, 'upload/file.rar', 142.86, '2023-04-22 05:09:43', '监控备注5', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, '1682140183779', '湿度监控地点6', 4, 'upload/file.rar', 754.27, '2023-04-22 05:09:43', '监控备注6', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, '1682140183759', '湿度监控地点7', 3, 'upload/file.rar', 82.05, '2023-04-22 05:09:43', '监控备注7', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, '1682140183805', '湿度监控地点8', 3, 'upload/file.rar', 428.21, '2023-04-22 05:09:43', '监控备注8', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, '1682140183799', '湿度监控地点9', 1, 'upload/file.rar', 31.57, '2023-04-22 05:09:43', '监控备注9', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, '1682140183773', '湿度监控地点10', 1, 'upload/file.rar', 1.63, '2023-04-22 05:09:43', '监控备注10', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, '1682140183816', '湿度监控地点11', 1, 'upload/file.rar', 140.12, '2023-04-22 05:09:43', '监控备注11', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, '1682140183827', '湿度监控地点12', 3, 'upload/file.rar', 38.51, '2023-04-22 05:09:43', '监控备注12', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, '1682140183813', '湿度监控地点13', 3, 'upload/file.rar', 151.33, '2023-04-22 05:09:43', '监控备注13', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, '1682140183828', '湿度监控地点14', 3, 'upload/file.rar', 868.27, '2023-04-22 05:09:43', '监控备注14', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(15, '1682140806358', '地点111', 4, '/upload/1682140814727.doc', 33.80, '2023-04-22 05:20:21', '<p>给大哥大哥</p>', '2023-04-22 05:20:24', '2023-04-22 05:20:24');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'nov2ct585mgbkoz5mf4debmyjfr2z1n1', '2023-04-22 05:13:00', '2024-08-04 06:36:14'),
	(2, 1, 'admin', 'users', '管理员', 'q9obwwig72xsjq1k1w4fo1zwn37f70ae', '2023-04-22 05:15:48', '2024-08-04 06:34:57'),
	(3, 4, 'a5', 'yonghu', '用户', 'ownysnkyzbytqz53vsrucrmtpesvg1ef', '2023-04-22 05:17:20', '2023-04-22 06:17:20');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-22 05:08:16');

DROP TABLE IF EXISTS `wendujiankong`;
CREATE TABLE IF NOT EXISTS `wendujiankong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wendujiankong_uuid_number` varchar(200) DEFAULT NULL COMMENT '温度监控编号',
  `wendujiankong_address` varchar(200) DEFAULT NULL COMMENT '温度监控地点',
  `wendujiankong_types` int DEFAULT NULL COMMENT '温度监控类型 Search111',
  `wendujiankong_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `wendujiankong_shuzi` decimal(10,2) DEFAULT NULL COMMENT '温度',
  `wendujiankong_time` timestamp NULL DEFAULT NULL COMMENT '监控时间',
  `wendujiankong_content` longtext COMMENT '监控备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='温度监控';

DELETE FROM `wendujiankong`;
INSERT INTO `wendujiankong` (`id`, `wendujiankong_uuid_number`, `wendujiankong_address`, `wendujiankong_types`, `wendujiankong_file`, `wendujiankong_shuzi`, `wendujiankong_time`, `wendujiankong_content`, `insert_time`, `create_time`) VALUES
	(1, '1682140183837', '温度监控地点1', 2, 'upload/file.rar', 732.59, '2023-04-22 05:09:43', '监控备注1', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, '1682140183826', '温度监控地点2', 2, 'upload/file.rar', 59.60, '2023-04-22 05:09:43', '监控备注2', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, '1682140183823', '温度监控地点3', 3, 'upload/file.rar', 118.80, '2023-04-22 05:09:43', '监控备注3', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, '1682140183834', '温度监控地点4', 1, 'upload/file.rar', 468.13, '2023-04-22 05:09:43', '监控备注4', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, '1682140183781', '温度监控地点5', 4, 'upload/file.rar', 821.48, '2023-04-22 05:09:43', '监控备注5', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, '1682140183784', '温度监控地点6', 2, 'upload/file.rar', 233.91, '2023-04-22 05:09:43', '监控备注6', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, '1682140183854', '温度监控地点7', 3, 'upload/file.rar', 287.69, '2023-04-22 05:09:43', '监控备注7', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, '1682140183818', '温度监控地点8', 3, 'upload/file.rar', 129.13, '2023-04-22 05:09:43', '监控备注8', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, '1682140183769', '温度监控地点9', 2, 'upload/file.rar', 557.98, '2023-04-22 05:09:43', '监控备注9', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, '1682140183859', '温度监控地点10', 1, 'upload/file.rar', 212.28, '2023-04-22 05:09:43', '监控备注10', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, '1682140183772', '温度监控地点11', 2, 'upload/file.rar', 169.06, '2023-04-22 05:09:43', '监控备注11', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, '1682140183793', '温度监控地点12', 1, 'upload/file.rar', 831.52, '2023-04-22 05:09:43', '监控备注12', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, '1682140183772', '温度监控地点13', 4, 'upload/file.rar', 774.37, '2023-04-22 05:09:43', '监控备注13', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, '1682140183802', '温度监控地点14', 2, 'upload/file.rar', 638.67, '2023-04-22 05:09:43', '监控备注14', '2023-04-22 05:09:43', '2023-04-22 05:09:43');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `jinyong_types`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 9087.87, 1, '2023-04-22 05:09:43'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 2, '2@qq.com', 336.01, 1, '2023-04-22 05:09:43'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', 589.22, 1, '2023-04-22 05:09:43'),
	(4, '用户4', '123456', '张5', '17788885555', '444222333366666666', 'upload/1682140675198.jpg', 2, '5@qq.com', 996795.20, 2, '2023-04-22 05:17:14');

DROP TABLE IF EXISTS `yujing`;
CREATE TABLE IF NOT EXISTS `yujing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yujing_uuid_number` varchar(200) DEFAULT NULL COMMENT '预警编号',
  `yujing_name` varchar(200) DEFAULT NULL COMMENT '预警标题  Search111 ',
  `yujing_address` varchar(200) DEFAULT NULL COMMENT '预警地点',
  `yujing_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `yujing_types` int DEFAULT NULL COMMENT '预警类型 Search111',
  `yujing_time` timestamp NULL DEFAULT NULL COMMENT '预警时间',
  `yujing_content` longtext COMMENT '预警内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='病虫害预警';

DELETE FROM `yujing`;
INSERT INTO `yujing` (`id`, `yujing_uuid_number`, `yujing_name`, `yujing_address`, `yujing_file`, `yujing_types`, `yujing_time`, `yujing_content`, `insert_time`, `create_time`) VALUES
	(1, '1682140183792', '预警标题1', '预警地点1', 'upload/file.rar', 1, '2023-04-22 05:09:43', '预警内容1', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, '1682140183799', '预警标题2', '预警地点2', 'upload/file.rar', 4, '2023-04-22 05:09:43', '预警内容2', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, '1682140183790', '预警标题3', '预警地点3', 'upload/file.rar', 2, '2023-04-22 05:09:43', '预警内容3', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, '1682140183823', '预警标题4', '预警地点4', 'upload/file.rar', 2, '2023-04-22 05:09:43', '预警内容4', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, '1682140183843', '预警标题5', '预警地点5', 'upload/file.rar', 4, '2023-04-22 05:09:43', '预警内容5', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, '1682140183801', '预警标题6', '预警地点6', 'upload/file.rar', 2, '2023-04-22 05:09:43', '预警内容6', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, '1682140183787', '预警标题7', '预警地点7', 'upload/file.rar', 3, '2023-04-22 05:09:43', '预警内容7', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, '1682140183789', '预警标题8', '预警地点8', 'upload/file.rar', 3, '2023-04-22 05:09:43', '预警内容8', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, '1682140183831', '预警标题9', '预警地点9', 'upload/file.rar', 3, '2023-04-22 05:09:43', '预警内容9', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, '1682140183796', '预警标题10', '预警地点10', 'upload/file.rar', 4, '2023-04-22 05:09:43', '预警内容10', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, '1682140183856', '预警标题11', '预警地点11', 'upload/file.rar', 2, '2023-04-22 05:09:43', '预警内容11', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, '1682140183790', '预警标题12', '预警地点12', 'upload/file.rar', 4, '2023-04-22 05:09:43', '预警内容12', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, '1682140183809', '预警标题13', '预警地点13', 'upload/file.rar', 4, '2023-04-22 05:09:43', '预警内容13', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, '1682140183844', '预警标题14', '预警地点14', 'upload/file.rar', 2, '2023-04-22 05:09:43', '预警内容14', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(15, '1682140830886', '预警11111', '地点1111', '/upload/1682140843573.doc', 4, '2023-04-22 05:20:46', '<p>固定死第三个第三个</p>', '2023-04-22 05:20:48', '2023-04-22 05:20:48');

DROP TABLE IF EXISTS `zhongzhijihua`;
CREATE TABLE IF NOT EXISTS `zhongzhijihua` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `zhongzhijihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '种植计划编号',
  `zhongzhijihua_name` varchar(200) DEFAULT NULL COMMENT '计划标题  Search111 ',
  `zhongzhijihua_address` varchar(200) DEFAULT NULL COMMENT '计划地点',
  `zhongzhijihua_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `zhongzhijihua_types` int DEFAULT NULL COMMENT '种植计划类型 Search111',
  `zhongzhijihua_kaishi_time` timestamp NULL DEFAULT NULL COMMENT '计划开始时间',
  `zhongzhijihua_content` longtext COMMENT '计划内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='种植计划';

DELETE FROM `zhongzhijihua`;
INSERT INTO `zhongzhijihua` (`id`, `zhongzhijihua_uuid_number`, `zhongzhijihua_name`, `zhongzhijihua_address`, `zhongzhijihua_file`, `zhongzhijihua_types`, `zhongzhijihua_kaishi_time`, `zhongzhijihua_content`, `insert_time`, `create_time`) VALUES
	(1, '1682140183850', '计划标题1', '计划地点1', 'upload/file.rar', 3, '2023-04-22 05:09:43', '计划内容1', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(2, '1682140183814', '计划标题2', '计划地点2', 'upload/file.rar', 3, '2023-04-22 05:09:43', '计划内容2', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(3, '1682140183813', '计划标题3', '计划地点3', 'upload/file.rar', 4, '2023-04-22 05:09:43', '计划内容3', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(4, '1682140183837', '计划标题4', '计划地点4', 'upload/file.rar', 3, '2023-04-22 05:09:43', '计划内容4', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(5, '1682140183786', '计划标题5', '计划地点5', 'upload/file.rar', 2, '2023-04-22 05:09:43', '计划内容5', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(6, '1682140183817', '计划标题6', '计划地点6', 'upload/file.rar', 3, '2023-04-22 05:09:43', '计划内容6', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(7, '1682140183847', '计划标题7', '计划地点7', 'upload/file.rar', 4, '2023-04-22 05:09:43', '计划内容7', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(8, '1682140183829', '计划标题8', '计划地点8', 'upload/file.rar', 2, '2023-04-22 05:09:43', '计划内容8', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(9, '1682140183770', '计划标题9', '计划地点9', 'upload/file.rar', 1, '2023-04-22 05:09:43', '计划内容9', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(10, '1682140183838', '计划标题10', '计划地点10', 'upload/file.rar', 1, '2023-04-22 05:09:43', '计划内容10', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(11, '1682140183796', '计划标题11', '计划地点11', 'upload/file.rar', 2, '2023-04-22 05:09:43', '计划内容11', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(12, '1682140183798', '计划标题12', '计划地点12', 'upload/file.rar', 4, '2023-04-22 05:09:43', '计划内容12', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(13, '1682140183823', '计划标题13', '计划地点13', 'upload/file.rar', 4, '2023-04-22 05:09:43', '计划内容13', '2023-04-22 05:09:43', '2023-04-22 05:09:43'),
	(14, '1682140183838', '计划标题14', '计划地点14', 'upload/file.rar', 4, '2023-04-22 05:09:43', '<p>计划内容14感受到但是嘎第三个大概</p>', '2023-04-22 05:09:43', '2023-04-22 05:09:43');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
