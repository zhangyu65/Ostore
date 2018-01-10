-- 创建数据库ostore
DROP DATABASE IF EXISTS ostore;
CREATE DATABASE ostore DEFAULT CHARACTER SET utf8;

USE ostore;

-- 商品表
CREATE TABLE IF NOT EXISTS shop_info (
  `shop_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `shop_name` VARCHAR(128) NOT NULL COMMENT '商品名称',
  `shop_count` INT DEFAULT 0 COMMENT '商品数量',
  `shop_type` VARCHAR(5) COMMENT '商品类型',
  `shop_price` DECIMAL(10,2) NOT NULL COMMENT '商品价格',
  `discount` VARCHAR(4) DEFAULT '100%' COMMENT '商品折扣',
  `shop_status` VARCHAR(1) COMMENT '状态',
  PRIMARY KEY (`shop_id`),
  KEY `idx_shop_count` (`shop_count`),
  KEY `idx_shop_type` (`shop_type`),
  KEY `idx_shop_price` (`shop_price`),
  KEY `idx_shop_discount` (`discount`)
)ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8 COMMENT '商品信息表';

-- 客户表
CREATE TABLE IF NOT EXISTS cus_info (
  `cus_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '客户编号',
  `cus_name` VARCHAR(128) NOT NULL COMMENT '客户姓名',
  `cus_sex` VARCHAR(2) COMMENT '客户性别',
  `cus_phone` VARCHAR(11) NOT NULL COMMENT '客户手机',
  `cus_mail` VARCHAR(128) COMMENT '客户邮件',
  `cus_pwd` VARCHAR(30) NOT NULL COMMENT '客户登录密码',
  `cus_cert_type` VARCHAR(5) COMMENT '证件类型',
  `cus_cert_id` VARCHAR(20) COMMENT '证件号码',
  `cus_address` VARCHAR(500) COMMENT '客户地址',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建日期',
  `cus_status` VARCHAR(1) COMMENT '状态',
  PRIMARY KEY (`cus_id`),
  KEY `idx_cus_phone` (`cus_phone`),
  KEY `idx_cus_mail` (`cus_mail`),
  KEY `idx_cus_name` (`cus_name`),
  KEY `idx_cus_time` (`create_time`)
)ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8 COMMENT '客户信息表';

-- 订单表
CREATE TABLE IF NOT EXISTS ord_info (
  `ord_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `cus_id` BIGINT NOT NULL COMMENT '客户编号',
  `cus_phone` VARCHAR(11) NOT NULL COMMENT '客户手机号',
  `ord_sum` DECIMAL(10,2) NOT NULL COMMENT '订单金额',
  `ord_status` VARCHAR(1) COMMENT '状态',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建时间',
  PRIMARY KEY (`ord_id`),
  KEY `idx_ord_cus_id` (`cus_id`),
  KEY `idx_ord_cus_phone` (`cus_phone`),
  KEY `idx_ord_sum` (`ord_sum`),
  KEY `idx_ord_status` (`ord_status`),
  KEY `idx_ord_time` (`create_time`)
)ENGINE=InnoDB AUTO_INCREMENT=1000000 DEFAULT CHARSET=utf8 COMMENT '订单信息表';

-- 订单详情表
CREATE TABLE IF NOT EXISTS ord_detail (
  `ord_id` BIGINT NOT NULL COMMENT '订单编号',
  `shop_id` BIGINT NOT NULL COMMENT '商品编号',
  `shop_count` INT NOT NULL COMMENT '商品数量',
  `shop_price` DECIMAL(10,2) NOT NULL COMMENT '商品单价',
  `sum_price` DECIMAL(10,2) NOT NULL COMMENT '总价',
  PRIMARY KEY (`ord_id`,shop_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '订单详情表';

-- 购物车信息表
CREATE TABLE IF NOT EXISTS shopping_cart (
  `cus_id` BIGINT NOT NULL COMMENT '客户编号',
  `shop_id` BIGINT NOT NULL COMMENT '商品编号',
  `create_time` TIMESTAMP NOT NULL DEFAULT current_timestamp COMMENT '创建时间',
  PRIMARY KEY (`cus_id`,`shop_id`),
  KEY `idx_cart_time` (`create_time`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '购物车信息表';







-- 需要 MySQL 5.6.5以上的版本
CREATE DATABASE beauty_ssm;
USE beauty_ssm;

-- 用户表
CREATE TABLE _user(
`user_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '用户ID',
`user_name` VARCHAR(50) NOT NULL COMMENT '用户名',
`user_phone` BIGINT NOT NULL COMMENT '手机号',
`score` INT NOT NULL COMMENT '积分',
`create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
PRIMARY KEY (`user_id`),
KEY `idx_user_phone`(`user_phone`)
)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 商品表
CREATE TABLE _goods(
`goods_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '商品ID',
`title` VARCHAR(120) NOT NULL COMMENT '商品名称',
`state` INT NOT NULL COMMENT '商品状态',
`price` FLOAT NOT NULL COMMENT '商品价格',
`number` INT NOT NULL COMMENT '商品数量',
`create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
`update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
PRIMARY KEY (`goods_id`)
)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='商品表';

-- 订单表
CREATE TABLE _order(
`order_id` BIGINT NOT NULL AUTO_INCREMENT COMMENT '订单ID',
`user_id` BIGINT NOT NULL  COMMENT '用户ID',
`goods_id` BIGINT NOT NULL  COMMENT '商品ID',
`title` VARCHAR(120) NOT NULL COMMENT '订单名称',
`create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
PRIMARY KEY (`order_id`),
KEY `idx_user_id`(`user_id`),
KEY `idx_goods_id`(`goods_id`)
)ENGINE=INNODB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='订单表';


-- 插入初始数据
INSERT INTO 
	_user(user_name, user_phone, score)
VALUES
	('阿坚', 18768128888, 0),
	('小明', 18968129999, 0);


INSERT INTO
	_goods(title, state, price,number)
VALUES
	('iphone7', 1, 3999, 100),
	('ipad3', 1, 1999, 2000);
