-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl8951490
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `cl8951490`
--

/*!40000 DROP DATABASE IF EXISTS `cl8951490`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl8951490` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl8951490`;

--
-- Table structure for table `chengbenhesuan`
--

DROP TABLE IF EXISTS `chengbenhesuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chengbenhesuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `hesuanmingcheng` varchar(200) NOT NULL COMMENT '核算名称',
  `yingyewaishouru` double DEFAULT NULL COMMENT '营业外收入',
  `yingyeshouru` double DEFAULT NULL COMMENT '营业收入',
  `guanlifeiyong` double DEFAULT NULL COMMENT '管理费用',
  `caiwufeiyong` double DEFAULT NULL COMMENT '财务费用',
  `lirun` varchar(200) NOT NULL COMMENT '利润',
  `hesuanshijian` datetime DEFAULT NULL COMMENT '核算时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704801285743 DEFAULT CHARSET=utf8 COMMENT='成本核算';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chengbenhesuan`
--

LOCK TABLES `chengbenhesuan` WRITE;
/*!40000 ALTER TABLE `chengbenhesuan` DISABLE KEYS */;
INSERT INTO `chengbenhesuan` VALUES (131,'2024-01-09 11:39:05','核算名称1',1,1,1,1,'利润1','2024-01-09 19:39:05'),(132,'2024-01-09 11:39:05','核算名称2',2,2,2,2,'利润2','2024-01-09 19:39:05'),(133,'2024-01-09 11:39:05','核算名称3',3,3,3,3,'利润3','2024-01-09 19:39:05'),(134,'2024-01-09 11:39:05','核算名称4',4,4,4,4,'利润4','2024-01-09 19:39:05'),(135,'2024-01-09 11:39:05','核算名称5',5,5,5,5,'利润5','2024-01-09 19:39:05'),(136,'2024-01-09 11:39:05','核算名称6',6,6,6,6,'利润6','2024-01-09 19:39:05'),(1704801285742,'2024-01-09 11:54:45','白菜车',1000,500,300,200,'1000.00','2024-01-09 19:54:28');
/*!40000 ALTER TABLE `chengbenhesuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'swiper1','file/swiperPicture1.jpg'),(2,'swiper2','file/swiperPicture2.jpg'),(3,'swiper3','file/swiperPicture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daohuoxinxi`
--

DROP TABLE IF EXISTS `daohuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daohuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `piaojudanhao` varchar(200) DEFAULT NULL COMMENT '票据单号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `qishidian` varchar(200) DEFAULT NULL COMMENT '起始点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `huowushuliang` int(11) DEFAULT NULL COMMENT '货物数量',
  `huowuzhongliang` double DEFAULT NULL COMMENT '货物重量',
  `huowujiage` double DEFAULT NULL COMMENT '货物价格',
  `fahuoren` varchar(200) DEFAULT NULL COMMENT '发货人',
  `fahuorenxingming` varchar(200) DEFAULT NULL COMMENT '发货人姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `dagaijuli` double DEFAULT NULL COMMENT '大概距离',
  `huowuyunfei` double DEFAULT NULL COMMENT '货物运费',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `dingzhuangfei` double DEFAULT NULL COMMENT '订装费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704801213950 DEFAULT CHARSET=utf8 COMMENT='到货信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daohuoxinxi`
--

LOCK TABLES `daohuoxinxi` WRITE;
/*!40000 ALTER TABLE `daohuoxinxi` DISABLE KEYS */;
INSERT INTO `daohuoxinxi` VALUES (121,'2024-01-09 11:39:05','票据单号1','货物名称1','货物类型1','起始点1','目的地1',1,1,1,'发货人1','发货人姓名1','客户账号1','客户姓名1',1,1,'司机账号1','司机姓名1','手机号码1',1),(122,'2024-01-09 11:39:05','票据单号2','货物名称2','货物类型2','起始点2','目的地2',2,2,2,'发货人2','发货人姓名2','客户账号2','客户姓名2',2,2,'司机账号2','司机姓名2','手机号码2',2),(123,'2024-01-09 11:39:05','票据单号3','货物名称3','货物类型3','起始点3','目的地3',3,3,3,'发货人3','发货人姓名3','客户账号3','客户姓名3',3,3,'司机账号3','司机姓名3','手机号码3',3),(124,'2024-01-09 11:39:05','票据单号4','货物名称4','货物类型4','起始点4','目的地4',4,4,4,'发货人4','发货人姓名4','客户账号4','客户姓名4',4,4,'司机账号4','司机姓名4','手机号码4',4),(125,'2024-01-09 11:39:05','票据单号5','货物名称5','货物类型5','起始点5','目的地5',5,5,5,'发货人5','发货人姓名5','客户账号5','客户姓名5',5,5,'司机账号5','司机姓名5','手机号码5',5),(126,'2024-01-09 11:39:05','票据单号6','货物名称6','货物类型6','起始点6','目的地6',6,6,6,'发货人6','发货人姓名6','客户账号6','客户姓名6',6,6,'司机账号6','司机姓名6','手机号码6',6),(1704801213949,'2024-01-09 11:53:33','1704801076383','白菜','','广州','上海',1200,44,1999,'1','1','1','1',1201,800,'2','2','13212312312',200);
/*!40000 ALTER TABLE `daohuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` longtext COMMENT '封面',
  `jianjie` longtext COMMENT '简介',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704800955456 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (51,'2024-01-09 11:39:04','标题1','file/gonggaoxinxiFengmian1.jpg,file/gonggaoxinxiFengmian2.jpg,file/gonggaoxinxiFengmian3.jpg','简介1','内容1','2024-01-09'),(52,'2024-01-09 11:39:04','标题2','file/gonggaoxinxiFengmian2.jpg,file/gonggaoxinxiFengmian3.jpg,file/gonggaoxinxiFengmian4.jpg','简介2','内容2','2024-01-09'),(53,'2024-01-09 11:39:04','标题3','file/gonggaoxinxiFengmian3.jpg,file/gonggaoxinxiFengmian4.jpg,file/gonggaoxinxiFengmian5.jpg','简介3','内容3','2024-01-09'),(54,'2024-01-09 11:39:04','标题4','file/gonggaoxinxiFengmian4.jpg,file/gonggaoxinxiFengmian5.jpg,file/gonggaoxinxiFengmian6.jpg','简介4','内容4','2024-01-09'),(55,'2024-01-09 11:39:04','标题5','file/gonggaoxinxiFengmian5.jpg,file/gonggaoxinxiFengmian6.jpg,file/gonggaoxinxiFengmian7.jpg','简介5','内容5','2024-01-09'),(56,'2024-01-09 11:39:04','标题6','file/gonggaoxinxiFengmian6.jpg,file/gonggaoxinxiFengmian7.jpg,file/gonggaoxinxiFengmian8.jpg','简介6','内容6','2024-01-09'),(1704800955455,'2024-01-09 11:49:14','放假通知','file/1704800948447.jpg','简述','<p>详情</p>','2024-01-09');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huowuleixing`
--

DROP TABLE IF EXISTS `huowuleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huowuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowuleixing` varchar(200) NOT NULL COMMENT '货物类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `huowuleixing` (`huowuleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1704800972689 DEFAULT CHARSET=utf8 COMMENT='货物类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huowuleixing`
--

LOCK TABLES `huowuleixing` WRITE;
/*!40000 ALTER TABLE `huowuleixing` DISABLE KEYS */;
INSERT INTO `huowuleixing` VALUES (71,'2024-01-09 11:39:05','货物类型1'),(72,'2024-01-09 11:39:05','货物类型2'),(73,'2024-01-09 11:39:05','货物类型3'),(74,'2024-01-09 11:39:05','货物类型4'),(75,'2024-01-09 11:39:05','货物类型5'),(76,'2024-01-09 11:39:05','货物类型6'),(1704800972688,'2024-01-09 11:49:31','生鲜类');
/*!40000 ALTER TABLE `huowuleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huoyundingdan`
--

DROP TABLE IF EXISTS `huoyundingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huoyundingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `tupian` longtext COMMENT '图片',
  `qishidian` varchar(200) DEFAULT NULL COMMENT '起始点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `huowushuliang` int(11) DEFAULT NULL COMMENT '货物数量',
  `huowuzhongliang` double DEFAULT NULL COMMENT '货物重量',
  `huowujiage` double DEFAULT NULL COMMENT '货物价格',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `fahuoren` varchar(200) DEFAULT NULL COMMENT '发货人',
  `fahuorenxingming` varchar(200) DEFAULT NULL COMMENT '发货人姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `xiadanshijian` datetime DEFAULT NULL COMMENT '下单时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704801058607 DEFAULT CHARSET=utf8 COMMENT='货运订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huoyundingdan`
--

LOCK TABLES `huoyundingdan` WRITE;
/*!40000 ALTER TABLE `huoyundingdan` DISABLE KEYS */;
INSERT INTO `huoyundingdan` VALUES (61,'2024-01-09 11:39:04','货物名称1','货物类型1','file/huoyundingdanTupian1.jpg,file/huoyundingdanTupian2.jpg,file/huoyundingdanTupian3.jpg','起始点1','目的地1',1,1,1,'备注1','发货人1','发货人姓名1','客户账号1','客户姓名1','2024-01-09 19:39:04'),(62,'2024-01-09 11:39:04','货物名称2','货物类型2','file/huoyundingdanTupian2.jpg,file/huoyundingdanTupian3.jpg,file/huoyundingdanTupian4.jpg','起始点2','目的地2',2,2,2,'备注2','发货人2','发货人姓名2','客户账号2','客户姓名2','2024-01-09 19:39:04'),(63,'2024-01-09 11:39:04','货物名称3','货物类型3','file/huoyundingdanTupian3.jpg,file/huoyundingdanTupian4.jpg,file/huoyundingdanTupian5.jpg','起始点3','目的地3',3,3,3,'备注3','发货人3','发货人姓名3','客户账号3','客户姓名3','2024-01-09 19:39:04'),(64,'2024-01-09 11:39:04','货物名称4','货物类型4','file/huoyundingdanTupian4.jpg,file/huoyundingdanTupian5.jpg,file/huoyundingdanTupian6.jpg','起始点4','目的地4',4,4,4,'备注4','发货人4','发货人姓名4','客户账号4','客户姓名4','2024-01-09 19:39:04'),(65,'2024-01-09 11:39:04','货物名称5','货物类型5','file/huoyundingdanTupian5.jpg,file/huoyundingdanTupian6.jpg,file/huoyundingdanTupian7.jpg','起始点5','目的地5',5,5,5,'备注5','发货人5','发货人姓名5','客户账号5','客户姓名5','2024-01-09 19:39:04'),(66,'2024-01-09 11:39:04','货物名称6','货物类型6','file/huoyundingdanTupian6.jpg,file/huoyundingdanTupian7.jpg,file/huoyundingdanTupian8.jpg','起始点6','目的地6',6,6,6,'备注6','发货人6','发货人姓名6','客户账号6','客户姓名6','2024-01-09 19:39:04'),(1704801058606,'2024-01-09 11:50:57','白菜','生鲜类','file/1704801043122.jpg','广州','上海',1200,44,1999,'','1','1','1','1','2024-01-09 19:49:50');
/*!40000 ALTER TABLE `huoyundingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `huoyunpiaoju`
--

DROP TABLE IF EXISTS `huoyunpiaoju`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `huoyunpiaoju` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `piaojudanhao` varchar(200) DEFAULT NULL COMMENT '票据单号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `qishidian` varchar(200) DEFAULT NULL COMMENT '起始点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `huowushuliang` int(11) DEFAULT NULL COMMENT '货物数量',
  `huowuzhongliang` double DEFAULT NULL COMMENT '货物重量',
  `huowujiage` double DEFAULT NULL COMMENT '货物价格',
  `fahuoren` varchar(200) DEFAULT NULL COMMENT '发货人',
  `fahuorenxingming` varchar(200) DEFAULT NULL COMMENT '发货人姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `dagaijuli` double DEFAULT NULL COMMENT '大概距离',
  `huowuyunfei` double DEFAULT NULL COMMENT '货物运费',
  `piaojuzhuangtai` varchar(200) DEFAULT NULL COMMENT '票据状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `piaojudanhao` (`piaojudanhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1704801088142 DEFAULT CHARSET=utf8 COMMENT='货运票据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `huoyunpiaoju`
--

LOCK TABLES `huoyunpiaoju` WRITE;
/*!40000 ALTER TABLE `huoyunpiaoju` DISABLE KEYS */;
INSERT INTO `huoyunpiaoju` VALUES (81,'2024-01-09 11:39:05','1111111111','货物名称1','货物类型1','起始点1','目的地1',1,1,1,'发货人1','发货人姓名1','客户账号1','客户姓名1','下单时间1',1,1,'未到货单'),(82,'2024-01-09 11:39:05','2222222222','货物名称2','货物类型2','起始点2','目的地2',2,2,2,'发货人2','发货人姓名2','客户账号2','客户姓名2','下单时间2',2,2,'未到货单'),(83,'2024-01-09 11:39:05','3333333333','货物名称3','货物类型3','起始点3','目的地3',3,3,3,'发货人3','发货人姓名3','客户账号3','客户姓名3','下单时间3',3,3,'未到货单'),(84,'2024-01-09 11:39:05','4444444444','货物名称4','货物类型4','起始点4','目的地4',4,4,4,'发货人4','发货人姓名4','客户账号4','客户姓名4','下单时间4',4,4,'未到货单'),(85,'2024-01-09 11:39:05','5555555555','货物名称5','货物类型5','起始点5','目的地5',5,5,5,'发货人5','发货人姓名5','客户账号5','客户姓名5','下单时间5',5,5,'未到货单'),(86,'2024-01-09 11:39:05','6666666666','货物名称6','货物类型6','起始点6','目的地6',6,6,6,'发货人6','发货人姓名6','客户账号6','客户姓名6','下单时间6',6,6,'未到货单'),(1704801088141,'2024-01-09 11:51:27','1704801076383','白菜','生鲜类','广州','上海',1200,44,1999,'1','1','1','1','2024-01-09 19:49:50',1500,800,'未到车辆');
/*!40000 ALTER TABLE `huoyunpiaoju` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiehuoxinxi`
--

DROP TABLE IF EXISTS `jiehuoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiehuoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `piaojudanhao` varchar(200) DEFAULT NULL COMMENT '票据单号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `qishidian` varchar(200) DEFAULT NULL COMMENT '起始点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `huowushuliang` int(11) DEFAULT NULL COMMENT '货物数量',
  `huowuzhongliang` double DEFAULT NULL COMMENT '货物重量',
  `huowujiage` double DEFAULT NULL COMMENT '货物价格',
  `fahuoren` varchar(200) DEFAULT NULL COMMENT '发货人',
  `fahuorenxingming` varchar(200) DEFAULT NULL COMMENT '发货人姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `dagaijuli` double DEFAULT NULL COMMENT '大概距离',
  `huowuyunfei` double DEFAULT NULL COMMENT '货物运费',
  `jiehuoshijian` datetime DEFAULT NULL COMMENT '接货时间',
  `hetong` longtext COMMENT '合同',
  `peichezhuangtai` varchar(200) DEFAULT NULL COMMENT '配车状态',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704801126015 DEFAULT CHARSET=utf8 COMMENT='接货信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiehuoxinxi`
--

LOCK TABLES `jiehuoxinxi` WRITE;
/*!40000 ALTER TABLE `jiehuoxinxi` DISABLE KEYS */;
INSERT INTO `jiehuoxinxi` VALUES (91,'2024-01-09 11:39:05','票据单号1','货物名称1','货物类型1','起始点1','目的地1',1,1,1,'发货人1','发货人姓名1','客户账号1','客户姓名1','下单时间1',1,1,'2024-01-09 19:39:05','','已配车',1,1),(92,'2024-01-09 11:39:05','票据单号2','货物名称2','货物类型2','起始点2','目的地2',2,2,2,'发货人2','发货人姓名2','客户账号2','客户姓名2','下单时间2',2,2,'2024-01-09 19:39:05','','已配车',2,2),(93,'2024-01-09 11:39:05','票据单号3','货物名称3','货物类型3','起始点3','目的地3',3,3,3,'发货人3','发货人姓名3','客户账号3','客户姓名3','下单时间3',3,3,'2024-01-09 19:39:05','','已配车',3,3),(94,'2024-01-09 11:39:05','票据单号4','货物名称4','货物类型4','起始点4','目的地4',4,4,4,'发货人4','发货人姓名4','客户账号4','客户姓名4','下单时间4',4,4,'2024-01-09 19:39:05','','已配车',4,4),(95,'2024-01-09 11:39:05','票据单号5','货物名称5','货物类型5','起始点5','目的地5',5,5,5,'发货人5','发货人姓名5','客户账号5','客户姓名5','下单时间5',5,5,'2024-01-09 19:39:05','','已配车',5,5),(96,'2024-01-09 11:39:05','票据单号6','货物名称6','货物类型6','起始点6','目的地6',6,6,6,'发货人6','发货人姓名6','客户账号6','客户姓名6','下单时间6',6,6,'2024-01-09 19:39:05','','已配车',6,6),(1704801126014,'2024-01-09 11:52:05','1704801076383','白菜','生鲜类','广州','上海',1200,44,1999,'1','1','1','1','2024-01-09 19:49:50',1500,800,'2024-01-09 19:51:34','file/1704801122478.rtf','已配车',1,1704801088141);
/*!40000 ALTER TABLE `jiehuoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kehu`
--

DROP TABLE IF EXISTS `kehu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kehu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kehuzhanghao` varchar(200) NOT NULL COMMENT '客户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `kehuxingming` varchar(200) NOT NULL COMMENT '客户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `kehuzhanghao` (`kehuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1704800878955 DEFAULT CHARSET=utf8 COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kehu`
--

LOCK TABLES `kehu` WRITE;
/*!40000 ALTER TABLE `kehu` DISABLE KEYS */;
INSERT INTO `kehu` VALUES (41,'2024-01-09 11:39:04','客户账号1','123456','客户姓名1','file/kehuTouxiang1.jpg','男','19819881111'),(42,'2024-01-09 11:39:04','客户账号2','123456','客户姓名2','file/kehuTouxiang2.jpg','男','19819881112'),(43,'2024-01-09 11:39:04','客户账号3','123456','客户姓名3','file/kehuTouxiang3.jpg','男','19819881113'),(44,'2024-01-09 11:39:04','客户账号4','123456','客户姓名4','file/kehuTouxiang4.jpg','男','19819881114'),(45,'2024-01-09 11:39:04','客户账号5','123456','客户姓名5','file/kehuTouxiang5.jpg','男','19819881115'),(46,'2024-01-09 11:39:04','客户账号6','123456','客户姓名6','file/kehuTouxiang6.jpg','男','19819881116'),(1704800878954,'2024-01-09 11:47:58','1','1','1','file/1704800874021.jpg','女','13645645645');
/*!40000 ALTER TABLE `kehu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `menujson` longtext COMMENT '菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'2024-01-09 11:39:05','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-news\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"司机\",\"menuJump\":\"列表\",\"tableName\":\"siji\"},{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"客户\",\"menuJump\":\"列表\",\"tableName\":\"kehu\"}],\"fontClass\":\"icon-user5\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"票据\",\"查看\"],\"menu\":\"货运订单\",\"menuJump\":\"列表\",\"tableName\":\"huoyundingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"货运订单管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"接货\"],\"menu\":\"货运票据\",\"menuJump\":\"列表\",\"tableName\":\"huoyunpiaoju\"}],\"fontClass\":\"icon-common6\",\"menu\":\"货运票据管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"配车\"],\"menu\":\"接货信息\",\"menuJump\":\"列表\",\"tableName\":\"jiehuoxinxi\"}],\"fontClass\":\"icon-common10\",\"menu\":\"接货信息管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"配车信息\",\"menuJump\":\"列表\",\"tableName\":\"peichexinxi\"}],\"fontClass\":\"icon-common23\",\"menu\":\"配车信息管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"中转信息\",\"menuJump\":\"列表\",\"tableName\":\"zhongzhuanxinxi\"}],\"fontClass\":\"icon-common21\",\"menu\":\"中转信息管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"到货信息\",\"menuJump\":\"列表\",\"tableName\":\"daohuoxinxi\"}],\"fontClass\":\"icon-common37\",\"menu\":\"到货信息管理\",\"unicode\":\"&#xeea4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-newshot\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"成本核算\",\"menuJump\":\"列表\",\"tableName\":\"chengbenhesuan\"}],\"fontClass\":\"icon-common26\",\"menu\":\"成本核算管理\",\"unicode\":\"&#xee2b;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-skin\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"货物类型\",\"menuJump\":\"列表\",\"tableName\":\"huowuleixing\"}],\"fontClass\":\"icon-common7\",\"menu\":\"货物类型管理\",\"unicode\":\"&#xedb4;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\",\"中转\",\"到货\"],\"menu\":\"配车信息\",\"menuJump\":\"列表\",\"tableName\":\"peichexinxi\"}],\"fontClass\":\"icon-common23\",\"menu\":\"配车信息管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\",\"修改\",\"删除\",\"到货\"],\"menu\":\"中转信息\",\"menuJump\":\"列表\",\"tableName\":\"zhongzhuanxinxi\"}],\"fontClass\":\"icon-common21\",\"menu\":\"中转信息管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"修改\",\"删除\"],\"menu\":\"到货信息\",\"menuJump\":\"列表\",\"tableName\":\"daohuoxinxi\"}],\"fontClass\":\"icon-common37\",\"menu\":\"到货信息管理\",\"unicode\":\"&#xeea4;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"司机\",\"tableName\":\"siji\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"gonggaoxinxi\"}],\"fontClass\":\"icon-common9\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedc9;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-album\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"货运订单\",\"menuJump\":\"列表\",\"tableName\":\"huoyundingdan\"}],\"fontClass\":\"icon-common5\",\"menu\":\"货运订单管理\",\"unicode\":\"&#xedae;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-attentionfavor\",\"buttons\":[\"查看\"],\"menu\":\"货运票据\",\"menuJump\":\"列表\",\"tableName\":\"huoyunpiaoju\"}],\"fontClass\":\"icon-common6\",\"menu\":\"货运票据管理\",\"unicode\":\"&#xedad;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\"],\"menu\":\"接货信息\",\"menuJump\":\"列表\",\"tableName\":\"jiehuoxinxi\"}],\"fontClass\":\"icon-common10\",\"menu\":\"接货信息管理\",\"unicode\":\"&#xedd1;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-pic\",\"buttons\":[\"查看\"],\"menu\":\"配车信息\",\"menuJump\":\"列表\",\"tableName\":\"peichexinxi\"}],\"fontClass\":\"icon-common23\",\"menu\":\"配车信息管理\",\"unicode\":\"&#xee05;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"查看\"],\"menu\":\"中转信息\",\"menuJump\":\"列表\",\"tableName\":\"zhongzhuanxinxi\"}],\"fontClass\":\"icon-common21\",\"menu\":\"中转信息管理\",\"unicode\":\"&#xee03;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\"],\"menu\":\"到货信息\",\"menuJump\":\"列表\",\"tableName\":\"daohuoxinxi\"}],\"fontClass\":\"icon-common37\",\"menu\":\"到货信息管理\",\"unicode\":\"&#xeea4;\"}],\"frontMenu\":[],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"客户\",\"tableName\":\"kehu\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peichexinxi`
--

DROP TABLE IF EXISTS `peichexinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peichexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `piaojudanhao` varchar(200) DEFAULT NULL COMMENT '票据单号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `huowuleixing` varchar(200) DEFAULT NULL COMMENT '货物类型',
  `qishidian` varchar(200) DEFAULT NULL COMMENT '起始点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `huowushuliang` int(11) DEFAULT NULL COMMENT '货物数量',
  `huowuzhongliang` double DEFAULT NULL COMMENT '货物重量',
  `huowujiage` double DEFAULT NULL COMMENT '货物价格',
  `fahuoren` varchar(200) DEFAULT NULL COMMENT '发货人',
  `fahuorenxingming` varchar(200) DEFAULT NULL COMMENT '发货人姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `xiadanshijian` varchar(200) DEFAULT NULL COMMENT '下单时间',
  `dagaijuli` double DEFAULT NULL COMMENT '大概距离',
  `huowuyunfei` double DEFAULT NULL COMMENT '货物运费',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `peicheshijian` datetime DEFAULT NULL COMMENT '配车时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704801146198 DEFAULT CHARSET=utf8 COMMENT='配车信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peichexinxi`
--

LOCK TABLES `peichexinxi` WRITE;
/*!40000 ALTER TABLE `peichexinxi` DISABLE KEYS */;
INSERT INTO `peichexinxi` VALUES (101,'2024-01-09 11:39:05','票据单号1','货物名称1','货物类型1','起始点1','目的地1',1,1,1,'发货人1','发货人姓名1','客户账号1','客户姓名1','下单时间1',1,1,'司机账号1','司机姓名1','手机号码1','车牌号1','2024-01-09 19:39:05'),(102,'2024-01-09 11:39:05','票据单号2','货物名称2','货物类型2','起始点2','目的地2',2,2,2,'发货人2','发货人姓名2','客户账号2','客户姓名2','下单时间2',2,2,'司机账号2','司机姓名2','手机号码2','车牌号2','2024-01-09 19:39:05'),(103,'2024-01-09 11:39:05','票据单号3','货物名称3','货物类型3','起始点3','目的地3',3,3,3,'发货人3','发货人姓名3','客户账号3','客户姓名3','下单时间3',3,3,'司机账号3','司机姓名3','手机号码3','车牌号3','2024-01-09 19:39:05'),(104,'2024-01-09 11:39:05','票据单号4','货物名称4','货物类型4','起始点4','目的地4',4,4,4,'发货人4','发货人姓名4','客户账号4','客户姓名4','下单时间4',4,4,'司机账号4','司机姓名4','手机号码4','车牌号4','2024-01-09 19:39:05'),(105,'2024-01-09 11:39:05','票据单号5','货物名称5','货物类型5','起始点5','目的地5',5,5,5,'发货人5','发货人姓名5','客户账号5','客户姓名5','下单时间5',5,5,'司机账号5','司机姓名5','手机号码5','车牌号5','2024-01-09 19:39:05'),(106,'2024-01-09 11:39:05','票据单号6','货物名称6','货物类型6','起始点6','目的地6',6,6,6,'发货人6','发货人姓名6','客户账号6','客户姓名6','下单时间6',6,6,'司机账号6','司机姓名6','手机号码6','车牌号6','2024-01-09 19:39:05'),(1704801146197,'2024-01-09 11:52:25','1704801076383','白菜','生鲜类','广州','上海',1200,44,1999,'1','1','1','1','2024-01-09 19:49:50',1500,800,'2','2','13212312312','5555','2024-01-09 19:52:18');
/*!40000 ALTER TABLE `peichexinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `siji`
--

DROP TABLE IF EXISTS `siji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `siji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sijizhanghao` varchar(200) NOT NULL COMMENT '司机账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `sijixingming` varchar(200) NOT NULL COMMENT '司机姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sijizhanghao` (`sijizhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1704800912687 DEFAULT CHARSET=utf8 COMMENT='司机';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siji`
--

LOCK TABLES `siji` WRITE;
/*!40000 ALTER TABLE `siji` DISABLE KEYS */;
INSERT INTO `siji` VALUES (31,'2024-01-09 11:39:04','司机账号1','123456','司机姓名1','file/sijiTouxiang1.jpg','男','19819881111'),(32,'2024-01-09 11:39:04','司机账号2','123456','司机姓名2','file/sijiTouxiang2.jpg','男','19819881112'),(33,'2024-01-09 11:39:04','司机账号3','123456','司机姓名3','file/sijiTouxiang3.jpg','男','19819881113'),(34,'2024-01-09 11:39:04','司机账号4','123456','司机姓名4','file/sijiTouxiang4.jpg','男','19819881114'),(35,'2024-01-09 11:39:04','司机账号5','123456','司机姓名5','file/sijiTouxiang5.jpg','男','19819881115'),(36,'2024-01-09 11:39:04','司机账号6','123456','司机姓名6','file/sijiTouxiang6.jpg','男','19819881116'),(1704800912686,'2024-01-09 11:48:32','2','2','2','file/1704800907505.jpg','男','13212312312');
/*!40000 ALTER TABLE `siji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,41,'客户账号1','kehu','客户','vyjhxc2p8myimh6028o0s2kqivalzwde','2024-01-09 11:45:55','2024-01-09 12:45:56'),(2,1,'admin','users','管理员','xiymsjo610jwea06c7ztv4geapq5mzct','2024-01-09 11:46:19','2024-01-09 12:54:19'),(3,1704800878954,'1','kehu','客户','w453917g1b01m40n2d9701xo86rdff7h','2024-01-09 11:48:04','2024-01-09 12:53:51'),(4,1704800912686,'2','siji','司机','52x1hglyslzmx19lr9yrul0yb0x3pp3m','2024-01-09 11:48:37','2024-01-09 12:52:43');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `username` varchar(200) NOT NULL COMMENT '用户名',
  `password` varchar(200) NOT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2024-01-09 11:39:05','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhongzhuanxinxi`
--

DROP TABLE IF EXISTS `zhongzhuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhongzhuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `piaojudanhao` varchar(200) DEFAULT NULL COMMENT '票据单号',
  `huowumingcheng` varchar(200) DEFAULT NULL COMMENT '货物名称',
  `qishidian` varchar(200) DEFAULT NULL COMMENT '起始点',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `huowushuliang` int(11) DEFAULT NULL COMMENT '货物数量',
  `huowuzhongliang` double DEFAULT NULL COMMENT '货物重量',
  `huowujiage` double DEFAULT NULL COMMENT '货物价格',
  `fahuoren` varchar(200) DEFAULT NULL COMMENT '发货人',
  `fahuorenxingming` varchar(200) DEFAULT NULL COMMENT '发货人姓名',
  `kehuzhanghao` varchar(200) DEFAULT NULL COMMENT '客户账号',
  `kehuxingming` varchar(200) DEFAULT NULL COMMENT '客户姓名',
  `huowuyunfei` double DEFAULT NULL COMMENT '货物运费',
  `sijizhanghao` varchar(200) DEFAULT NULL COMMENT '司机账号',
  `sijixingming` varchar(200) DEFAULT NULL COMMENT '司机姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `chepaihao` varchar(200) DEFAULT NULL COMMENT '车牌号',
  `zhongzhuandidian` varchar(200) DEFAULT NULL COMMENT '中转地点',
  `zhongzhuanshijian` datetime DEFAULT NULL COMMENT '中转时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1704801181015 DEFAULT CHARSET=utf8 COMMENT='中转信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhongzhuanxinxi`
--

LOCK TABLES `zhongzhuanxinxi` WRITE;
/*!40000 ALTER TABLE `zhongzhuanxinxi` DISABLE KEYS */;
INSERT INTO `zhongzhuanxinxi` VALUES (111,'2024-01-09 11:39:05','票据单号1','货物名称1','起始点1','目的地1',1,1,1,'发货人1','发货人姓名1','客户账号1','客户姓名1',1,'司机账号1','司机姓名1','手机号码1','车牌号1','中转地点1','2024-01-09 19:39:05'),(112,'2024-01-09 11:39:05','票据单号2','货物名称2','起始点2','目的地2',2,2,2,'发货人2','发货人姓名2','客户账号2','客户姓名2',2,'司机账号2','司机姓名2','手机号码2','车牌号2','中转地点2','2024-01-09 19:39:05'),(113,'2024-01-09 11:39:05','票据单号3','货物名称3','起始点3','目的地3',3,3,3,'发货人3','发货人姓名3','客户账号3','客户姓名3',3,'司机账号3','司机姓名3','手机号码3','车牌号3','中转地点3','2024-01-09 19:39:05'),(114,'2024-01-09 11:39:05','票据单号4','货物名称4','起始点4','目的地4',4,4,4,'发货人4','发货人姓名4','客户账号4','客户姓名4',4,'司机账号4','司机姓名4','手机号码4','车牌号4','中转地点4','2024-01-09 19:39:05'),(115,'2024-01-09 11:39:05','票据单号5','货物名称5','起始点5','目的地5',5,5,5,'发货人5','发货人姓名5','客户账号5','客户姓名5',5,'司机账号5','司机姓名5','手机号码5','车牌号5','中转地点5','2024-01-09 19:39:05'),(116,'2024-01-09 11:39:05','票据单号6','货物名称6','起始点6','目的地6',6,6,6,'发货人6','发货人姓名6','客户账号6','客户姓名6',6,'司机账号6','司机姓名6','手机号码6','车牌号6','中转地点6','2024-01-09 19:39:05'),(1704801181014,'2024-01-09 11:53:00','1704801076383','白菜','广州','上海',1200,44,1999,'1','1','1','1',800,'2','2','13212312312','5555','福建','2024-01-09 19:52:51');
/*!40000 ALTER TABLE `zhongzhuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-14 16:16:40
