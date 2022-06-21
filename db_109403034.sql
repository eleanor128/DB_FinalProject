CREATE DATABASE  IF NOT EXISTS `db_109403034` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_109403034`;
-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 192.168.46.128    Database: db_109403034
-- ------------------------------------------------------
-- Server version	8.0.29-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Category_table`
--

DROP TABLE IF EXISTS `Category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Category_table` (
  `category_id` int NOT NULL,
  `category_name` varchar(120) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category_table`
--

LOCK TABLES `Category_table` WRITE;
/*!40000 ALTER TABLE `Category_table` DISABLE KEYS */;
INSERT INTO `Category_table` VALUES (1,'科技'),(2,'遊戲'),(3,'教育'),(4,'地方創生'),(5,'空間'),(6,'飲食'),(7,'時尚'),(8,'音樂'),(9,'新春賀喜'),(10,'攝影');
/*!40000 ALTER TABLE `Category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comment_table`
--

DROP TABLE IF EXISTS `Comment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Comment_table` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `proposal_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `user_comment` text,
  `proposer_response` text,
  `status` tinyint DEFAULT '0',
  `create_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `member_id_idx` (`member_id`),
  KEY `proposal_id_comment_fk_idx` (`proposal_id`),
  CONSTRAINT `member_id_comment_fk` FOREIGN KEY (`member_id`) REFERENCES `Member_table` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proposal_id_comment_fk` FOREIGN KEY (`proposal_id`) REFERENCES `Proposal_table` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comment_table`
--

LOCK TABLES `Comment_table` WRITE;
/*!40000 ALTER TABLE `Comment_table` DISABLE KEYS */;
INSERT INTO `Comment_table` VALUES (1,5,9,'不好意思，我的贊助編號是P108681B 想問一下什麼時候會收到呢～！ 感謝','您好，禮盒已經送出，和豐店到店，應該已經抵達喔～ 感謝您對募資計畫的支持喔～ :)',1,'2019-08-14 23:31:53'),(2,1,10,'GoPlus 已更新連線方式，你們還支援24小時不斷線嗎','丹尼的影片 1 : 40 秒有講解如何連線 GoPlus 功能喔～',1,'2013-09-22 11:38:49'),(3,1,3,'請問當寶可夢執行背景應用程式or手機休眠時，247還會持續運作抓怪轉牌嗎?','',0,'2013-05-10 18:19:45'),(4,5,4,'讚！！每日寫日記','太棒了，歡迎在我們FB粉絲頁跟大家分享喔～',1,'2022-02-13 21:56:03'),(5,4,8,'加油！你的作品很有特色，如果size再完整一些，單價低一些應該很有市場的！','謝謝您的支持與鼓勵！！',1,'2021-01-06 08:39:49'),(6,10,1,'上次短褲沒跟到，這次上衣短褲共下買。','謝謝您的支持 : )',1,'2018-06-04 16:49:01'),(7,1,2,'我多訂一個能退嘛','要請您寄一封信到 support@zeczec.com',1,'2015-04-07 19:52:28'),(8,2,6,'請問軟糖保存期限多久呢？因為同事都是垃圾讓人很需要囤貨 :)','您好，保存期限是一年喔！希望可以陪你平靜渡過被垃圾氣到不行的每一天 :)',1,'2021-01-24 01:59:33'),(9,1,7,'有機會可以早點出貨嗎？6/1要等很久','',0,'2016-05-30 23:00:46'),(10,3,1,'請問留言tag兩個人的活動我不小心讓他的網頁跳出來該怎麼再操作一次，謝謝。','您好！已另外傳送嘖嘖站內信給您，再請查收',1,'2010-01-20 05:45:19'),(11,7,5,'我想取消贊助或退款，該怎麼做？','如果您所支持的計畫仍在計畫集資期間尚未結束，您可以與嘖嘖客服聯絡，我們會透過您贊助時的原付款方式退還你所支持的金額（不包含虛擬帳號轉帳交易手續費）。如果該計畫已經集資結...',1,'2016-07-18 23:00:00'),(12,8,3,'超商取貨會產生手續費、運費嗎?','',0,'2016-02-04 22:45:00'),(13,6,8,'商品有瑕疵怎麼辦？','在取得商品後未經剪標、清洗過，穿著過後，即發現商品有瑕疵，將協助退換貨。',1,'2017-07-26 19:50:26'),(14,9,2,'商品有提供保固嗎?','',0,'2018-10-20 02:59:33');
/*!40000 ALTER TABLE `Comment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FAQ_table`
--

DROP TABLE IF EXISTS `FAQ_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FAQ_table` (
  `FAQ_id` int NOT NULL,
  `proposal_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `question` varchar(120) DEFAULT NULL,
  `answer` text,
  `updated_at` date DEFAULT NULL,
  PRIMARY KEY (`FAQ_id`,`proposal_id`),
  KEY `proposal_id_FAQ_fk_idx` (`proposal_id`),
  CONSTRAINT `proposal_id_FAQ_fk` FOREIGN KEY (`proposal_id`) REFERENCES `Proposal_table` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FAQ_table`
--

LOCK TABLES `FAQ_table` WRITE;
/*!40000 ALTER TABLE `FAQ_table` DISABLE KEYS */;
INSERT INTO `FAQ_table` VALUES (1,4,8,'要如何下單？','先點擊想要贊助的方案之後，照著以下步驟 1、選擇您想要「信用卡付款」或是「ATM轉帳」2、選擇您要宅配或是超商取貨，並輸入對應的收件資訊 3、確認贊助人資訊，並按下立刻付款。 4、之後會根據付款方式給您相關的付款資料 5、付款後回到嘖嘖頁面，點選右上角選單的贊助紀錄，就可以確認剛剛是否付款成功囉！','2022-05-24'),(2,4,8,'請問何時會出貨？','預計於2022年7月初開始依訂單編號陸續出貨。','2022-05-24'),(3,1,7,'請問有什麼需要注意的呢？','由於新品PVC材質，於生產完成即封裝寄送，初次開啟會有些許味道屬於正常，收到後可先打開放置通風處即可消除。若有需清潔，可用中性清潔劑清洗乾淨並完全晾乾，切勿長時間曝曬於太陽下。','2022-05-24'),(4,2,6,'有多入之大宗採購需求該怎麼做？','歡迎加入LINE@好友搜尋「@550yisos」，將會有專人與您接洽喔！','2022-05-23'),(5,7,3,'付款方式有哪些？','目前開放ATM、信用卡。','2022-05-23'),(6,3,4,'可以用信用卡分期嗎？','【台灣的募資平台因應政府規定，均沒有提供分期付款的功能】不過，持卡者如果想以自己信卡來做【分期付款】這樣是可以的。但是，這樣就會有分期利率手續費的衍生（相關利率依每家銀行規範為準）所以，想要以分期付款的朋友，請你先與你持卡銀行確認相關資訊。','2022-05-23'),(7,10,1,'十月才能收到商品嗎？','事實上如果不受疫情或戰爭的影響~八月就能出貨了！目前確定八月最少可以出100組~先下單先拿到喔','2022-05-24'),(8,6,4,'有使用說明嗎?','請至粉絲專頁~魔術吸管~參考一下喔~','2022-05-15'),(9,6,4,'是否有分男女版型呢 ?','我們的版型皆為中性版型，中性版是男女皆適合喔！','2022-05-19'),(10,5,9,'可否寄送到國外？','目前我們的商品可以寄送到下列地區：香港(運費$250) / 澳門(運費$250) / 中國(運費$250) / 美國(運費$800) / 日本(運費$600)','2022-05-19');
/*!40000 ALTER TABLE `FAQ_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowingRecord_table`
--

DROP TABLE IF EXISTS `FollowingRecord_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `FollowingRecord_table` (
  `following_record_id` int NOT NULL,
  `member_id` int NOT NULL,
  `proposal_id` int NOT NULL,
  PRIMARY KEY (`following_record_id`),
  KEY `member_id_idx` (`member_id`),
  KEY `proposal_id_following_record_fk_idx` (`proposal_id`),
  CONSTRAINT `member_id_following_record_fk` FOREIGN KEY (`member_id`) REFERENCES `Member_table` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proposal_id_following_record_fk` FOREIGN KEY (`proposal_id`) REFERENCES `Proposal_table` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowingRecord_table`
--

LOCK TABLES `FollowingRecord_table` WRITE;
/*!40000 ALTER TABLE `FollowingRecord_table` DISABLE KEYS */;
INSERT INTO `FollowingRecord_table` VALUES (1,9,6),(2,10,1),(3,3,1),(4,4,5),(5,8,4),(6,1,10),(7,2,1),(8,6,2),(9,7,1),(10,1,3);
/*!40000 ALTER TABLE `FollowingRecord_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberCredential_table`
--

DROP TABLE IF EXISTS `MemberCredential_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `MemberCredential_table` (
  `member_credential_id` int NOT NULL AUTO_INCREMENT,
  `member_id` int NOT NULL,
  `hashed_password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`member_credential_id`),
  KEY `member_id_idx` (`member_id`),
  CONSTRAINT `member_id_member_credential_fk` FOREIGN KEY (`member_id`) REFERENCES `Member_table` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberCredential_table`
--

LOCK TABLES `MemberCredential_table` WRITE;
/*!40000 ALTER TABLE `MemberCredential_table` DISABLE KEYS */;
INSERT INTO `MemberCredential_table` VALUES (1,1,'5459ffea690882061cfa56fa9033278370e48de356c700637aad68d14f2ae0ae'),(2,2,'07703ba76ae595a212c8317146fb292fb773f34314a3708a6f3e916bbf6e499c'),(3,3,'1caf7cfa34bdb90fd7a332dfed5a5e0d1a153d6a164234aa98b7ba611b83abe7'),(4,4,'ea8ced964d6826e1eede67dccaea05e543e4bcf84ff06d6af8f7877413a91538'),(5,5,'7a09363a667de652e1666b0810219bb7886036dca13af909cd755c80df946365'),(6,6,'ccd108b762527fcdcdb8c5b6cad6480e9b81a5d92f29e6793d6865b274bc50dc'),(7,7,'a5c5e74448987538a8bffda3518f59e2f3785cf460d4f882a2c563af654fe13f'),(8,8,'1a4c96ddeda1e2bfc16abd7bd6f8a72dc416c10c824747cbe5b1f9cc20671c40'),(9,9,'e9c59dd5748d8c0be520b37658c8da542720916cc6d7ff627ad2ba0e76237bca'),(10,10,'5ad2e13f01b6c6597301b4dd8fa5b2a055c6e4245e84f63344f6bbb5c0f3c802');
/*!40000 ALTER TABLE `MemberCredential_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_table`
--

DROP TABLE IF EXISTS `Member_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Member_table` (
  `member_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `salt` char(64) NOT NULL,
  `gender` varchar(64) DEFAULT NULL,
  `birth_date` varchar(64) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member_table`
--

LOCK TABLES `Member_table` WRITE;
/*!40000 ALTER TABLE `Member_table` DISABLE KEYS */;
INSERT INTO `Member_table` VALUES (1,'毛若穎','0oplfZ16tyLX','女','1960-05-09','366 苗栗縣銅鑼鄉民權路31號','in.consequat@yahoo.com','921003614'),(2,'林芳岑','7gB%z9Svg8EW','女','2009-06-27','600 嘉義市東區世賢路24號','adipiscing.enim.mi@outlook.com','988008346'),(3,'胡素芝','JJQF0j%tkx3i','女','1963-08-03','325 桃園市龍潭區淮子埔一路29號','nullam.velit@yahoo.com','922830125'),(4,'童雅婷','Rv$uGmL&C!%g','女','2015-06-05','540 南投縣南投市三和一路14號','sed.auctor@hotmail.com','958351743'),(5,'賴麗萍','XcZg6Be^cU2y','女','1963-12-08','508 彰化縣和美鎮潭北路15號','sagittis.nullam@google.com','912587773'),(6,'黃志斌','aZjy*GvZt@s*','男','1961-03-02','711 臺南市歸仁區崙頂二街11號','nec.leo.morbi@protonmail.com','960105109'),(7,'廖松白','j8tI5!wG88PM','男','1996-08-12','411 臺中市太平區北田路14號','sociosqu.ad@yahoo.com','961749001'),(8,'徐嘉柏','n7UDOe0uspZk','男','1979-03-10','801 高雄市前金區自立二路18號','proin.non@protonmail.com','928735721'),(9,'李麗珠','wlmM33nAD@SR','女','1979-02-21','201 基隆市信義區義四路22號','arcu.vel.quam@hotmail.com','968169143'),(10,'施泓音','&@^ODhk0MH&l','男','1973-08-24','622 嘉義縣大林鎮早知31號','dui.quis.accumsan@google.com','970691667');
/*!40000 ALTER TABLE `Member_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_table_has_ProposalMember_table`
--

DROP TABLE IF EXISTS `Member_table_has_ProposalMember_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Member_table_has_ProposalMember_table` (
  `Member_table_member_id` int NOT NULL,
  `ProposalMember_table_proposal_member_id` int NOT NULL,
  PRIMARY KEY (`ProposalMember_table_proposal_member_id`),
  KEY `fk_Member_table_has_ProposalMember_table_ProposalMember_tab_idx` (`ProposalMember_table_proposal_member_id`),
  KEY `fk_Member_table_has_ProposalMember_table_Member_table1_idx` (`Member_table_member_id`),
  CONSTRAINT `fk_Member_table_has_ProposalMember_table_Member_table1` FOREIGN KEY (`Member_table_member_id`) REFERENCES `Member_table` (`member_id`),
  CONSTRAINT `fk_Member_table_has_ProposalMember_table_ProposalMember_table1` FOREIGN KEY (`ProposalMember_table_proposal_member_id`) REFERENCES `ProposalMember_table` (`proposal_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member_table_has_ProposalMember_table`
--

LOCK TABLES `Member_table_has_ProposalMember_table` WRITE;
/*!40000 ALTER TABLE `Member_table_has_ProposalMember_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member_table_has_ProposalMember_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member_table_has_Proposal_table`
--

DROP TABLE IF EXISTS `Member_table_has_Proposal_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Member_table_has_Proposal_table` (
  `Member_table_member_id` int NOT NULL,
  `Member_table_FollowingRecord_table_following_record_id` int NOT NULL,
  `Proposal_table_proposal_id` int NOT NULL,
  `Proposal_table_Category_table_category_id` int NOT NULL,
  PRIMARY KEY (`Member_table_member_id`,`Member_table_FollowingRecord_table_following_record_id`,`Proposal_table_proposal_id`,`Proposal_table_Category_table_category_id`),
  KEY `fk_Member_table_has_Proposal_table_Member_table1_idx` (`Member_table_member_id`,`Member_table_FollowingRecord_table_following_record_id`),
  KEY `proposal_id_Member_table_has_Proposal_table_Member_table1_f_idx` (`Member_table_FollowingRecord_table_following_record_id`),
  CONSTRAINT `fk_Member_table_has_Proposal_table_Member_table1` FOREIGN KEY (`Member_table_member_id`) REFERENCES `Member_table` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proposal_id_Member_table_has_Proposal_table_Member_table1_fk` FOREIGN KEY (`Member_table_FollowingRecord_table_following_record_id`) REFERENCES `Proposal_table` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member_table_has_Proposal_table`
--

LOCK TABLES `Member_table_has_Proposal_table` WRITE;
/*!40000 ALTER TABLE `Member_table_has_Proposal_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member_table_has_Proposal_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProposalMember_table`
--

DROP TABLE IF EXISTS `ProposalMember_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ProposalMember_table` (
  `proposal_member_id` int NOT NULL,
  `member_id` int DEFAULT NULL,
  `proposal_id` int DEFAULT NULL,
  PRIMARY KEY (`proposal_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProposalMember_table`
--

LOCK TABLES `ProposalMember_table` WRITE;
/*!40000 ALTER TABLE `ProposalMember_table` DISABLE KEYS */;
INSERT INTO `ProposalMember_table` VALUES (1,8,4),(2,7,1),(3,6,2),(4,3,7),(5,4,3),(6,1,10),(7,4,6),(8,3,6),(9,9,5),(10,2,8),(11,10,9),(12,8,10);
/*!40000 ALTER TABLE `ProposalMember_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProposalOption_table`
--

DROP TABLE IF EXISTS `ProposalOption_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ProposalOption_table` (
  `proposal_option_id` int NOT NULL,
  `proposal_id` int NOT NULL,
  `title` varchar(120) NOT NULL,
  `price` int NOT NULL,
  `description` text,
  PRIMARY KEY (`proposal_option_id`,`proposal_id`),
  KEY `proposal_id_proposal_option_fk_idx` (`proposal_id`),
  CONSTRAINT `proposal_id_proposal_option_fk` FOREIGN KEY (`proposal_id`) REFERENCES `Proposal_table` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProposalOption_table`
--

LOCK TABLES `ProposalOption_table` WRITE;
/*!40000 ALTER TABLE `ProposalOption_table` DISABLE KEYS */;
INSERT INTO `ProposalOption_table` VALUES (1,1,'247 早鳥超值組',2290,'內容物包含：247 Catcher x 1 自動點擊器 x 1 usb - C 充電線 x 1 專屬收納包 x 1 247 Catcher 說明書 x 1【重要提醒】台灣本島地區免運費，外島地區收額外運費。全球地區皆可寄，運費於結帳時顯示。若需統編請輸入收件資訊時備註。'),(2,3,'單組 體驗初學',1790,'Ａ數學分析／Ｂ邏輯推演／Ｃ策略規劃：３組擇１'),(3,9,'【好評追加！超早鳥衣褲組合】',3899,'Movement 全情境短T X1 +  Movement 全情境短褲 X1 +  ▲未來售價：5060，現省1161'),(4,5,'小資支持 12個月每月茶包禮',800,'【感謝禮】回饋您對我們計畫的支持，我們每個月會寄一包茶葉體驗包 + 電子刊物'),(5,10,'75mm 超級早鳥價格',18800,'75mm F1.8 Anamorphic 1.33X Lens X1'),(6,8,'【 嘖嘖超早鳥優惠 】 未來售價 $1790｜現省300元',1490,'金字塔、諾克斯碉堡、龍之屋（三選一） ×1 款'),(7,6,'x5 Project 台灣茶葉禮盒 | 邀請您一起用45款台灣茶重新認識『在地』',1888,'想參與STAY最有名的親子活動嗎，此為一大一小體驗邀請，歡迎爸媽帶著你的孩子，或是孩子帶著你最愛的爸媽，參加我們90分鐘的專屬親子派對，和我們一起慶祝STAY桃園水岸店的開幕'),(8,7,'【只想聽歌組】',720,'【謎路人 2022 It\'s All I Have】 概念專輯 1張'),(9,4,'原畫畫作一件10號',15000,'原畫畫作'),(10,2,'【嘖嘖價】1 入 83 折',690,'Kimóo情緒平衡軟糖 1 盒');
/*!40000 ALTER TABLE `ProposalOption_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proposal_table`
--

DROP TABLE IF EXISTS `Proposal_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Proposal_table` (
  `proposal_id` int NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `title` varchar(120) NOT NULL,
  `content` text,
  `goal` int NOT NULL,
  `status` int DEFAULT '1',
  `amount` int DEFAULT '0',
  `viewed_num` int DEFAULT '0',
  `create_date` timestamp NOT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `is_deactivated` tinyint DEFAULT '0',
  PRIMARY KEY (`proposal_id`),
  KEY `catogery_idx` (`category_id`),
  CONSTRAINT `catogery` FOREIGN KEY (`category_id`) REFERENCES `Category_table` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proposal_table`
--

LOCK TABLES `Proposal_table` WRITE;
/*!40000 ALTER TABLE `Proposal_table` DISABLE KEYS */;
INSERT INTO `Proposal_table` VALUES (1,1,'《 247 Catcher 》｜ 最全面的【抓寶 & 打團】輔助道具','大家好！我們是 PhotoFast 銀箭資訊。今年，我們創造出了一款能符合 Pokemon GO 玩家需求的抓寶利器！不只能突破現有的連線一小時限制，更讓您能夠在打團戰或攻道館時輕鬆應戰！',100000,3,2393696,1150,'2022-04-06 07:00:00','2022-07-05 07:00:00',0),(2,6,'【最後 3 天】台灣首發輕機能舒壓軟糖 ✧ Kimóo 情緒平衡軟糖 ✧ 日本專利「特濃舒壓ＧＡＢＡ」Ｘ「快樂Ｌ色氨酸」，面對再多鳥事也能有平靜好心情！','喜劇演員的起笑配方！募資前百人實測 → 75.8% 有感回饋：「吃了真的有鬆～」——— 你的心累了嗎？\"Not being O.K. is O.K.\"\" 沒關係，是情緒啊！吃一顆回到內在平靜小宇宙！\"',200000,2,377200,251,'2022-03-23 07:00:00','2022-06-21 07:00:00',0),(3,3,'數感宇宙探索課程｜為國小生打造的生活數學 DIY 影音學習組｜給孩子一堂不一樣的數學課','本課程結合數感實驗室逾 10 年數學教育經驗、史丹佛大學「成長型數學思維」理論。內容針對國小中年級以上的孩子，強調具體、跨域、手作、情境。鼓勵孩子探索思考，讓孩子愛上數學。',500000,2,3737138,641,'2022-05-04 07:00:00','2022-08-02 07:00:00',0),(4,7,'『Organs without body 2014 S/S 服裝秀』','「ORGANS WITHOUT BODY 」為 藝術家「安地羊 Andy Yen」2012創立之服裝品牌。',100000,3,5050,4,'2013-08-21 07:00:00','2013-11-19 08:00:00',1),(5,4,'x5 Project 台灣茶葉禮盒 | 邀請您一起用45款台灣茶重新認識『在地』','本次募資計畫是由茶品牌 Three Leafs Tea 透過45款茶做為與消費者連結的媒介，結合茶與藝術向世界說台灣。以「人、事、物、學、遊」五個層面介紹清晰易懂的台灣在地文化故事。',50000,3,852482,194,'2021-12-12 08:00:00','2022-03-12 08:00:00',1),(6,5,'樂待STAY 桃園水岸店 on Line 募資企劃-我們讓孩子樂呆 父母樂待','',943038,2,282244,63,'2022-05-25 07:00:00','2022-08-23 07:00:00',0),(7,3,'謎路⼈Way of Puzzle 2022【It\'s All I Have】專輯發⾏企劃','',400000,2,45651,31,'2022-05-23 07:00:00','2022-08-21 07:00:00',0),(8,2,'邏輯解謎｜密室逃脫桌遊 破解古老的秘密','益智解謎新視野，結合密室逃脫與立體拼圖的概念，打造一個全新的益智桌遊。你可以舒適地在家中享受愉快的動腦時光，將大腦發揮至極限。',100000,1,0,0,'2022-03-22 07:00:00',NULL,0),(9,10,'SIRUI 75mm ​變形鏡頭','還停留在變形鏡頭既沉且大的印象中？還以為變形鏡頭是高昂的貴族鏡頭？不！消費級別的變形鏡頭世界早已誕生——思銳1.33X寬銀幕變形鏡頭！目前，思銳已推出24mm/F2.8、35mm/F1.8、50mm/F1.8三個焦段，其以更小的體積、更高的性價比、更強的電影質感，讓大眾影友真正能無負擔地接觸變形鏡頭。',100000,3,532600,200,'2021-07-20 07:00:00','2021-10-18 07:00:00',1),(10,1,'【 HOMI｜地表最強全情境短袖 & EAM 登山防曬衣 】featuring CORDURA fabric / MIT 設計製造！','ㄧ件夏天的短袖可以有什麼不同？CORDURA 柔軟強韌，非塗層物理涼感，抗UV 前所未有的透氣調節，MIT 質感獨家設計製造 # 針對夏天的穿著環境，更舒適的穿著體驗而衍生出 HOMI 的第一件短袖物件 Movement T shirt，利用材料及設計創造出ㄧ件可以在夏日的不同環境下，隨時給你舒適機能與質感外型的短袖！',100000,3,1556942,3148,'2022-05-24 07:00:00','2022-08-22 07:00:00',1);
/*!40000 ALTER TABLE `Proposal_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Proposal_table_has_ProposalMember_table`
--

DROP TABLE IF EXISTS `Proposal_table_has_ProposalMember_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Proposal_table_has_ProposalMember_table` (
  `Proposal_table_proposal_id` int NOT NULL AUTO_INCREMENT,
  `ProposalMember_table_proposal_member_id` int NOT NULL,
  PRIMARY KEY (`ProposalMember_table_proposal_member_id`),
  KEY `fk_Proposal_table_has_ProposalMember_table_ProposalMember_t_idx` (`ProposalMember_table_proposal_member_id`),
  KEY `fk_Proposal_table_has_ProposalMember_table_Proposal_table1_idx` (`Proposal_table_proposal_id`),
  CONSTRAINT `fk_Proposal_table_has_ProposalMember_table_ProposalMember_tab1` FOREIGN KEY (`ProposalMember_table_proposal_member_id`) REFERENCES `ProposalMember_table` (`proposal_member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proposal_id_Proposal_table_has_ProposalMember_table_fk` FOREIGN KEY (`Proposal_table_proposal_id`) REFERENCES `Proposal_table` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Proposal_table_has_ProposalMember_table`
--

LOCK TABLES `Proposal_table_has_ProposalMember_table` WRITE;
/*!40000 ALTER TABLE `Proposal_table_has_ProposalMember_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `Proposal_table_has_ProposalMember_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SponsorRecord_table`
--

DROP TABLE IF EXISTS `SponsorRecord_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `SponsorRecord_table` (
  `sponsor_record_id` int NOT NULL,
  `member_id` int NOT NULL,
  `proposal_id` int NOT NULL,
  `proposal_option_id` int NOT NULL,
  `amount` int NOT NULL,
  `create_at` date DEFAULT NULL,
  PRIMARY KEY (`sponsor_record_id`),
  KEY `member_id_sponsor_record_fk` (`member_id`),
  KEY `proposal_id_sponsor_record_fk_idx` (`proposal_id`),
  CONSTRAINT `member_id_sponsor_record_fk` FOREIGN KEY (`member_id`) REFERENCES `Member_table` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `proposal_id_sponsor_record_fk` FOREIGN KEY (`proposal_id`) REFERENCES `Proposal_table` (`proposal_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SponsorRecord_table`
--

LOCK TABLES `SponsorRecord_table` WRITE;
/*!40000 ALTER TABLE `SponsorRecord_table` DISABLE KEYS */;
INSERT INTO `SponsorRecord_table` VALUES (1,9,5,4,800,'2013-03-29'),(2,10,1,1,2290,'2012-10-29'),(3,3,1,1,2290,'2017-08-27'),(4,4,5,4,800,'2012-06-26'),(5,8,4,9,15000,'2015-11-09'),(6,1,10,5,18800,'2020-08-25'),(7,2,1,1,2290,'2021-06-04'),(8,6,2,10,690,'2019-09-30'),(9,7,1,1,2290,'2013-12-29'),(10,1,3,2,1790,'2019-04-02'),(11,5,7,8,720,'2015-09-06'),(12,2,6,7,1888,'2012-04-27'),(13,7,8,6,1490,'2011-09-05'),(14,9,4,9,15000,'2019-12-03');
/*!40000 ALTER TABLE `SponsorRecord_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_109403034'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateComment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_CreateComment`(
	IN in_MemberId int, in_ProposalId int, in_UserComment text,
    OUT out_AffectedRowNum int
)
BEGIN
	IF(EXISTS (SELECT member_id FROM Member_table WHERE in_MemberId = member_id))
    THEN
		INSERT INTO Comment_table(proposal_id, member_id, user_comment, create_at)
		VALUES (in_ProposalId, in_MemberId, in_UserComment, CURRENT_TIMESTAMP());
	END IF;
    
	SELECT row_count() INTO out_AffectedRowNum;
    
    SELECT proposal_id, member_id, user_comment, create_at
    FROM Comment_table
    WHERE create_at = CURRENT_TIMESTAMP();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_CreateProposal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_CreateProposal`(
	IN in_MemberId int, in_Title varchar(120), 
	   in_Content text, in_Goal int, in_Category int,
    OUT out_AffectedRowNum int
)
BEGIN

	IF(EXISTS (SELECT member_id FROM Member_table WHERE in_MemberId = member_id))
    THEN
		INSERT INTO Proposal_table(title, content, goal, category_id, create_date, due_date)
		VALUES (in_Title, in_Content, in_Goal, in_Category, CURRENT_TIMESTAMP(), DATE_ADD(CURRENT_TIMESTAMP(), INTERVAL 90 DAY));
	END IF;
    
    SELECT row_count() INTO out_AffectedRowNum;
    
    SELECT 
		proposal_id, title AS proposal_title, 
        content AS proposal_content, amount, FORMAT(goal, 0) AS goal, status, viewed_num,
        create_date, due_date, category_name AS category
    FROM Proposal_table JOIN Category_table
    ON Proposal_table.category_id = Category_table.category_id
    ORDER BY proposal_id DESC LIMIT 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_DeleteMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_DeleteMember`(
	IN in_MemberId int,
    OUT out_AffectedRowNum int 
)
BEGIN
	DELETE FROM Member_table 
    WHERE member_id = in_MemberId; 
	
	SELECT row_count() INTO out_AffectedRowNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetFollowedProposalsByMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_GetFollowedProposalsByMember`(
	IN in_MemberId int, 
    OUT out_NumOfRow int
    
)
BEGIN
	SELECT member_id, title AS proposal_title, FORMAT(amount, 0) AS proposal_amount, FORMAT(goal, 0) AS proposal_goal
    FROM FollowingRecord_table join Proposal_table
    ON FollowingRecord_table.proposal_id = Proposal_table.proposal_id
    WHERE member_id = in_MemberId;
    
    SELECT found_rows() INTO out_NumOfRow;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetHistorySponserByMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_GetHistorySponserByMember`(
	IN in_MemberId int,
    OUT out_NumOfRow int
)
BEGIN
    SELECT
		member_id, 
		SponsorRecord_table.proposal_id,
        Proposal_table.title AS proposal_title,
        ProposalOption_table.title AS proposal_option_title,
        FORMAT(SponsorRecord_table.amount, 0) AS amount,
        Proposal_table.status
        
    FROM Proposal_table JOIN SponsorRecord_table
    ON Proposal_table.proposal_id = SponsorRecord_table.proposal_id 
    JOIN ProposalOption_table
    ON Proposal_table.proposal_id = SponsorRecord_table.proposal_id
    WHERE SponsorRecord_table.member_id = in_MemberId
    AND SponsorRecord_table.proposal_option_id = ProposalOption_table.proposal_option_id;
    
    SELECT found_rows() INTO out_NumOfRow;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProposalByCompletionRate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_GetProposalByCompletionRate`(
	IN in_Ratio float,
    OUT out_NumOfRow int
)
BEGIN
	SELECT proposal_id, title AS proposal_title, FORMAT(amount, 0) AS amount, FORMAT(goal, 0) AS goal, amount/goal AS ratio
    FROM Proposal_table
	WHERE amount/goal >= in_Ratio;
	SELECT found_rows() INTO out_NumOfRow;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetProposalsByKeyworrd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_GetProposalsByKeyworrd`(
	 IN in_Keyword varchar(64),
     OUT out_NumOfRow int
)
BEGIN
    
    SELECT proposal_id, title AS proposal_title, due_date, FORMAT(amount, 0) AS amount
    FROM Proposal_table
	WHERE title LIKE concat('%',in_Keyword,'%');
    
	SELECT found_rows() INTO out_NumOfRow;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetRecommendedProposals` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_GetRecommendedProposals`(
	IN in_MemberId int,
    OUT out_NumOfRow int
)
BEGIN

	IF(
		NOT EXISTS (SELECT member_id FROM SponsorRecord_table WHERE in_MemberId = member_id)
	)
	
	THEN
		SELECT proposal_id, title AS proposal_title, status, viewed_num
		FROM Proposal_table 
        WHERE status = 2
		ORDER BY viewed_num DESC
		LIMIT 5;
        
	SELECT found_rows() INTO out_NumOfRow;
END if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_GetUnrepliedComments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_GetUnrepliedComments`(
	IN in_MemberId int,
    OUT out_NumOfRow int
)
BEGIN
	-- SELECT member_id, proposal_id, title AS
	SELECT 
		ProposalMember_table.member_id, 
        Proposal_table.proposal_id, 
        Proposal_table.title AS proposal_title,
        comment_id,
        user_comment AS member_comment,
        create_at AS comment_time,
        proposer_response
        
    FROM ProposalMember_table 
    JOIN Proposal_table
    ON ProposalMember_table.proposal_id = Proposal_table.proposal_id
    JOIN Comment_table
    ON Proposal_table.proposal_id = Comment_table.proposal_id
    
    
    WHERE ProposalMember_table.member_id = in_MemberId
    AND Comment_table.status = 0;
    
	SELECT found_rows() INTO out_NumOfRow;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_Login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_Login`(
	IN in_Email varchar(64), in_Hashed_password varchar(200),
    OUT status_code int
)
BEGIN
	DECLARE tmp INTEGER;
	
    SET tmp = 
		IF(
			EXISTS (SELECT email FROM Member_table WHERE in_Email = Member_table.email), 
				IF((EXISTS (SELECT hashed_password 
		 			FROM MemberCredential_table JOIN Member_table
                     ON MemberCredential_table.member_id = Member_table.member_id
                     WHERE hashed_password = in_Hashed_password)),
					"1","2"),
					"3"
			);
                
   SELECT tmp INTO status_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_RegisterMember` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_RegisterMember`(
	IN in_Name varchar(64),
	   in_HashedPwd varchar(200),
       in_Salt char(64),
       in_Gender varchar(64),
       in_BirthDate date,
	   in_Email varchar(64),
       in_Phone varchar(64),
	   in_Address varchar(255),
    OUT out_AffectedRowNum int
    
)
BEGIN
	DECLARE ID INTEGER;

	INSERT INTO Member_table(name, salt, gender, birth_date, email, phone, address)
	VALUES (in_Name, in_Salt, in_Gender, in_BirthDate, in_Email, in_Phone, in_Address);
	

    SET ID = (SELECT MAX(member_id) FROM Member_table);
    INSERT INTO MemberCredential_table( member_id, hashed_password)
    VALUES (ID, in_HashedPwd);
	
    SELECT row_count() INTO out_AffectedRowNum;
    
    SELECT 
		Member_table.member_id,
        name,
        email,
        hashed_password AS password,
        salt,
        phone,
        address
    FROM Member_table JOIN MemberCredential_table
    ON Member_table.member_id = MemberCredential_table.member_id
    ORDER BY member_id DESC LIMIT 1;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdateProposalStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_UpdateProposalStatus`(
	IN in_ProposalId int, in_Status int,
    OUT out_AffectedRowNum int 
)
BEGIN
	UPDATE Proposal_table
    SET status = in_Status
    WHERE proposal_id = in_ProposalId
    AND status = in_Status-1
    AND status < 3;
    
	SELECT row_count() INTO out_AffectedRowNum;

	SELECT proposal_id, status
    FROM Proposal_table
	WHERE proposal_id = in_ProposalId;
    
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_UpdatePwd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`109403034`@`192.168.46.1` PROCEDURE `sp_UpdatePwd`(
	IN in_MemberId int, in_HashedPwd varchar(200), in_Salt char(64),
    OUT out_AffectedRowNum int 
)
BEGIN
	UPDATE Member_table
    SET salt = in_Salt
    WHERE in_MemberId = member_id;

	UPDATE MemberCredential_table
	SET hashed_password = in_HashedPwd
	WHERE in_MemberId = member_id;
    
    SELECT row_count() INTO out_AffectedRowNum;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-11 12:27:55
