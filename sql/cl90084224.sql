-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: cl90084224
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
-- Current Database: `cl90084224`
--

/*!40000 DROP DATABASE IF EXISTS `cl90084224`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cl90084224` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `cl90084224`;

--
-- Table structure for table `chayuejianli`
--

DROP TABLE IF EXISTS `chayuejianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chayuejianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `gangweileixing` varchar(200) NOT NULL COMMENT '岗位类型',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `chayueshijian` datetime DEFAULT NULL COMMENT '查阅时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='查阅简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chayuejianli`
--

LOCK TABLES `chayuejianli` WRITE;
/*!40000 ALTER TABLE `chayuejianli` DISABLE KEYS */;
INSERT INTO `chayuejianli` VALUES (91,'2024-03-26 11:52:29','岗位名称1','岗位类型1','学历要求1','工作时间1','薪资待遇1','企业账号1','企业名称1','用户账号1','用户姓名1','2024-03-26 19:52:29'),(92,'2024-03-26 11:52:29','岗位名称2','岗位类型2','学历要求2','工作时间2','薪资待遇2','企业账号2','企业名称2','用户账号2','用户姓名2','2024-03-26 19:52:29'),(93,'2024-03-26 11:52:29','岗位名称3','岗位类型3','学历要求3','工作时间3','薪资待遇3','企业账号3','企业名称3','用户账号3','用户姓名3','2024-03-26 19:52:29'),(94,'2024-03-26 11:52:29','岗位名称4','岗位类型4','学历要求4','工作时间4','薪资待遇4','企业账号4','企业名称4','用户账号4','用户姓名4','2024-03-26 19:52:29'),(95,'2024-03-26 11:52:29','岗位名称5','岗位类型5','学历要求5','工作时间5','薪资待遇5','企业账号5','企业名称5','用户账号5','用户姓名5','2024-03-26 19:52:29'),(96,'2024-03-26 11:52:29','岗位名称6','岗位类型6','学历要求6','工作时间6','薪资待遇6','企业账号6','企业名称6','用户账号6','用户姓名6','2024-03-26 19:52:29');
/*!40000 ALTER TABLE `chayuejianli` ENABLE KEYS */;
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
-- Table structure for table `diqu`
--

DROP TABLE IF EXISTS `diqu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diqu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diqu` varchar(200) NOT NULL COMMENT '地区',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diqu` (`diqu`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='地区';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diqu`
--

