/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 8.0.32 : Database - project
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `project`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `cid` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb3;

/*Data for the table `category` */

insert  into `category`(`id`,`name`,`cid`,`type`) values (1,'新鲜水果',1001,1),(2,'海鲜水产',1002,1),(3,'精选肉类',1003,1),(4,'冷饮冻食',1004,1),(5,'蔬菜单品',1005,1),(6,'热销水果',10001,1001),(7,'时令水果',10002,1001),(8,'热带水果',10003,1001),(9,'鱼类',10021,1002),(10,'虾类',10022,1002),(11,'蟹类',10023,1002),(12,'贝类',10024,1002),(13,'海参',10025,1002),(14,'猪肉',10031,1003),(15,'牛肉',10032,1003),(16,'羊肉',10033,1003),(17,'鸡肉',10034,1003),(18,'鸭肉',10035,1003),(19,'面点',10041,1004),(20,'方便速食',10051,1004),(21,'饮品甜品',10052,1004),(22,'火锅丸料',10053,1004),(23,'叶菜类',10054,1005),(24,'鲜菇类',10055,1005),(25,'根茎类',10056,1005),(26,'新品蛋类',10057,1005),(30,'灌灌灌灌',1076,4061),(53,'你快乐',1670227448,1670227441),(55,'今日水果',1676339980,1001),(60,'666',1677487891,NULL),(61,'888',1677487901,NULL),(62,'新鲜水果3',1677487914,NULL),(63,'22',1677487961,NULL),(64,'新鲜水果22',1677487996,NULL),(65,'11',1677488059,NULL),(72,'今日特惠',1682060457,1001),(78,'每日上新',1749560976,1001),(85,'啊打我的',1749561415,1001),(88,'去去去',1749563535,1),(89,'11',1749563543,1749563535);

/*Table structure for table `collect` */

DROP TABLE IF EXISTS `collect`;

