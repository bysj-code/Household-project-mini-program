/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm9e45w
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm9e45w` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm9e45w`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm9e45w/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssm9e45w/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssm9e45w/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussjiazhengfuwu` */

DROP TABLE IF EXISTS `discussjiazhengfuwu`;

CREATE TABLE `discussjiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='家政服务评论表';

/*Data for the table `discussjiazhengfuwu` */

insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (101,'2021-05-14 16:43:17',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (102,'2021-05-14 16:43:17',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (103,'2021-05-14 16:43:17',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (104,'2021-05-14 16:43:17',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (105,'2021-05-14 16:43:17',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussjiazhengfuwu`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (106,'2021-05-14 16:43:17',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `jiazhengfuwu` */

DROP TABLE IF EXISTS `jiazhengfuwu`;

CREATE TABLE `jiazhengfuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fuwumingcheng` varchar(200) NOT NULL COMMENT '服务名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `fuwuyaoqiu` longtext COMMENT '服务要求',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='家政服务';

/*Data for the table `jiazhengfuwu` */

insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwumingcheng`,`tupian`,`shanzhang`,`jiage`,`dianhua`,`zhanghao`,`jiazhengxingming`,`nianling`,`fuwuyaoqiu`,`thumbsupnum`,`crazilynum`,`userid`) values (31,'2021-05-14 16:43:17','服务名称1','http://localhost:8080/ssm9e45w/upload/jiazhengfuwu_tupian1.jpg','擅长1',1,'电话1','账号1','家政姓名1','年龄1','服务要求1',1,1,1);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwumingcheng`,`tupian`,`shanzhang`,`jiage`,`dianhua`,`zhanghao`,`jiazhengxingming`,`nianling`,`fuwuyaoqiu`,`thumbsupnum`,`crazilynum`,`userid`) values (32,'2021-05-14 16:43:17','服务名称2','http://localhost:8080/ssm9e45w/upload/jiazhengfuwu_tupian2.jpg','擅长2',2,'电话2','账号2','家政姓名2','年龄2','服务要求2',2,2,2);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwumingcheng`,`tupian`,`shanzhang`,`jiage`,`dianhua`,`zhanghao`,`jiazhengxingming`,`nianling`,`fuwuyaoqiu`,`thumbsupnum`,`crazilynum`,`userid`) values (33,'2021-05-14 16:43:17','服务名称3','http://localhost:8080/ssm9e45w/upload/jiazhengfuwu_tupian3.jpg','擅长3',3,'电话3','账号3','家政姓名3','年龄3','服务要求3',3,3,3);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwumingcheng`,`tupian`,`shanzhang`,`jiage`,`dianhua`,`zhanghao`,`jiazhengxingming`,`nianling`,`fuwuyaoqiu`,`thumbsupnum`,`crazilynum`,`userid`) values (34,'2021-05-14 16:43:17','服务名称4','http://localhost:8080/ssm9e45w/upload/jiazhengfuwu_tupian4.jpg','擅长4',4,'电话4','账号4','家政姓名4','年龄4','服务要求4',4,4,4);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwumingcheng`,`tupian`,`shanzhang`,`jiage`,`dianhua`,`zhanghao`,`jiazhengxingming`,`nianling`,`fuwuyaoqiu`,`thumbsupnum`,`crazilynum`,`userid`) values (35,'2021-05-14 16:43:17','服务名称5','http://localhost:8080/ssm9e45w/upload/jiazhengfuwu_tupian5.jpg','擅长5',5,'电话5','账号5','家政姓名5','年龄5','服务要求5',5,5,5);
insert  into `jiazhengfuwu`(`id`,`addtime`,`fuwumingcheng`,`tupian`,`shanzhang`,`jiage`,`dianhua`,`zhanghao`,`jiazhengxingming`,`nianling`,`fuwuyaoqiu`,`thumbsupnum`,`crazilynum`,`userid`) values (36,'2021-05-14 16:43:17','服务名称6','http://localhost:8080/ssm9e45w/upload/jiazhengfuwu_tupian6.jpg','擅长6',6,'电话6','账号6','家政姓名6','年龄6','服务要求6',6,6,6);

/*Table structure for table `jiazhengrenyuan` */

DROP TABLE IF EXISTS `jiazhengrenyuan`;

CREATE TABLE `jiazhengrenyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='家政人员';

/*Data for the table `jiazhengrenyuan` */

insert  into `jiazhengrenyuan`(`id`,`addtime`,`zhanghao`,`mima`,`jiazhengxingming`,`xingbie`,`touxiang`,`nianling`,`dianhua`,`youxiang`) values (21,'2021-05-14 16:43:17','1','1','家政姓名1','男','http://localhost:8080/ssm9e45w/upload/jiazhengrenyuan_touxiang1.jpg','年龄1','13823888881','773890001@qq.com');
insert  into `jiazhengrenyuan`(`id`,`addtime`,`zhanghao`,`mima`,`jiazhengxingming`,`xingbie`,`touxiang`,`nianling`,`dianhua`,`youxiang`) values (22,'2021-05-14 16:43:17','家政人员2','123456','家政姓名2','男','http://localhost:8080/ssm9e45w/upload/jiazhengrenyuan_touxiang2.jpg','年龄2','13823888882','773890002@qq.com');
insert  into `jiazhengrenyuan`(`id`,`addtime`,`zhanghao`,`mima`,`jiazhengxingming`,`xingbie`,`touxiang`,`nianling`,`dianhua`,`youxiang`) values (23,'2021-05-14 16:43:17','家政人员3','123456','家政姓名3','男','http://localhost:8080/ssm9e45w/upload/jiazhengrenyuan_touxiang3.jpg','年龄3','13823888883','773890003@qq.com');
insert  into `jiazhengrenyuan`(`id`,`addtime`,`zhanghao`,`mima`,`jiazhengxingming`,`xingbie`,`touxiang`,`nianling`,`dianhua`,`youxiang`) values (24,'2021-05-14 16:43:17','家政人员4','123456','家政姓名4','男','http://localhost:8080/ssm9e45w/upload/jiazhengrenyuan_touxiang4.jpg','年龄4','13823888884','773890004@qq.com');
insert  into `jiazhengrenyuan`(`id`,`addtime`,`zhanghao`,`mima`,`jiazhengxingming`,`xingbie`,`touxiang`,`nianling`,`dianhua`,`youxiang`) values (25,'2021-05-14 16:43:17','家政人员5','123456','家政姓名5','男','http://localhost:8080/ssm9e45w/upload/jiazhengrenyuan_touxiang5.jpg','年龄5','13823888885','773890005@qq.com');
insert  into `jiazhengrenyuan`(`id`,`addtime`,`zhanghao`,`mima`,`jiazhengxingming`,`xingbie`,`touxiang`,`nianling`,`dianhua`,`youxiang`) values (26,'2021-05-14 16:43:17','家政人员6','123456','家政姓名6','男','http://localhost:8080/ssm9e45w/upload/jiazhengrenyuan_touxiang6.jpg','年龄6','13823888886','773890006@qq.com');

/*Table structure for table `jiazhengyuyue` */

DROP TABLE IF EXISTS `jiazhengyuyue`;

CREATE TABLE `jiazhengyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `fuwumingcheng` varchar(200) NOT NULL COMMENT '服务名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `jiage` int(11) NOT NULL COMMENT '价格',
  `yuyueshizhang` int(11) NOT NULL COMMENT '预约时长',
  `zongjiage` int(11) NOT NULL COMMENT '总价格',
  `yuyueneirong` longtext COMMENT '预约内容',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620981985951 DEFAULT CHARSET=utf8 COMMENT='家政预约';

/*Data for the table `jiazhengyuyue` */

insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwumingcheng`,`zhanghao`,`jiazhengxingming`,`jiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (61,'2021-05-14 16:43:17','订单编号1','服务名称1','账号1','家政姓名1',1,1,1,'预约内容1','2021-05-14 16:43:17','用户名1','姓名1','是','','未支付',1);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwumingcheng`,`zhanghao`,`jiazhengxingming`,`jiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (62,'2021-05-14 16:43:17','订单编号2','服务名称2','账号2','家政姓名2',2,2,2,'预约内容2','2021-05-14 16:43:17','用户名2','姓名2','是','','未支付',2);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwumingcheng`,`zhanghao`,`jiazhengxingming`,`jiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (63,'2021-05-14 16:43:17','订单编号3','服务名称3','账号3','家政姓名3',3,3,3,'预约内容3','2021-05-14 16:43:17','用户名3','姓名3','是','','未支付',3);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwumingcheng`,`zhanghao`,`jiazhengxingming`,`jiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (64,'2021-05-14 16:43:17','订单编号4','服务名称4','账号4','家政姓名4',4,4,4,'预约内容4','2021-05-14 16:43:17','用户名4','姓名4','是','','未支付',4);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwumingcheng`,`zhanghao`,`jiazhengxingming`,`jiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (65,'2021-05-14 16:43:17','订单编号5','服务名称5','账号5','家政姓名5',5,5,5,'预约内容5','2021-05-14 16:43:17','用户名5','姓名5','是','','未支付',5);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwumingcheng`,`zhanghao`,`jiazhengxingming`,`jiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (66,'2021-05-14 16:43:17','订单编号6','服务名称6','账号6','家政姓名6',6,6,6,'预约内容6','2021-05-14 16:43:17','用户名6','姓名6','是','','未支付',6);
insert  into `jiazhengyuyue`(`id`,`addtime`,`dingdanbianhao`,`fuwumingcheng`,`zhanghao`,`jiazhengxingming`,`jiage`,`yuyueshizhang`,`zongjiage`,`yuyueneirong`,`yuyueshijian`,`yonghuming`,`xingming`,`sfsh`,`shhf`,`ispay`,`userid`) values (1620981985950,'2021-05-14 16:46:25','1620981982038','服务名称1','账号1','家政姓名1',1,10,10,'1111','2021-05-14 16:46:22','1','姓名1','','','已支付',11);

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (91,'2021-05-14 16:43:17',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (92,'2021-05-14 16:43:17',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (93,'2021-05-14 16:43:17',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (94,'2021-05-14 16:43:17',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (95,'2021-05-14 16:43:17',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (96,'2021-05-14 16:43:17',6,'用户名6','留言内容6','回复内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-05-14 16:43:17','标题1','简介1','http://localhost:8080/ssm9e45w/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-05-14 16:43:17','标题2','简介2','http://localhost:8080/ssm9e45w/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-05-14 16:43:17','标题3','简介3','http://localhost:8080/ssm9e45w/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-05-14 16:43:17','标题4','简介4','http://localhost:8080/ssm9e45w/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-05-14 16:43:17','标题5','简介5','http://localhost:8080/ssm9e45w/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-05-14 16:43:17','标题6','简介6','http://localhost:8080/ssm9e45w/upload/news_picture6.jpg','内容6');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','2vlopnp862i0kh6xbv5qmd5u7kg1yv6p','2021-05-14 16:45:49','2021-05-14 17:45:50');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,11,'1','yonghu','用户','m5hky8v1b9847o7e2zm29m8b1dn5alid','2021-05-14 16:46:09','2021-05-14 17:46:19');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-14 16:43:17');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (11,'2021-05-14 16:43:17','1','1','姓名1','男','http://localhost:8080/ssm9e45w/upload/yonghu_touxiang1.jpg','773890001@qq.com','13823888881');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (12,'2021-05-14 16:43:17','用户2','123456','姓名2','男','http://localhost:8080/ssm9e45w/upload/yonghu_touxiang2.jpg','773890002@qq.com','13823888882');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (13,'2021-05-14 16:43:17','用户3','123456','姓名3','男','http://localhost:8080/ssm9e45w/upload/yonghu_touxiang3.jpg','773890003@qq.com','13823888883');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (14,'2021-05-14 16:43:17','用户4','123456','姓名4','男','http://localhost:8080/ssm9e45w/upload/yonghu_touxiang4.jpg','773890004@qq.com','13823888884');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (15,'2021-05-14 16:43:17','用户5','123456','姓名5','男','http://localhost:8080/ssm9e45w/upload/yonghu_touxiang5.jpg','773890005@qq.com','13823888885');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`touxiang`,`youxiang`,`shouji`) values (16,'2021-05-14 16:43:17','用户6','123456','姓名6','男','http://localhost:8080/ssm9e45w/upload/yonghu_touxiang6.jpg','773890006@qq.com','13823888886');

/*Table structure for table `zixunhuifu` */

DROP TABLE IF EXISTS `zixunhuifu`;

CREATE TABLE `zixunhuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zixunhuifu` longtext COMMENT '咨询回复',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='咨询回复';

/*Data for the table `zixunhuifu` */

insert  into `zixunhuifu`(`id`,`addtime`,`bianhao`,`yonghuming`,`xingming`,`zixunhuifu`,`zhanghao`,`jiazhengxingming`,`userid`) values (51,'2021-05-14 16:43:17','编号1','用户名1','姓名1','咨询回复1','账号1','家政姓名1',1);
insert  into `zixunhuifu`(`id`,`addtime`,`bianhao`,`yonghuming`,`xingming`,`zixunhuifu`,`zhanghao`,`jiazhengxingming`,`userid`) values (52,'2021-05-14 16:43:17','编号2','用户名2','姓名2','咨询回复2','账号2','家政姓名2',2);
insert  into `zixunhuifu`(`id`,`addtime`,`bianhao`,`yonghuming`,`xingming`,`zixunhuifu`,`zhanghao`,`jiazhengxingming`,`userid`) values (53,'2021-05-14 16:43:17','编号3','用户名3','姓名3','咨询回复3','账号3','家政姓名3',3);
insert  into `zixunhuifu`(`id`,`addtime`,`bianhao`,`yonghuming`,`xingming`,`zixunhuifu`,`zhanghao`,`jiazhengxingming`,`userid`) values (54,'2021-05-14 16:43:17','编号4','用户名4','姓名4','咨询回复4','账号4','家政姓名4',4);
insert  into `zixunhuifu`(`id`,`addtime`,`bianhao`,`yonghuming`,`xingming`,`zixunhuifu`,`zhanghao`,`jiazhengxingming`,`userid`) values (55,'2021-05-14 16:43:17','编号5','用户名5','姓名5','咨询回复5','账号5','家政姓名5',5);
insert  into `zixunhuifu`(`id`,`addtime`,`bianhao`,`yonghuming`,`xingming`,`zixunhuifu`,`zhanghao`,`jiazhengxingming`,`userid`) values (56,'2021-05-14 16:43:17','编号6','用户名6','姓名6','咨询回复6','账号6','家政姓名6',6);

/*Table structure for table `zixunxinxi` */

DROP TABLE IF EXISTS `zixunxinxi`;

CREATE TABLE `zixunxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiazhengxingming` varchar(200) DEFAULT NULL COMMENT '家政姓名',
  `zixunneirong` longtext COMMENT '咨询内容',
  `zixunshijian` datetime DEFAULT NULL COMMENT '咨询时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='咨询信息';

/*Data for the table `zixunxinxi` */

insert  into `zixunxinxi`(`id`,`addtime`,`bianhao`,`zhanghao`,`jiazhengxingming`,`zixunneirong`,`zixunshijian`,`yonghuming`,`xingming`,`userid`) values (41,'2021-05-14 16:43:17','编号1','账号1','家政姓名1','咨询内容1','2021-05-14 16:43:17','用户名1','姓名1',1);
insert  into `zixunxinxi`(`id`,`addtime`,`bianhao`,`zhanghao`,`jiazhengxingming`,`zixunneirong`,`zixunshijian`,`yonghuming`,`xingming`,`userid`) values (42,'2021-05-14 16:43:17','编号2','账号2','家政姓名2','咨询内容2','2021-05-14 16:43:17','用户名2','姓名2',2);
insert  into `zixunxinxi`(`id`,`addtime`,`bianhao`,`zhanghao`,`jiazhengxingming`,`zixunneirong`,`zixunshijian`,`yonghuming`,`xingming`,`userid`) values (43,'2021-05-14 16:43:17','编号3','账号3','家政姓名3','咨询内容3','2021-05-14 16:43:17','用户名3','姓名3',3);
insert  into `zixunxinxi`(`id`,`addtime`,`bianhao`,`zhanghao`,`jiazhengxingming`,`zixunneirong`,`zixunshijian`,`yonghuming`,`xingming`,`userid`) values (44,'2021-05-14 16:43:17','编号4','账号4','家政姓名4','咨询内容4','2021-05-14 16:43:17','用户名4','姓名4',4);
insert  into `zixunxinxi`(`id`,`addtime`,`bianhao`,`zhanghao`,`jiazhengxingming`,`zixunneirong`,`zixunshijian`,`yonghuming`,`xingming`,`userid`) values (45,'2021-05-14 16:43:17','编号5','账号5','家政姓名5','咨询内容5','2021-05-14 16:43:17','用户名5','姓名5',5);
insert  into `zixunxinxi`(`id`,`addtime`,`bianhao`,`zhanghao`,`jiazhengxingming`,`zixunneirong`,`zixunshijian`,`yonghuming`,`xingming`,`userid`) values (46,'2021-05-14 16:43:17','编号6','账号6','家政姓名6','咨询内容6','2021-05-14 16:43:17','用户名6','姓名6',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