LOCK TABLES `diqu` WRITE;
/*!40000 ALTER TABLE `diqu` DISABLE KEYS */;
INSERT INTO `diqu` VALUES (111,'2024-03-26 11:52:29','地区1'),(112,'2024-03-26 11:52:29','地区2'),(113,'2024-03-26 11:52:29','地区3'),(114,'2024-03-26 11:52:29','地区4'),(115,'2024-03-26 11:52:29','地区5'),(116,'2024-03-26 11:52:29','地区6');
/*!40000 ALTER TABLE `diqu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangweileixing`
--

DROP TABLE IF EXISTS `gangweileixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gangweileixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweileixing` varchar(200) NOT NULL COMMENT '岗位类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gangweileixing` (`gangweileixing`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='岗位类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangweileixing`
--

LOCK TABLES `gangweileixing` WRITE;
/*!40000 ALTER TABLE `gangweileixing` DISABLE KEYS */;
INSERT INTO `gangweileixing` VALUES (51,'2024-03-26 11:52:28','岗位类型1'),(52,'2024-03-26 11:52:28','岗位类型2'),(53,'2024-03-26 11:52:28','岗位类型3'),(54,'2024-03-26 11:52:28','岗位类型4'),(55,'2024-03-26 11:52:28','岗位类型5'),(56,'2024-03-26 11:52:28','岗位类型6');
/*!40000 ALTER TABLE `gangweileixing` ENABLE KEYS */;
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
INSERT INTO `menu` VALUES (1,'2024-03-26 11:52:29','[{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goods\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"岗位类型\",\"menuJump\":\"列表\",\"tableName\":\"gangweileixing\"},{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"查看\",\"删除\",\"岗位类型统计\",\"城市统计\",\"薪资统计\",\"首页总数\",\"首页统计\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"投递简历\",\"menuJump\":\"列表\",\"tableName\":\"toudijianli\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"查阅简历\",\"menuJump\":\"列表\",\"tableName\":\"chayuejianli\"},{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"地区\",\"menuJump\":\"列表\",\"tableName\":\"diqu\"}],\"fontClass\":\"icon-common39\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xeeba;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"问卷信息\",\"menuJump\":\"列表\",\"tableName\":\"wenjuanxinxi\"},{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"用户回答\",\"menuJump\":\"列表\",\"tableName\":\"yonghuhuida\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"企业答卷\",\"menuJump\":\"列表\",\"tableName\":\"qiyedajuan\"}],\"fontClass\":\"icon-common16\",\"menu\":\"问卷信息管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-send\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"用户\",\"menuJump\":\"列表\",\"tableName\":\"yonghu\"},{\"appFrontIcon\":\"cuIcon-similar\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"审核\"],\"menu\":\"企业\",\"menuJump\":\"列表\",\"tableName\":\"qiye\"}],\"fontClass\":\"icon-user4\",\"menu\":\"用户管理\",\"unicode\":\"&#xef9a;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-taxi\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\"}],\"fontClass\":\"icon-common42\",\"menu\":\"公告信息管理\",\"unicode\":\"&#xef24;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-brand\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\"],\"menu\":\"轮播图\",\"menuJump\":\"列表\",\"tableName\":\"config\"}],\"fontClass\":\"icon-common14\",\"menu\":\"管理员管理\",\"unicode\":\"&#xedfb;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"投递\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common28\",\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xee2d;\"}],\"fontClass\":\"icon-common28\",\"menu\":\"公告信息\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"用户答卷\"],\"menu\":\"问卷信息\",\"menuJump\":\"列表\",\"tableName\":\"wenjuanxinxi\"}],\"menu\":\"问卷信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"管理员\",\"tableName\":\"users\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-explore\",\"buttons\":[\"查看\"],\"menu\":\"我的收藏\",\"menuJump\":\"1\",\"tableName\":\"storeup\"}],\"fontClass\":\"icon-common12\",\"menu\":\"我的收藏管理\",\"unicode\":\"&#xedf4;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-phone\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"用户回答\",\"menuJump\":\"列表\",\"tableName\":\"yonghuhuida\"}],\"fontClass\":\"icon-common16\",\"menu\":\"问卷信息管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"投递简历\",\"menuJump\":\"列表\",\"tableName\":\"toudijianli\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"查阅简历\",\"menuJump\":\"列表\",\"tableName\":\"chayuejianli\"}],\"fontClass\":\"icon-common39\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xeeba;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"投递\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common28\",\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xee2d;\"}],\"fontClass\":\"icon-common28\",\"menu\":\"公告信息\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"用户答卷\"],\"menu\":\"问卷信息\",\"menuJump\":\"列表\",\"tableName\":\"wenjuanxinxi\"}],\"menu\":\"问卷信息管理\"}],\"hasBackLogin\":\"否\",\"hasBackRegister\":\"否\",\"hasFrontLogin\":\"是\",\"hasFrontRegister\":\"是\",\"roleName\":\"用户\",\"tableName\":\"yonghu\"},{\"backMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-goodsnew\",\"buttons\":[\"查看\",\"删除\",\"企业答卷\"],\"menu\":\"问卷信息\",\"menuJump\":\"列表\",\"tableName\":\"wenjuanxinxi\"},{\"appFrontIcon\":\"cuIcon-shop\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"企业答卷\",\"menuJump\":\"列表\",\"tableName\":\"qiyedajuan\"}],\"fontClass\":\"icon-common16\",\"menu\":\"问卷信息管理\",\"unicode\":\"&#xedfd;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-addressbook\",\"buttons\":[\"新增\",\"查看\",\"修改\",\"删除\",\"岗位类型统计\",\"城市统计\",\"薪资统计\",\"首页总数\",\"首页统计\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"},{\"appFrontIcon\":\"cuIcon-time\",\"buttons\":[\"查看\",\"删除\",\"查阅\"],\"menu\":\"投递简历\",\"menuJump\":\"列表\",\"tableName\":\"toudijianli\"},{\"appFrontIcon\":\"cuIcon-vip\",\"buttons\":[\"查看\",\"删除\"],\"menu\":\"查阅简历\",\"menuJump\":\"列表\",\"tableName\":\"chayuejianli\"}],\"fontClass\":\"icon-common39\",\"menu\":\"招聘信息管理\",\"unicode\":\"&#xeeba;\"}],\"frontMenu\":[{\"child\":[{\"appFrontIcon\":\"cuIcon-cardboard\",\"buttons\":[\"查看\",\"投递\"],\"menu\":\"招聘信息\",\"menuJump\":\"列表\",\"tableName\":\"zhaopinxinxi\"}],\"menu\":\"招聘信息管理\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-camera\",\"buttons\":[\"查看\"],\"fontClass\":\"icon-common28\",\"menu\":\"公告信息\",\"menuJump\":\"列表\",\"tableName\":\"news\",\"unicode\":\"&#xee2d;\"}],\"fontClass\":\"icon-common28\",\"menu\":\"公告信息\",\"unicode\":\"&#xee2d;\"},{\"child\":[{\"appFrontIcon\":\"cuIcon-list\",\"buttons\":[\"查看\",\"用户答卷\"],\"menu\":\"问卷信息\",\"menuJump\":\"列表\",\"tableName\":\"wenjuanxinxi\"}],\"menu\":\"问卷信息管理\"}],\"hasBackLogin\":\"是\",\"hasBackRegister\":\"是\",\"hasFrontLogin\":\"否\",\"hasFrontRegister\":\"否\",\"roleName\":\"企业\",\"tableName\":\"qiye\"}]');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2024-03-26 11:52:29','青花瓷','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起','file/newsPicture1.jpg','素胚勾勒出青花笔锋浓转淡，瓶身描绘的牡丹一如你初妆，冉冉檀香透过窗心事我了然，宣上走笔至此搁一半，釉色渲染仕女图韵味被私藏，而你嫣然的一笑如含苞待放，你的美缕飘散，去到我去不了的地方，天青色等烟雨 而我在等你，炊烟袅袅升起， 隔江千万里，在瓶底书前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起， 晕开了局，如传世的青花瓷自顾自美丽，你眼带笑意，色白花青的锦鲤跃然于碗底，临摹宋体落款时却惦记着你，你隐藏在窑烧里千年的秘密，极细腻犹如绣花针落地，帘外芭蕉惹骤雨门环惹铜绿，而我路过那江南小镇惹了你，在泼墨山水画里，你从墨色深处被隐去，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天色等烟雨 ，而我在等你，月色被打捞起， 晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意，天青色等烟雨 ，而我在等你，炊烟袅袅升起 ，隔江千万里，在瓶底书汉隶仿前朝的飘逸，就当我为遇见你伏笔，天青色等烟雨， 而我在等你，月色被打捞起 ，晕开了结局，如传世的青花瓷自顾自美丽，你眼带笑意。'),(102,'2024-03-26 11:52:29','理想三旬','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在','file/newsPicture2.jpg','雨后有车驶来，驶过暮色苍白，旧铁皮往南开，恋人已不在，收听浓烟下的，诗歌电台，不动情的咳嗽，至少看起来，归途也还可爱，琴弦少了姿态，再不见那夜里，听歌的小孩，时光匆匆独白，将颠沛磨成卡带，已枯倦的情怀，踏碎成年代，就老去吧，孤独别醒来，你渴望的离开，只是无处停摆，就歌唱吧，眼睛眯起来，而热泪的崩坏，只是没抵达的存在，青春又醉倒在，籍籍无名的怀，靠嬉笑来虚度，聚散得慷慨，辗转却去不到，对的站台，如果漂泊是成长，必经的路牌，你迷醒岁月中，那贫瘠的未来，像遗憾季节里，未结果的爱，弄脏了每一页诗，吻最疼痛的告白，而风声吹到这，已不需要释怀，就老去吧，孤独别醒来，渴望的离开只是无处停摆就歌唱吧，眼睛眯起来而热泪的崩坏，只是没抵达的存在，就甜蜜地忍耐，繁星润湿窗台，光影跳动着像在，困倦里说爱，再无谓的感慨，以为明白，梦倒塌的地方，今已爬满青苔。'),(103,'2024-03-26 11:52:29','七里香','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠','file/newsPicture3.jpg','窗外的麻雀在电线杆上多嘴，你说这一句很有夏天的感觉，手中的铅笔在纸上来来回回，我用几行字形容你是我的谁，秋刀鱼的滋味猫跟你都想了解，初恋的香味就这样被我们寻回，那温暖的阳光像刚摘的鲜艳草莓，你说你舍不得吃掉这一种感觉，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，雨下整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，你是我唯一想要的了解，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，那饱满的稻穗幸福了这个季节，而你的脸颊像田里熟透的番茄，你突然对我说七里香的名字很美，我此刻却只想亲吻你倔强的嘴，雨下整夜我的爱溢出就像雨水，院子落叶跟我的思念厚厚一叠，几句是非也无法将我的热情冷却，你出现在我诗的每一页，整夜我的爱溢出就像雨水，窗台蝴蝶像诗里纷飞的美丽章节，我接着写，把永远爱你写进诗的结尾，是我唯一想要的了解。'),(104,'2024-03-26 11:52:29','江南','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸','file/newsPicture4.jpg','风到这里就是粘，粘住过客的思念，雨到了这里缠成线，缠着我们流连人世间，你在身边就是缘，缘分写在三生石上面，爱有万分之一甜，宁愿我就葬在这一点，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，圈圈圆圆圈圈，天天年年天天的我，深深看你的脸，生气的温柔，埋怨的温柔的脸，不懂爱恨情愁煎熬的我们，都以为相爱就像风云的善变，相信爱一天 抵过永远，在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂，相信爱一天抵过永远。在这一刹那冻结了时间，不懂怎么表现温柔的我们，还以为殉情只是古老的传言，离愁能有多痛 痛有多浓，当梦被埋在江南烟雨中，心碎了才懂。'),(105,'2024-03-26 11:52:29','那些你很冒险的梦','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落','file/newsPicture5.jpg','当两颗心开始震动，当你瞳孔学会闪躲，当爱慢慢被遮住只剩下黑，距离像影子被拉拖，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心多执着就加倍心痛，那些你很冒险的梦， 我陪你去疯，折纸飞机碰到雨天终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，当爱的故事剩听说，我找不到你单纯的面孔，当生命每分每秒都为你转动，心有多执着就加倍心痛，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，我不想放手 你松开的左手，你爱的放纵 我白不回天空，我输了 累了，但你再也 不回头，那些你很冒险的梦 我陪你去疯，折纸飞机 碰到雨天 终究会坠落，太残忍的话我直说 因为爱很重，你却不想懂 只往反方向走，你真的不懂 我的爱已降落。'),(106,'2024-03-26 11:52:29','孤勇者','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望','file/newsPicture6.jpg','都，是勇敢的，你额头的伤口 你的 不同 你犯的错，都 不必隐藏，你破旧的玩偶 你的 面具 你的自我，他们说 要带着光 驯服每一头怪兽，他们说 要缝好你的伤，没有人爱小丑 为何孤独 不可 光荣，人只有不完美 值得歌颂，谁说污泥满身的不算英雄，爱你孤身走暗巷，爱你不跪的模样，爱你对峙过绝望，不肯哭一场，爱你破烂的衣裳，却敢堵命运的枪，爱你和我那么像，缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，他们说 要戒了你的狂，就像擦掉了污垢，他们说 要顺台阶而上，而代价是低头，那就让我 不可 乘风，你一样骄傲着 那种孤勇，谁说对弈平凡的不算英雄，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你破烂的衣裳 却敢堵命运的枪，爱你和我那么像 缺口都一样，去吗 配吗 这褴褛的披风，战吗 战啊 以最卑微的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄，你的斑驳 与众不同 与众不同，你的沉默 震耳欲聋 震耳欲聋，You Are The Hero，爱你孤身走暗巷 爱你不跪的模样，爱你对峙过绝望 不肯哭一场，爱你来自于蛮荒 一生不借谁的光，你将造你的城邦 在废墟之上，去吗 去啊 以最卑微的梦，战吗 战啊 以最孤高的梦，致那黑夜中的呜咽与怒吼，谁说站在光里的才算英雄。');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiye`
--

