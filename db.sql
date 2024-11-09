/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm69bz5
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm69bz5` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm69bz5`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-25 10:56:42',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-25 10:56:42',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-25 10:56:42',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-25 10:56:42',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-25 10:56:42',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-25 10:56:42',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'huiyuanzhuanqu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-04-25 10:56:42',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (62,'2021-04-25 10:56:42',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (63,'2021-04-25 10:56:42',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (64,'2021-04-25 10:56:42',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (65,'2021-04-25 10:56:42',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (66,'2021-04-25 10:56:42',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm69bz5/upload/1619319503191.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm69bz5/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm69bz5/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discusshuiyuanzhuanqu` */

DROP TABLE IF EXISTS `discusshuiyuanzhuanqu`;

CREATE TABLE `discusshuiyuanzhuanqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='会员专区评论表';

/*Data for the table `discusshuiyuanzhuanqu` */

insert  into `discusshuiyuanzhuanqu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-04-25 10:56:42',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discusshuiyuanzhuanqu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-04-25 10:56:42',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discusshuiyuanzhuanqu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-04-25 10:56:42',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discusshuiyuanzhuanqu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-04-25 10:56:42',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discusshuiyuanzhuanqu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-04-25 10:56:42',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discusshuiyuanzhuanqu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-04-25 10:56:42',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (121,'2021-04-25 10:56:42',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (122,'2021-04-25 10:56:42',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (123,'2021-04-25 10:56:42',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (124,'2021-04-25 10:56:42',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (125,'2021-04-25 10:56:42',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (126,'2021-04-25 10:56:42',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (21,'2021-04-25 10:56:41','会员1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssm69bz5/upload/huiyuan_zhaopian1.jpg','是','',100);
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (22,'2021-04-25 10:56:41','会员2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm69bz5/upload/huiyuan_zhaopian2.jpg','是','',100);
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (23,'2021-04-25 10:56:41','会员3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm69bz5/upload/huiyuan_zhaopian3.jpg','是','',100);
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (24,'2021-04-25 10:56:41','会员4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm69bz5/upload/huiyuan_zhaopian4.jpg','是','',100);
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (25,'2021-04-25 10:56:41','会员5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm69bz5/upload/huiyuan_zhaopian5.jpg','是','',100);
insert  into `huiyuan`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (26,'2021-04-25 10:56:41','会员6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm69bz5/upload/huiyuan_zhaopian6.jpg','是','',100);

/*Table structure for table `huiyuanzhuanqu` */

DROP TABLE IF EXISTS `huiyuanzhuanqu`;

CREATE TABLE `huiyuanzhuanqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiaoliang` int(11) DEFAULT NULL COMMENT '销量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `goumaishuoming` longtext COMMENT '购买说明',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='会员专区';

/*Data for the table `huiyuanzhuanqu` */

insert  into `huiyuanzhuanqu`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`goumaishuoming`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (51,'2021-04-25 10:56:41','商品名称1','商品分类1','规格1',1,'http://localhost:8080/ssm69bz5/upload/huiyuanzhuanqu_tupian1.jpg','购买说明1','商品介绍1','2021-04-25 10:56:41',1,99.9);
insert  into `huiyuanzhuanqu`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`goumaishuoming`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (52,'2021-04-25 10:56:41','商品名称2','商品分类2','规格2',2,'http://localhost:8080/ssm69bz5/upload/huiyuanzhuanqu_tupian2.jpg','购买说明2','商品介绍2','2021-04-25 10:56:41',2,99.9);
insert  into `huiyuanzhuanqu`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`goumaishuoming`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (53,'2021-04-25 10:56:41','商品名称3','商品分类3','规格3',3,'http://localhost:8080/ssm69bz5/upload/huiyuanzhuanqu_tupian3.jpg','购买说明3','商品介绍3','2021-04-25 10:56:41',3,99.9);
insert  into `huiyuanzhuanqu`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`goumaishuoming`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (54,'2021-04-25 10:56:41','商品名称4','商品分类4','规格4',4,'http://localhost:8080/ssm69bz5/upload/huiyuanzhuanqu_tupian4.jpg','购买说明4','商品介绍4','2021-04-25 10:56:41',4,99.9);
insert  into `huiyuanzhuanqu`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`goumaishuoming`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (55,'2021-04-25 10:56:41','商品名称5','商品分类5','规格5',5,'http://localhost:8080/ssm69bz5/upload/huiyuanzhuanqu_tupian5.jpg','购买说明5','商品介绍5','2021-04-25 10:56:41',5,99.9);
insert  into `huiyuanzhuanqu`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`goumaishuoming`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (56,'2021-04-25 10:56:41','商品名称6','商品分类6','规格6',6,'http://localhost:8080/ssm69bz5/upload/huiyuanzhuanqu_tupian6.jpg','购买说明6','商品介绍6','2021-04-25 10:56:41',6,99.9);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-04-25 10:56:42','标题1','简介1','http://localhost:8080/ssm69bz5/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (112,'2021-04-25 10:56:42','标题2','简介2','http://localhost:8080/ssm69bz5/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (113,'2021-04-25 10:56:42','标题3','简介3','http://localhost:8080/ssm69bz5/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (114,'2021-04-25 10:56:42','标题4','简介4','http://localhost:8080/ssm69bz5/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (115,'2021-04-25 10:56:42','标题5','简介5','http://localhost:8080/ssm69bz5/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (116,'2021-04-25 10:56:42','标题6','简介6','http://localhost:8080/ssm69bz5/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'huiyuanzhuanqu' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (41,'2021-04-25 10:56:41','商品分类1');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (42,'2021-04-25 10:56:41','商品分类2');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (43,'2021-04-25 10:56:41','商品分类3');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (44,'2021-04-25 10:56:41','商品分类4');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (45,'2021-04-25 10:56:41','商品分类5');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (46,'2021-04-25 10:56:41','商品分类6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiaoliang` int(11) DEFAULT NULL COMMENT '销量',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinjieshao` longtext COMMENT '商品介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (31,'2021-04-25 10:56:41','商品名称1','商品分类1','规格1',1,'http://localhost:8080/ssm69bz5/upload/shangpinxinxi_tupian1.jpg','商品介绍1','2021-04-25 10:56:41',1,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (32,'2021-04-25 10:56:41','商品名称2','商品分类2','规格2',2,'http://localhost:8080/ssm69bz5/upload/shangpinxinxi_tupian2.jpg','商品介绍2','2021-04-25 10:56:41',2,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (33,'2021-04-25 10:56:41','商品名称3','商品分类3','规格3',3,'http://localhost:8080/ssm69bz5/upload/shangpinxinxi_tupian3.jpg','商品介绍3','2021-04-25 10:56:41',3,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (34,'2021-04-25 10:56:41','商品名称4','商品分类4','规格4',4,'http://localhost:8080/ssm69bz5/upload/shangpinxinxi_tupian4.jpg','商品介绍4','2021-04-25 10:56:41',4,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (35,'2021-04-25 10:56:41','商品名称5','商品分类5','规格5',5,'http://localhost:8080/ssm69bz5/upload/shangpinxinxi_tupian5.jpg','商品介绍5','2021-04-25 10:56:41',5,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinmingcheng`,`shangpinfenlei`,`guige`,`xiaoliang`,`tupian`,`shangpinjieshao`,`clicktime`,`clicknum`,`price`) values (36,'2021-04-25 10:56:41','商品名称6','商品分类6','规格6',6,'http://localhost:8080/ssm69bz5/upload/shangpinxinxi_tupian6.jpg','商品介绍6','2021-04-25 10:56:41',6,99.9);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','0q1kr0ap109ksckqv1jwr6r6mk4ac72c','2021-04-25 10:58:15','2021-05-01 19:37:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-25 10:56:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (11,'2021-04-25 10:56:41','用户1','123456','姓名1','年龄1','男','13823888881','http://localhost:8080/ssm69bz5/upload/yonghu_zhaopian1.jpg','是','',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (12,'2021-04-25 10:56:41','用户2','123456','姓名2','年龄2','男','13823888882','http://localhost:8080/ssm69bz5/upload/yonghu_zhaopian2.jpg','是','',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (13,'2021-04-25 10:56:41','用户3','123456','姓名3','年龄3','男','13823888883','http://localhost:8080/ssm69bz5/upload/yonghu_zhaopian3.jpg','是','',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (14,'2021-04-25 10:56:41','用户4','123456','姓名4','年龄4','男','13823888884','http://localhost:8080/ssm69bz5/upload/yonghu_zhaopian4.jpg','是','',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (15,'2021-04-25 10:56:41','用户5','123456','姓名5','年龄5','男','13823888885','http://localhost:8080/ssm69bz5/upload/yonghu_zhaopian5.jpg','是','',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`zhaopian`,`sfsh`,`shhf`,`money`) values (16,'2021-04-25 10:56:41','用户6','123456','姓名6','年龄6','男','13823888886','http://localhost:8080/ssm69bz5/upload/yonghu_zhaopian6.jpg','是','',100);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