CREATE TABLE `collect` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderNum` int DEFAULT NULL,
  `operator` varchar(255) DEFAULT NULL,
  `phone` char(100) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `totalPrice` int DEFAULT NULL,
  `ids` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

/*Data for the table `collect` */

insert  into `collect`(`id`,`orderNum`,`operator`,`phone`,`time`,`totalPrice`,`ids`) values (26,341067,'张三','15161205685','2023-02-14 16:05:37',460,'17,16'),(27,998898,'张三','15132516789','2025-06-11 20:03:38',300,'15,14'),(30,457849,'张三','1516640431','2025-06-11 21:32:21',300,'13,12');

/*Table structure for table `content` */

DROP TABLE IF EXISTS `content`;

CREATE TABLE `content` (
  `id` int DEFAULT NULL,
  `name` text NOT NULL,
  `pid` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `content` */

insert  into `content`(`id`,`name`,`pid`) values (1001,'banner广告',10001),(1003,'电子产品广告',10003),(19412,'刚刚赚了很多钱',89602),(1004,'京东618',90410),(90410,'电脑',56320),(1,'广告分类',1001),(10001,'侧边广告',8020),(10001,'bbb',1529),(10001,'cc',474),(10002,'bbb',9196),(10001,'nnn',280),(10002,'冲冲冲',2999),(1001,'2021京东618',100),(10001,'5555',8359),(100,'2022',3927),(100,'eee',3840),(10001,'444',9797),(1001,'你好世界',3064),(757,'fff',6596),(1001,'元旦快乐',1891);

/*Table structure for table `contentinfo` */

DROP TABLE IF EXISTS `contentinfo`;

CREATE TABLE `contentinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pid` int NOT NULL,
  `name` text NOT NULL,
  `url` text NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

/*Data for the table `contentinfo` */

insert  into `contentinfo`(`id`,`pid`,`name`,`url`,`image`) values (1,10001,'OPPO Watch','https://pro.jd.com/mall/active/tG3nBBhghqhfM69HoJw9ZoDaT7d/index.html?extension_id=eyJhZCI6IiIsImNoIjoiIiwic2hvcCI6IiIsInNrdSI6IiIsInRzIjoiIiwidW5pcWlkIjoie1wiY2xpY2tfaWRcIjpcIjg5YzRjMTUyLWUwZjktNGQ0OC05NDI4LTJhODQ4NWJjNTc1N1wiLFwibWF0ZXJpYWxfaWRcIjpcIjE4NTAxMDcyMjlcIixcInBvc19pZFwiOlwiNDI3MlwiLFwic2lkXCI6XCJmODcwZmM2MS1jYjc3LTQwN2UtOTM1ZC1jYzhlZTc0MTYyZTdcIn0ifQ==&jd_pop=89c4c152-e0f9-4d48-9428-2a8485bc5757&abt=1','//img14.360buyimg.com/pop/s1180x940_jfs/t1/110562/14/10737/42247/5e81bb76E6fffa006/b3f703f750bd37ea.jpg.webp'),(3,90410,'椅子','https://channel-m.jd.com/pc/psp/10979325649?imup=CgwKBnd3dGxpdRIAGAASEAjR7azzKBDmZhoAIJpNKAEYsRsgACoUaWwsdWEseGdiLGdhLGNpYSxiYWEyAmlsOioKCWpkX2hiZHl5MRDnYRgCIJL50ty1x-S1dyjCo6Q3MMGjpDc4E0CAgCA&extension_id=eyJhZCI6IiIsImNoIjoiIiwic2hvcCI6IiIsInNrdSI6IiIsInRzIjoiIiwidW5pcWlkIjoie1wiY2xpY2tfaWRcIjpcIjJiNmEyNjE5LWE4MmItNGMyNi1iYzYwLWI3ZGE1NzljOWRkZVwiLFwibWF0ZXJpYWxfaWRcIjpcIjg2MDUxMzIyOTY2NTg2NjQ1OTRcIixcInBvc19pZFwiOlwiMzUwNVwiLFwic2lkXCI6XCJmN2Y5ODM2ZS0yZTViLTQyMTUtYWNiMi04NDdmZmI2N2U2ZDdcIn0ifQ==&jd_pop=2b6a2619-a82b-4c26-bc60-b7da579c9dde&abt=0','https://img12.360buyimg.com/pop/s1180x940_jfs/t1/117573/18/9029/83238/5ed7c92aE789977c2/b11a288a7284cdfe.jpg.webp'),(5,10002,'fggh','dffg','dfdf'),(6,10002,'hhh','hh','hh'),(7,10002,'hhh','hh','hhh'),(8,10002,'hhh','hh','hh'),(9,10002,'aaa','aa','aaa'),(11,10001,'轮播图','http://www.baidu.com','http://www.baidu.com/banner.jpg'),(12,10001,'轮播图','http://www.baidu.com','http://www.baidu.com/banner.jpg'),(13,10001,'hjh','6666','666');

/*Table structure for table `orderinfo` */

DROP TABLE IF EXISTS `orderinfo`;

CREATE TABLE `orderinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` text,
  `ordername` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL COMMENT '公司',
  `phone` text,
  `yudingTime` datetime DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `huizongStatus` int DEFAULT NULL COMMENT '1未汇总 2 已汇总',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;

/*Data for the table `orderinfo` */

insert  into `orderinfo`(`id`,`code`,`ordername`,`company`,`phone`,`yudingTime`,`price`,`huizongStatus`) values (4,'58568667','王小虎','抖音','15147483647','2022-11-15 19:45:48','100',1),(5,'2147483647','赵吴','尚学堂','15174836475','2022-11-23 19:51:49','200',1),(6,'2147483647','小岳岳','德云社','13147483647','2022-11-24 19:52:19','100',1),(7,'567889990','三毛','流浪地球','15174836479','2022-11-29 19:22:04','300',1),(8,'53423344','沈腾','开心麻花','13717483647','2022-11-30 09:47:44','400',1),(9,'4455677','贾玲','大碗娱乐','13114748367','2022-11-30 09:48:16','100',1),(10,'566778788','宋小宝','东北','13566785327','2022-11-30 09:48:48','120',1),(11,'45566677','钢铁侠','复仇者联盟','15147483647','2022-11-24 09:50:16','150',1),(12,'2147483647','蜘蛛侠','复仇者联盟','15147483647','2022-11-24 09:50:45','170',2),(13,'2147483647','黑寡妇','复仇者联盟','13514743647','2022-11-17 09:51:19','130',2),(14,'237905422','任何','尚学堂','13146783228','2022-11-26 09:51:50','100',2),(15,'2147483647','小胖梅','尚学堂','15474836477','2022-11-29 09:52:18','200',2),(16,'179843215','郭麒麟','德云社','16266374604336','2022-12-08 00:00:00','230',2),(17,'1234567891234567','测试数据','测试公司','1234579987653','2022-12-15 00:00:00','230',2);

/*Table structure for table `params` */

DROP TABLE IF EXISTS `params`;

CREATE TABLE `params` (
  `id` int NOT NULL AUTO_INCREMENT,
  `itemCatId` text NOT NULL,
  `paramData` text NOT NULL,
  `specsName` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10063 DEFAULT CHARSET=utf8mb3;

/*Data for the table `params` */

insert  into `params`(`id`,`itemCatId`,`paramData`,`specsName`) values (10027,'10003','[{\"value\":\"\",\"title\":\"外观\",\"children\":[{\"value\":\"\",\"title\":\"体重\"}]}]','外设产品'),(10031,'10002','[{\"value\":\"\",\"title\":\"基本参数\",\"children\":[{\"value\":\"\",\"title\":\"外观\"},{\"value\":\"\",\"title\":\"重量\"},{\"value\":\"\",\"title\":\"生产时期\"}]},{\"value\":\"\",\"title\":\"形状\",\"children\":[{\"value\":\"\",\"title\":\"耗电量\"}]}]','空调'),(10032,'10003','[{\"value\":\"\",\"title\":\"基本信息\",\"children\":[{\"value\":\"\",\"title\":\"体重\"}]}]','外设产品'),(10033,'1004','[{\"value\":\"\",\"title\":\"材料\",\"children\":[{\"value\":\"\",\"title\":\"纯棉\"},{\"value\":\"\",\"title\":\"蕾丝\"}]}]','家具/家居'),(10036,'10004','[{\"value\":\"\",\"title\":\"多少度\",\"children\":[]}]','摄像'),(10037,'1004','[{\"value\":\"\",\"title\":\"方法\",\"children\":[{\"value\":\"\",\"title\":\"热\"}]}]','家具/家居'),(10044,'1003','[{\"value\":\"\",\"title\":\"基本信息\",\"children\":[{\"value\":\"\",\"title\":\"外观\"}]},{\"value\":\"\",\"title\":\"特殊配置\",\"children\":[{\"value\":\"\",\"title\":\"内存\"}]}]','电脑/办公'),(10045,'1001','[{\"value\":\"\",\"title\":\"dsds\",\"children\":[{\"value\":\"\",\"title\":\"dff\"}]}]','家用电器'),(10046,'1002','[{\"value\":\"\",\"title\":\"基本信息\",\"children\":[{\"value\":\"\",\"title\":\"参数\"}]}]','手机/运营商/数码'),(10047,'1003','[{\"value\":\"\",\"title\":\"过分过分过分\",\"children\":[{\"value\":\"\",\"title\":\"55人\"}]}]','电脑/办公'),(10049,'1002','[{\"value\":\"\",\"title\":\"配置参数\",\"children\":[{\"value\":\"\",\"title\":\"外观\"}]}]','手机/运营商/数码'),(10051,'1001','[{\"value\":\"\",\"title\":\"配置\",\"children\":[{\"value\":\"\",\"title\":\"111\"}]}]','家用电器'),(10052,'10004','[{\"value\":\"\",\"title\":\"配置\",\"children\":[{\"value\":\"\",\"title\":\"111\"}]}]','摄像'),(10053,'1004','[{\"value\":\"\",\"title\":\"家具\",\"children\":[{\"value\":\"\",\"title\":\"床\"}]}]','家具/家居'),(10059,'10004','[{\"value\":\"\",\"name\":\"基本信息\",\"children\":[{\"value\":\"\",\"name\":\"材料组成\"},{\"value\":\"\",\"name\":\"使用寿命\"}]}]','冰箱'),(10060,'10001','[{\"value\":\"\",\"title\":\"手机配置\",\"children\":[{\"value\":\"\",\"title\":\"尺寸\"},{\"value\":\"\",\"title\":\"像素\"},{\"value\":\"\",\"title\":\"内存\"}]}]','手机通讯'),(10061,'1001','[{\"value\":\"\",\"title\":\"外观\",\"children\":[{\"value\":\"\",\"title\":\"高度\"},{\"value\":\"\",\"title\":\"重量\"}]}]','家用电器'),(10062,'10004','[{\"value\":\"\",\"title\":\"66\",\"children\":[{\"value\":\"\",\"title\":\"666\"}]}]','冰箱');

/*Table structure for table `project` */

DROP TABLE IF EXISTS `project`;

CREATE TABLE `project` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `image` text NOT NULL,
  `sellPoint` text NOT NULL,
  `price` text NOT NULL,
  `cid` text NOT NULL,
  `category` text,
  `num` text NOT NULL,
  `barcode` text,
  `status` text,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` text,
  `descs` text NOT NULL,
  `paramsInfo` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10327 DEFAULT CHARSET=utf8mb3;