DROP TABLE IF EXISTS `qiye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiye` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `qiyezhanghao` varchar(200) NOT NULL COMMENT '企业账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) NOT NULL COMMENT '企业名称',
  `fengmian` longtext COMMENT '封面',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `sfsh` varchar(200) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '回复内容',
  `gongzuohuanjing` varchar(200) DEFAULT NULL COMMENT '工作环境',
  `qiyewenhua` longtext COMMENT '企业文化',
  PRIMARY KEY (`id`),
  UNIQUE KEY `qiyezhanghao` (`qiyezhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='企业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiye`
--

LOCK TABLES `qiye` WRITE;
/*!40000 ALTER TABLE `qiye` DISABLE KEYS */;
INSERT INTO `qiye` VALUES (41,'2024-03-26 11:52:28','企业账号1','123456','企业名称1','file/qiyeFengmian1.jpg','联系人1','19819881111','企业地址1','是','','工作环境1','企业文化1'),(42,'2024-03-26 11:52:28','企业账号2','123456','企业名称2','file/qiyeFengmian2.jpg','联系人2','19819881112','企业地址2','是','','工作环境2','企业文化2'),(43,'2024-03-26 11:52:28','企业账号3','123456','企业名称3','file/qiyeFengmian3.jpg','联系人3','19819881113','企业地址3','是','','工作环境3','企业文化3'),(44,'2024-03-26 11:52:28','企业账号4','123456','企业名称4','file/qiyeFengmian4.jpg','联系人4','19819881114','企业地址4','是','','工作环境4','企业文化4'),(45,'2024-03-26 11:52:28','企业账号5','123456','企业名称5','file/qiyeFengmian5.jpg','联系人5','19819881115','企业地址5','是','','工作环境5','企业文化5'),(46,'2024-03-26 11:52:28','企业账号6','123456','企业名称6','file/qiyeFengmian6.jpg','联系人6','19819881116','企业地址6','是','','工作环境6','企业文化6');
/*!40000 ALTER TABLE `qiye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiyedajuan`
--

DROP TABLE IF EXISTS `qiyedajuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiyedajuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `tupian` longtext COMMENT '图片',
  `daanyi` varchar(200) DEFAULT NULL COMMENT '答案一',
  `daaner` varchar(200) DEFAULT NULL COMMENT '答案二',
  `daansan` varchar(200) DEFAULT NULL COMMENT '答案三',
  `daansi` varchar(200) DEFAULT NULL COMMENT '答案四',
  `daanwu` varchar(200) DEFAULT NULL COMMENT '答案五',
  `daanliu` varchar(200) DEFAULT NULL COMMENT '答案六',
  `daanqi` varchar(200) DEFAULT NULL COMMENT '答案七',
  `daanba` varchar(200) DEFAULT NULL COMMENT '答案八',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyexingming` varchar(200) DEFAULT NULL COMMENT '企业姓名',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='企业答卷';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiyedajuan`
--

LOCK TABLES `qiyedajuan` WRITE;
/*!40000 ALTER TABLE `qiyedajuan` DISABLE KEYS */;
INSERT INTO `qiyedajuan` VALUES (141,'2024-03-26 11:52:29','问卷名称1','file/qiyedajuanTupian1.jpg,file/qiyedajuanTupian2.jpg,file/qiyedajuanTupian3.jpg','答案一1','答案二1','答案三1','答案四1','答案五1','答案六1','答案七1','答案八1','企业账号1','企业姓名1','2024-03-26 19:52:29'),(142,'2024-03-26 11:52:29','问卷名称2','file/qiyedajuanTupian2.jpg,file/qiyedajuanTupian3.jpg,file/qiyedajuanTupian4.jpg','答案一2','答案二2','答案三2','答案四2','答案五2','答案六2','答案七2','答案八2','企业账号2','企业姓名2','2024-03-26 19:52:29'),(143,'2024-03-26 11:52:29','问卷名称3','file/qiyedajuanTupian3.jpg,file/qiyedajuanTupian4.jpg,file/qiyedajuanTupian5.jpg','答案一3','答案二3','答案三3','答案四3','答案五3','答案六3','答案七3','答案八3','企业账号3','企业姓名3','2024-03-26 19:52:29'),(144,'2024-03-26 11:52:29','问卷名称4','file/qiyedajuanTupian4.jpg,file/qiyedajuanTupian5.jpg,file/qiyedajuanTupian6.jpg','答案一4','答案二4','答案三4','答案四4','答案五4','答案六4','答案七4','答案八4','企业账号4','企业姓名4','2024-03-26 19:52:29'),(145,'2024-03-26 11:52:29','问卷名称5','file/qiyedajuanTupian5.jpg,file/qiyedajuanTupian6.jpg,file/qiyedajuanTupian7.jpg','答案一5','答案二5','答案三5','答案四5','答案五5','答案六5','答案七5','答案八5','企业账号5','企业姓名5','2024-03-26 19:52:29'),(146,'2024-03-26 11:52:29','问卷名称6','file/qiyedajuanTupian6.jpg,file/qiyedajuanTupian7.jpg,file/qiyedajuanTupian8.jpg','答案一6','答案二6','答案三6','答案四6','答案五6','答案六6','答案七6','答案八6','企业账号6','企业姓名6','2024-03-26 19:52:29');
/*!40000 ALTER TABLE `qiyedajuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) DEFAULT NULL COMMENT 'refid',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext NOT NULL COMMENT '图片',
  `type` varchar(200) DEFAULT NULL COMMENT '类型(1:收藏,21:赞,22:踩,31:竞拍参与,41:关注)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我的收藏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,31,'用户账号1','yonghu','用户','gcro4jk2h9dkkd4cuntkqhk8xo3h4rot','2024-03-26 11:58:16','2024-03-26 12:58:16');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toudijianli`
--

DROP TABLE IF EXISTS `toudijianli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toudijianli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `gangweileixing` varchar(200) NOT NULL COMMENT '岗位类型',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `xinzidaiyu` varchar(200) DEFAULT NULL COMMENT '薪资待遇',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `gerenjianli` longtext COMMENT '个人简历',
  `toudishijian` datetime DEFAULT NULL COMMENT '投递时间',
  `chayuezhuangtai` varchar(200) DEFAULT NULL COMMENT '查阅状态',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='投递简历';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toudijianli`
--

LOCK TABLES `toudijianli` WRITE;
/*!40000 ALTER TABLE `toudijianli` DISABLE KEYS */;
INSERT INTO `toudijianli` VALUES (81,'2024-03-26 11:52:29','岗位名称1','岗位类型1','学历要求1','薪资待遇1','工作时间1','企业账号1','企业名称1','用户账号1','用户姓名1','','2024-03-26 19:52:29','已查阅',1,1),(82,'2024-03-26 11:52:29','岗位名称2','岗位类型2','学历要求2','薪资待遇2','工作时间2','企业账号2','企业名称2','用户账号2','用户姓名2','','2024-03-26 19:52:29','已查阅',2,2),(83,'2024-03-26 11:52:29','岗位名称3','岗位类型3','学历要求3','薪资待遇3','工作时间3','企业账号3','企业名称3','用户账号3','用户姓名3','','2024-03-26 19:52:29','已查阅',3,3),(84,'2024-03-26 11:52:29','岗位名称4','岗位类型4','学历要求4','薪资待遇4','工作时间4','企业账号4','企业名称4','用户账号4','用户姓名4','','2024-03-26 19:52:29','已查阅',4,4),(85,'2024-03-26 11:52:29','岗位名称5','岗位类型5','学历要求5','薪资待遇5','工作时间5','企业账号5','企业名称5','用户账号5','用户姓名5','','2024-03-26 19:52:29','已查阅',5,5),(86,'2024-03-26 11:52:29','岗位名称6','岗位类型6','学历要求6','薪资待遇6','工作时间6','企业账号6','企业名称6','用户账号6','用户姓名6','','2024-03-26 19:52:29','已查阅',6,6);
/*!40000 ALTER TABLE `toudijianli` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'2024-03-26 11:52:29','admin','admin','管理员');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenjuanxinxi`
--

DROP TABLE IF EXISTS `wenjuanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wenjuanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `tupian` longtext COMMENT '图片',
  `wentiyi` varchar(200) DEFAULT NULL COMMENT '问题一',
  `wentier` varchar(200) DEFAULT NULL COMMENT '问题二',
  `wentisan` varchar(200) DEFAULT NULL COMMENT '问题三',
  `wentisi` varchar(200) DEFAULT NULL COMMENT '问题四',
  `wentiwu` varchar(200) DEFAULT NULL COMMENT '问题五',
  `wentiliu` varchar(200) DEFAULT NULL COMMENT '问题六',
  `wentiqi` varchar(200) DEFAULT NULL COMMENT '问题七',
  `wentiba` varchar(200) DEFAULT NULL COMMENT '问题八',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='问卷信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenjuanxinxi`
--

LOCK TABLES `wenjuanxinxi` WRITE;
/*!40000 ALTER TABLE `wenjuanxinxi` DISABLE KEYS */;
INSERT INTO `wenjuanxinxi` VALUES (121,'2024-03-26 11:52:29','问卷名称1','file/wenjuanxinxiTupian1.jpg,file/wenjuanxinxiTupian2.jpg,file/wenjuanxinxiTupian3.jpg','问题一1','问题二1','问题三1','问题四1','问题五1','问题六1','问题七1','问题八1','2024-03-26 19:52:29'),(122,'2024-03-26 11:52:29','问卷名称2','file/wenjuanxinxiTupian2.jpg,file/wenjuanxinxiTupian3.jpg,file/wenjuanxinxiTupian4.jpg','问题一2','问题二2','问题三2','问题四2','问题五2','问题六2','问题七2','问题八2','2024-03-26 19:52:29'),(123,'2024-03-26 11:52:29','问卷名称3','file/wenjuanxinxiTupian3.jpg,file/wenjuanxinxiTupian4.jpg,file/wenjuanxinxiTupian5.jpg','问题一3','问题二3','问题三3','问题四3','问题五3','问题六3','问题七3','问题八3','2024-03-26 19:52:29'),(124,'2024-03-26 11:52:29','问卷名称4','file/wenjuanxinxiTupian4.jpg,file/wenjuanxinxiTupian5.jpg,file/wenjuanxinxiTupian6.jpg','问题一4','问题二4','问题三4','问题四4','问题五4','问题六4','问题七4','问题八4','2024-03-26 19:52:29'),(125,'2024-03-26 11:52:29','问卷名称5','file/wenjuanxinxiTupian5.jpg,file/wenjuanxinxiTupian6.jpg,file/wenjuanxinxiTupian7.jpg','问题一5','问题二5','问题三5','问题四5','问题五5','问题六5','问题七5','问题八5','2024-03-26 19:52:29'),(126,'2024-03-26 11:52:29','问卷名称6','file/wenjuanxinxiTupian6.jpg,file/wenjuanxinxiTupian7.jpg,file/wenjuanxinxiTupian8.jpg','问题一6','问题二6','问题三6','问题四6','问题五6','问题六6','问题七6','问题八6','2024-03-26 19:52:29');
/*!40000 ALTER TABLE `wenjuanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghumima` varchar(200) NOT NULL COMMENT '用户密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `touxiang` longtext COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xueli` varchar(200) DEFAULT NULL COMMENT '学历',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shixijingli` varchar(200) DEFAULT NULL COMMENT '实习经历',
  `jiaoyubeijing` varchar(200) DEFAULT NULL COMMENT '教育背景',
  `biyeyuanxiao` varchar(200) DEFAULT NULL COMMENT '毕业院校',
  `zhuanyejineng` varchar(200) DEFAULT NULL COMMENT '专业技能',
  `suohuorongyu` varchar(200) DEFAULT NULL COMMENT '所获荣誉',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2024-03-26 11:52:28','用户账号1','123456','用户姓名1','file/yonghuTouxiang1.jpg','男','19819881111','学历1','专业1','实习经历1','教育背景1','毕业院校1','专业技能1','所获荣誉1','政治面貌1','102020001@qq.com','备注1'),(32,'2024-03-26 11:52:28','用户账号2','123456','用户姓名2','file/yonghuTouxiang2.jpg','男','19819881112','学历2','专业2','实习经历2','教育背景2','毕业院校2','专业技能2','所获荣誉2','政治面貌2','102020002@qq.com','备注2'),(33,'2024-03-26 11:52:28','用户账号3','123456','用户姓名3','file/yonghuTouxiang3.jpg','男','19819881113','学历3','专业3','实习经历3','教育背景3','毕业院校3','专业技能3','所获荣誉3','政治面貌3','102020003@qq.com','备注3'),(34,'2024-03-26 11:52:28','用户账号4','123456','用户姓名4','file/yonghuTouxiang4.jpg','男','19819881114','学历4','专业4','实习经历4','教育背景4','毕业院校4','专业技能4','所获荣誉4','政治面貌4','102020004@qq.com','备注4'),(35,'2024-03-26 11:52:28','用户账号5','123456','用户姓名5','file/yonghuTouxiang5.jpg','男','19819881115','学历5','专业5','实习经历5','教育背景5','毕业院校5','专业技能5','所获荣誉5','政治面貌5','102020005@qq.com','备注5'),(36,'2024-03-26 11:52:28','用户账号6','123456','用户姓名6','file/yonghuTouxiang6.jpg','男','19819881116','学历6','专业6','实习经历6','教育背景6','毕业院校6','专业技能6','所获荣誉6','政治面貌6','102020006@qq.com','备注6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghuhuida`
--

DROP TABLE IF EXISTS `yonghuhuida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghuhuida` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenjuanmingcheng` varchar(200) DEFAULT NULL COMMENT '问卷名称',
  `daanyi` varchar(200) DEFAULT NULL COMMENT '答案一',
  `daaner` varchar(200) DEFAULT NULL COMMENT '答案二',
  `daansan` varchar(200) DEFAULT NULL COMMENT '答案三',
  `daansi` varchar(200) DEFAULT NULL COMMENT '答案四',
  `daanwu` varchar(200) DEFAULT NULL COMMENT '答案五',
  `daanliu` varchar(200) DEFAULT NULL COMMENT '答案六',
  `daanqi` varchar(200) DEFAULT NULL COMMENT '答案七',
  `daanba` varchar(200) DEFAULT NULL COMMENT '答案八',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tijiaoshijian` datetime DEFAULT NULL COMMENT '提交时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='用户回答';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghuhuida`
--

LOCK TABLES `yonghuhuida` WRITE;
/*!40000 ALTER TABLE `yonghuhuida` DISABLE KEYS */;
INSERT INTO `yonghuhuida` VALUES (131,'2024-03-26 11:52:29','问卷名称1','答案一1','答案二1','答案三1','答案四1','答案五1','答案六1','答案七1','答案八1','用户账号1','用户姓名1','2024-03-26 19:52:29'),(132,'2024-03-26 11:52:29','问卷名称2','答案一2','答案二2','答案三2','答案四2','答案五2','答案六2','答案七2','答案八2','用户账号2','用户姓名2','2024-03-26 19:52:29'),(133,'2024-03-26 11:52:29','问卷名称3','答案一3','答案二3','答案三3','答案四3','答案五3','答案六3','答案七3','答案八3','用户账号3','用户姓名3','2024-03-26 19:52:29'),(134,'2024-03-26 11:52:29','问卷名称4','答案一4','答案二4','答案三4','答案四4','答案五4','答案六4','答案七4','答案八4','用户账号4','用户姓名4','2024-03-26 19:52:29'),(135,'2024-03-26 11:52:29','问卷名称5','答案一5','答案二5','答案三5','答案四5','答案五5','答案六5','答案七5','答案八5','用户账号5','用户姓名5','2024-03-26 19:52:29'),(136,'2024-03-26 11:52:29','问卷名称6','答案一6','答案二6','答案三6','答案四6','答案五6','答案六6','答案七6','答案八6','用户账号6','用户姓名6','2024-03-26 19:52:29');
/*!40000 ALTER TABLE `yonghuhuida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhaopinxinxi`
--

DROP TABLE IF EXISTS `zhaopinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gangweimingcheng` varchar(200) NOT NULL COMMENT '岗位名称',
  `fengmian` longtext COMMENT '封面',
  `gangweileixing` varchar(200) NOT NULL COMMENT '岗位类型',
  `diqu` varchar(200) DEFAULT NULL COMMENT '地区',
  `zhaopinrenshu` varchar(200) DEFAULT NULL COMMENT '招聘人数',
  `zhuanyeyaoqiu` varchar(200) DEFAULT NULL COMMENT '专业要求',
  `xueliyaoqiu` varchar(200) DEFAULT NULL COMMENT '学历要求',
  `gongzuonianxian` varchar(200) DEFAULT NULL COMMENT '工作年限',
  `xinzidaiyu` int(11) NOT NULL COMMENT '薪资待遇',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `gangweixiangqing` longtext COMMENT '岗位详情',
  `qiyezhanghao` varchar(200) DEFAULT NULL COMMENT '企业账号',
  `qiyemingcheng` varchar(200) DEFAULT NULL COMMENT '企业名称',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `qiyedizhi` varchar(200) DEFAULT NULL COMMENT '企业地址',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `storeupnum` int(11) DEFAULT NULL COMMENT '收藏数量',
  `clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `fabushijian` varchar(200) DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='招聘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhaopinxinxi`
--

LOCK TABLES `zhaopinxinxi` WRITE;
/*!40000 ALTER TABLE `zhaopinxinxi` DISABLE KEYS */;
INSERT INTO `zhaopinxinxi` VALUES (61,'2024-03-26 11:52:28','岗位名称1','file/zhaopinxinxiFengmian1.jpg,file/zhaopinxinxiFengmian2.jpg,file/zhaopinxinxiFengmian3.jpg','岗位类型1','地区1','招聘人数1','专业要求1','学历要求1','工作年限1',1,'工作时间1','岗位详情1','企业账号1','企业名称1','联系电话1','企业地址1','2024-03-26 19:52:28',1,1,'发布时间1'),(62,'2024-03-26 11:52:28','岗位名称2','file/zhaopinxinxiFengmian2.jpg,file/zhaopinxinxiFengmian3.jpg,file/zhaopinxinxiFengmian4.jpg','岗位类型2','地区2','招聘人数2','专业要求2','学历要求2','工作年限2',2,'工作时间2','岗位详情2','企业账号2','企业名称2','联系电话2','企业地址2','2024-03-26 19:52:28',2,2,'发布时间2'),(63,'2024-03-26 11:52:28','岗位名称3','file/zhaopinxinxiFengmian3.jpg,file/zhaopinxinxiFengmian4.jpg,file/zhaopinxinxiFengmian5.jpg','岗位类型3','地区3','招聘人数3','专业要求3','学历要求3','工作年限3',3,'工作时间3','岗位详情3','企业账号3','企业名称3','联系电话3','企业地址3','2024-03-26 19:52:28',3,3,'发布时间3'),(64,'2024-03-26 11:52:28','岗位名称4','file/zhaopinxinxiFengmian4.jpg,file/zhaopinxinxiFengmian5.jpg,file/zhaopinxinxiFengmian6.jpg','岗位类型4','地区4','招聘人数4','专业要求4','学历要求4','工作年限4',4,'工作时间4','岗位详情4','企业账号4','企业名称4','联系电话4','企业地址4','2024-03-26 19:52:28',4,4,'发布时间4'),(65,'2024-03-26 11:52:28','岗位名称5','file/zhaopinxinxiFengmian5.jpg,file/zhaopinxinxiFengmian6.jpg,file/zhaopinxinxiFengmian7.jpg','岗位类型5','地区5','招聘人数5','专业要求5','学历要求5','工作年限5',5,'工作时间5','岗位详情5','企业账号5','企业名称5','联系电话5','企业地址5','2024-03-26 19:52:28',5,5,'发布时间5'),(66,'2024-03-26 11:52:28','岗位名称6','file/zhaopinxinxiFengmian6.jpg,file/zhaopinxinxiFengmian7.jpg,file/zhaopinxinxiFengmian8.jpg','岗位类型6','地区6','招聘人数6','专业要求6','学历要求6','工作年限6',6,'工作时间6','岗位详情6','企业账号6','企业名称6','联系电话6','企业地址6','2024-03-26 19:52:28',6,6,'发布时间6');
/*!40000 ALTER TABLE `zhaopinxinxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-26 20:29:52
