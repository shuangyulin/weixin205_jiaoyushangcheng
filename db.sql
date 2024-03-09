-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm2trwo
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
-- Current Database: `ssm2trwo`
--

/*!40000 DROP DATABASE IF EXISTS `ssm2trwo`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm2trwo` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm2trwo`;

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
INSERT INTO `config` VALUES (1,'picture1','upload/1646539957205.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) NOT NULL COMMENT '订单编号',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `xiadanbeizhu` longtext COMMENT '下单备注',
  `xiadanshijian` date DEFAULT NULL COMMENT '下单时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539662711 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (51,'2022-03-06 04:04:20','1111111111','课程名称1','upload/dingdanxinxi_kechengfengmian1.jpg','类型1',1,'工号1','教师姓名1','下单备注1','2022-03-06','学号1','姓名1','是','','未支付',1),(52,'2022-03-06 04:04:20','2222222222','课程名称2','upload/dingdanxinxi_kechengfengmian2.jpg','类型2',2,'工号2','教师姓名2','下单备注2','2022-03-06','学号2','姓名2','是','','未支付',2),(53,'2022-03-06 04:04:20','3333333333','课程名称3','upload/dingdanxinxi_kechengfengmian3.jpg','类型3',3,'工号3','教师姓名3','下单备注3','2022-03-06','学号3','姓名3','是','','未支付',3),(54,'2022-03-06 04:04:20','4444444444','课程名称4','upload/dingdanxinxi_kechengfengmian4.jpg','类型4',4,'工号4','教师姓名4','下单备注4','2022-03-06','学号4','姓名4','是','','未支付',4),(55,'2022-03-06 04:04:20','5555555555','课程名称5','upload/dingdanxinxi_kechengfengmian5.jpg','类型5',5,'工号5','教师姓名5','下单备注5','2022-03-06','学号5','姓名5','是','','未支付',5),(56,'2022-03-06 04:04:20','6666666666','课程名称6','upload/dingdanxinxi_kechengfengmian6.jpg','类型6',6,'工号6','教师姓名6','下单备注6','2022-03-06','学号6','姓名6','是','','未支付',6),(1646539662710,'2022-03-06 04:07:41','1646539637026','课程名称3','upload/kechengxinxi_kechengfengmian3.jpg','类型3',3,'工号3','教师姓名3','这里是学生购买课程的地方，然后支付后教师再发送付费的课程给学生','2022-03-06','11','张三','是','通过','已支付',1646539583714);
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539634001 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
INSERT INTO `discusskechengxinxi` VALUES (91,'2022-03-06 04:04:20',1,1,'用户名1','评论内容1','回复内容1'),(92,'2022-03-06 04:04:20',2,2,'用户名2','评论内容2','回复内容2'),(93,'2022-03-06 04:04:20',3,3,'用户名3','评论内容3','回复内容3'),(94,'2022-03-06 04:04:20',4,4,'用户名4','评论内容4','回复内容4'),(95,'2022-03-06 04:04:20',5,5,'用户名5','评论内容5','回复内容5'),(96,'2022-03-06 04:04:20',6,6,'用户名6','评论内容6','回复内容6'),(1646539634000,'2022-03-06 04:07:13',33,1646539583714,'11','学生也可以在这里评论','');
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fufeikecheng`
--

DROP TABLE IF EXISTS `fufeikecheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fufeikecheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `fufeineirong` longtext COMMENT '付费内容',
  `fufeishipin` varchar(200) DEFAULT NULL COMMENT '付费视频',
  `zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '注意事项',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fasongriqi` date DEFAULT NULL COMMENT '发送日期',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646540024325 DEFAULT CHARSET=utf8 COMMENT='付费课程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fufeikecheng`
--

LOCK TABLES `fufeikecheng` WRITE;
/*!40000 ALTER TABLE `fufeikecheng` DISABLE KEYS */;
INSERT INTO `fufeikecheng` VALUES (61,'2022-03-06 04:04:20','课程名称1','upload/fufeikecheng_kechengfengmian1.jpg','类型1','付费内容1','','注意事项1','学号1','姓名1','2022-03-06','工号1','教师姓名1',1),(62,'2022-03-06 04:04:20','课程名称2','upload/fufeikecheng_kechengfengmian2.jpg','类型2','付费内容2','','注意事项2','学号2','姓名2','2022-03-06','工号2','教师姓名2',2),(63,'2022-03-06 04:04:20','课程名称3','upload/fufeikecheng_kechengfengmian3.jpg','类型3','付费内容3','','注意事项3','学号3','姓名3','2022-03-06','工号3','教师姓名3',3),(64,'2022-03-06 04:04:20','课程名称4','upload/fufeikecheng_kechengfengmian4.jpg','类型4','付费内容4','','注意事项4','学号4','姓名4','2022-03-06','工号4','教师姓名4',4),(65,'2022-03-06 04:04:20','课程名称5','upload/fufeikecheng_kechengfengmian5.jpg','类型5','付费内容5','','注意事项5','学号5','姓名5','2022-03-06','工号5','教师姓名5',5),(66,'2022-03-06 04:04:20','课程名称6','upload/fufeikecheng_kechengfengmian6.jpg','类型6','付费内容6','','注意事项6','学号6','姓名6','2022-03-06','工号6','教师姓名6',6),(1646540024324,'2022-03-06 04:13:43','课程名称3','upload/kechengxinxi_kechengfengmian3.jpg','类型3','<p>这里输入付费的课程内容</p><p><img src=\"http://localhost:8080/ssm2trwo/upload/1646540014002.jpg\"></p>','upload/1646540021273.mp4','注意重点','11','张三','2022-03-06','工号3','教师姓名3',1646539583714);
/*!40000 ALTER TABLE `fufeikecheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `lianxishouji` varchar(200) DEFAULT NULL COMMENT '联系手机',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539729029 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-03-06 04:04:20','工号1','123456','教师姓名1','男','773890001@qq.com','13823888881','upload/jiaoshi_xiangpian1.jpg','是',''),(22,'2022-03-06 04:04:20','工号2','123456','教师姓名2','男','773890002@qq.com','13823888882','upload/jiaoshi_xiangpian2.jpg','是',''),(23,'2022-03-06 04:04:20','工号3','123456','教师姓名3','男','773890003@qq.com','13823888883','upload/jiaoshi_xiangpian3.jpg','是',''),(24,'2022-03-06 04:04:20','工号4','123456','教师姓名4','男','773890004@qq.com','13823888884','upload/jiaoshi_xiangpian4.jpg','是',''),(25,'2022-03-06 04:04:20','工号5','123456','教师姓名5','男','773890005@qq.com','13823888885','upload/jiaoshi_xiangpian5.jpg','是',''),(26,'2022-03-06 04:04:20','工号6','123456','教师姓名6','男','773890006@qq.com','13823888886','upload/jiaoshi_xiangpian6.jpg','是',''),(1646539729028,'2022-03-06 04:08:49','22','22','李四','女','133@163.com','13333333333','upload/1646539787192.png','是','教师注册后要管理员审核通过后才能登陆');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) NOT NULL COMMENT '课程名称',
  `kechengfengmian` varchar(200) DEFAULT NULL COMMENT '课程封面',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `kechengjianjie` longtext COMMENT '课程简介',
  `kechengneirong` longtext COMMENT '课程内容',
  `kechengshipin` varchar(200) DEFAULT NULL COMMENT '课程视频',
  `zhongdiannandian` varchar(200) DEFAULT NULL COMMENT '重点难点',
  `jiage` int(11) DEFAULT NULL COMMENT '价格',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539860720 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (31,'2022-03-06 04:04:20','课程名称1','upload/kechengxinxi_kechengfengmian1.jpg','类型1','课程简介1','课程内容1','','重点难点1',1,'工号1','教师姓名1','2022-03-06','是',''),(32,'2022-03-06 04:04:20','课程名称2','upload/kechengxinxi_kechengfengmian2.jpg','类型2','课程简介2','课程内容2','','重点难点2',2,'工号2','教师姓名2','2022-03-06','是',''),(33,'2022-03-06 04:04:20','课程名称3','upload/kechengxinxi_kechengfengmian3.jpg','类型3','课程简介3','课程内容3','','重点难点3',3,'工号3','教师姓名3','2022-03-06','是',''),(34,'2022-03-06 04:04:20','课程名称4','upload/kechengxinxi_kechengfengmian4.jpg','类型4','课程简介4','课程内容4','','重点难点4',4,'工号4','教师姓名4','2022-03-06','是',''),(35,'2022-03-06 04:04:20','课程名称5','upload/kechengxinxi_kechengfengmian5.jpg','类型5','课程简介5','课程内容5','','重点难点5',5,'工号5','教师姓名5','2022-03-06','是',''),(36,'2022-03-06 04:04:20','课程名称6','upload/kechengxinxi_kechengfengmian6.jpg','类型6','课程简介6','课程内容6','','重点难点6',6,'工号6','教师姓名6','2022-03-06','是',''),(1646539860719,'2022-03-06 04:10:59','这里发布课程','upload/1646539819859.jpg','外语类','这里输入课程的简介','<p>这里输入课程的内容，还可以适当的插入图片</p><p><img src=\"http://localhost:8080/ssm2trwo/upload/1646539847040.jpg\"></p>','upload/1646539858812.mp4','这里备注重点',88,'22','李四','2022-03-06','是','教师发布的课程也要管理员审核后才能在移动端购买');
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leixing`
--

DROP TABLE IF EXISTS `leixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539771663 DEFAULT CHARSET=utf8 COMMENT='类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leixing`
--

LOCK TABLES `leixing` WRITE;
/*!40000 ALTER TABLE `leixing` DISABLE KEYS */;
INSERT INTO `leixing` VALUES (41,'2022-03-06 04:04:20','类型1'),(42,'2022-03-06 04:04:20','类型2'),(43,'2022-03-06 04:04:20','类型3'),(44,'2022-03-06 04:04:20','类型4'),(45,'2022-03-06 04:04:20','类型5'),(46,'2022-03-06 04:04:20','类型6'),(1646539771662,'2022-03-06 04:09:31','外语类');
/*!40000 ALTER TABLE `leixing` ENABLE KEYS */;
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
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539949757 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (83,'2022-03-06 04:04:20','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(84,'2022-03-06 04:04:20','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(85,'2022-03-06 04:04:20','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(86,'2022-03-06 04:04:20','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>'),(1646539949756,'2022-03-06 04:12:29','这里是发布公告信息的地方','公告的简介','upload/1646539936495.jpg','<p>公告的内容</p><p><img src=\"http://localhost:8080/ssm2trwo/upload/1646539948468.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539620489 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1646539620488,'2022-03-06 04:07:00',1646539583714,33,'kechengxinxi','课程名称3','upload/kechengxinxi_kechengfengmian3.jpg','1',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1646539583714,'11','xuesheng','学生','6cizhssu5aygimkrlev027zpw6xqkheb','2022-03-06 04:06:27','2022-03-06 05:06:28'),(2,1,'abo','users','管理员','am2cnrjfz37e9wg9ey341in38rrv1mg6','2022-03-06 04:08:58','2022-03-06 05:11:13'),(3,1646539729028,'22','jiaoshi','教师','pil42g61ubfnfj520yxpez0bdptnfab7','2022-03-06 04:09:35','2022-03-06 05:09:35'),(4,23,'工号3','jiaoshi','教师','ah8ec0yr3zmg0jt8soq07syjkhw8xqp0','2022-03-06 04:12:46','2022-03-06 05:12:46');
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
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-06 04:04:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `xiangpian` varchar(200) DEFAULT NULL COMMENT '相片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646539583715 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-06 04:04:20','学号1','123456','姓名1','男','773890001@qq.com','13823888881','upload/xuesheng_xiangpian1.jpg'),(12,'2022-03-06 04:04:20','学号2','123456','姓名2','男','773890002@qq.com','13823888882','upload/xuesheng_xiangpian2.jpg'),(13,'2022-03-06 04:04:20','学号3','123456','姓名3','男','773890003@qq.com','13823888883','upload/xuesheng_xiangpian3.jpg'),(14,'2022-03-06 04:04:20','学号4','123456','姓名4','男','773890004@qq.com','13823888884','upload/xuesheng_xiangpian4.jpg'),(15,'2022-03-06 04:04:20','学号5','123456','姓名5','男','773890005@qq.com','13823888885','upload/xuesheng_xiangpian5.jpg'),(16,'2022-03-06 04:04:20','学号6','123456','姓名6','男','773890006@qq.com','13823888886','upload/xuesheng_xiangpian6.jpg'),(1646539583714,'2022-03-06 04:06:23','11','11','张三','男','131@163.com','13111111111','upload/1646539602198.png');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-09 20:40:25