/*Data for the table `project` */

insert  into `project`(`id`,`title`,`image`,`sellPoint`,`price`,`cid`,`category`,`num`,`barcode`,`status`,`create_time`,`updated`,`descs`,`paramsInfo`) values (10307,'7','[]','','7','1003','精选肉类','7',NULL,NULL,'2025-06-06 21:52:26',NULL,'<p>hello</p>',''),(10308,'12','[]','','21','1001','新鲜水果','21',NULL,NULL,'2025-06-06 22:04:16',NULL,'<p>hello</p>',''),(10309,'12','[]','','21','1001','新鲜水果','21',NULL,NULL,'2025-06-06 22:04:21',NULL,'<p>hello</p>',''),(10310,'21','[]','','21','1002','海鲜水产','21',NULL,NULL,'2025-06-06 22:04:26',NULL,'<p>hello</p>',''),(10311,'21','[]','','21','1002','海鲜水产','21',NULL,NULL,'2025-06-06 22:04:31',NULL,'<p>hello</p>',''),(10312,'21','[]','','21','1004','冷饮冻食','21',NULL,NULL,'2025-06-06 22:04:36',NULL,'<p>hello</p>',''),(10313,'21','[]','','2','1004','冷饮冻食','12',NULL,NULL,'2025-06-06 22:04:40',NULL,'<p>hello</p>',''),(10314,'21','[]','','21','1004','冷饮冻食','21',NULL,NULL,'2025-06-06 22:04:44',NULL,'<p>hello</p>',''),(10315,'苹果','[\"http://localhost:7788/1749384530035-qaq.png\"]','红大原','4','10001','热销水果','233',NULL,NULL,'2025-06-08 20:09:01',NULL,'<p>好吃的苹果</p>',''),(10316,'香蕉','[\"http://localhost:7788/1749458082432-qq.png\",\"http://localhost:7788/1749458103162-qaq.png\"]','大','4','1682060457','今日特惠','12',NULL,NULL,'2025-06-09 16:35:10',NULL,'<p>hello123</p>',''),(10318,'apple','[\"http://localhost:7788/1749464536265-qaq.png\",\"http://localhost:7788/1749464544238-qq.png\"]','苹果','12','10003','热带水果','1',NULL,NULL,'2025-06-09 18:22:33',NULL,'<p>hello123</p>',''),(10319,'压力大','[\"http://localhost:7788/1749464709076-qq.png\"]','超级大','31','1005','蔬菜单品','1222',NULL,NULL,'2025-06-09 18:25:21',NULL,'<p>我的压力真大</p>',''),(10326,'11','[[\"http://localhost:7788/1749466292397-qaq.png\"]]','1','12','1002','海鲜水产','1',NULL,NULL,'2025-06-09 20:29:36',NULL,'<p>hello11112213</p>','');

/*Table structure for table `projectparams` */

DROP TABLE IF EXISTS `projectparams`;

CREATE TABLE `projectparams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` text NOT NULL,
  `paramscontent` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `projectparams` */

/*Table structure for table `totalorder` */

DROP TABLE IF EXISTS `totalorder`;

CREATE TABLE `totalorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `totalcode` int DEFAULT NULL,
  `totalname` varchar(255) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `totalTime` datetime DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `huizongStatus` int DEFAULT NULL,
  `xiadanname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `totalorder` */

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` text NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`username`,`password`) values (1,'admin','123'),(2,'ime','123'),(3,'jack','123'),(4,'sakura','123'),(5,'张三','123'),(6,'李四','123'),(7,'hello1','123123'),(8,'hello2','123'),(9,'qq','123'),(10,'QQ','123'),(11,'QQ','123'),(12,'ww','123'),(13,'www','123'),(14,'eee','eee');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
