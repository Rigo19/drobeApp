-- MySQL dump 10.13  Distrib 9.2.0, for macos14.7 (x86_64)
--
-- Host: localhost    Database: drobeApp
-- ------------------------------------------------------
-- Server version	9.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ArticlesOfClothing`
--

DROP TABLE IF EXISTS `ArticlesOfClothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ArticlesOfClothing` (
  `clothingArticleID` int NOT NULL AUTO_INCREMENT,
  `clothingArticleName` varchar(50) NOT NULL,
  `clothingTypeID` int NOT NULL,
  `clothingType` varchar(50) NOT NULL,
  `clothingSubtypeID` int NOT NULL,
  `clothingSubtype` varchar(50) NOT NULL,
  `userID` int NOT NULL,
  `timeAdded` timestamp NOT NULL,
  `numberOfOutfitsAssociatedWith` int NOT NULL,
  PRIMARY KEY (`clothingArticleID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArticlesOfClothing`
--

LOCK TABLES `ArticlesOfClothing` WRITE;
/*!40000 ALTER TABLE `ArticlesOfClothing` DISABLE KEYS */;
INSERT INTO `ArticlesOfClothing` VALUES (1,'blake is awsome',1,'Tops',1,'T-Shirt',1,'2024-12-02 23:58:35',0);
/*!40000 ALTER TABLE `ArticlesOfClothing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArticlesToImage`
--

DROP TABLE IF EXISTS `ArticlesToImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ArticlesToImage` (
  `clothingArticleID` int NOT NULL,
  `Image` mediumblob NOT NULL,
  PRIMARY KEY (`clothingArticleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArticlesToImage`
--

LOCK TABLES `ArticlesToImage` WRITE;
/*!40000 ALTER TABLE `ArticlesToImage` DISABLE KEYS */;
INSERT INTO `ArticlesToImage` VALUES (1,_binary 'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0					\"\"*%%*424DD\\					\"\"*%%*424DD\\ÿ\Â\088\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0	ÿ\Ú\0\0\0\0\0şş\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\03ù¯cÒ‰\0\0\áùï®\0\0\0\0\0\0\0\0\0\0\0\0ü\Ï\ò6¿°~«\ô=$$M2ù\åßŒş«ıO¨$\0\0\0\0\0\0\0\0\0\0\0\0F^\'á¿’e\çm\êıŸ\é_ },è˜­8~s\äşk\á¿:ù¯\å¿Pú\ï\×T\Ò\Ó\0\0\0\0\0\0\0\0\0\0\0#Áü\ñFø\ôü\ö½]]^¹\éu\Ï?‘\æyœ8qpù\Ûúg\Ñ\ô|¯±û§\ï>\Ò\0\0\0\0\0\0\0\0\0\0\0BkŸ\Æ~ùF^—¸\â‹x;i¯]¦«Lq\æ\å\ß\Ñ\ñ½¯B¾g›‡·ú·\ìÿ\0y¼¤\0\0\0\0\0\0\0\0\0\0\"c——\òO\Äş¯~®î½£\ó|İ¶Ö¶½S=\Úù}>³Nnk\õ¾‡\ö\Ø}EÀ\0\0\0\0\0\0\0\0\0A†_œ~5ùW7oNûwi®–¦X\ß_?›\n¦6\î\í\ïÃ†2š\áÉƒ¯\\2ıC\÷/¸Ü\0\0\0\0\0\0\0\0Á\ñ‘şK\àuu\ô\é½úµ½­*Ê•·D\Ík¤\ãJeKS8\è\ç®u\ÏGL\Ó\ÏúO\Ú?\\\õ¶‰\0\0\0\0\0\0\0\0›\çÿ\0ük\Ç\ê\ëÔ½µ¾\öÑ¢©˜‰›iDE«¯.3(‹Fuf®\óO?—\õÜ¾ÿ\0`\0\0\0\0\0\0\0\0VŸüıù&ı\Út\ëÑ§Lº.™\ÕlÕº\Ö^!\Æy\á\ÙB3ˆ)œ\Åcnªı—\õÿ\0z@\0\0\0\0\0\0\0D\ñüg\à?”\÷\ï×¾‘{o‹Í‹id\ÄR\ÓUj0¥\éM+Z\Ë8Î™qsc‡/WëŸ¿ı¼€\0\0\0\0\0\0c\ñ¿\Íß™u\öui\ÙÑµ€M©µpÊ³%˜ÔªaX™ŠLeYF9a”z_Ó¿­\Ú@\0\0\0\0\0\0O\Ä–º{ºwŞ›\ôkm^bZ\"Ô¬”MŠ„)Y«;\×š\Ä\Æy\á•|\ë¿\Ö\å \0\0\0\0\0\0+\ñŸ\ÆQ\ßÑ¦—\Î-¬\í{\Í\ÄHL.²³DD¦±C5[9‹£e®_³û\'\î5\0\0\0\0\0\0#Ÿø\ã\ä½.É²ù\æF»Z\×X	/Bb”¹­jTŠ\Ê\èŠM#m{\Ã\Ê\ó^\÷Ol€\0\0\0\0\0\à_Î\Çp\Öb¶½´›-0L\Úk6´QZˆV´UDE”g\\\ë:\é{W|ü\ê\Ş$\0\0\0\0\0\0\ğ\Äş‡§\ßÓ¤F›S\\)›®¼H›VÖ‹3ˆ	­iT@Fj\åkÆ·™\Ë?”ú®_\ìş\÷\ê\0\0\0\0\0\0›ü?\óş¿¢\îéˆ­µÒ¨®p4\ĞdY6¥T˜‹UJ\ÖbTŠVÖ´å­˜ÆŸ\öyü—\Ïÿ\0Oÿ\0E\\\0\0\0\0\0\0®_ËŸ\ã\ëú|şJ±WU\ÕS2“¥¤Y1e\ç2µD\ÅU¬\"+iV\Ñ3HO\Èı¥~ıúk\0\0\0\0\0\0#\ó/\äG\Í\ö}V\óh\Ê:6\'*\"±¨6D¢b°+R(AM\é\òk\Åù×«\ñ_»ÿ\0eH\0\0\0\0\0|\Å\ğrû=½x\ö\Ş\õ­-{^\ĞS0®€„\ÒUE-ÀD*’U%~g\ê<o‘\ö>/\í\Ôo \0\0\0\0\0eü\ëøW¹\à\í\é\ô\ö\å\ß3X\ÓKÆ¨U¡Z\Ú\Å/ZŠFa™V&\Ê\Â\Ê[›\êÿ\0=\õ¼\Ï3\ôŸ\ín€\0\0\0\0\0+\ğ\ß\Æş¯g\Ëwú=]z)ˆÒˆ›^\ÂmI›)zÁ3T\Ô)µ\0V·AY¬i\ãx_u_ˆ\ë\Û\áNı«\÷n€\0\0\0\0\0rÿ\0 üO¹Ÿ\Ìz½ızS¯[Å©*-©7U’%ª\Ê\Âf³)Eˆ¬”Rÿ\0=o\åü\ç\Ó~Qú‡£ıw\ôR\0\0\0\0\0E?şu\ô=.š\öºûonJ³\Ò3&\Ó{Eë•¯¥µV)h‚)¢\"¡R+\ËZ\í\ò¢m\ã|µ¾§\ñ\ï\Ò>‡\ïÿ\0¥4\0\0\0\0\07üy\çz\İg\ì\ö\í¾|~­m½m¤¡E\Ñ\Ë%\é5\"DIH˜­tFQL\á9¢tù\Ğ\'\Éù?K\éÿ\0ı\éy?¨ş\í \0\0\0\0ÿ\0+~k¯­W‰\ìú=Šù½zi\ÓEi%¬­t´\Î`¢k5¼D‚¶¤\"“g\òeIjùOµ\ì\ò~;\ì}Æ¿DúY\÷¿¬u\0\0\0\0ü\Çùn{ú\ó\ò|Ÿg»®s\ç\ó;º·¶\ö™´\Â,JmUD\Å&\õš­HDÖ¥c;D&c<9\ñ¤\é¬px\ßm\Ó\ò\ŞG\İq~O\÷ÿ\0M~\è?×¤\0\0\0\0\n\ğ|ÿ\0OgF>?Ÿ\ëwo,|[=Î›\Şm¥mU•Ğ¥d„Ô˜´Ö¶P­U­,˜E2\æ¬\éj\å\Ë\áz\ßU—\Ãz\ß]\ó?Ÿ}¯\Ói\Ìş\È\ô$\0\0\0\0üıø~]:\ã\âpz¾†ø\éf\\=ú\õï¾‰ºib‰“b&©¤)\nW\n\Ú\Ìq\á\Ã\å?T×—\â¾\Ï\×ø—úÏ¦\×7\ö\Ş7\0\0\0\0\Ë\åÑ·Føx\\·oG=5Ï‹“¾Ş®‹i$a­\Ã0 ”&$¥L\Ô\"´bK—‹\Í\ËOıV|?/\í´üû\Íú¡\Ö9üO\ìß¤\0\0\0O\å\Í{­¾–§•\äû=ºÓ’ùpty\Ûo\Ñ\Ó\Ù\Ñkk­.”V\ó¤È®1D°\â\óüÕ¸=·\Ó\ä½o§\åü\ó?¤\öúr\ç\áû¿\ê]@\0\0\0ü\Ûù_n›k´\å\åøş\ï^“Ç8:xv\×]»7\Òı–¥Á{\óÅ¢3^‘E\Ñ\\¹\ñ\ò¸rk\òÿ\0¬\ö\ñxŸQ\Û\äü^\Şß·­ù\óù\Ï\ë_\Ğ\ì\0\0\0N_ä”\èÛ¢Jùş¹\Û{Ç—\çv\ïÁ^\ô\ß]mÕ²&VWl\ï\Í{\ÖiK\Ô%\0gJV•Šg\Ë\Í\É\çeÉ¶¾W\é}¾G¾ù»\Ö\ô\ô1\ó½ì¤\0\0\0~SüÏ¦»\ë:N^µ\Ù\ÓhËO‹‚\ÚmÕ­\ïÕª\ñe—¶ºµ\"%d	Š³¤W:\Ó>^.ly¼\Û\ß\Íû/¥\Ï\Î\õ=noŒ¯W§\İ6š\á\àÿ\0Fş\Ï2\0\0\0\âşDùİ­µ\çIÇƒ\Ä\÷o\ß\n\å<}<|3¿n\Ú\é¾\ÖÚ¢\Ó\çµ\ÔD\ÅS1+\×%)H\ÉÍ‡4g\Å\çÛ¯\ÅıC\Õ\ò\ô\î\ô<ß\è\ê\ôz¼\ñSû×\0\0\0G\ä\ß\Ìı=m\ã]y¸|_{/CX§6\ŞNúS6\é\é\Ûmt¼\Ø&Š4™¥X”\Ä\Íu®JeXÎ¼œüTO#-¸=ï¾¯?WnŸ7\æ\é\×\Ù\Ñ:V\ó_\õ\è\Û\0\0\0‹ùÀ\×M3\Ö\Û_;\Äú^Í­\\^g?FX\ÓN­´\ßk^È±™MŒ\ëiŠÅ¬ˆ¦Ñ›\ZE)Ÿ7=k\Å\åÎŸ5û/©\É^\í±ù±\é\ì\êE\ïi\çıG\÷€\0\0ùo\ó5\ö\è\Ó)¾¶Ë‡\Ãú*ß¥\Ç\Ïv\÷\í|#}w\×M&,™´)6…V›R·T­\ç:áš‘\Í\å\å|\Ü\Şn¹\ëú\æSmt\á\ñ7Ç¯}-\×S\êÿ\0pú»$\0\0\0cü‰\óÑ¦\ñ¥²\ÓJqø·nZJ\'Ÿ\ãz;;º©®ºm}\"Ò‰´\Ì\ÕÂ±y+3X\ã5¯›\âk\\şO©\à~³\îF\Ú^Fw\Ó\rw\é\ë\Ï\Ôıc\õ\Ò\0\0\0ÿ\0/ü“\ånL\Ì_<<«ú´½ª§?…\çi\ß\ÕÑ¬µ·F×¼\Å\í5Mf±kLL5µ\æ˜cU´ø~/6g—¯­ù\ç\ôt_¥†:\óÖ›\ôk\êş™ú\÷a \0\0\0Rkùÿ\0\äŸRZG?Ÿ\ì\İ,\é\Ë\Ç_ı\Û\ô\é¤ß«i½§TI\n\Ì\È\Îù\Ú\ëE\ÜXgH¼x~W>^7¯3ú\çOf\Ú\ï\\3Rš\ô~…ûŸ­¨\0\0\0c\ğ?|’ùZ)\ÏÇ¿BY\ğşo\é~…\áyûm\İ\Õ-::\í-n\éX¶w´½s\ÖoXË›–š©\åü§£Ÿ\'——µ\Ë\éû>·n·¥­†s\Ú~\Û\÷s\0\0\0\01ü\ç\ñŸ\õa\Ç6\ÓJW‡\å>\ÜıKŸ\Ä\Çn®\ëÅ»:cK^o!•ˆ¢\åZEr\å\ç¤\ß.?‘\×n^?k\ßş¼ü\æ¯\êSHgo©ı_\ô¤\0\0\0\0\0#—\ó\È<‹Óƒ\r¯h\æøÿ\0\ÇúO\ä\ç\Î\ÃKtZm\Ù\Ó1­šMf&r/XL.©zWŸ‹9Öœ¿/\Ë\Õ\ËÍ»\ìj\õ$üw\Ñuo;}o\ê?y\Ø\0\0\0\0\0&¾w\æ_‘yœü\öeN?\ğ¾\Ëû\ëø\×Mu\êFİºi6\Ò\Ëg®s­Ut¥\éj\ÃZW—‚•\èŒ~w\Â\îZ}Go\ö·©\â\ß\Ü\ö~\Û\õ/°™\0\0\0\0\0\0¼\ÏÌ¿!\ó1¦yøÿ\0\Éı»û?\ñÇƒ\ÏÁ¦\İ\ÛĞ\"z%h±‹Mf/H˜,œy¼ú\ç\Ó8xÿ\0;~¾~ \×ûWÛ\ò\ïo\ïı\È\0\0\0\0\0\0yß˜~I\óø\òøŸ\rú\÷O\òo\Ä\å\ço¾‰\í\ë½\ë=+LÖ±¤M\Ñ™Š\Ï/›•:´\Ç\É\ğy=\r\ö\õµş\ÊúH‰\0\0\0\0\0\0\0+‡\Åşg\ğ\ñ¿\ß?]?\Ëÿ\0š\çÁ·T\ã§o^\Ì\ïÒµ«hšUe­UŠ\ëXŠ\ã\æ\á–û\×\Ë\ñ8;»4\è\ô?³~€\0\0\0\0\0\0\0\0„cO~\ñü\ãù&>uû\Üû\÷\ôØ™Ğ‹)	ˆ½Q„™±\óø#}c\È\ğı.»\÷vcı8\0\0\0\0\0\0\0\0A\"Ÿˆş#›u0\ë\î\èÒ¹\ëĞ¸™¥fS]+i­\ë\ne\æpW~›py^G_M½Cú\ã\ì€\0\0\0\0\0\0\0\0\ñ\ÂcXz=›\Ì/µ\ì\ÚUÄµZVˆ¼\\üv]\Ñ\Ç\åù6\ízİŸ\Õ? €\0\0\0\0\0\0\0\0\ã\Ïú\å×³§[³\Û{ÎšL\áŠlÕ­a—™\Ë\Ù\Ò\ç\òü\Úw\Û\Ó\èş¥ı\"@\0\0\0\0\0\0\0\0\ã\Ï=y\å\Í\ÏGm¢´\ëè–š\ái½%T c\É\ä\ğvv\Û/3Ë»z±ıUúX\0\0\0\0\0\0\0\0\0~/ü\í\İ\ä\Î\İı2\Æ\İ;^]šS;¯X‹\nZ³Ç—\É\óú{5§\ç\óï¿§\õw\éÀ\0\0\0\0\0\0\0\0øŸ\óŸ£|ù3Û¶\İ4\Ê\İZ\Ù;jÍ•e©¤Ay<¯?£¯\\øx9\í\Ù\éù\ß\Ö?©\È\0\0\0\0\0\0\0\0\0ü/ù\×Ø¶|¹\ô\õ\íl©=}N—\Î\ÕÎ—™Š\ÒÀ+Ja\çøúwmŸ¿O\Ëş·ıF@\0\0\0\0\0\0\0\0\á?\Íşû.X\ë\éÕ‹^57›W³+DZ-\\\â™y¾ûº\ó\æ\à\åu\÷y¿\×¨\È\0\0\0\0\0\0\0\0ƒ5ı\å\Í~®«FU\é\ì\Ú.µ\íLi)µ%ea[DV¸q|\õºûi\Ï\æ\å^ÎŸ?ú\÷\õ	\0\0\0\0\0\0\0\0\0#ù\ãù\ß\è­N{\öo[\á=]6m|\ô½2ªš¢bmIRS•q\ãù\ì»{\óËƒ\Z\ö\ë\Ãıyú„€\0\0\0\0\0\0\0\0şpş}ú+¹ú7\èS)\ì\ßKZ\Í&¼\õ™HJ4Eq\á\ğ0\ß\Òe\É\Í^\É\àşÀıF@\0\0\0\0\0\0\0\0şcü\é5c¶ı^}ú·³hºùÒ°›E\å@…\"¸\òx\\[úÏŸ’\Ö\àşÀı>@\0\0\0\0\0\0\0\0\n+~)\ôz\Æ\í´\å‡gU\ôĞº³J#Sz\Î*‰®q^o\É\Û\Ñ\×,¸\í¬\ñ_~¥ \0\0\0\0\0\0\0\0?“¿úM\"Z^p§_^·˜,¥³¥­fˆW8µ©Jc\ä|\öş‡Da\Ç{\Ç7\õ\ï\êR\0\0\0\0\0\0\0\0\0Wù\ò¢Mz\ï¶yW¯®\ö”\èµc8\ÖimSJVfc;S<|¿Ÿ§¡\Ù~n=3×‹û\õ)\0\0\0\0\0\0\0\0\0+ükù‡\Ñ\ÛJi®\ØV\İ{\êĞ½‘¶E¬½+E\"i‡\ó\Øúzsb®\ö/\é\à\0\0\0\0\0\0\0\0?‰ÿ\0?ú\ë\Z\ìÂ›u\ï7ºtºp\ÅkiUˆ‹d\×+\×x|>\Î\Íù\éßû\ô\Ğ\0\0\0\0\0\0\0\0\0şøŸ{kÓ¢\ó\Í];\Ş\Óe\õˆÂ±}´«œØ¡›\Ñ\èÚ‘ZmÁıƒúp\0\0\0\0\0\0\0\0\0\á”\÷µÑ¶±\É=6¼\Ò\Ú\ë\Ç)½£AUf–œ\â#.OÆ¿©­©H\×\Îş¿ıD\0\0\0\0\0\0\0\0\0?‚<c]m¥£“^­4›D\ë¢3\Ém!uªT)—\'“\â\ç\í\ïz\Õw\õ\ç\ê@\0\0\0\0\0\0\0\0“ø\Î\õ\ô\ŞúN9i¿^\Ú\É:jÎ”­ìµ•¬À3ˆÏ“\Ï\ñ|\ïw¯FSŸ›ı{ú˜\0\0\0\0\0\0\0\0\0\ó‚üÿ\0_m­­s\Îû\ömy´[]\ç¬MÚ©|­J\ÚÕˆšc\Ë\Ã\ây~Ï¡¶f~G\ö\'\ê \0\0\0\0\0\0\0\0\Ãşó½¯¥y\ë¯GNúJ[M/Œ&Æ™„V/S,8<o\Ù\ô¶V1\ñ¿²O\0\0\0\0\0\0\0\0\0)üE\æú]z]†][\ïx™_LÔ„\Ú\Ób\ñX&+Ÿ/\åvú\óxrøŸÙ¿¨\0\0\0\0\0\0\0\0\0‡ş.\óı¾«\Ë×££¢\Ñ)ˆJ\ò•\ëV¬¢´Ã‹\Ç\òµ\õz-Ï¿ƒı¡ú”€\0\0\0\0\0\0\0\0ÿ\0\Z\òw\ö\ï%2\í\×}\í6Lh¬\æ´\Éy¤\"+—7/—\æg\è\õ+l~{û_\ôù\0\0\0\0\0\0\0\0\0?:ş4§_oM\ã\ã¯^«m3hkUf\Ó(•\é¡\ğ\ã\à\òy»;5®Ü¿5ıµúˆ\0\0\0\0\0\0\0\0\0ü\Óø\Ö\İ=²\ÅÕ·F¶½m+‘Y4\"/X%DE9ùx|\Î=;¶uq|Ÿ\ö\ß\ê\à\0\0\0\0\0\0\0\0\ó\â\İ:ºº\ã\\1·uº4¾²±yÎ©›\Ök*\é&h\Ã~O+†zz¯·\Ëoşª\0\0\0\0\0\0\0\0\0?5ş-\í\×nú©ú\ö\é,µ¦m‰,J±h‹\Õx\òrù|Ó¿kp|·\÷?\ê@\0\0\0\0\0\0\0\0\ó?\â¿J:»-9\å§eú-­­6Z\"`¼©­¡\ò\ó\ópy´®üÏ”ş\ñı4\0\0\0\0\0\0\0\0\0~cüM\î\å\Ó\ÜR–\í\ÓM/{Zg\\\Ñ	‘¥-B)\\9¹ø<ü³ß¯¯\Èù\Ï\ï\Ò@\0\0\0\0\0\0\0\0\æÄ¾\ö=}VÎ‘n\éè¾–›Í«k\äM\òÚ‹\ÖiŒ\ÙSŸŸƒ\Í\Ë\î\ï\òş{û\Ï\ôP\0\0\0\0\0\0\0\0ù·\ñ¹]û/\\¢ı³®·½—\\ªš•°š\ÍŠ\Ä\á–8\ñy\Ùsa\İ\êx¿?ıùú\0\0\0\0\0\0\0\0Ÿÿ\0û‘~\Íg{5\Ş\í\ôµmk\ÌV¶™h¤\0Œp\Ï<¹¸\÷\õü¿şıı\0\0\0\0\0\0\0\0\0\Ïÿ\0†=Ø·f‘zº\Zi®–^WŠ…—V Š\ÌZµ\Ë,ù¹8k\É\å\ë\ë\òü¿\÷ÿ\0\èV\0\0\0\0\0\0\0\0\0G\ç\ß\Ã^½\ç¯zV:6\Ò\÷\Şt›&b$Z$!XL\çZe>~œo?µ\Í\òÿ\0\è/\è\0\0\0\0\0\0\0\0\0?<ş\õ¶umJ¶\ê[]´^V+U\í5•\ëRª\Ús¥s\Ç<\Ëa\çù\İ\ôù\ß\ôS\í$\0\0\0\0\0\0\0\0\0ø\áŸK¢z7­^om­²ê¦¶’\ÄZ’£=\éJrry\Ö\Ë\Î\á¦\Şú5\ö\0\0\0\0\0\0\0\0\0\á…=nŠ_ª);\ô\Ì\ëki¬Í¬\Î.u\"\Ô\ÎÕ¼E+L¹y|\è3\Ï\ì\ñÿ\0ÒŸ¢\0\0\0\0\0\0\0\0\â?ƒ½~«\ãÒ˜×²gK\í3{\Â	²\"\ğ“:Ü¤#*rrù\ô¿/‹\ã\ôy\ßé—¾\0\0\0\0\0\0\0\0\0>/ø;\Ò\êÒ»\Òo¶\÷µ\ç{^\Ñ6©)‹\ÌA9VnÌk\ñ\ñ\ğg¯/‹\ákO\ô\ÇØ\0\0\0\0\0\0\0\0\ã‚=~³\è\Î\Ñ\Ó\Ó+k7\èF¨¥‘d\Ù¥&¨#8\Ç_?6~†\ô\ëĞ\0\0\0\0\0\0\0\0\ãÿ\0‚=>­/¬V»\õ\Í\çm\"Ó¹Z¯zZ\Ñ5´R+[D)Z\çÏ™©\ãø8\ëşt\Ø\0\0\0\0\0\0\0\0!ü\r\ì\ï­\â\÷¥\ö\Ü\ÛK\éi‰3\Ñ+(‹Aœ©†>V;c\çx^Wgúu\Ù`\0\0\0\0\0\0\0\0|Ÿ\ğ«¾\ö¼§¢w‰\Óy´§jDh&¸LXfŠeŸ\ô\áùÿ\0\Ûÿ\0M:¤\0\0\0\0\0\0\0\0ü\ê\í«i‹k®‘i\ét\Å4«Y¬•¥i{V(­iNo?j\ò|\÷\Ï}_ú_p\0\0\0\0\0\0\0\0\ò?À>\Ş\İ\Òs\Ò5\İ3}tµ\å:U1h»\ZÖfa\ÃÆ®\Í}§úOp\0\0\0\0\0\0\0\0\ó?\çç©¯^—cµ´Şºim—]hZ1\Ú\é†T„^3\Ó	Œ\ğ\ç\ç\ò¶Ï›\Èù/Ò¿\Ñ[€\0\0\0\0\0\0\0\0›ÿ\0>}[\õ\é{e­\ô\Òm{okMŒ\ïxµf™\Ä-4\Él˜g\Ã\æk•<O’ısı\0\0\0\0\0\0\0\0\ó_ç·±¿\\\Ìç®¶i¦—¾«L\Õd\×K”¾Y\Åfµ´C)\Ï3L\ó\ò>G\öo\ï]\0\0\0\0\0\0\0\0\0\Íÿ\0^\ÇGf—c¶–Št\Ş\ö\Ş\éµ&Hfb)œfªs´V)‡“µ3\ñ¾O\÷_\îm\0\0\0\0\0\0\0\0\0‡ştú\Û\÷\Ûv:oX½¶¶ºkhHº·Š3d‰g3H¥8ü¸¯7\ò\ĞÛ—\0\0\0\0\0\0\0\0\0où\Ç\İİ¾úJ»g®‘\Ñ7\è›VË«+[;\ÑJ1™•jŠÒ¼~6{c\åü‡\ô\ö\ì€\0\0\0\0\0\0\0\0?ü\ä\Û\ÑÛ§KCl¯\é\ÓM¦\ÓI¾Z\Öm¡¥3­³i4ˆŠpùX\Û?3ä¿ ?·$\0\0\0\0\0\0\0\0\0rÿ\0œOG§¢\ä]7·Nšm(½\'D\Z^±ù\ã2º°…3\â\à\ó\í>\Ç~ÿ\0ıµ¨\0\0\0\0\0\0\0\0\0œş_«Ó®¶œ\ï]ß¦ú^\óMš]¡+„\Ì\ç\Z`R\\ş&\é\ãü¯\îÿ\0Ü–\0\0\0\0\0\0\0\0\0şxü\ï¯\Û}\'IœÚº¶¿E/:¢U‹/j\×,«4\Ó:\Í-I«\Î\à¥|Ÿ˜ıû\ó@\0\0\0\0\0\0\0\0\ç\×\Éúİº^b\ö¦—·V\ö\ÒÑ¥\á*\Ö×¼S8\ÂÕ­\ë\n©\\u\æ\à\ò§3\ç?Fÿ\0Du\0\0\0\0\0\0\0\0\0ü\ñ½½[\í¬\ÅK\ÏWMv\ÕMIšµ‹\Ö+†)ª\Zg3Ög‡\Ó>?“\è¦] \0\0\0\0\0\0\0\0?\Ï?š\ö}´\Û:\ÄÍ¶\é\ÓI¼V\ñk\Ì\çnJB–\"‘\\\Ú<+\\¼¯œ\âÿ\0Tı \0\0\0\0\0\0\0\0_\á\Ï\ÊımıN\Ís»§f×­µx™–šI–y«	‚fšÖ¾Oƒ‹—\Ì\ğ¿\Ô?|\0\0\0\0\0\0\0\0\0S\ñŸ\ä\rú/Ù¾]½\ÏMiÕ­\ìµ\"“¤[MZeÎ‘H­pÒ”\òüNƒ\ÆıGû‡@\0\0\0\0\0\0\0\0ü\óùÿ\0\ó\È\×j\Æ\Ôi\Ói\é›CD\×:ZıJEaj\åk›egŸ¥>\ç\÷?Øº€\0\0\0\0\0\0\0\0\0g\òŸ‹~M\á\ë=\ìc[o\Ó\ÕboU/´1\Ã,â”1¼\ÚÒ®|–ı;\÷´\è\0\0\0\0\0\0\0\0\0‡\æ_—ş]\æm¥º\æ6\Ò\Ú&b&”\ÛJeHª¥\"»\Ìo\éû\Ş\ï\×}W\Øtm	\0\0\0\0\0\0\0\0\0\0qüæŸœü\îšk·E\ËL\Ú3µ¢¹Ö¬\â#\Óúß¥ú¿{\é}9\ÒÕ‹€\0\0\0\0\0\0\0\0\0\0Zg\ò\ñŸ!\â\ç3¦‹gk_Lq®¯»\ô¿A\ô?G\ïi|´°\0\0\0\0\0\0\0\0\0\0\0\0]?‡\å\óy~o™:}.\î\Ş\Î\î¯_\Ğ\ŞS \0\0\0\0\0\0\0\0\0\0\0\0\0A ‚DH\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0²\ß]\òúw=GÀ\0\0\0\0\0\09]\×a¼p¸9\õ\äs>û\Çª\ë2\0\0\0\0\0ùİ·*ı\ZÔµ™\Ã=oS\ğ€\0\0\0\0\Z\å\ö]¤¿JV˜k\Â\êºü\0\0\0\0Ó´\í>Ğ‹ª\Ğ!&M¯Ï¬\ê¸À\0\0\0NÛ¶ÜŠ\\¦ªé…”“R\Ú\áyÏˆ\0\0\0>Ÿ\ì\Ò Af®k6šÎ…¼_/\ó\0\0\0»\íg\Ñ3* ¶A\ô”.:®ˆ\0\0\0v>ªf[2©\n\Ùe\Î|¯À\0\0\ö\ôÿ\0Yt\Î\Z¬‚Ámee$\ày°\0\0\ßvI¦RU\0ª\ÃSU)ùÎ´\0\0a\èH@–\r\Ù\Z\Îw\Ç\ò¸\0\0\Ó\Ó}ª	,-\Í\Òl´\ÔMg¦\é@\0\Şv\Òæ¡ijÙ¸*CW\â\0\09>ª³•3`U¢RE¦\â5d\ÖgA\0\0M\Î0–\ÈE€Hµ¢Ü®wƒ\ÌpÀ\0/a\è\Æ%k2\ÍaQ¢‰­ª\êüÉ¬œ_/\0\0k\Ôr†k2Ë•EMYF5t.\òÈ…\è: \0—¡£\Õù\Û.*¬š±Y\Ï\ÓW\r\ê\ç9\Î\Ë\\?/\0}O.\ÈÁZ\Æu*–Å“?Mf5¼\Ì\å½«\é>`\0^Ç¸\å\Ôù“Z\ÌEKQHf\ë3W[\á\ò~sz8\0\0½‡u\ËOœk\ï\Å\Ü‘a%±¦¯\ÇZ\ÒqzN\0\0\0\Zì»¯»“\Ö\ò,\Ô%€I­G\Ò\ÎOÀ€\0\0\r\ö]\Ç\"k\Éz]Ê¨X¢]\æu=\'+?\0\0\0\rsy\Ün³\Õ}‰l,”Š™\êº0\0\0\0\0_G\Ë\ÔR UVzŞ€\0\0\0\0G\Ë\Ú\\\ÒÀUÔ™\ëº\0\0\0\0\0=7AbMX°£yc\çÀ\0\0\0\0\ô<İ¡¬Â€\Ò)\0\0\0\0\ô<\òeh(:\ï>\0\0\0\0\è¹\Ä5œ®-‹›g]\çÀ\0\0\0\0\ô|Ú–j%²f\è±rÓ®\óÀ\0\0\0\0z^U³Y\ÒF³rÑ«”šu\Şx\0\0\0\0Q\ÈRi1­BR\ë(:ÿ\0<\0\0\0\0ªûQ4™»’Z,³\'\Ï\0\0\0\0^«wQ4™»’ZZ‘\Â\óÀ\0\0\0\0úú£Y²\ØnIKR_œ¼<\0\0\0\0·¥ûK,­F¤Kb\Ü\Ü\ËÀ\ó \0\0\0\0ûzO¹,ªÔhÆ¤œ/8\0\0\0\0·¦ú\r4j¡Ÿ\0\0\0\0\ßÔ…†›‘€‰:Ş€\0\0\0\0ŸMKr[l…µ&±Y\ëz\0\0\0\0\0r=>¢’[©5\r3l\êú\0\0\0\0T‘©¨ºƒ-\çª\è \0\0\0\0}ıZ’–Z\Ñ%\ËY\êz0\0\0\0\0}½b¢M¥C-:~Œ\0\0\0\0oX’³vÊ€\Ê\ë¤\é \0\0\0\0}ıU‰RS{d²¿N‡§€\0\0\0\ö\õv% İ°²³¡\êÀ\0\0\0\ô\õ\ÌØ¨k@…\ó\óü\0\0\0\0\0}}j!¬šÒ’(¹c\Ïp\0\0\0\0¿^k&´¨\Ì\ğ@\0\0\0¯`ˆY.\ê •\ó<\0\0\0\0=¤%]’…‘|\×\0\0\0\0\0a¹\0\Ø\\\ĞV[\ó\İP\0\0\0\0/±³*- f¯G\Ò\0\0\0\0\Û\÷_IhËªŠ\ây\Ş(\0\0\0\0§c\Úr¶@7s›¦~_/[Â€\0\0\0\0\é\Ø\ö¿­Zjq¸¼n/’\0\0\0\0\0\0¯¯\ÓV1Ÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0?ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ú\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\Ü9=7\'Ò¼\ï€\0\0\0\0\0\0o\Ó;+‰\Ôz\ï	\Ìú\ß³sø=k tŒ€\0\0\0\0\0×¶zh\Æ5\Şù–´Å¸W\äü®‡\Ğ>Z\0\0\0\0\0›ış\õİ¹¸\ãE­m\\\ë´Q¦µÏ«\ô.£ˆ\0\0\0\0r{\÷ ıœkJgi´Pµ¯™²cN/E\è? \0\0\0“\èş‡¶y¡\İ5L™µ\ö\ÒıC\Æx \0\0\0\ä{ÿ\0\ÔÂŠ\Ö\0ˆL“hX´\Û_\à¼P\0\0>±ß¸u‹o€ˆ‚\ÒXJ&\Ó5\ïĞ¼ˆ\0\0\0vÿ\0r\âqi\ÖÒˆ\"d–	YZ\Åù|>\ço–\0\0\0\æş€ú<^>v®s´Ú¤B%ai‚b›r¸kªxD\0\0\0Ÿ`\ï3\ÅÏ3Z\Ä\ò$ˆL+YT\ÄL\'•—7\ê\0\0\0;O·Ş˜WŠD\ïJ%$\Ì%»\èü©¯Y\ğœ@\0¿½}f8_‹H‰„4\Î\÷HL…\âb—\Út\àıZü\ï4\ó\Ğ\0\0zo¤\ã\Î\ã\ñ\õ=(	¥\î$”\Êdk¥o¯•·\Í\áøo\0\0\0}zœ¾‡\ò«\Â\Ë8¬\Û;i`336S_¥\óu\àıŸ•\Ç\ê^Q\0\0´vºc\ô¸ùm­\é‡\Z˜¯›M\0&:NZrù|½\Íøı‹\ã\ñ\÷\ñ?‚\0=§\ÚiZ\óøùo\É\ÊrÊœH‚×…Ò‰V·m~O2g\â\×³\òq·\Ê\ñ\0oqû\ô£3¾<š\ãN5\"\r\"»HV³{k¶ûr·\ëùpù›\ğ\"v\ò”\0·{%#8ú\å6\ß\re…})M¦P­gIß“~V\Úuw\èÓ*ü¨\0\'\Üût¥yøEg^5™\çTš\Òúß•¶¼½~Ï¥¹1L±\é~y\Ç\0{W¡v#=\í”O/|\ğ­r¬TL\ÏNE³úv\å\òu\ëa®“Q\ó–\0\0;?¤ı\æ–\Í\Í\ì}?\è\å„cZ\ÔJ$®Z\ò/ıy6\êûDD|/7\ë@\0\0[·ú\'\ÙŞ·\íy\ôyÌ˜V+ D§]#—Ì¾~W\Õ}\Ã\æ\õ…\×*\0\0\0×·z\'\Ş\åı\Ë^\å\õ™\×\n\ÅPµRLNúW_§Ÿ\Í<³\ë\ã\ó\à\0\0\0ûı¿\å\ôOx\ì1ÁZD¦	‚\Ú\ò3¿\Ñ\Ï7\ò \0\0\0\0=›µ\ïlqVµ­¬D†Ü¬§\ãù\ï’\0\0\0\0ì½Ÿ‘®9\Îu\Ë;ì­“7\æg^møÇ€\0\0\0\0\ö\É\È\Ó\n_*\ç”\í$Ä¦ü\Ú\ç\Ê×…\Ó|d\0\0\0\0oûû\ß\å\\ó¾¨’M9s—#~/L\ñ`\0\0\0\0=\ß\î\é\\\Ìi6\Ñ™/\Ë\×\r·Ã¤xÀ\0\0\0\0\'ß¾\ÄÒ–¦T\Ê6¹	\ær8\÷\ß“\â\à\0\0\0\0Ÿ\ĞJ\ô¥\ò\Î\"&N<\îL\ò9üYÖ½#\ÅÀ\0\0\0\0ıÎšV\ÙRªÍ¡„\ìDr>Ÿº\ÇJ\ñP\0\0\0\0O\é\â’Æ±Z\ëG\Ò\Ï;:W‹\0\0\0\0úfÔ¥˜V)º\Ä	Z4ú3Å—L\ñp\0\0\0\0kúf”­\ë…b˜\í¤@˜–œ\íşr\İGÅ€\0\0\0\Ëı-U\Ó<¨­/(%&œ¾_\Ï\ÎıO\Å\0\0\0\0\ô¿HgŒ_<b&©D&Eù\\\Ş-\'¨øˆ\0\0\0\0>¯\è\ì\ğit„IbW\äs³ÆW\ÃÀ\0\0\0\õHeŠ\Ø\çXˆ-$¾ü\Ûq\İGÃ€\0\0\0\õÿ\0G\å„\Î4¤DLY04ß—¶5\é\Ş\0\0\0\0­ú?<,Æ´Š¢A›\ë\Ê\Şq\é~ \0\0\0\0«úG,Œ©Hˆ¾œ\÷Ã¤xŒ\0\0\0\0\Ôı\'–H\Æ)X„À[NVœ¼ú‰@\0\0\0\0}/\Ò\ØR#*Öµ€	‹Zü»\ò\ö\óO\0\0\0\0\Ğı1Çˆ®U­b	&\×\åi\ÈúU\ã \0\0\0\0\ç~›\ãU\Å\"µ´@L¦t\äk¿\Ñ\òO €\0\0\0\0\çş™Â‘\Å\"°UZ_‘¾ŸS\Çü’\0\0\0\0úkXŒâµ¬!¼“6\äo©\â¾\\\0\0\0\0_\é\ì3V‘J\Õ5-a7Û•o¡\áşn\0\0\0\0_\éş>j\ÅiH‰…k7’m;r\çŸ\á~\0\0\0\0\rÿ\0Q\á”B´¥Q”\Ú&f\Ús\'\èxF\0\0\0\0Ÿ©²\Æ!R!¬\Ş\ğ™kÍ·;À:0\0\0\0\0©YTŒ³¬Bc\äLY3nvœ\ï\è \0\0\0\0~ \ß\Z•Æµ¨Ê¶\äJSw7NŠy€\0\0\0\0\'\ôÿ\0#”\Ú3\Ê\"aŒ[t¥3\Ïß™\å^4\0\0\0\0	\ôOU\å\çš3\Êc[\é½\Ónl\õ\ï\ë \0\0\0\09Ï¾\ökV¸\Ò\"f³{\Úm8+\át®»\0\0\0\0\0\Û;o`\çMk(¾3\å|_ƒ\ò>U+0\0\0\0\0\0g“\Ë\år\Ün>, \0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0I\0	\0\0\0!1 A024PQ`qr\"@Ba±3b‘#$5CR¡Ács\ğS‚’% Ñ¢²\áÿ\Ú\0\0?ÿ\0\à\àrRZ\â‰\Û.vj9\ÆG\Ù\æ·\Ö\'%²‰k+\Ù\Ş\ò­S²‹\ÜT²ºBdqÌ¨­3Fj\ÇQCz\ğ”|ÂŠ\Õƒ\'Šò¤¡S\Ú\â€f\ål·\É?\Z5C#\Ú\í¦\Z8f®\ë\Â;[6	\r“ˆU\ëÈ©­À\Ú\È\ğ\÷Á\ÒüÊši¦\ÎWU31E¡¢ª¦Š+t\Ñ\èê¨¯Q¤Q\Ú\à~’\Ó\ïV\ö…\àVk<2Uoj3D5xü\Ó\í°¶Ó¯H‡4\'^\ï\÷Z–\ğü\é\n’WªÚªŒQ\È&Õ¯¨*;m¥¹ù¦^\Ó\Ç\Ï\õ\Ç\ÅY¯[5¢¾Á\ìr§0V]\â®5S\Ú!„~\Ñ\à+M\ó‘mŸ2œù&~Ô&«e´Nn\Ğ\Ë]Ê­¢fh\â>h[\'\Ì?šm\á;}\õú\Ê~\Õú\Ò\ÑÚ\åi>ú6Ù\ó\n6‡^Q\ö­¢ªª¶‘\Í5›N¢y\È5©\Í\0´Onu(-Ö›1\õ_’³ßŒu=;6~!C<3\n\Ç wx¶‚\ğ³A\Î~}Z/™_Q\Ù¨½\ï\Í\æ¸\0†!’s³\Zª‘\ö\Æ]\ğY4Qª•)­\Ëj(\Ş\ö¦;d\ö…\í32—\Ö‘V{\Ê\Í(¦\İaAÀª\á^\ì\íQ>x\ã\Í\îÄ«E\ó*\"\Ç\â­•ª~;#\à¨xæ©€je…04w9:#«MV˜UUUUW\n\îˆ\ÜxQ\Ø\İsN<\Í5¨#0*(­–˜)°úÂ¬\÷\ÜzN\Â\Ó\ÛÁG<R€cxv5\î•V\Ò\ÚN‘¬:v©¯k4U£¶\ÏÁO|Júú?P\'\Ë$¦®q*Šˆ¦ı\Z\ê‰¼2^‰ü(¶_ı\'\nª­¥U²\ó£J¿\ô-\âj…µTTTUÜ¢#\0«o\Ó,F±8ƒ\ğP_FZ\'n\ĞT•š~k\ó\ì(8;¡š\à¶\ÛÚ¦¼l±e·´{\Z¦½\åw\İ07ê¥šys’BVÁB4\Z¨¨¶y:**neØ¨\ŞÀ²\ìWrŠŠ˜UQd¨7(¶U}˜–§3ˆ\ÉCnµ\Ùı\í¦\ög¾\âvS·`¦\Ï¢±¸8|=Ì­¶¨ ‘Áª\Ñ~VÀ\Êü\\¤¶Z\'>»\Í;J\ÍQhª:†ŠŠŠŠŠ›´İ¢s}$F±¼…\ó<^¬­\Ú¼U\ò³N>\ò\ì(\ZÒÈª´[¬\ön{\ó\ì\n\Ó|\Êü¡µI+¶\ò|Pb\Ø[%f³Y\ãOjªª\õŠ¦\õ7)È•’ pP\Û\íV~lµoaP_qŸVa°5\ñ\Ê=I\ğ\îD«Eº>O~}Zoy\å«a\õ\Z½g\Z¸ \ÅD¢\Ù[+elª*aNN˜Srªªªª»”T\åè¨©¸q¢§\É$ˆ\íF\ò<û´d\ãhufµGhÿ\0.=Áµ[\à³¶\ï[±Zoy\ç\õc\õ\ğ\ÕfuA«g\×4TT[*Š‰|Gi†…]×‹m 1\ä	\÷UzM¼¯@\ßE¬‡û\'\ÈKjJ\r@****!¿N«®\õ0¦TÂ‰sN\ÓM*\î·Sh\ãI£¯8+e¡¶x\\\ó\ò\ñO.•Î‘ú¹\0¶U;†B`\õ~e1\ï†A$F„+\r­–¸¶\ÆG\Ş¯\\\Õ\05W¯\í2\ì·\îÛ¢h\É\0©»Nº”Áùf£\æ7Á¬v—X\í\rx\æœ#hu|\Û}û4g\Öw94&\ñr4T\ë*\ò%M“\à˜(\ÆxBxW-¯n\Îaw:/ÿ\0^¹·[’\"ş:4v§½\Ó=Ò¼\æJjÒ}NF\ÕÌ§i¢¦ˆ„\åa´ı\×\ï5É\Ú\Zu¼’\Ú\ç;@­–—[g\'\ÜnƒªU7:\×|uü¾´\ğ7\ã\\\nw8©j®;À\ÍÙŸ\ÏfiÖµWÅ´½\ßgŒ\å\Å5´7D’y»ŠS}kWƒ0rw\ŞQ •\ökKdo¬Öi…²7şµ¼mB\Ï¿­\Ú&‚\÷”PA\ñVø-s\î-›9­øƒŠ\Öd\áB¦o¯òª¹­‰û.>£ş¨h:È©#cN[\'}¦RO\É5 h¡M\Óƒt§f\õ:ø«\'6C\Ú\ò‰ \ÍWiF?hSù\Ê\Ğ)°x(=Z·\â®\ëW§„]¹²*\öµ\ç\èXr\â˜8®	\è †œ{ˆ\ìš|”R\Î\Â|5\ëNı–ŸTq[\r`\ÉE\÷®\ñO\ÕZG\ìkØ¢\Òùš¬³›-¡¯<\Í\àšCš\rxu\É[­\"\Ï	>\ñ\È\'“#\êSB:\'.\Ä1:\âNdÿ\0#\Î\Ì03œ@\n&˜\Z?5!È¨n?ü\Ü\Ã\ö.\Ó\÷NøªuZ26g\Ç3\Ãÿ\0\çX9À\n«u¤\Ï+» M\'h½\á€\Å\ÜÒ\î¨ş\É\Ê\ÈÍ¢\ëCµvŸ„š&djBp\õ>I™\ÆZ¢5h@˜\äl:­š½ºÕ¥•\åj\Ù…‡7jh½ı\æiN\àW\n«Vlk©É¹4ù–\"›ª<\Ô\Ïx(4E]¶ŸG\'¡5\Ç/Z\õm¦v\Ãz’C#œ\âuA™\Ï\\pc£=\Â­h½²®NQ\íy\Ï\ñQiÊ„jŠ\Ó\é\âi\÷´8WªŠ¼m^š]†ŸU¨¡‹¸¨ù\ÅqCrN\Ô]w]\ç­iÿ\0H®Q&‰¼|TZ`U†\Ó\ö{@\Ú\æ;\"ƒ«\Õw¯\Ğ\ÂZ9\Î_/Q#ª‡J&´«\ì\ê\Ê*`\ådk\ÂSš`\ÍF\Ù£Qi‹‚º\íFh\Äo>»>U#\ÚÆ—iœ\Ï!yù`À©4Q#ªn\é\É\ØUÖµUŞªªœ\ì±\çà¬¬¤,ü\ğ*CW(Ú‚´ŸQÉ£ ¢Ü‚_³N\Ù§‘¡\ÃCŸTŞ–Ÿ\ä7_{‰Rh¢E7\n\âşª«…P\ßÏ«ê«… \í\â\âJ` Á\æR£Zy¨h¢A\Ñj\Ö\Î\íFm@\×>§µO\èb/¯‚‘\å\ïs\Ä\à7d\ÑE\Çp:!¢#\0P\ÄuUQr\'¥µpn2¨\Âj*|\òA1\rÍ·D\ñ#5ª\Ë(JÓ¨\ê{\Æ\Ó\é¤\Øi\õ\õ\ä$\ÑFŠÜD\á\×U¹+¶ZU…”aq\÷°:\'\æTmÁ\êMpb\n\èµzL\æ¿O:–\ğŸ\ì\ñıgd\ßşÖª›\ïâ™ºpªw\n-ª\ï²%»7®\æF@c@2M\íOr4Ñ„†‹Š	¨nº­;M4!]\öhˆ?\Ş\ïş\Ğ\ê7º´NHæŒ†şx;E¸\r\ÇUf5j2EkU\\	Y£h•»rºC Z”r	Ù¦„R”j\ÒŠ»\í?f•µæœŠ½Gy\Ï\è¡\Ù\ç¡È)š\à7H[\':\Ì\àQÀ¢¸ §u\â¬\í\Äš` O*ˆ`\å&ªˆ!¾\ö\ìæ®›_¥Ñ¸\æŞ¢s\Ã5V\Ùş\Ñ;\î\ğ\äŠo9Q\r\ğ\î8n\rÁ\Õe|q8„\Ñ\é­úB\çt\Ä`\âµv\r\÷\n¨%6y[ \àToFÓ‘\ê\Î\Ñ\è\â,\çd€Æ”AiCˆ;\Ç\' p¢¢£ªNq)\Ø$”YY±}\ç}E8„T‡\"›ˆÆ›®\nêµ–Ÿ³;C\ÍCJûyu¶OiqÑ§&P\çb7ŸÁ‰T\êÒ\åp8’F7†¥F\Ş\'¸Jvgz»\Û\Ù\0¬7{ƒ„\ÒeMƒ\Û\ï9ı$\r_MTC\Ç\Z`7\n<\ä4E\r\ç\óN\0 yzªûyD\ãUTQ\ÂC\ê«{Nsş[¿<†¨¡w ²:mr\n,Q†}¨ouFŠ\ğ´\í.ş–z¡S“)Á0\åÈœœBW9W=Âœ\ì´¿e§\à¬\ÌØ‰ƒ\à7iƒT\Ã\åˆ\Æ8d”Ñ­PXZ\Ê\æV\È\Ô%Z.\è\åq{rrš\Å,\\*>£“\"[Zœª¯T\Ù\Ü\'\0h\Ï/Š­p®U[+DNq¬s\Í\Z*¡»k6‰ŒcE\Z\Úu)\0©\ì1K\îìŸ‚š\Å,9Ò­\í\ä\n¢!\rP\İ89\ÍM5w\É=¼U7tÀuD‰º•ÛN\ÍQ4)NIŒÚ‘µ\ñÀnSµd³\áºª‚\Ã$”/\È(ad,£ª§°2Z‘‘\íSXå‹…F\æ{¥¼B\Şq¢–B]J\ä¢u0p\Ïpn¦r\â\å\Ã\"¢c=+ªy£û©l\ò\Â\æOJ\Æ\ñ¯bfaf¨¨i\ÈY\ìSKGlÑªqg©\í=ZZ\Ì)\î\öJ*Ñ²\å5šX9\Ã.\İúªnU)Ø¸¨C\İ#Z\İPN\nˆ‚£t{=y\'\'e‹‘\\Q\Ó-U=tP@\ÇØ¡c\ÅkV»$–7m\Ö%_x&º»¹\áE’itm‚\î<\Ü6Šh §X=x¡\n{µ®\Î<Š–\"4v%Sx©+Ú\Õ\òW=Œ\ìIjxÕ¤7Á\Ì\n\ã’ù{9\İrÂ†©¢®j›\İ\n\ÏQ\í³\è¤`¸Tn³>\ÂúŒ\â+\Ò7Pš\ê\î\rYxP|TVÙ™Ì¦°7­~N\Ì)\îÌ«|O‹\"\İ\Ê\ãT\ç);J²Y\İl´6\ó}\ï\Æ5‘†\êE Ù–A\Øãƒ·\ÇP•\Çt§\ñ\Ü)º¨\Æiù¹ª\Ï\÷ù\ô\\U¢\Ï˜\á¨SØe”³\İ\àSZG‚	±¹ú\ß#³vJ$q\ğ\õÁ\Õ:<QÂª{³ŒEI\â4x\İ%9I\â«F€5*è°›4pı£\ó8Z\Å-S\ÄwSœB(§\'!ˆ	©ü\æ«?G‡ı¶ı1–\ÏÀ‡µ§<¤QİŒo<\Õ2\Ù\ÍS®\ß^6\\2S]`\ç¾J[,±\ó›¸\ò¤W5‹\ízwŠ²=<PnX^MÙ¶I\òÄ¦ªn¢(\å€À§\'!ˆA~JÉš#p¢¢§p(‹AS]\öw\ç³B¤»$şYª}šfs£)\ì#\İB\Ï+X\İJ±Y™f³\ÇFŸ\\on’\áÄ¦ûEybŠ8ŒƒqŠ²thG\á\î-ÀŠ£füøšS,–hµ@LoqûFn\rÑº7>^\ĞS‘\İ)ËŠn-CUc5Î½™\÷N\ñÀ\á¦\è\İ\ØQGx£ªµwš\ÙX{{}\Û<\Ø\Óto\rÑ‰\öR#\'-A.¾…\Ï\ë\Ü\ë\ã\îœ&\ïW\äˆ>\ÊQ\Ş(® †?BoÏ¹×¿Fÿ\0¼}wJoHûEâ€\Ñâ®„\Ï\ç_=ş\á\ôL\Óx!\ÔewJv7qW7Ao˜\÷:ù\è¿\÷„\Í08–XŸf(\à1(£€C\ñW/Ac\Ü\ëë£´~?\ğ™¦=ˆ\ïW”¯²œ‰NG\0†W\'Bo‰\îuù\÷-\ó(ørƒÛŠ(¡¸p(!ƒ•\Ë\Ğ[\â{~}\Ü5›…\r\Ó\ÔP\Ü8W7Ao˜\÷:ş9D<\Ê.;£¸:€§`7N\ãø«— ·\Ì{¹ù¨\Ğ\ÜQ»¼1wst&ysNªş\çE\áşS8!¼08üı §\ë€Ctb\år\ôys¯\Óûx\Ç\áQûy\å\n~Aú+—¡7\Ì\î\æ\ğW\ßIo‘3œwø\êˆ\Ş;B®n‚\ß1\îu\õÒ”&k\È \ËqËŠ7\Zn\Ë\Ğ[\æ\îu\ğkl“Á¿D\Í\Ã\Ô\ÇŠp\î\Ñ\\½¾c\ÜÒ¯N™\"o&7+\ígˆ\ßvŠ\ä\è-\ó\ç^\'\÷¹üÉº¡\Õe;¾\årtùs­\İ&9M\Õ«)Ø\÷+“ ·\Ä\÷:\Ök4‡\ñ\ä‡Q94Ä§h®\\¬-\ñ\îi9?\Ş?Ä †\ñÀry{K“°\îW/Ao‰\îl¹4ø)5(!\ÈP¢87}\ÜU\Ç\Ğ\Ü\ÛA¤RÂšoQ\n(¦n„S´*\ä\è\îm¯(%?€§qM\Õ@`:ˆ£ƒ7Š“C\à®N€\Î\æ\Û\Í,³\ÂQâ›¾w±Ó—(¢‚\Òh®^so.‰?‚\à›¾z˜¢4;\ò\è®O\á\Ğüû›y\İ%\ğCD8ï¦(£\ÈK¢¹Oş›\Ï\ë\Ü\ÛÏ¢I\òC@¸ï¦(\ã\Çt§«“øl?¯soN‰\'\Ëê†˜©8q®\éN\â®O\á¶Ÿ×¹·§D“\å\õM\äx!\Ôg\Èş*\åşf\ğ?^\æŞ_—\Õ5v`7\ÇS\÷\'\ñW7\ğ\Û/—ü\÷6\ô\è’ÿ\0\Î)«†p\à:œ\àp5TtNO\â®\á\Öo/ù\îm\é\Ñ&ÿ\0œP\ÕS,\ã‰Àu9\Ü`x§«Ÿøu—\Ëş{›ztY—Ãn#¨N\'¸.)¸*¹ÿ\0‡Y¼Ÿç¹·ŸD›\ÃŒJ(u9G6¸&Š\éşe\ò\æ=^}o8r©\Ê(\àSP\Ñ9I¢»:—\ÉşPÓ¹g5y\ô9üˆ¡¢#©\Ê\ã‡j<SSJ\ÅHU\Ù\Ğ,¾D4\îe\å\Ñ-T\å\Ãº7·Ã‡N)\êM\ß\Ğl¿\í\æ\Ş=\Ñ\åNCLF\è\ê8œ\Î)\ÅH¬\n\Íş\Û{›xtIü¥(p\Än¨ã‹°­DTŠÇ•–\Î?\ÒgÓ¹¶ş‹h\ò9>+³LQG`y\ØpV| ƒı¶ı\îe»¢\Ï\å(\ñ\ñÀi»\\S”q(§\ê0\öø…Q\Ä?\îm·£O\å+\ÍpC{Šƒ\ÚO&\ìJ)\ë±{\ã\Å7š\ß;™l\è\ÓùJş¥À!¦ø\êcÄ§\'\ñ]‰¹\È\Ï€Ó¹oVÎ?”®\ßÁ\ry\Ôx£‰E9­<#\ñ·\ê‚\Zw-\Ê\×\Ñ\ç\ò¢+€C«J;¥;†L\ív_\÷Y\õA\æZú<şC\ôEWpE\Ç¢r»ú}“ıÖ¡\Ü\ÛW\ÜM\å+Šv\Änk¯(Q\Üv‰\É\ê\ë·\Ù|\ÕC¹¶¯¸›\Ê\å\ÅT\÷#¸\ä\ås7j\ò³7\Ñ\r;›jû‰|®\\Q\Ó\Ø\ò\ö\×#‰ON\Õ\\?Ä£\ò»\é\Ü\ëW\Ü\Ë\å(s‘\à‡±|ı´\î¹?Uú=üB½‘¹\Î\æ\Ú~\ê_*\Z\à=ƒ,k\íe\×\'\ê¿F\Ç\ï¯?\é;›?\İK\ä\\pŸÔœ\'§/Ñ®“?“ü¡\Ü\Ùy\ğGœqMN@¢†.N_£_i\ò\ç;š|Ÿxÿ\0\Ô=\åxÓ‘<±Â¸\åú7\÷\öŸ \îq\naI¤ˆ¦¡\Õ\å9®.N_£]& ú¦\é\Ü\ëXı\æ_9MCr½VS“q<S—\è\ÑıúQş‰M\ã\Ü\ëpı\òqø\ÊneÕCTUQN_£\ÎÙ¼|cpCs¯E¶\ÒADb:‘úa\ÅQ\Õ\\®Ø¼`ø\í\ì‡\ç^G\÷\ë@üH7&pÓ¨_¦BuU…ş\ßdyÿ\0ª\ÔÃ•{xƒ\ö\ëO4\ÑWT\ß<U}ªEB‚%\ğ®Ë\Z…¶£\í\0\÷7‚¾¢-·9\Ü\ë-U!,·\Ï+U_c¢¢¦/¢\'.\Ä\İs\ìD`\á•p²‚,\ğ5Úˆ\Ú?!\Ü\İ\ébûL[L\ç³OˆNnÏª\áš£%B†ª F4TT\İ\Ï\Ù)½UUU§\Ü8*\"‹U\×u>y[4­¤M\Ï\Å\çP+M‚@\õ\ã\Ïú‚´\\\öˆ}h½fÿ\0tv›“…\nU(¨{UJ%W§ 9:ª¬\ÖjŸ\ò©€\ÏEg»mS{›#´«-\ÑGjO\Ú;\ã¢hh\È\è\äT\öHg®\Ü`Ÿ†ªk”\ë¾NR\Ùg‡ŸMÂ»”\Ã4””Âe¹UU\\3\årE6D¹Gü”+İœ\ï§ÃŠ‚\Ãf³s#Ï·T;¬\á\\¨§»,\ó{›\'µª[šfıÛ¶”¶y¡?´a\nª§°¢¢†{|ùP²U\ìbc¤N?$\Û­ÿ\0\ÉrU¨\ğL¹¤\÷¤L¹\ã\÷8¦]\öviù \Ú\nP\İ\ÂÍ®\n[¶\Ë/\ò\öOkT·,‚¦\'\×\ÅIbµCÏ‰\ÔTC\Ç\nª¡ìº¦Á3ù±™v\ÚN­¢m\Î\ï~O\É6ê³·´\ä\Ë˜(|\Óad|Øš<§\Ã–%\ò\ïŠ’\Ç¼ø›ÿ\0<\îh0¹Ÿ\İIs\Î\Îk\Ú\ä\ë©š\Â\ïª-p\ç4\ãU¶\Ò\Úh- ¶‚®5Y¬\ÖË»\nyİ¤nü“nûK½\ÄÛ¦S\Îx	·8\é?$Û²\Î\Ş\ñL²\Â\Í#jS\n,û{Ñš\Í¶B,n„#e€\ë%úº\Î–\Õf=¿š7Mœ\ñw\æ\Í	ı—\êAÿ\0\\şK\õ\'úÿ\0ş+\õú\ãÿ\0Û“ıqÿ\0ŠıKO\æÿ\0eú¡¼^…\Ó\÷\ÊıWg\ã_\Í~®³ÿ\0@B\Ë\Ò6şHDÑ [!Rˆ\ãŸ|©7\è©ÿ\0¿‡ÿ\Ä\0-\0\0\0\0\0!1 AQaq0`±P‘¡\ğ@Á\Ñ\á\ñ ÿ\Ú\0\0?!ÿ\0\ğ\á\èE\"\âH”ûR\ßÁ„N¤‘\\q¢u\î\Æ\Ò\Í\'v…Ê9\èH­·\ò%²1JnÓQb§\\ngHe‚&u‘§;\ÏTu+(·¹\Ş!Ç¡w/V\é|c7§c ;\ï‘\æ\Ìqxc\Ğª\Ãt\ÄR£\ïN\Í\Ğw\Åù\' Š\í{\nl\÷}7K\ò•µ\0@™.¬S´F\Ña˜LE\Ëb\ğ^\Û\'Ü†E§º¸\÷\n	^\à…`²Æ·\Ñ^X\Û\Îü96C8\Åÿ\0	¼<\ğ.\â\ê\ÅÕc‡\Öş„Ğ¾ûû‘6O¼„û~\Ä6Gqş?\Ã$6Ö»¶7)Ê›q–04[\":M¬d2] º\é‘1xL²6˜°O¶ÛŠ¾\ÄR\Ş\ÂÆ’ûÁ›o!›¬ù¹¾\Â+@Ñgı8>d¸!’\';‰µa>‚cd²\ì±#\ìrwR1£& 9V\ïq¬<±N\Í!,’\îR®w?€S¶\å5!\í‡slGı M\à\ÙZ½Ø¦fû„‰Y$Œ\ì£.ˆDB&%€\êN\ï;H–›	(’d\õ–{99f\à~¸\'\ÈMÈ„NF\Ú#W…ˆ, \ö\Z;\Ük#º¡\Ş\ÑnUR\è\È%Ç´»G\ĞC†J4·5 tƒD\Î.\Ï\"C\ÎÃ¨#t+Ä¡G5ŠX&Æ•’!¼ƒ\æ\òR\ÖSĞ“<\'\ö\ÖO\Ş;\Â[Z»\áB)Qw-ÀÒ¨š\Ø\ì%1O+qUŸƒ„8d€I]ƒFA\"\ò7s\ì\ëp\Í\Æ•6%»²>}B}-\ëpÕ±\õd” $\'@–œR\ä£¸B|şø!¶ıü¤Bc\íÀ\è†1Ê¼!¦tW¡j2\âD–Â¸KÀ\Æ5ƒª9D2º{“(V\ê\Ó\É\Ç>\Ëm\É4À\ãÇ“w8\Ùÿ\0\è\ßo\\.À¢².@„„(\Ò\Ó\Óƒgû±Ú±X­\Æù&l+u¢ª>”h\Ô¨ûqo|k¨N\Æ\È\rc´Y\ÜHÚ¸:F\ï\ï“\'	{\Ü.\ïq\Ø4`A°K •A)R/K\Ò7“&Ä¢t@eÀu¹\\´A†EEb­Œ\ç”n?I\ím\ò«	Ò®©t”q\ì‚¿\ÌŞ½Á\íÑº»cM°\ç‘(ºœ1«DjD¥µ/D\æ\âNl\Ë\È\ñ‚(È—H’<x¤N\õŠE`t B\"˜`c”“\\7$	\ê;\ée9\Î\Ã\ë\õ\ö¤ÀŒ\í¹$ÿ\0T\Üi²\Òù\İ\ÑA¢[ø3¦\r\éVi·§‘#\Å$’h\É\ÇC¸\í\Zp[L\ï†\ĞÀ\no®©L^}C±–FC°‚ \ÂXT\óXĞJ“¦:\Ò’\ä…V¸¢~“$™!raB°\È iXha˜\Ù§Œ?%›š\êuQ\õ¸\n\ê\İA­K¥Ñ¸T¢.E‚\ä“K\Ò\Û\éQ‘Ô¶›U–\õ`\ğE\"–!\r.E1ºX‚	;şAª?(\\6ùB\É\õ¬@{´$²I¶ü//’o1\Ğ\ÄV\â¢t’}X#\\/\äJ\' ûQ\Ü]ˆ;ˆ°\Íeß’lP8\r1nR\ì\Û\ë0\âQĞŒ¤\"\Ï\ìsQ!\Éƒ* È´I>ŒR\Ü_$Á:gLz²M©A*X\à‡ù‡\àKM\Æ\Â\ßå¾úº]ş@K‚s‘,\Ô\Ä1=I*2\Ñ$\è\î[ĞŠ¿\ã=0E	RV\Í\äœw¬A\Ä&wC¦/ûF\è\Ã\ç\ê\î:-\ğ‘)`¨‡ƒie®Gh™&!kF‡\ëM&‹K£¬\Õú3\éª\Í;™©¿¡.ƒº¬\Ü<\Ë\ê‹,p•7\É\á\×Ş—BË¡®\Ò~MÅ¥XNH\"4ˆÒ–©¤Ui\ÛS¯¦~\ß2%rÁ¼\È\Û\ğ4ÖŸ\İJR”\ôÜ……?Sİ‹MˆN#™-E\Í\÷1T:E›‰H“t\":‘F\"P˜Ø±GH\Z#©¿\ğ\çCş\\N\Ğ_\É0f½\Å%É¯ÿ\0i>œ‡½\ÏÔ²#$\ì;\Ù:	\"Ä‡€K¬œª6}Q\÷\Èc­I(«ÃSÒˆ~¤z+CY–\ó¹-!8\é›[œ\Ó\ò<¸„\ê¨:¡»-¾¢\Ğ\×\á\ÃÛ\ä0»	`C\"-VÌ±æ‘¢h…¦?–ıkŸ¢˜\òxf#¬¾\à\ßR&¸\õÅ°\'Nd\Æ0É¢\ÇV\âüQ\Ï¨n1sa\Z.eŸ`X‰r6\n\r\ñ\÷-\Ån_ŠGB)$‹LQ½LW^5Ä‘¥Ñ±R+»\ÅbüB\Çv®¦B\ã¸Kù¢_}Di{\"cÁ\äÓ›n[`¶úkqG&vWd¶Qı˜\âÀø\r\Ú¢ B\\\â\â\ZO¡0É«¾„($—¥–¤G§ø\ó§#6$Iv\×\È\õ|‰_\ëq\ÜÎº\ò®]‰5‘ù‚\ğ;²#\Ô\æ-.•·LŸ¦\Ú=¼\ÃÓ‚\áˆ\ØÀXˆTÌ¡¼’©Ø0[}R:\"4Æ™V+\Z/\ègC™¢D:\å	}Ä‰²I}‡Q¬I[‘S¢fŸQ¯\ÉhIX\çd8\Ú\ô\Æ0û\"b\Ò \Ü!F`Ì®(JQ,\Æ\äÊ¨y&^\Ñ\ëfŠA´ŠF›z1¢tF¦\ÆÉ’GDl\\›Ÿ\áÿ\08\×ce6,9ùR\Ğ\Ş*qLœ¤t\ß\Ó’\Ôy}\Ú:N\Ûüir.8±\×\n\â]4\'\èE\\Q\\E\èŠAŒ*M]\"±lbrMRdºp—È¢P†I›h\è–9“\ò\ÌÀ\Ä% ’µ\áF¤É€v\×)r]¹;¼œ!Hƒfo¹Ó©3a\ía·\"²K¤¦	G¤\Ä\ãs$Rú‹L2h\Ø\Ü\Ò\äPƒ\Ù\Íÿ\0t®p%!¬¸f\î²c\î-¦Jw?\Ã\é,{°’m“Yœ¸:‰:†d\÷¨»\Ò\õr\\G¨H¹’j§ƒ¹}@½XDRu¿NL\Òh\Å\ÒC\",Xp\ğ¡y¯O\È\ğYB¼…i`‡µK\â!¡\İ\rÇ–NP†\Ù\\;?¤<1\ò™„\Ç\â‘\"Ã¥ª°uQn,a½‘0\Ç\\Š\Ñ\Ä;—\ÒĞ‘k^…\È\Ô\ê\ô=2I4x3\"Z&©‘ÌœA†\ß\Â!W‚Ä—–@\õf\Øiˆ¶hM¿I?(\í\ôt?O\ô3)nn9ç°•®$¡X•¹hc30·j$‹dI\õ*KsbD\Æ6\Ô\ğ!z\ĞoI2F«V:[®EŠA\àx	¹)$\õ\Ø\"ÀÖ‚[\î,S&»q\"µÀ\Ö\ão\"	l¯´\Í\ã\è®\'vJ	C°”lD\n)#“)1%‹a“NÁ\ça\äm\ËB¢›QEH\ôGOjNˆş\r†t\"¬:6\ä\ÜY‚~º¥\Ü\æ\Ó\àÍ‹\ÙI(¡¥Ä±¡d¬“:#Ÿ\Ö\ßo¢\ÛVP|Œ\å¹|\÷\ØRE/Lh\æ°¸¤¸$€\òø%\Ø\âh¯D14BÀı\'H\ë\èÆˆ\õ±¥±³­E\Üq\Él\'qw\İm±\'Y „y\rr-*Dİ‰&Úš°Æ¤[\èLo\ZÁÜ¿±‹úP$»\ê6iø^EbSX6[Ecc9˜\Û\Í=ˆ¢Q¸¦º	µª¤XW¬Á}\è†,\éC«&¾}gGWG\r¨l\â.eˆ\ËÉ‹,—w\\³µ§»0Çš”ƒ:&–Ä]„*:I\Ì>W\í·²Ÿ\Ğç¸¥\Ù	Ş’¸P,\n\Æb2ª>†L4$Ù”plNˆD\ÕVú®):<=I\Ö\î0\Ø\É1¯#0$%/rXTKB#v\ã»/›ºBf)ˆÆ’¬¢UjlX\'$…·Ğ¾ƒ \Ú27d[¦\r¡	B¹jI	\\\ìË\ê)´a.˜q:,Î›–3 5br@T\\M#U‰\èI#«V#L:Îı\àm²\Z¡\Ô\ß#½‘m…«ú¡(aY\rF\âBQW\Â Qn\ô,Ó°”¹n<P©\rR…\ç±_\ç0É“\"Vƒr	<XHJˆ\Ã5\æ²I\ä@ú	Æ7#\r¨LNO\"\È\Âdú3ri7‘H,I4µdZ^†\èfX\é\äT\÷›¦du<B\ò6\Ö\ìˆ~i!L2FÁ-/qŠÊ¬\Ğ\à[H\Ü3q\ó.V\Ã\Ï\ó\î}‡;9\Ú\ğ°¤V¢\É}\ÅKœ¨XÀ\ÖdEš±,\İL\"tºˆ´\Í&½{Š¬\Í#Ru±4d\è&Î¼—˜#rM¯ú•\İ	µH\ÅkBºBd	e©‚Ì‘-²Á«\×y³2,7shı„kû ÄµÈš¸\n›—,\Ò\î.<Vfh\é‡DI\"u’jNˆ0&K$·Z\íKV)\Z<‘º·\',H\ÕXj0\Ò\ì-ˆ£»c9‡\Ë%­µ‰DE6E¹’‰4L Š1\òi\Õfz’‚?œ\Ù¬O\È\ãqlX•;:8¤Ñ£q‰’%\Zr\õlp\ÓGP\È\íM)$L‘2E¦Û³±1b\ç’\Ôb/\Í ½-Ö–\Ğ\É\ë¥\ètx“hsF\Ğ\ÆÁ/b\ö¥±\ÇvDyN}\à\Í$¶\ZD:™	\r·€¨¤Qy¶<\ì>l	/ $—D·/};\r5”EqN\ÄŠBb}ˆl\Ä\Æ(-µ!|£9‘§04\'°°¨³©‰X‚\n“¶…«z¼\ÆÔµ\ê\Æ:“z\É\"\ö2FÈ\ó,Q\Íp34‘*\ÂvÉ°„\õ¥°¥rÀ¦nd!\n\ÌEs± K]	a}	²Q!)\\i=\Æ$\Çc™ü\ê–A\÷A`´`N\ÏI;	.\r\Ñ4\'\r›a\\W›–X\Ü\á\ÖÄ½\ë\èŠ[az*ª‘ÖQŒU\Ä\Ü7wŠ\É@¤\î…\Ê#¯\ï\ìEŸ\"ª$D\ìa4e…\ï,bhVp®È£\ó—as¹+¤;¦ˆ5\Ó	¥Á\Ü\î\Ènm\áµ<=Á“8\Ñ#}h¡\õ{™E\ñ5Lk&\ô\"\Å\ö§\Z¼\Ò\â¢-_4uš:1D²\ô\ä˜G$Ú…z0˜D(Yœÿ\0\ê‚\ÕI\Â\ĞÆ«\ö\'\ÜJ\Z`]\äIEs»±†G\Ó’\ÎÀÀ\Ñ\öh+\à‰ ‚\Z\Zy;4O‘Xt\ê¤\Ïv6\ä\Ä\òÜ¥\Ød\Ò\äy‰;ˆ\ÉM\'¥\éSz¥\Å#B\Ñ\ö«aº\ËŒtnä˜¹uÄ“&Ë°°]dJ­3¤º\ÈKE¿,i—\åI$yŒj^\ãv\ÒÊ“Áqs²¹p`˜’ús$&M\Ç\Å\É]ºQ	bD\n\Ârw6\ÃJ\ÂI\îø¡&\ã®Kw”\Ä‚ˆ·Ø’.\Éafˆ›Ô„oY-D’\\–\\Z\".[V\ãt«3}³t°·\ZšÁ¶“.S ¿ª%ºŠ›aZfr)e:$@\áIv\î\ä‡Ï±€KÀ¾¢\çb\ï\"8W\Û\í%.ä«¦2\â\r,\ÅH¸„¾›‰3Š\ç\r£a\Zød~®\ä’Ë‰±1AR\ä\òIrƒ4\òA\Z Š\î4bIgZnK\æ†\ÆKR\ÄE°\İ13|›„—d\nú±%_¼Ha3\ÚÀ6	\ß\Ğc»_x\âúÁ\nÔ„;\ë…Á\Ø_U”G\Î\Â/\â2{\Ğ\Ò!!’tP,¸X\r¥‚›\Ê\ñ\Ğx;\õQ4\"j§[J&±¦)~)¿5\ñª\ôƒ\Ü\ÈOIK]$¢\Û\Å5Áøc\İıaY\ãO\à±uDKoˆ–†…¬ù!\ïG\êB«`\í\É«\Ö\×\ZjDŒŒ½Å¥	ˆ ¹M|KŒ¹‰š\õ$š\ã$‹D“¢	§’¤9\æ˜\Z2©“‰º2!iz†\ã•;‰s¡~~»\r\É\rX°\åp\'-$\â\âB–Gb—ı‡Á°r—ü£;4¢¤\ÕS\Ét@ı¢(‰&·\â­\Ñk/:‹7‘%1(\Ö‰/‚\í{Oe\"û{Šœ1G\â@ DY\Êød\r1¦mĞ½U’Õš\ö$šI´²œ(k‘ƒ	¹F0ø\ö<\"4¬G\î\ÃY‘\Ñ#iMdšHË—\ßLy¤!®­Ñ•+4X7¦\Õ1À—G-\ß\çÙ¸ÿ\0qG‚\é!F(\ÍÍ¢\ßQ\í£\Ü„\é\Z§\Ò\óG&FT›P\ğ3#!=\ÆeBÄ=ß“\Ù\É-\ã\âcXf\r†\Ò\È\ö	\é\æ½m¾‹\Òi\è\ÉUcg82&\èB\ä\È\Ì_#22¾\ï\È\çÙ¹?K†$g„=Ç†´I¦\ô<Rú$\ëL}D\Û\ô\Æ\â\ØC¢rv1ƒ\ä\Ú|C«Ü½—\÷¸i\ğ£±\ÃXáµ¬ƒak’GD<i\îZh•tn¡6*:vS,!­\Ø2h\öwù—\äc\ì,ceRQ8«&\â\ÑÔ´¡’É¬R9¤“\èe\ÚˆsF\Ñ`ş\ÎGØ¸\Æ%y lvŠ\âe\êb\äUš\Éjn““\é±8«F,{Õ²h|`\Ë\n\çÙ¸=O\ñ\Êc‹\ò\"FmU\õ@\È\Öı««}Y\Ø\Øb\İ\'aCÚ‹\çÙ‰\Øk]\ì6C¦\ê ZHIV\Ğı¥¹,[Š¦Ë2*\çB\Í\Èy¡ZÛ›´[>i~}™² \ë?¡€\â¯@¤u!dT‡8,@\ôN™\èInqW©Ñ‘#6;ı†lÅ±†€…\Ã\çÙ\Í!M/Ÿ\à³\ÍOJB4©i\â—&v£\Å&‘ª\äê¾†5š7¥Q5B&Y(-\'Ÿfa-\ê\è£À²s¨Œ	Ö“EŠm\é\"±«\Ån\ö£¡,M\ã`cC‘Ô²`\Ş\÷ø G>\ÌX’n\÷c\n»‹q`\óM\éÀ£j*­\ô¹\õC¬Q×¶­£7Tk4F\æO4w>\ÌAç¢¨šI&JŠv\ñEBª\Õ4x›\Ò\Ìp/˜6\ÖÁ^a]:6<±cHWŸfl†Q\'Œ\ÈÅŠ<\Ñ\n\Ø\'AREO>Š\Ö\Ä1\Õz\nÁ¸cÉ–GhLHÿ\0®\Änr\önÇ_a‘°¦›(¨\İ‰m\èÎ‰&¬D\õ<‘Hz\ËXCZ$\r#£³K<\Ã\Ñ~ \ÌX P@\ÉP-¢I¢¥‡hŠI\ÓLª`RnÅ„p™™ª\Üx\ğ\öv\Ş7yXˆ02D.Â¤\õÂš­zÚ²X±‚I£¸\è°\ÜL\ÆF\ò+M:5f</\Î;Î„,ª²v B“k\Ñ\"+Kor\ÃĞ™%ß¡AĞ£ND\òbnF†-†\ök<Fù U“\n.\r\êè„¨†\÷.\\UPA=;U\"tI’\"·u¾†:TN\ÌÄ‰c B!T?“\ök—h½Ÿ¤—Ô¹\ô¢G4ŠwW¤ı=\ÌD6-H\İhC1c\ß\öir\ê_\ËÑªE2M\ğeL4@\Ë\×\ì@\ë\Åt:mK—âŒ¾Œ*c¤é˜\É~\Í\èkš0¢\Å\'@²_M\Ë\ÖoG\è[Š\æ²ù®úO4\æ^´5 ÿ\0šıš\ã1zWÀ\é.•*OC\ÅQ\æ—\Ó\"¯bzĞ.¬{˜R\Ñe\çCÀ‡•B·ºı›új91	‹\Z,6°…¥~td\ñ\ê˜\ô\ÃnµpDB\Ã©a\ä•q™¿w>\êN}™gz^D¥\Ï\"¦\Çc¹#2oDJ,X´h³\ïM\ô§\Ô\Î\õNÅˆ\Ñ4—¦.2Á.%\å@\Ñr\õ\Ü¸\Ü~§Ù¨\ï§\È\Ö°œtc\ÍI\Ñj\Æ\ÔC¯G¶¦ä´•Áµ\'\ÒŞ\Æ\ñ`N\èn\ÄÚ‘—$dR··\É\ìÔÕ‘ÁX,\n\æ	½S\â\âB¥ø£B\íH Š:A‚üú°3zl‘›y6ca:b6K»\'³\ÍnnŒW‹\n‹šy\Õ~‡zF‡¢’\ä\Æ3²‰X‚xF\ä[\"\Ş\×\É\ì\×;Å¨•\è\Ä\ènM‹¼Š’\é\"\ZcD¿B\Ú…0\ô–N	À°mQú®^Î“\rZ¢\Â7ŒX¡\äL“m0G©Qâ«Š\ãW‚\Ö\Â\àx£#gq\ò\öoÁù\Zpt\í+™\Í\nˆ‚K\ÆM\Èsü?:7,2,\èŞ‰¤W¡üÿ\0\Ï\Ù\á)d;Vyªl`\Ä#Ï¡zm\éZ—z¢—[\×Á\É\Í#À\ñ\äË­;Rµ1\ã½ù{7ğ¦ƒ°D›Œx ,T\é\â“riÜ·¡s\É\çK‹\Ò4¶77$\à\æ.\Ã!»“\Øı®¯fş¯QdT,n,™TU”TŞ’#\ÅQšN™\ô\İGM\Ô<h\Ü_q\ÚX±Na\âoÔ…¿²\ö»\ÔyF\ÑUcÉ„hTµUWs· µ\Û[\Z¸\ÇN\Ã\ã\'I$²=\×0t{¨ù=–°±ùÏ‘b\\Å›P\Æ1*¯TZ“\ë\ÛĞ°\é’\Ã;¢\Z\"\×\Ùc\Z„Z´’G\ëug\É\ìÌ®¿\ö…‡j\áV1:\èÈ¶‰\Ò\Ì\ëOAR¦C\à¦\Ù93è“‘\ÓH\Ç\äf/\Ü|¯¹8v$°\Ö\Ó™\ÛJ2-=\'|zE\è\İÇšf´‹\ìÉ·úG³R\Ï\î\÷³va\Ø\")“¢”,UQ^²¤oY«¦F\ä>¤†¼Û¹o{4~\ã\ï\Ü·` …°ªº\Ó~„-2I:\ï\Å\"³WGj½,\Ã@ÑƒG‰\ò7’\ä½\Ú&·\ïf±H2(#sbNp1*“\ÍUl‰\\\è\Í\"*ı¸\öuzlb[\'\ä\rÙ­\Å\Éú1a0—ø\öo\í87\r·%R\ĞD\Ül¬U,W\Í2\"ij½‡\è=DŞ‰,1\Ó$oM\ä¯ap\Åv\Âvú…\ğ†\Ìı·\Ïs¬b\Ôd¾”½^5+\Ñn4\Íl:Ú­¡\àÎ‹\Ä\Ü°€¤¡GV|\Ë\Ø~Ûƒ´¹®^¬OIMUz‹Š´[\ÔÜƒ\Z\Ï\ÅI¸­F\ò\ô‡\Ø\ïE<³\ä\ö^\ÚDs».{˜´¬¢N\ôNŒU¸Ÿ¤\Ì2i\ÑÀe(dİ›]Œ\Å\ö0\r\Ä\÷7\í\äY\ì½\Õ\İİŸ‚*Eˆ\"‰Qh^’£o¢L±›\Ö\ôš9.l\Æ\Â\Å\ÄX,C\"ùq\ğ3fn…ıı \Ëwu\n‹QP¨ª&Š¶$Tb’N\Ú]$VbI$rmQ\äC ‘kÁú*\ÊI_\ÙÚ\Ì\ß\n T[‘cb\Ål…[ª$±$’7E«Æ¨\ëTRU\Z0¡v>nÇ»gC¥ù˜½œd\ç\Ì\Ä-„¨™4ƒ¥,@«b+\ÙTXQU¢ş«pX|˜U¹$\ÒYıY€½›ú\ÍÏ¹PE\çDŠŠIª\ä—Á~jŠ-7\Ñ*®“I-O\ZÈ½ccc&4S“şŒŸ\öm\ë\ë>Rù$qH\"\Ä	Z²\ö.\'¡f‰TC}v\Ñ&GÕ–\Øze\èÊP\ö;S“…\ò¡s\ßÙªŸra\Ä\ì\éG¤£4û\ÔJ«%úI\Õ\noX\Ñ5Cji#!d”\Ì¹º»3ÿ\0r0ŸfŞ¿ao	‹\àC\\y¦\ÄQb’ø\'¦«›RXF+$\è’G;\nF=eFH\ğ`Ì¨w¸ÉŸ®\ä^\Íü‘j¸eùØ¡Y¡\æ“Ešn6\ÑqN\â«IŠs‘¡k8,2ÚˆšM„5¥0 ±Š%Gs|3\÷üû9;£WfúU‰¦i»®\çE\é\Ñ~	Ğ³§\ÈıI°\Æ\âf:\r`œ3&a’\ÎAú\÷\"»\è©\ŞPº\rR6’mO‘@ ±\ä\óN\Å\ë$\Í§b¬‰’:±Wp\ØÆ³#\"yü-t^\Îb\ã|†P@TOš*xªlLLB,[“\ÉĞŠø¬\ÖzUÑº`c\Â\ô¸\ÇKC-1‰\ÃFbU3\Û\'³\ÑO%ŠD+AÉ‚j¶\Ú	¸F1H\êDi\É}9!C¤\ô\ÕIƒb)pd\"N•wş\É|¶·³r»‹{)›\Ä\à”+ºµi \éF.]U\Ôx —\É\æ‘b\Ó\n\é’H£ÑœS1À“qW&\È\î\\›bR\ön4eø\öj\ÂŸœ\ì	[\í¥\r9Š\ì6Èº\nx;’I‚)\"B\ôXš[šf·\Õ\n˜ V.ÄŒ(H‚p@È‰¹\r¢Lp\Ä\Ñ\Ò(\ì×³VFÂ˜>\â\ÙÈ˜ˆ%t\à… ½!\æˆ¦,)‰º^­’\Ë\ğK&\\^‘\Í<\ÕS\Õ h°6JB;<·&\Zº\\³!\n\ï³\è\âr]Á#†Œ Š\ÌG\Å!>\r\Ñ(wr,TTT.=t$$Z\ä¡RQ\Ö\ÄMĞ†B¹nKU“$Kc\êE«†­E))5ƒ2‹a¾n\àµ>\ó\ì\ëMBHvV-\Æ\'\à\ïú\n\æÚ¶e‚-‹p$ Äˆ„HĞ¡©b\è†A\Ò:ˆŠmDt\"\Û ‚º£¸\ÜmLÄµ\ö#¹Un\Ô\ä\Å\Ò\ñv‘+·\ØV·<&=‚ªKŒ\ö†	/ 6¡†«•¡Áq_q9 C\ØPrK|ˆ%;–ş\ÈQI½Ä‘\÷ B7›bQjnŠ[\r±6\òw G\æ’\à\Ë#‚9,Xlt¡¬¦\Â\r\ÂD\Ô\÷²‘À¢}«r•¾\ãt>\Å\İH¶Á\÷K¦I8ƒ£a5¸¸\nè¸°B.¼İ‹/±\Ô\\g’\ïDuz|V\ÇDx ‡#a\ß\0¿–;£ä‚”K«ÿ\0$e\ÊR\ì\ÇX\ÎÈ½µ\÷|ŠÀ¤_\Û/µ$\Ò\ï#ù}Q‚5\áaŒ|WC†l`%\óQ‹pA\Z\È II:5†\ÊşÜˆ{~¦|]¢\Ç):\é;¶O¿\å%¯\í\Ø|Q©MA\ÏRÀ\Å\ï*`ßœH^¤q³&Wˆ0\É\õLI\ğ\Ë\àq¡r\ëBs\öa\ôQ3\ì›3›\Ès±u\ìI~f\õ}ƒ‹¿pÀ!\rJ\Ê\Äw¤ˆ\ß\îs\è*-†ø±ŒşIùÁE\ØQ„\ò6g\Ãü\Åıt/\Û\È\óÿ\0D¿W\ö6ÿ\0³\î$\Í?}\ÅÂº[|!I?eˆ„»[\â_\ôK±Ø§\Şf¤\ï;\Î\ó¼\ï;Ä£Wyfÿ\0ı\ğÿ\Ä\0-\0\0\0\0\0!1AQaq `‘¡P±Á\ğ0@Ñ \á\ñÿ\Ú\0\0?ÿ\0\èŞ¦\â´5HuÂ²u~bb;)‚Dn¿\è¨\æ\n®–±ú*(¯\ÄtWİ‚\n¢é„Z´J‰\â·1\èF”\Êüª\Ö›¶Ÿp˜H\Z.4¡F\Z¸\â»,\Ï\Ñg’_\Ñg™g˜\ÊÒ®¸X\Æ\álø·)a\Õv¦	D\Ù^I ;£q\ŞÀ‘HY,eI\Ñrüˆ#§\î[\r\ÌT\æ\ğ@Š|\à³\ï\Íİ‹´+8<@U‚Ÿ6;•$XYyBZaX>E\ì\ÔE*»!KÕ‚bŠ\ò„\Z\nŒ\ö%x£S&§™·´J€?úMâ¼ˆ*±’\Æ§UV{‘5¶\ók%øq0m¨·\Ze\ŞwoÈª&²¶›“æºŸ1S•‚\ğŒ’¥±…#¯m\ä\ÄTÒ½FH–\"Y\öşF\îË6«k\æ#y,k@‹\Èvû\ğ\è&\ï\óDvˆ\Å\óÈ¢À\ì†rŠIe€¹B1I\r§\íÄ¥ùŸ‘*\É\îŸ\Ú¿/\í\Í\ç\äú \Ç\éÉ\r.6\Ò\öe¥¯*ªÅ·U\á\Ô\Ê.1kµüM£˜\Ä8\Û\à‚7<|\Î\Ú\õ˜¨·q©µ¬\Í\ä5‰Ó½¾\Ê@½\ÍÆ¬qD\Õnş\Û\Z\\\á\íŠi ZµRƒql´U¤F\Öwt¹¿\Ú\Z7\Ü,\ê\ÕeE	XœG\Ä\ÛR”K\÷W}û£bül\n]ş`Š2q%\"\æ\ÉaŠŒ«%“Á¸û¢’·¡˜•¶&hYŸW\ÒıgE;]1­)\î%i;„YB»\Ü\Ê0	ª–M‡¢YU+\â­JK2ŠÏ¹\Ë2\Z®»ç«ºeº-W\Ôi*gUÀ\ÔS\öÁü\"tŠº¼\Åf}‰~\Î\å°\ÖÀ~Û¸>’‹¯¬+e\n“Ä©å‘m£\nPÒ€\æ\Î\ñ.gXÑºO\ïW\ÔMSu¼mK­3\ÊE}Án\æ4RË˜*\Ü\ÏZ	\Üjd\ÔNÅ”6oŠ\Ã.\ÃKı{6\ò†wŒ‚!¶R&úg¨4ª\"t—¬lQ€xKÍœ\Ì(±¬\é\'“¨•}d{\Õ$S£\ÃwN\â\ra`4·\í¡gû\Ü\Âÿ\0”Ktv™¨9,m†\ğ%Á\÷\î\Å\ÇÊ¯\Ùg\ÍL$\ÌW\ç0#u¸™Q/-[JLB\İ@¸‹\ér@R˜†\ÈÛ¨(ù‹\ğ¦¥\Åù]l‰»S\Ğ\Ó\Z!|\ÑqR\ÜI^ù˜»üı™³\ÊR-ø¨²Á\õ´-/\ôÁ~sCXš‹¹º ¬·©¹¸\áˆBl\ÒVÄ¥«<bE„K´\r\æ0|\n vXÁ$ıµù„„JÖ¡)pµ±0º˜v3°U+\ÄÄ¨¿f×„»‚•®ÍŠ¶{-@TI\ÈZxn\Ì\ó‚[ºZ,C6ü\Å\é˜DWˆš*bz!r	x^n%ÆˆŠ–p(ki‘cYµ{\èt\à±vÖj/k}!\ì \ÍC\Ø#~¢¦m\öf\Ø.%\Z±|‡\óµe\ã5e\×\Ôg1\Ûqr³¸K°–¶ˆ\Ù\Ó*i\r–+\ŞVh-TMK%(\nZH‰b\Ùdv\ÌÀ¸¼ù´n\ŞHE±Tx/¿²LŠ+\Í\Ô\Æ,\Ù/‚2ø#­0¿¥‚–h7.\0pTt²\×6œ;\ÌÀV`¶ a¸J€/dˆú<U•=³>*	µ”5…?(Ğ¾ıÀ3\0©n¥.\ÉGRİ²Š•Z=IUÈŠ%c9‹–\Ô`†\0m!º3hÜ§d¢·#Œ¾·.{–u*°¨\ÉY*\á\'k¯ÿ\0œ4\ïG\ÌWK´±Ã¬ûr–\"”ZˆÆ¯ø…\ã­E¦u6Zz¥¶R\ÌØ™‚›Š€,¹IØ¸Œ0%\à\ÆGR\Ş`W\Ñ`±=8†ªZ\Û=\õ*\Í˜´ÿ\0–XaX&ş\îQŸxş¢*S‰VYº‹k\n\î!\Ü!\îx€\ór\Ô&ı\'Y†¥	­fox€8t\Ç8\Ù:\Î\ëbüË°d[–&SŠ\ÇR\å%ù \Ún \×\ÕY†ù‹.<\Â#Qo[‰Œ6\×\êB;C\ç\ìe¨\Êı%@Pºd\ës*2š\ÛÁJ\ê?—\Ü@ÒµK5(‰\Ñ-2ZC\Û\0m€¼0¬¯t©\ôUÀ®›\Ü\öÄ¨\÷F|µ`‘E\Æ\ä\Ó$n\Í\ì\Ñ}0´\Ë\ß>\Ä|Î‰Y_/Ä¼13M²9‚\ê¦(»Lx©\åÊ¯ŠYS	BF\\qg¹‚V{±©¥¹«\í/©º-2Õ’&+}‚—Lˆ\Ùüü<AEj\Ö@\ß\ó\Õ\"r\ç¦\\È˜\Æ\âŸƒ=aS\Õ\Êı’À©U\r5(\ót¹^¯§\Äø\æ]J`\âY\ô\Û\Çø\â®89J&z…Ë•\è/\Õ\ãS(\é™\Òg¾^^3\Ñ3\ØKJ#\òµB…Kø—\ğ\Ë<Å†¼.kH¨Tho–,·x™b\nª«Ü±\n!C«\Û(A\óù…nÿ\0›²® AB\Ê\Zšİƒ–Ê·ø”‚Ù‹xÁšB¹\ç\Ì\ê/\Æ+Š\óL¦SÊy¦\í![r¼u,¶ ù¥¢\Îø\ÈnUJMÀ¹µ®¡ŠY¨„\Ä))²‘N\ñhbÆ¡Qg 9§©ŒS´˜\ğ\ÅJ&•‚YaÜ¨\Ş6D\à”š§FQp…\ñ\Åc0u, Ÿ\æD\á\áƒ4:w\à K¹]ûWpÁ*!\éƒ\n©O1\á[%ÁS0=0XB® ³1Ö¥€\à©^¼Ü¢%\Ê\â]*2,•Ài”z˜]D•\ô¥¥DjS)”J|K!‰ª!\ÍjS)+Ì¨h:J€²UÀ½@;\Æfql;!Xÿ\0\åb‘¤´\â“	¥s>^\Æ0–2vF·\óT\Ê`•®®a\áD\×lzR\\\Ö\àJx*#x—4JeJ\ôDù–\Å	w•	Oø*T®m\à–\ğJ®È¡V“`=F3\Ş\ã<9ˆ‘.%G›•R\î8ƒi;\àqQ\Ş\æxQ&J\Ãn\áf%™€\Ø\êSÄ´¢\Í@\âP¸K]\İ|¨\rÖ›u\Øk\Z\ïŸzYh\ôF\áü\Å\Ô.%rw&K\ğ|ú\ÃBc-¦Ç¤”p\Ô%s\ÍU\Zbr1TQP¸À¦n\äpfz&{8¾iç‚™ ³;¨µ\Û\î\ã£q³\ô8…µ\î-Å¨·-¾k\è©Y‰L»®JxŠú­\\5p!DA\Ôv…5»[\ëPü¿w\ö\ÍL+V&\Ó[_üV£±²©ş]İºe¼ƒÿ\0H)6\Ù\êa«W\Ò\Ù\Ô\'R¦º†\î\r¡1,G& \ê*1\\j{\óeLµ™A®oŠf\ãL\Ãm#qâŸ¢\Ö%Ä¨—Kj®Wüf]EŠ[.80L´\Î\Û\ÔAN¢Ô²=ø\ò\î(y[˜£AU\íR\ç\óq b¶†–\Û\n\ä\è	v.	^fe—g‚\Ú\"@\à\Æ\Z‡˜\Å4a\'„\âˆ\õ+Ìºo\Äù%‹1U\Æ\×\Â\\J\îm¹i¥™\óÁ$k\é®/e\Æ\Ñ,ƒYS<*ƒo\ênà¹¦¥¯,\Ï\ô²\Ñ\Ï/x™™”\Âû\â‹\áKD<t±[½!\ïÄ±—‡¼¦n,ş U¤½ÁEÍ§©L\ô¿\Ê$%•\èaƒŠ&‹®]\çW	¯¸®_30{®\ìFœ\Ö<\0‹/ĞŠ\Ãp:L±\Z\åjQ\åbœ$(”ql\r\Ê¤G\ó+Œ¥\Ò=»ˆ;\ÔKÜ£&±R£c\õ¤¢Q\ñFQ*f\r\İ\Ã2‚b½c™D¹BÎ¥¡\ÇH\à£PÚšP‡wÍ–\nL\é\âW¤\Ê&B5©ÿ\0“Ğ²‹M¾\Õİ‹\×+úÆÎ¯¨ùi‚ûnL^+\×\0¯2Œ\Â\Z›—\æ¢¸\ÄQ	r4\Ê\Â%W\×oÑ’[-™x¼Wú4ƒF%\ß}+\é©D§–S¨\ëU3\Í\Êze0>fe¼J\ñÁ\å,·Vı`‚Z*7®a\á·1Àİ‡\Õf\r\r]º\é‚pZXÿ\0$Ò·-•¾jV‹ \Z§Lz&„OaŸX±ì’š„\"\ïIGa\nw2\Ê\r\Ô*·|¨fr«”x”}a\èÿ\0À©wš\á”xš.¦x\Ç\èSƒ¿©æ—¸\Ï\×q/º€\n8u‰\Ü=«\è=ŒKxD¦\İ\ç©h7³,„Yq‘\íf?k‹Ñ»\\t[\r1-\ÊKO\Ñü‚\İL¹\ÚG\nj#İ•\Æı$½/1>“Œb„\ë\ã¹N¹\Ç\Ä1©gT‡½Ç\Ôdlú‡>>¢?K£ƒO\Ğ\ğıg\éx«_K\ğÇ¨Ï˜\ó|z’\Óÿ\0\Â *7`øF7}øµ\íŠ\îúÀ¯¤ ¯Í•—ş\ö\'z\"{‘DT<œLP«ƒxşBˆ\Å}’l]±¤e\æ\Æ\n$Bi\Üw°#vd\ÃG™dù»\nª©\×ˆ¾¿G8–\ìJà¦®^+3-\è™\ñ\Å@”\ÇPÙ\n­Cè§–S)‚\Å\Ş\æ\'|ıNùx\Ü`<“Ø”\ÌvKz\á\ñL:>%Ô´®D[^\ï6T\Ãxƒ€™+-\áJKm»—C\Ô;{D\ö‹I\×\ëf-\ñFş¿\è&\í\\¾*+¸\á\Ş5½VIµ»ş4)Àş2sz-–(ŠT\Ú9ªŒ(f\ÙP„•j_\rc§\ã,6\Ã…‘*\ğ–@]Js/´u\ô2Æ˜5\Íd`S¦V³*h\ê*\n[\é9G¢S*yF{CŠú]³|°\æª\\s<\ğbZ|si¦[³s\ZnW·0Âº\ÓG\Ã7\é¡?\ßIeW­¦·\ÌD\ÜV³,\Í\à§\Í1\Üa<*:®+)˜x6L\óú­…\ÉW\ñ%\íW\Ğ%O¯¢\ÇZ‚\õº¨‰~\Æm\n\÷WD¤\ï:’\Ê’	c±\0É¸!œ\ÂÄ¹q\Æ\Ì.…\Êâ‘¾-\0A]pJ`²“\"ˆ•\r’Ü»x´Ïˆ\Ê<¥\ÙUÜ©\\\é`«›D¨/¢/—ÕŸSF]G‹¸µq&_·×¤® :*˜µPŠŒ\ÑW@È‚\òV=3+aDF\Ò\Ìb%cn\ìùş†‡«½\çø\Êmj³Ûº+‚/KNaˆ¢®kGp\Ğ-Ô²eq\È\ö¨a&C\rP\Ä\È=X_p%4\ËmL \\;˜ˆ„/p,¸£}Â¹[\Î\áD\0ŠŒÊ¼\ËE[-Å¼ T½Ä©–bW\Ñ^©\æ+/\äUï‹©I\İÇ‹!De-A¦a€5\ér¡.¢j†&\åÅ3ˆ?„¼P+\÷ø¨\è\Ş¡\"y‹)Q]\ÕC~‡\÷\Ì#\Ë0@^ZxO¨=7\ïÀ+ø¥O5x´¾¢¶Š\ò‰D1L\ÃZ†Á¸Ğ†\Û\n\Ìr\Ê%xj¦µˆ§d¨m¬oXW™‚\Ù/\ËW\Ë\ó\ñŸŸ¬©WŸj\å´\Ä\÷@®«B*™W˜\âe\Ü\Ô\÷F™\ã\ŞbŒÆ2¾¡·WX\ã.\æ¦|F»<J„—\'¡S\ÅÎ”n3r\ô\é\å\ìÍÓ›Y•¦Z¹y›¦c}¿‚\ëûfg\ÇW\Äa°t_L4ÀĞ¯¹x\ó7üJ|ûL\õP˜mù_˜‹va»”¡¢†Á7iC\ğ\ÃÔ¸†\Ç‰•5ÁeDa\Äa® D™\ÜE%»”uK@°F\×38Ğ€}•Y\ó)\å\ä,·\é\Çƒ\0—²\Ä/È—ˆ\Ô@¬O¦\ß2\ïQr\æWsq%¦%^^;Œr\ë¨Ñ\Ä\èK\â	.U¸\ëK,£\Ò\ïĞªµ«\Øaı\Êb±PzB…fHk\Ò\æ\àA¦=\î;³\Í\0ƒ\Â’Wv\Õ\İ\ê½\Ï\âUW®]\ÓA¢/\Ê\Ø:³L°\óe…\à`<F•w1·P\ä0¹‘\å7Q™\n¡¹iÑ¹€\ri\ï]hˆb\åÛƒ\Æ5\ô:zƒz&|A\Ö\ĞZb[¬.Y\á\â‘?C¹Ÿ¡=`\ÏR—s\ÌJ\õ\ÖS‹7ˆ\à®kš\ÅQp\á\nuÒ¥¢\Ê\"(\à’pÀP\Â\ÂYu¸\æfı·BT¶üÚ†\è{\ÇV\á%=\Ô\ÆV\Èª´•\æ\àª\êCvB5	FF·/›\áCc Àú“¿\áï¦4\Îv&­/¢¥(LÀ…&“o¿¢>\Ø0UÅŒ\Â\Êa™k\Ê+\åÀ²;~x@\Î\ó\ï0şb8‰n\É\ó=2\Ş(•\0*NK\æ¸f{ÿ\0,Ô§f~Š8U\îQ0ª‘xÃƒ\Z–¼P””‹!f«¨4¡˜\r\æ Î™²{\ÒU˜Xe\\`® #4\Ä\èŞ¥¤Œ\Õ\ÎHæšBO&™N\rUCE³)–#Pt@\Z…Î‹x`\ÌuW±½\Ì*‚¸K†Ô†\Í\r\Ü\n\Ù(oH™	n£\àûS\'3Iš¡–WW\Ü+¨¥\æĞĞ²®a	«\nP\Æ\á\ß\Ä\È\Åh\Ô5\ôl–³Yú\é{–\òÃ¢\ñI\è`Œ\ÜÜ¤\ï\ès\Ë\Ícb!S3³2ˆ¡Š\'‘:–\Í’ƒ„¯\òˆŠ\ô=Á…+\0\Ğ\ĞvÀ^]·XÁ(\ZøAjRÁ™b\ğ\äc«Œ!E \éÄªµ›8\åvwK*À©RWƒl4;¿X9/\áZK®£g	-\\S9^1²\åh\İ\\=0‰jvN¦3\Å\Ë\ÖU*©º\æ¥\Ë[K­ø3§\Z³B!c\Ì«*\\ß‹ùÿ\0„\Ù\ïÉ¸\ñ´0¡Qm¾p\Íıtx\Ø}^¸c¨{”O\í+Æ¸j¾®@<k\İgu\\nøFT’#*Ñ•\é\\u9o˜\ÙK…u½;\ö›Šª GX/jËŸ\à\Än˜¡´›\İ-…¶€½À‹‚¦\Z–¬B\Ün%0\ãÄ«ƒG‰¾ e|\Âø3\òGWPX¯\Æ,\Ù/\ìYz9Ù˜0!\í \æÉ’\å>s¨!¤…]MRX•W\ÆÏ¼§Ä§\n|Je}5™\ó\Å^%~”m\Ä\Ä\ê~c]\õˆ´¡\î<	\ç…\ï\nQ¹KJ\03\ôŠ0‚Ì´\0l<¸\0\ğm-.\\¢\"c»”ûjX\'\ëCA\á¸S`º€[‡P\ìFµg©vß¾?‚\ÈY{ /‚.˜U¸§ù@š‰•J†MM8É‚G\Ì.§\àË£\òŠÈ‘†.ÈuM\õ/5Š¥\"A³y\0‡Ó„N\Ñf30\Ë\Ä&I\ê\Ë\ä\ÊY,˜f™ù%¾•\Çi¼\\#|¢\â(8‚¦,)ú\ZÖ0M\Ì\ó\ÊÈ¾&±I“P©»—\á…‘Á¾¨LgZ£wD!¿\Ø& ¤,^7ˆ\ê)ˆ F\n\öE\Åb\ÙD\é\ö@Pª&F\"¹„\Å\Ì\ÌJ`¼\éxzv‚À}\ãÃ“ø+µ¨8/¢¦\æ\"\Ä[¶]Âª€X**£(\İJn£&fe\é1\Ö)AˆfS7›.%+@¬P¦\ñ†\Ü\é`\öDÎ“¥K\Äs \æ\à\ås¨1>NV¸wSÈŠ»æˆ¢,‹P\ó¦™\İK–˜¦\ãÃG:\á4­@\ó\ì‚Ï¼¶ù–n5ŒÀE\Ô7tŠ_0u¶#w•)C\Ä\Ìs	¨eŒjk”\äS(Y—A*$+¨S¬\ÍPp(\Ì\Ş•\ô\Ã\r»YDv¸/},\ç¨\"Yÿ\0}j¢¤\İhƒ»W\Ò@^\åÜ´MT4LÁMfq&pªÀ\Ã	T]AB|B¬\Él™\âKEX)U*\Õ.\ÍGl@3¿1!ª\áªn.œ	Ó´À0–úF¥\öN¦–¸ˆ.8NÄµFÉ½\Ê\õ8¤Áp\ÕE¨ƒcy5Üº—QnXp\à\Ï¢\æf—Z]\ÄRS\âR)J%\ã{d‰#\îb2UH\Îw\Âgû`„º<G)\"\Ú\È\Ú\Ä\ê”\á•=$³\İZ\÷x\ÂŒÇ’S\æ›”\r\Ç\"E/:\È1:\\$9Å¥é—¥Ÿ\÷ú{\Ün)OX{!\ÖXıÀµjX…\ç\Ì\É\\\r’\Çÿ\0´Kn\n,‡ ¨\ì´L>°\ã\æ}T \ébØŠ‹.gpl\É+qª\à\ì\Ü<Q¸k\ÅA¶9˜şš•uP¨A,ID\"\Ø7À•l³®m…!‚\æj _sP\îS\Ç\r»—\á=³\Z\í\\4f„w\\\õ<\'KË—1j(ŠHdº	X<\Øax‹-8\Åv™¨b \ìh[Ású\Èp\ò`l\ã&Œ™+%œ \Ô4yf\rBú;qh\Ì\rZÜ¥©¹Yj –j²b˜\Ûø\Ùr¥]¶ø\\ß»šY/¢‹\ÌF¤½‰£-¥Â­µ\Ù@Á\È\Ï\Ã\Ã\r$\ËP\ÍS\Ö`\Î\á\0 S\Ô0I˜R\ñ›h1[\Ğ\å\í;¬*R\Ó\âÁ¦&.\â\É™Üº\Ä8qC\0ı;\ÅmK\ÍG\Ş4N\å¼A¾3x1\Zz¡˜Q™\ê8\Ü‹Q\ÌÀN\î|’ú,j\ê-±U‘Â¸TD\ì˜\á@­\÷ú€`@-3U\÷\"”T¹$­}\ËCVA\Ğ1Q@¦Y…S[\İ@„\r2\æV\ÑCÀ0xˆ\ê\â(\Ì¢+\Ş%c\æÂ¡¡\Ä-€\Ğ\Ê\á`Ö \Äûa\ë\â;\÷TÇªˆ¶«F\Ï0\Õ.i5{\î9h0\\ \É,+q<\Êª!\Ühg7¨pÁ\â\Ø@§s\r&|\ÇJƒf¢\\B¸Š†HGK\Z—ˆ²‹.\ÈY\î\na¸`	¶\â\Ó\0¹—€\Ë\à¤S-=L9]\âR^Äº\Ø\õı’\Ş\Ø+­O†g\nea¶\á\àÇ®m`S‘2©\Ú\Z\ã	p­Ô´²,¸(ÁUwEXY_2\éÄ°üA\Îa€»šÜ¥\r\÷W,-¯r:©ˆ`U’z[}DQ*¢oÀ\r@ ²(…\Ã[¥ˆQ”	\ÜqL‘/(\r]ş¡2©\ë•Šÿ\0»oœ\Ø\Ê\ĞüFr\Ğ.ÅŸ“5%=¼kE±µ P\Ú@%67¨]\Ës\Ú.\Æ«\Ñ0[©›Ä±&R±,EùK^\ç{”v&\\Ö¿\rKA!ˆ-Š¼L‹šA]\Ëw\0@”\ã~²ın«\îY\ÆIWœ‰`\"\ï¿\Æ\Ìp®#…nšÄ¡p-\Õ\Ü\ô5+£*_ÿ\0Ñ\òºı	*|‡;ú0š\Ì\Í\İ\ÇqUC9e	’\éq\î5|L\İ(±p·Ì¹h4\r#\ìl…‘\Ó\Ë\÷<—Œ\÷*\è¨d$8—–X\0Q¸\è][VÀ1¶S%D.®‰`3º¢¼Á(\íz€\é\0…WD1ÿ\0|J_P´_h0µ-Ã±¥×¬bˆ­—0ˆx—Z‡Gl¬)‡Ù‰D»\ÍjR¶£e\Ó~Fd^w©Liqdk„€l‚£¸³pUŞ§lU+¥\ôƒHDŒ‹\æyµG¬G9\\Í•)ˆ\ÈOn8!H\\\ÇD\Ş\á<@0Œ¸E=cJbdĞ²!SY\ÏdK\Ü\ÔvqGˆ”#¨{\Ü\Ù.|\Ë\ğB’\êl7Å±·0\ÔÀ[p²Œ*œf:\ÜXb(¸‹®L\æ\æx	KO‰Li_=FO-1\ï\0\è(ø\Ä\í7Dcy•3½‰l*YS*1)@e‡£r\ÍªU¦¸\n\È\êDƒD‹)\É0\Ğ	R¯ø\0\Z¨VÙ˜(q±EL\ì[Cı‚e™j5b)¬<0©¸­À^‰@*eÔAnx¥œ3\æùP–dM»¸T¶n¢\à\Å\Æw—R\âª:vü\ÅL	cÜµÃ±›™+\r\õ§P¸vj†\ñ2\î \Ç5x2DÄ£\Z\Ç_H¶f:™e¯\'@GpHR•Í´\Òm\r‘&)\íR\î\ŞÂ›^7\éD+\0–\Ëb¥\ï\í#‡Ş¥»K\nR°lW5\ÖP\"H\ö\ã\Ğ‘{:ƒsd\Ò;\ô\Ë×¦\nK\\f±\\¬ß¦¿ƒ£\è \ÇzŒ\İ\å˜E\ïMeT\Äµ!Ø‚ƒ…\r™@\Ú\å0ˆµ\é\à &k5\Ê(B\ç\İA\ô)T0UcqY…£\Ù)O3=¼c‰bN\Z\Ë\ò×ƒ\n}&\ö™\ê%3Á\Ô\Ş`gd²>\ğ\Ş\Ó\åš\ê\Z&B\Ò\êk£\óx\Ã-\ê.Ğ!Q´=&>k03\öˆ4\î5c—\ï=4QP¨…L\ãÌ¨\Æ\ë=Š€·pF-¸ş\õ\ï\Â`3ŠoIOL¿œFœvbhŠ†ªj«\ñp0º\r6|\0\Å\â\ÒTH*’\îvÃ¯d:d´\Ëq,}#`¢˜Ø¶W\ËJ«:\ôx—Áq4e Q+j\n[C¡qlvg1\Ô:%š„N6¨wLÇ¼%ü“$J\Ì\"œ\0+&e\\J\ğ®#ILÉ”X\éˆ\Å\×\ÑN\à%r\È*P\Ì¾.7&\Ò\Ï3Ù†˜˜¨7¸S,«”–¨›céƒœE¥\ÉHM\é¸6K”QxL´epd»#e1s\ZÂŸ$dmæ›jZlû{\Åø{ÍŸMF<31“¸CD¤)–U\Ë:f!f¥\İ\Â^\ákD\Ğ\Ä\éSy‡Ğ‚,tÁGÄ¢«£ø\åU‹¶\ìC1\ælƒ¸ó¶Ÿ™u—Ô¸$@¥\Ä3q,3l-¨&\ÄÅœŒ\Î\èp^æ¬¦G¯}V\ã\ö\ê\â®\n»–\ÜY_ˆ‹J„[úˆ›•rS2n`ÀY¹µ¨t\ÔÏ‰\İw:†Ø•1\Æ\å)%Ú«qJ”²&/\0\Êå»\Ù^¼ZRDl@b¥W\0½øv\Ë\ğeø©’\ìbYv\ñP\ãF_\è\ì^\èD®\"ª…º4MG­\ËD\ìüK \ÖU\ñ(a…³\ëN»ì˜¸­2_\Ì\Ä\Z\é\é”\0œ`¨eÍ–œD­Bš¨!ff\õW\Ú!`­‰j\Îÿ\0K™ü \n\Æ•pª«\æ\æ9û»G\Ä\Ïİ´LX9†(\êa¤<¤6iYr\î\æNßˆ\Î\',a)Ü¦Ë»zŠm\ZW…`ü•<ºO\Êÿ\0\ÙJn$PšuQ‘›b\á\Ü1Á\Ü7øs\ëuO‚RFY\Ü\Û1i‰l\ÍÚ¥¨e¢W:<%o2\ò\r	ƒd\ò`\ÜA\ÅOb¶©Q¸(\Î\\Bij`¨ AIq‚­•\È`%\Ã	\Ö¨½.Z¡C†Ğ¿,*¬P#ˆ\î8[\ÏMúKgŠ\â\Â\ñ.^´°\Ø^²\Ü\0+\Â\Äo­1€ \È\Ü	\Ğ\Å\0b#\àKV•<*:?3~6¦}‘Òª<\\—\Ú\"É½yŠ\õ\ZR@­3\Z\Â\Æ \\¾’Š‡@g=wŸm\ÚJ;ù•v/\â(\Ç#Y%X’­M²C¤\ĞK†ƒŒ]°«)ˆ®¥^nF\İ\Æt\"\ÏtO„=È¥Q”ù›i\Â[c4Ú¢Œ\Zb\ÛÖ¥†8_–5\ë3l\É+Š\Í0@\ã\í¡\î\n\ôÎ‘½ZÜ½/DaºŠ+¸¢œ\Ì)ú¸Â¾HlH¡v¼;Ä¡\Ñ\Í	O§tKP0\å\ß\ó(\õH5\İ{)h\íXşfH½­1@A£‚i¿‡2\æm»%\Ğ\ï\Ê\ôE#\ö<Œ\×\Í\Â\à\Üa2!\ò´`·dz|\Äru<®\n\î=T\ñP\Ï88‚w\0{‰œf€¦{b¾>b\Ñr\ÑY\óK¼\Ëj\ë|È€ù‘\î˜w/p·s\ß(\ÔR\÷\İ¼œJ«¼\\¼§·U\rFÚ‹®\å•z\ñ¤¡cl¨	kK‰VS˜\ÓxÁù#­4¿áº¬PQ»¾C·\ó¥\Ì6d”\Ã\ñ\î\å\òo[5»™\ó\Ø\n¼Ò˜ƒ*\ÍdB9pld\İ,+\İd\ÊmPc³p\ÖR\ì1}n¸\ê\ã.\é4e•q\ôa\×\È6:•\ß2 \Ã6šÅie’“NR\ñP\Çdz5\ÍI¹…²\Ò\ÜE/b-\ğ~H\0\Ô‘ƒ=•Kw‰\å3<Ã«­)¤%¹T ¹^¢ryš*\Ê ş™0£\ìDÀ[\ÍÀ†{—›\îl·†Ë¹•)¥7¿|\Ö:\íOV6S\Äİ¤\öF_©\ãÜºÙˆ\ô9n½\çX7K^À¾¦°“!–ø1d¯e\Ä\n\îa\Ğ\Ç~eÎ¸Uu. .5Ô°\Ù$XÜ³\ÛoS‡“>e€\õ›\n\Ô@+\Ú\Õ\\=HX\ßp‘\Â\ÑP’û&\Â\ğ\ÄwUøûsÓ€5\ôÿ\0dXùx¨l\öCbª·\Ü\ÄiƒmF\ÄüœP\â\ÜÀYš›A»‚’\Şe¥¼z1QEC\Ğø\à˜\ßo€\ñ(5x•f\à/P\æ \óha³€4Mc¼\æ\ÕB\\#\0¼ºØ„w5=\Ìw5\â\ñ¹™\õ7\î–Ø§\Âû5\èO:˜{&\êP\0jc\ás¢m^Ã›{%\ë#l²[\çœ\æ\ĞVK\ñCD\r¥Ä±3\Ñ\re¦|\Ü;†‰YQ†\÷>I—\á\Ù.\nqlj¬æ†‘™&2ƒ\Ò\àE	N\nc¸\êT½C^C2\ÎRşzŠ—…K\õ\ìÿ\0g‰\È6TJ/Ä¨†+&\óc\è\ì!\ïPª\Ëp®¥CP\âh\Ï\"W\İ\Ê\í	–p˜\ë‡o\rLº \\®Ô\î\æÒœ1\Ş8uS,x\"¨m\rH¦³S\ã)²¿<O\ìš\æg\Ç\öEÎ¥\í\rû¾\ÍAdE\Åd®\÷³-\Õ1Q¢\önøFy\â\ğ\ÊY“°–\Ø .‰\î¨8\Ë	d¼\Ùigˆ_L\Ì5ı±\ñ+\Õ%&›\÷›ª?Oi¤ş¨\ê\Ìa•SCW,\Ê\ã8cÚ˜\Ñ\Ü )z\ÅG½\à}ª_\ô!P½\ÅÜ¸•˜Pg¸-‰»\ï;CD¦|‘\Ü\æC\Ö+\ó¼\Ë\àJ%2‘\ÌEJ3S3¦¢@p_Ğ”^’©c\0\\\Ï8aXe“e¦\ñj(\îX\Ş\âŒ\ÒwfA:‰†h!K;º—(\ó·¯\ò‡\ì\ã\Zúˆup%J\Şj˜¸;eN\É\Ø\\Aš$5xX\ñ´\ğ\àcç†\r;!Up3²R\àxp·¦ Vm‘Ÿ<\Ë,@§x‹–\î\ãOl1Ãˆg…®1‘bª\ôbÀ!¹ª—ª˜‹\ï‰\Z\ô½\ÍÀ.e\rT¦³½ıš\è\í_\Ù\Ø²\ê\êa(\æXJ!\Ì\ñ¡Nÿ\0QO1\Å\ÜÍ’´Ù‰w¨#*\óˆJD-\Å\Öa0 \Ü!½\Å.8Z©\ÎX•¶Y\ÎE@ÙŒø ”DTØ¶\0\Ì\\Ys0\ÄGK\É,x”¢kù#ù¡¿wÙº>ÿ\0Æ•ş°j/hŠ*_Š\îtc¤ƒO\\´Ü‹“!]°q¯ \Ñ\Å`¡k•\ë¦8%\õS)R¥p¾¤ù\àN\ğK#V\âa\Æ-B‚q\á™8GHª¥Á5#*5\ì\ÃY\é‰\ïúe¼”7\îû3bW\ä~·ş¥úl’\ê\nÜ‘mJ˜0,\ö€\ÃFaN¯±…FeKs,ª¢b\î{\å†&<\Ë\"±Œ¼\×!\Ã\Ì\÷bÍ¿¬®ƒ…MA\ZY}q=S¬X\\É¹˜•1¥w*X}\'U\Ä\ë\ÃU\0E\0«K\r‡§\ôfx\Ë\ñPß»\ì\ÂTv”ıN§Wpl\æ\'p\Ú\Ü\Ù8f+3Vi\r„TDvB²Œ142\Ì<†VXr³qjZå„¾-±”\òqR–\Är¢[•Ã™q\Ì\Åo\Ş\Z,€\Æa†®,©k2|*\æLÁXLÚˆll_²X¯G_ˆo\İ\öe\ÕC³’\ğj|Bj[61\ê\ë‡hš\ã¡5 -f¡\çP£\É\ân+H¶6Ñ–†vJx‰M\"*Ï\åq\Ï%¶	Œ@£“o\Ö`£)š\ó™ê”}\ÕE·\×Gî®¢\ËE‡¢¿\ÄE.İ†ı\ßf~¬¡\ë\nü¨«½3R<\åd4r\Òg\Ìi\à¹C|\Î\àÚ¦\ó­98q©l¶\ß\ó*TP<\ÑÅ’‡$~í•ª=Ú\òK\Ó(\ğ¼‰²6cY\âá·3´ª\Ä\Ñ\0¸Ê\å2NÉ›\÷}™š\íq\×\É;5Wp\Øs\\8\ÂL\Ñ£‹”E¶¼Bœµ*‹fwr?³‹|\ğ\ÅLñ¢¶_}\ÃI\r\Ùf\r\ß\Ò‰\ï‚ù\å£\é3Ôµ3IÙŒ³<S~¡ı ?\Ô\ê\÷}™°\òÀ1ÿ\0¶\Ü.*:.9\Æ\ÂUL¨†¡M(b%˜³I¡:\"S#—\'p\×…Úœ\Ù,\à|ø¬ \ô\ïGT¡\îE»nS\ã\èw¢\r\ÃwbQ˜Ì¤•ø\ãŒ\Zb\"Üša<®Ÿ\êQ\ôoù¨o\İ\öa*\Øº_1\à§\Ä\İq\ë‚s\íYf~%\Ì-t\Â\Ñ)\ÊìŒ»†‰½\Ë&<D¸\Æ\æ\á\Í>“2\nm‚\İ\Ô\İ\Æú\ZZ‡¤@Å²Ë—\Ğn>#\ÆJ\":\Ïh\ÅÑ²6—2# ›£\àTTª™\nº—Z¨\Ï\ö•,\çf\êa\Ù™R-i‰¹n%·À8\Ä~eUF\\Î–fb\0.h¸Be\ã,\Ü\ÕW\rd¸U¹‹’	)u\àJ¾‹s\Ò2\İRes”^s)¾#\Ërd€H!®£¨ ;\Ü\î¦j[\Äf¼\ŞÉ£\í^\ëú¨j\õı5\öo\é²\ç¡ù\ÃW²¥11\Ö\îz¸ù=‘\Ì-—x—\nBfJZf8L­³*»Œ)†VqRYQ\óÀŒ¬\æl«ƒwÂ†\ÚK²\å\çO\Z£fy|\Ë	¡0\õƒ6G\\:x\âD\Ã\ì\ãÿ\0Z]\î\èOJx•\æQ™”e¡3Z7‡¥\Ë\"\Ü5(Á˜R\×)\å\Ö	\×!VF\æ\"nY­DS£w¥\æ¥²\åwP¥Î¥¢-@rÂ\Ë\íÁb\ó\Ù\Ö>˜‚½\æ\õ\æU\÷;\àaAY¸¾H”\Ôw|\Ê.z\ì™(\÷\É\ök¦\ã\Ì]¯\Ë0SÙTÑ‰w‚ \Ò\Ô}úTit‚³b\\n\àPƒ:–n \ê;\Ä5ZÀ‚üf‘\Ê3¾\0»’VK`8Î®3X£1\ØË§ˆ¾m\÷‚V£IW)\ğ\Ìù\á\Ü\ŞdÆ¶‹\Ä\r– /b^\ó“\ß·72¦%\Üjg·² Œı›R\Ğp\×\ó$W>\à\Üx#~\ÉR\Ğc\ê;bU#SrØ(\áed\İK1¹u\ß\õÀIl!*\á\\®¦p”²\Ëú\r\á/—\n\ô³²J\'¥y¬\ÜgQ-\Â\îjm¹G½S1J/p\ì”dm˜\Ç9@>\ÍVIüON©ù¼µPµ\re·ƒ<6\ã¶yBuš†¯‹\Ü0\ÔW+\ÌÀ\Ú8b<\à_q*Z@9B¡kˆ\ßp¾‹šZC\Zúi\ã6a„ûÀ\Î5¨—µ7\Z.\ë0tG;\ã\ÍÀ,\Î*#¤™–W\ì\Ù%a·\õÖ‚tH˜©HD¦IJ\á%£dk\ê¬\Û\ÇC¸mƒ7¨yD%,\ÂëˆEjm\Í^\Õ*»¿ ¶hTZ\ó~’\ìo\æ#0ƒ\ß	w®\Â\÷\ê\Ñ\în\÷…T\Ğ\Ş\î;-\ñ\r&\÷\Æ4a¢»¸\İúo\÷\öoaxŠŒH\ío‘RL²‚8h®\"È“×”Fqˆ¹ƒL·…Á¢_¬.‰si\îJ\Ä2\Û	\ïqıL`,¤Š\Ôh\á\Ô\İ]ì›„\ßÇ¡\ìM\á†\n\â†P,8™\Å=&?f½i°_˜pv€\Ù7†\ã\Ô6\á51\ÆL¼:p\Z\ê\âº0·t—X–±\çr\È\öbÉ‡{‰Pà±¸]w©\ŞY1\Üh,7²“Õ”5I”n\ğ\Ì\Êe3c“lx\ßS3o7|Y\æ2ÙŠ!\"!oÙ¦V2q™_1’uQ<9Š\ïrÁ^¡LLgxqŠ \ö·\ĞgQ@¢+4\Ì\ÆNt¸n-niÂ¸GøÅ©m\Ù\Z\õ™r»\Ğ\Ü\Ó\Â\Ì\È$É—S7fúH«u`ü\Ã~\ï³.ƒ³ü”KHm` ŒB\È\Ëî ’-u\ó·>;K&„\03L¡ú`\0V	\Zsm/Š\â¦2\ò\æ€1)\ÙÅ‘JH\éDËš”\àf^ùÃ¸À\Û6kbX\ÚEBwA\Ä(-fE\õ\Å;Œ\Ô\Ãt¯\Í\Æ[\ãO\Îı™Y\ğÏ˜W\Õ\Ï\Ü\Z¼T˜™@‡s†ˆP\ÌĞ\ä…2¡]Ãº…Z\âÉ„b\ñ¤²\ãWq‘µ)@\è\Î\Ó\Ü\ä]\Å\Ôm\ÕLÏ˜!.Y\æc\Ìø–E¦\ã˜6³%ASŠ\÷˜Œ¤«\ÄpÒ±\Ò\Æ=³|ı›|<ÿ\0Y\ğD\ÍËŠ5L\á\nÙ›\Ìp\ÄH%y#0…ƒ0\ô¶\\\î\'A\ó0)Ì¤·’X\êj™±\Å†¥g0ºB\\¯¹S!I­ÀÁLz‡´¥˜–ø%Fdf*\ÇP\ÚlÁ“Á\r\÷5\nD¸D«H–\r\õ2T\Ô\È=O\îiúû6¿ú\"Ä„/©wF™\ÒeLI£7)\è;\à-\ê\ÒX+$\n\ïŒÂ«\'ï†Á^\â³Q\ç\çƒZ%\Û5²Ly†q¯\Z…WJ\âû\Ä-\Ù7up»Z™,¡Ä¸k»–Qƒ\\Á\Ì2\ÌEh–\İ\Ô\Ïe\á–\õf\òwyBŒ\êPPfÙˆ·¦\âb¨(¿™˜A)\ËAX«–œš\ì”\ñ=f).Km\á\ÛÀ…0ZIL\Ïpb²\á\çrüp\ÔY\àX\Ã	»¹Šq”^±*\Æ!ùaˆ\êÈ†\İ\İG´yn<\Î%\Ã\ó\öie\ïDª¼Â²[nu,­®¢[½ašAµ‘\İ`Œ1Z™Òˆ¢h˜³)\Ô6`\â\á\Î\Æe&|\ğÏŸ¤vW!ÑŠÔ»á•›¾o…™‘\ìp!·¸\Z^`T[š{‚¬n\àFº«+¸]\æX}›ÿ\0©úƒ:vr\÷¸M1SQ\ê*¯ŠŠ¤i;2®®xuPL¨)z0\à(šX\ã\Äy-\ã\Ò\nu\Æ}!q%<\ã\æc\Ã\è`‚*N\Ğ\r„u\æm\Ü\Ã$¥r…>YU\êæª¦&\Ùı‘\ì\ÍS\ök_Áıe?\"h#\Õ\"º¨8‰®¼O3£G\è\Ìw˜›3\0YŒ[Scğ² Á6»xÄ»\ã\Â\Ğjw\Ãqi€…ß™’µ*»Xj[„L\Ã8¼\Æ\éºGP^‰[i²\æ\é¾b*mjr\ÜvûG9ø™\å\Ñ´\Ê\Ù?f¸ÿ\0g¹ŸzƒA\õ‚Ëš\óT •OI©\ó5\Ì»\Ä\Ó\ÇI¬!]\Ú\ÑP¥8gı­¹¾ÁR«0Î“\İ\\/¤ü\Ïtí‡¼{‹v\Ó~KSû\ç\ìL\Æ\ÇR\ÊO\õ=H•\öf¡´\'s\Â?¾h\÷H\ê2¶f\nüqlMn\Ù	u’sh%`¨Lˆ²\Ş%\ğ¦µ`º\É-\É*sÀ,É™wº\İ\Ç\é·\Ì\÷\Æk\Ç\õ\ğïƒ¤\r±zcrÀ]¢	¨\ó¿³\æ€Í­Wv<ı—¬TsA_b<Š´Bi\ÔB\ßs0&\"\ËÆ¾a\â\î\æ\ó2Í½¥³³0\ÜT\ÂeW\0\ê(LE‹Ñ­¼\ç\Ï765)8U”\Ê|\ÏU\Ìu\Å^ø/\ÌTm\Ô\É\ÄA.«€\îiª¦\Ì	7\á\Ü`·,F\ÌÎ¦\×\Ö~\Ò;¾\Ë=\Äÿ\0i\á	_¨—¨‹c8‚\á†Pr™f	=mÿ\0¨zb%\á\ÑBQkŒx\Ôx3\ô\\¬\\on=¦f;—Ó—c\É7b¥)-”Õ’\Û\"\èÊ„8\í q1-L\Ä\Ê\İh¢úª\"\Z-\ÄEÅX¡–¿\×ùi»\ìÀ·h\ZŒ\ì\ğË‡\èG\È`5†;¬6vs¾\0Il[¬@–Ájk\Êf\æD\Çi\\\Â^3U3Y•`\ÄB|pcš^\÷,‚‹)²›,,Jµ\Ú)¦1.–¸c\İ)h\ë\ä\Ï7c\n7Å„@]T¡µşBT~\ÌÅş˜%s„\Ò\ê\r2\Ã0\Ì\ÏQ2«\Ô\Â[n*\Ô_\ö€2«0\r\êc\Í\Æ-WPi\0)ã«–@\ö\é+\èÏ3E¢lú0}â¢§\Â|’\çZ‹4˜¦Gø\Í\'\È\Ç\'i˜\Ò\âØ•QŸ´¡R’”\ïû‹\öh{\Ê}0PVhŞ¨Š[‰£³2¿hb5\Ô[<\ÄĞƒRÙ¡\n\ö˜67Š˜c‹\Üøbµ¸û°¿¦ø¦-¶\nsO™R\â\Ó4ˆ\å\Å%¢\\JšD±6fü\Ç†aD\Æ2\Â\ìb–\ÂŒ±»€-¸˜—\îa\ßÙ™ú_Õ­“8*iš†”u(C\Ñ\ôƒÜµúK%ºqhD¼[\rJj\È[Ì·\Ì^OK{%<3xb\\¸ªm.`*\r!‘^9ij\00\ß\ÒM8—VX>(²‰\äm¨\æg¬\ò\Ìş \'±%b¾~\Ì­W\ğ\ÂzC^’\Ïx›¾\Ñ#\0™kpEÄªŠ{€/á…´3R\Ê\ZA4G©¤²\ó(–V\Ä\Ë-QÅ}¹l²W\ñÅ‘\ñ>	Y¬\ÅXp\çs\\2\Ä#iTgH\Èi*±7iû µ&n’¢\ï,\ô\é-=\05\öfW\Â\æ\ß8…†R\êYn¡W›az2šA˜H‡\\  \Ë\Å\Z™¬7,1Q\r‰Q¢S…ESÁ6€¦ Q>\\³™T°\Û­L¡¦x—\ÅfYA¦6´EV!V\Åtl•¯d¸’Wv\åo:˜Z_˜5%\ö­+\ßÙ„›§\õ\Ìt…¸JW\Úo\ñL\ZCË¾M†%‰\ÇF;&;a¬Cph\Ä\ÄeÆ“2™\nŠk=Ï™\êŒpY~BÔµ[–E[#·\èå·-Û‚\Ï\Ä\×\ó4N\Ã\Ì\Ù?z*I0!Rš735~gµ€\ö¹»ì¶±‘‘¢_.P\÷*\0C$»!`\n©[\0\Ê\à|Í£™À54\æ\ñ4ÒªfW“\Â«ˆ^y¿£2\î7mLÎ‘+w+c<«\n\óÀ\Çl\Ù¦¡LV\0\ğw‡\ñ2\ÏCº—™q\ÍI\î\Å4›/nnû,\ó\É1D.\Z[²:¸6}5”@ZˆLpZ¸P‰X\â•\İÀ’\È\ßQŒ™&ú\æŸ2Ÿ¢™g)KfÜ³$0#FŸyIw\Ë\Ô\ì¹a\ÑQ‡¼U\ÛmC\â\Ë\ÔÎ˜şÔ³\åœ#g\Ä.M@†Ï²\ß\ïà½¤\Âÿ\0	€0N\rf\nŒÜ¶\ë„‚&\Î5˜+`”^ª\n\é¨k/\0½}S˜{ƒ\Ö*\Å,	X”\í–yŒ˜F\nª”Ñ•\ë)—\ng2eøŠk¹`\r !YŒ\0\İ\Ül\0¯†»\Ü(—¸B\nû–«\ì\Ê\É\â\ãº\ò¬6!ùn\n\õ‚\r\Û4 *™†Ib¥`fC4c­\ÎÈ…\â`\à€®ma(\Ô\ŞTTNŒ·¶n\Ê\Ö\×>qq\ã\0ŠX©H\à ¥\Ê\ÊG%\Å\â6\Å5\r$\î\"je\ñ*Œ\î\È~]3\'\Ã\rZ_—4R«\ì\Óp3¥\í\Í©Œ\n¿\Ì]J‚Á,\ÅQz†\Z˜_TˆrC\Úvz\â=\é\ÌÁ©1T\"ü¥<@ø€e=J·6AE]Ê”]\ÌOm\Ê\ó\Ä •r¨/Â\ÑY\Ø\ÒYLP«\Ô_0‰m\\fT\n—Ùº‡$Ô²µ[\ZÊ¬Ÿ\Æë¼™û7#—[§?n,™1\ÄlUK\ÍTÊ½a‘\õ<ZÄ£Ô¡\Ô\Ã\n h\ÇJ\ã%yx)\êQ‰*A¼T\İË–øŒ¿(\\\Ê\îYuÜ¼¥k›—Â¬\Zb\Ü.2L&’Ád£b?L©—‹•vsZ€W\Ì\Åÿ\0Zø´®[Ã¯³p/K\ñ\ÌTƒ\ÎXDYŠ\Â\Ó\âXÀ¸]RG/7_¸$13\Ö\\6W©ye\n§´*°¯¼\ò2ˆFc2üS\á\Zƒ1\Û\0\ê\ÙeS‰\Ä-Ô£“%À*È´Á‘™\î$†H®,\Â\Ê\\j\èÌ¦\ó„[j‚+Yq1CMÁmø‹O\'Ô¸jVŒş\ØiG\í¿!Q\Ö#Î»û7 Õ¿¦&\ït† Å“¯wcEp\Ä$b`\ãeªåœ°\Ó%A\ñEH5µ\ß#=E´T\Z²a\Ş%2‰OMBûZƒ\Ê-(5¶¹´·œj¡¸†\æ*¼p\ñú&­h‹\ò\Z\ö&\'©\ÌPaP\öY\Î\Ú1{\æt-Û—Ù¶j¿0À\õ\"Qx©fŠ\ñ\Ã|\âT\É\Ô*A/´¶aK‡R\Ö12J8½$S°¾wDr\ã$ª—.ød¢ª±+\æ[„¼U\â>\Ë@™jR\r\Äw7®3[\â,·\Ë&\"¦¹†\è\Ä\n\ØS$]WÀf¥0R¯€O•FË¿³HRuX«Nùe›fA\0\é\ô•e\â+_2²‚K¾7Al\Ì/,T£¨¾¡o‹ƒn.\â\å\'(\ÌC·\æ]\ö<­q‹\Üt\Ìq,\ì#\Â\Ê\âqUµˆKxw¸µ˜\Ìwiû\Ñ#¨\r\Ñ0/ˆ,eZv¬\Ã\ÊF\Í\öi±\ò?’,\Ì-5†\í–EwÍaIw˜¼@ı\ğ\ó7FÒ™»”¬K8\÷JLÁWSÀ\ï1£}\\\Ì2\î`•X†X·±Š/´@\ÜFc…JX¹7¶¥øg\Ä}ªk­16\Ü`¬~aD]\\¡©z\ô¥\ÛŞ¸¤Fü_Ù¡B\É\òªfEz™jYfRQ°…‹¬B]C\ä†\Èb=¾%*b`V\æD•\âJ|ORS«›Cp{Š\ôš,\ã\æa”²kƒ¹a³3\ÔLp™L³R\Äj\õÃ¨D\Ë],\ëDZºˆ2–Fm¶‰–‘U(*Whc¢RÃ¥>o\ì\ê¸z>\Î+\î\Å]À´BfÊˆ\ÓQ\Õ\Ò%¸€\Ñ4¦Pø½\Â\ÌÏ…\Z\Í2\È\æiuŒ\Å3\ÉÁ”\'¡Àq«Eù Š:‹]\\¶\ê\nE\ğ#l›Š\îû˜£LÀµP&\"\\±W\ÒO\ó˜Q„8qp´cdÇšv[¸lPd\ìa\Ê}š\Ê«\ò\ÍrlŒ&[š\Ô\Ì‹¶Ñ´%f#»‡i)6½’\Ú\Ës2\Ù~œ¢¬O´\î-Ô˜\ì¸WT«,:¹Oh]Ê–‹—pb|Â‹eLØŸ¥1(\ä®å‹‰f`°\ğ¤wL%A\ÜvZîˆ‰½j`½Œ\é½À\è¿b-M5\öjĞ³¬—-ÀFiƒ#9\"\ï\Ò(sw2\nqQ\ëS\0XaË†&ˆX<¤ù¸NŠ**\ß\í‚*\Êk\Ö[\Î6e\â½eybx±P¥\ÃD·Ä¸\İ2\Û\ß\0ˆÂ™¹º#`-‰OøÉˆ\Ìo(³d1<]bV™’:ª†³K~’\ôJ>¶¾k#F+?¡\öo\ö‰†µ62¸\Õë©ƒ\"b\î\ÔvÊ—\Ø\ÜD\Û3¡\0¤ \ä€V\çq7v–‘©’\êJrù‚V\çƒ\Ş*ÀMe&|2¥<¬r¶T\Ó-\æ\î\å¦ZŠ\Ûq,{R\î\Ø\ŞR”½\ÏØ‚€\ñÜµ”\ì\Ù\rÅ«\÷Ğ¿¡\å\Ş;‚¦ \Ç\ì\İ/xK\İ\áqW\áR¾f@\îP¥\êPnpcPnZd•Ë…x\Ì\Ú\n@ÁJÍƒL”¦8ˆ\r\ÊA^H\ã @#m(Z\ée®j[\â„Ú©™”œ\ÃT\äa›q\â©s=Ê–x%\Ì8¢U\ÔL`™f\rM—,\\7Šf@\Ö.¡\Ò±×²4^Gp´\Ã~±uwn‘·\óf\ådG-*­\'\æYe¶\É\0oñ”½e@\îea©“}y\ÍÅ‡M\ê\â.\ì\êt\È3qâ¡–R\Í>\ğn\ì%,Å +5¾™t¸V\İT£y–‹\ê\Âèµ¸\nXhÍ²(\İ9—(n¹}\"®\åQ-”\ğˆ\Ê{\àŒ‘¯s\àS˜*X5R\ê\Ç,¾b\n\Û\ér\åNHŒ—\ÖZo02 :¤\"ş¾Í°j\ã\Üf½˜E½‘\Å°!L	\ï\0P¸Ü¤M´UŒÁBÊ¼@\ŞEG“\Û;`\í3N\Ãa\ÜTi°†ª‰V\â…2¯K<$²†\÷\Õ\Ä)\âf«\í”2]Í™`\Äpb\Z”·q\ØC\Ê(P\ÅC~&ı\é\ÄEƒ(§#u\ÕL\'\ÄTSq¢\Ò¼K‚\rÀ\ç\ğjûAA¹\ë˜dct\î1©1\ä\ôaj\Ù{¿f\ĞÆ™˜\ÑT»a 0\÷yKª.Ğ¨`oH\Ô+Fg\Â%i™\rg#\Ì\ì\ß\Ì5mF\\¤7¯K™†­\ó(.]@\ÌaVe\æ2\ò™¯1aˆ®l:–Šx\"½e€\r{\ÅfY\Ùú¨ø\Ñ\ï0@\Øø‚n\Ì\n,\Ì_\ÜĞ•\r\rQ\òÄ«ü\Z‰wpT|\\¬(ŸK0a}¨2\İzÂ¨\òEoV\ñ(û \Ïy†\Âş-â™Œ\á 4\ÙGŠ€.€¼ı ˆ¹FPÿ\0˜C-½1$}	\İijÊˆÁ$\ôš\Ä22†ü\"0\ê(]\ÛnhŸ	)üpQQqÜ¦½:\ğ2©˜o.VW\ë¥Å›cQiF \ó\ç€\È\İ\"\ÚÙ®&3}\Ãt\Ñ;D\ÔS©s\Õ-œ>e\ÔgHb?¾¹¹\ÃN˜X\õZ§\å‹\Ñ)\\xa\ö©(J_­\æ-Bø\õ\ÊYü,0(^°×…Ü«t6kÖ¥\ôJ`\'¤\Ì\Ê\Ä\Ê\\B\'†8P³D\Ó\ÚS¨TĞ…·˜»¨\ÛV\÷\r…¬¦\ö”\æezF®>\'Q\òŠ\Ú\Ùzy‡V+\Z‚sRÀ«\óQ[¹\Òg\èŒ\Ïz½\ñú1‰\ñ Ş‚;û;\à\ÆÅ–ş2¾\ó§d…†š³Š<}¯kÅ®\îŒQùE\Ëy„cº\äj\ñ†\ÅSgÈ˜¦•\ï±\"2\Ûk\Â\ê\å¯YHJ`\"\\\æ£]²\êÈ–×˜™L\ôDZY¦n©•†WÔ®&\à´Ç»ˆ…G2\n¯%²\Ú}¬\Ş\Şş‹ˆ\ÅV•c¯‚	\Â(Ö˜<\å\r\Z¨P\â_¬5ªcfÿ\0n]0ûueL31\Ìh4ª\r¸¬T\õLYq¨M±/¯}L\\\r¦§\É \n[À|2\ïG$\ÓvzÁ<~xQ\Ò\Z\ÏG\ë\îIü15³\åªŸ(Od\ô%[yş¡3V|)^WT¡6\õ|?k–\çO\'ø…\Õ{\Ùı²•‹¡h=‚Ø™—T\ÂÂ„\ìû\Ô\ö€\Õ\Ê2ˆ\"\æ²\ÄU®&Lb.®»«üB¾]T\çø›\Øÿ\0’oÿ\0\n¿¡+O\å?«—şšK\Óù0<©\÷\Æy\ÊD4yøn\÷\Ïş0€Rx¡\"£?\Ë¦«Áı±”f\ég\ç]Iu\åO\÷ („\í\Äo¨ˆ]g\ï\×sı\ê\n+\÷©ş\õ?Ş§û\Ôÿ\0z™™™…\÷\ô½B\á\é\éÿ\0Ï‡ÿ\Ä\0<\0\0\0\0\0\0 1!A\"0PQaqr234@C‚¡±#RbsÁ$€‘Sÿ\Ú\0?\0ÿ\0¥`,b|—\r\ÑO²\äi&\"{“\â{\r\Ò:ˆ\â|„IQ\ì‘\ì‰{ºjXc¸\íl>i\ìX\Ò\õrPløb\0¿¦\ï@\0\0(\è\Ø\ñg6\ê]™‡“‹Aa\ğGc»”¿¢;#~aøN\'ú˜†\Ç9EÈ¤=\Å\rŸ…hø@ù¦E85€\0œy\ğ\×p-K\Ã\Ê=\Ğ\Çw…6Ë–>,vøE¥®!Àƒ\Úu·ZM\Ô:ix¿ <uP\à0\ğ\ò\ß=\åp\ä«J¸\\;\Õ\Å8­\à‰\n\õuR‹=€©vS\r\ÌN ø©°³\Âzq›w\ò^]”Ö“È•\ni>\ì´w»‚‹e\Ä,eq\'¸h£…˜À5\n½\ó¼3:\Ëx-u\nln;»§½ª}™4w1\ôÇ†©\ÌsGI¤Æ7\È\í\Ö0¸¨vY6t\Æ\ŞUB:\ïGo+­z²\n±\ï\Ëu$QL7d`*m’\Ós\í\àT¸I\á\÷\Øm\ßË°™\Ş\à\Ø\Ú\\Vf\è\éøhQGCv6\0ˆ¿5eeeeº;ÕW¨$-\ï¿à·«½à®®·¼©+w-\×À…>	\ÜhcpSA$/,x\â>¾8Ìn¤¬<,‚0Ö<Êºj½	\ã[«««\ç\Ş[\ç¹_ 6[\Ëyo ·²Ş˜¸;Ktw\"Ÿ£s˜\ñb>´-›†,g·x\â\í<¨\Ñrƒ@©·Z3\İ‚y\é-§|bf#ƒ¼ú\Ì\í/xş[uZ– \"y.·\ÒysQPˆ9{\\\Ç´‹ˆ\Øy\Ç\r\õp\Æf‘±·R¢°±±7A@…]~U—\Ï|\á»\Ö;ü\ÑÃ™¢g¾Áq\õCU³°\ŞÉ†W“´\ğv–úR€VÍ¢\Z+\'û\Èqb\Ú{)C\Ú:/\ã\õ8?·”9\Ş\ë8”P\È~®Ù¯`4\î.%0\ôV\"4Naü<\Ó\ÚZ\â\Ò8‚G\Ó\Æ\Ã#šÆ‹’Tˆ\Z\Ñ\æh*2\ß) V\êoK\ĞuQ‘cM¥†û\öW\Ó\ì\Ì1\0\Ì\ñ¯¢\n\İ+‘§\nz«d4·\Ğ7‰\\¨\ñ\Å5¦Æ’1²1\Ìp\àEŠ\'A#£<¾—	V³—4\Ğ\Z\Ğ\Ğ8\n\ò\Èib­–\İx\êt„@\Z!F\è»é´°û\ñûV“dE¸}&\ì\"»‡I\ÜNNG¨#š¶a\Õuut\çKPdO\ÌU\î¹S’ï¥\Õc 0\Ì\ñn‰\â\Ó\ô{?e”<ƒxœ£Kd8CŠ%_¨4hˆ¨\n{»¼\ğ\ò\nÀg\ÆA\í\áp¤8„AĞµ¥\Æ\ÃU„ƒ\ØBÖŸx\ñ9G:”8¢-”¡”#A¦rnš\ĞA(2\n8›XjxÃ–ƒ!Ë´p\â9=£GEß¿\Ğ\ì\ì9’`\ó\î´_(¨£uN\ä\Â#(=A4f†\\\İ\\\ĞS†ù?\Ó\Ñ|\è\ãm\Ïz¸\Ã°x”4y‘\ß×se‚„\ÃA\÷˜PQ¨\Ğø!¥D+e·Ph\İ(I–WBı\é\ò¶&I3Í™K\İ\ä5 \ë©\ó<JqW&\Ó!sZ.\ã`±;E¬\èE\Ä\÷©%|¤—¸Ÿ? \n¥4VkúMP\ã`šÀ:\Î\î9-”j™‡Zh<F”`±¿†t\rû\Ò\Z\ã\Ü\Û\ñN:‘Ş\Z4pÉ‰Ç²ftœ§\Ä\Í9\î#Ài\ôa\öŒ\ÑY®\é5AŒ†~\rwK¸\ä\ãV‹”@\İ!yu¦ƒš5jr\Ä\âÙ†le\Â\í.²dŒa\ä\Ñ[©±pC\ï8\ÜûBiIkN\ë|>¡¤‚6+´¤Í—¦\ß\ÕCŠ‡/‡—:Ø ´q~Á‚&û\î\×À#\Ä4\ä(i\×\n\ZH\Ñ\ÅmB \ó+Œû<€ü·js˜n\n$$©±\ğD\rœ{‚›h\Í-\Ãz8—I¹ú¶½\Í#u\Ä,>Ó‘–l½1\ß\ÍCŠ‚q\âıÈ­\ælls ±:y]+¥Dw¢‰\İ\ís©CO \æ+\İR¶¯Ãƒ\Ôi.xA“‡qRb§—ß\ö\0$s*~&!\ïo\îM\Ú\Â\ßÌŒşc±\íÄµ¬¥­\Ôß0\Çş<>‘S@3¸Wj‹\Åƒ»#I\Â\Ås\ßû\æ&ù.¯\ÖZ\ët¡B¶§À±\Ù–e”:\æ(Vù\Í\ÈJ\Ú/ù‡d`Í°\ì \Ó9Fƒ©<—:\n•´¾[\ó\È\Â|¼_9g4Q¡W5!m?–üÃ²0-\ãû«e\çCQœP\"‚4+iü°\õ\Ç-†„x\İr\Îj:¢…EvŸ\ËX\ì~Ea>^J\ä\æ5HC6\Óùa\êÈ¬8´úNk!Pë”­§\òÿ\0˜vD\\#\Ò3…Á\Z¤P\ëC@Š\Ú-ù‡d3ƒZ<:“@­\ÔPE]]]m?–üÃ±\Ø.@@i\à†AAC@­Cš\È\nsG&\Óùo\Ì;yc\ÜV·Sjs\Ş\Ê\÷§4tV \Õm?–üÃ±\ğÿ\0!\Ş\à¹F—\Ì*9½E9Ğ«+YmO•o‹\Çc\á\í\öˆ}A\rQ\ê\ô\Ì•…N¨TµGüVz\Çc\áşbPCR¸\ê8\Ği˜Rù,:\ò[TŸ³³\Ö?n\Ç\Ã|\Ì°œ\0µÓª4u\\ŠÚ¿/¬~İ„ùˆ½A;T\İ2œ\nYiQ­.Nf†›W\å\âÿ\0\'ú\ì|(ş|> ©ºT\òA¡UĞ¨\×?3NH-§\Ç\Ï\òÿ\0¢ca~<> †”9X5G/3Qk­¦mC¾O\ôQ\ìl7Ç‹\Ô¡C©\0•b‚<U+DQ\É\ÌÓ‘Vâ¶¿Ãƒ\Ô{\r\ñ\â\õ\nš„s3J«P\Ô\ä\æhr\Ú\ö¶x\Ç\ÃühıA£;t¡V¡\Ï\Ì\Ğ+p[_\Ş\ÃR:\ö4/PB¶ ¡\Ê\İ:\Îf;€!ms\Ó\Ãşdu\ìh>#<\Â\ÎQ¥{W‘\Æ\ÅmCwÁ\ä{‹¨!˜e\0³Œ¶¬¾\ã–\Ñq2\Ä?²ÿ\0¯cÁ\ñY\æ\ê\Û[\õfĞ¬}½£?\Æ\ŞÇŒ\Ù\í>!7N Õ½xNønX\ïˆ\ßH\ìv¦{µ5mB¿X\ïq\Ë\ñ—dE\Æ1\ä©¨£s±ş\ã–;\â\ŞÁû\öD72ü\Ú+|ß  n¶˜\Ì p\0·²!!\ğBG6e\Ç8\ën¯@Ò·W+-ª[~\ñ\ìŒ<Fr_t¹2H\å\áÁYn­Õ¸{\Ö\éV Xm\Ö\çŠ\Ü\ñF6./w‚\á\È,^)ø©.\î\r\Z\Éd¯Á\ÌqEµfmƒ\ÚøØ¨±øi\0»\÷OqA\í<ZA­\Ål­“pks\Å\Ø^­æ‹¬·\Ç;\'OOJV\Å?…g\Ş\ß\ÉIµc	›\Ş|ø\é\æ\à]f\÷Mû69dŒ\ô$s|Šj\Î\Şk\\?\ğ¦m<;½ãº™ˆ‚KnHÒ®9\Zi\É\0O%º{–\ï‚İ¡{Z5	ø\ÈÁ\ò5;h\áF\'\È\'\íf\Ç2µq\İ\rj~3ıf(½\Î7q¹W\í2Pq\Z›3Û¤Šûf$i3\Ç\âG\ß6,}\ï\èÚ˜²>(ÿ\0À¿‰c?úş~,ıù_l\Äert¯q¾ùW7¿ı/ÿ\Ä\0O\0\n\0\0\0\0!1AQ \"q2Pa‘@R¡±²#$05BbdtÁ\Ñ%34Cs¢&Scr€’ET‚“£\Â\áÿ\Ú\0?\0ÿ\0¢°$\ÂÙ­™\Ğ}{6Pot«œ±M†\Ä-^ê–©\ô8*Ö·\ï4\î)½„rp#¶ræ­­..\ê6•½7=\î0B´\òv\÷\á\ï­wp[p[\Ü\0HoŠ¿Ã®pëª¶—4\ÜÊŒ:¨\ê=iv€b˜©\Ò\İüpˆ`\÷¬7bpû1\÷\Ç\åUd˜‚¤\Êl¢\ÚTi† h€^3\èBº\Ãl®˜YqEµ\ê%_l&pK­‹¨8\ô2>U\ò{r\ÂE+\æ8{D\'l0C_@·‘”6\Z\'Ò·Ä¦y=½1\ç.\Ú<\ZJ¶\òwn;\Õ\î\Ş\è\Î\0\rVû‚S\ô\í¼\ã¿XÊ±\Â\ìl\àR¶cú­€®\Æ[J–C\"\ïFÒ¿k[¶¤\rKe^l†\r‰±Å´¾MZ>œˆX¦À\â\ö3R\Øüª—Vdï‚©F­*§Yc\ÆD8}^#šm\nµ\é¹\Å\Ú\0$•…\ìN/ˆpºµ1oL\ó©¬x,3b\ğŒ6U†\ê¯ZÁc@\ĞQ\ÅÁ1ü+ˆ\Èsa2«NOîŸ©¢\Ã\ÑP„\ô@¢\ğÁ$ÇŠùIq\á¦=\åŠm$\ñNqsŠa\n$p‘!bVˆ°‹›F?¡ˆp\ğ:¬C`ş\'\á\×$8\çÁWOqÁq,1Å·v•\'Ó‰a\ğ!dtDGª\0Lc£I\Î2X~\Ìb¸„Ùº›\é\Õ\î‡y<´`k\ñ£P\óm<š¬°\Ì3hm³X\Ï\âSª\Ï µ9Ä¢\ä3@¸Á\Õ5å¹µ\ä/”<j\ZQ»iık\åM?\á™\ñF\íß£Lz‡\ô£Á6&\\¼\ãFˆ¸» ‰\rS\Ñ5\ĞPxĞ¬Š.ieJmsNDÁ\Ù%Ì¦mªt½{V\'±µˆs\íZ.©tı/‚©F­mZnc†¡\Â\ñ¦¶´¹º¨)[P}W\Z\Ñ%a[s_†®\'U´¯s\òÀp|,oj\ÃSé»¼\ä@\ä\Zˆ\ê\å\\H•;¥(f†JsGª•\'¦\à\ÒPh\Zœ\â2j\'UÄ\\K‰J\ğL{š¯p\ëQœ¶l©\íˆw\Ä,O\É\ëO\\.\ä¯›­üWø\'†“\ò»W±¿N%¿\ê+kK‹\ÊÌ£iE\Õj;F´J\Â6£ø*\â\Õ|\Ø\×\Í33\ï*\Ë°\Â\éù«*¦\"	3\âQ.\'2‹×œr\ã=T•;S¾Hæ¸ŠB…\Ä>Š\âRz£=wÒ¥	@”\'š\n©Æ•f–T`p:‚$‹\ìn|Ç¾Ê˜µ®~ˆ\î\íÃ®°Ûª–—T\Ë^ßG\Ï\ímª]\ÜR¶¤\Ò\ç=\á jÀ°{LÍ”\é°\Z\ç:•9—\'\Ö\ö§UA\æVn™P£\òpZ\óQ\í=¸\ÑeºP…(9I„\nk\ÈM|•´X%¾5F¥\"+°J§C\Ğû\nº´¯gqZ\Úá…¦\èp(ü\ğBØŒ\0Ñ¢\Üb\å½\êƒ\ğ \òo\Ò\÷ª†I“0‰„g$*r*;S»5;‡`v\'±\nˆEË‰PU\ZŞ¥:¤Ö¨z’¶\ó5\íi\â\Ö\ìü%2Z9´\è}\Ç\ç»%³\ç\Z¼5k¶,\èj¿ªÁN“)\Óhk\Z!­\Z\0˜š§€3YQhGTÓ’\Ñ\Ù+=\ã²;Q¼¸Á\\Gª”³?†ú\0»\à%C‰O·¥ykZÒ³f•je£‚\ÆpªøEıÅq\è;º~“y\Ø\ÙÕ¿»£kE²\÷aC\n³¡‡Ph ¸j\çIUtŞƒ¡S\ôR9I\ÑI\êSIšŸof7\Æ\á\Ù\ö\'y\Ü\İTª6\Ëú2>&’\ğq\Ìh×€-¸À†)‡S¿·d\Ü\Ğd\ä=&\êB:Ÿœ·U± ²µv\'pÁ\ç«\äŒ\Ú\ÕK¼ù%U2S•_\rsGt\Åq	*G\å\í\Çe,\ëş³\Ø>Ò‹Y@0;ûW	\ÉV?‡\õkƒ\ìˆ9\ÄıFV\×a#\r¿\é3\ñ{‚^\Ø\Ğmù\Î\Ë`§¿cª0šHsúT!¬k£Dl5)\å\á-\Ä#3¢\÷v¤¦˜!J‘\ÕNù\ìÄ©R§²5@\'Š§ÁFÍ·À\ó\Â7@„\ÒjV|’\ã%8V{\ã !X*UA\Î\'Á\Â3†³³¯d\ò‡z™\è\ğ«\Ò}\Z¯¤\ö–½--:‚>ooB¥\ÍjTi°¹\ÏphIX\Ì&É”X;\äMGurq’¨dÇN\Ğ#’\r\à<Qi“+E\áº{\0f´^)„N\éİ—b{!\r\å\0z \Ó9…„•}\"…­ 2-/>\ò¨ûURH’u2Û‚tî«Ÿ\íœGU¶X?ÙŠ[·\'\÷jø\õù¾\Ã\à†ŠÜ³,\ÛGø¹\Â\ØASB¡O\ôG‚\'%HÃUi;ˆÀEG-{S\ç4Œ—dš\Ò&w„T\î\Ô wj€”Ö…HTš_Q£’¿pK>ƒCU¸\ãª¿¨\Z\Ş\È,5§\ÌUwR\Õs•Gøª\ö\ôo-j\ÚWÚŒ->\õ‰X\Õ\Ão+Y\Õ\æ\ñ¿\æ¸.üVú³rl\Ë\ÏF…oF½\nt)45Œ\0\0:\óª\ng\÷wx§úFI¹2Ö§³$\êNF™\å!fS:Z@3¹¦\nÏhnÀpŠ/RHT\Ø\âdŒ•9¬\ÓÉ¹•r\ñRµS:¸•h\Şú‡’¹¨j<…b8-@\ê\åuı«Ši\ÑmÛ»F\â4Y5¨ˆR\Ïÿ\0iƒ¯\Í6Gu¯YŸŒW\ÄFmo ¸¦Q;©\ç@ø„ÿ\0D)\ö JkIcºŒ\Ó]!8Óšœ\É23\ÕhB/‘½šÄ\ĞD\Â\ó\Å\Ç\ì\\Hn”\Ö*v\óª\r\0h‡\à,\ë\×\æ\ñ\ÂĞœsJs…*\Õ\ÇQR\îQc}Š¹ï¸¡ª§ÀK›Q¡\Ìp ƒ¤´8S\ğ¬N\â”E\İúN\ê\Óü¾e”²xI\Äq\Zu*·\ñz=ú’2=#“t@¥pª9\Ñ±>csÀ\\\"Ÿ{T\Ç4“ÂœQ)È„Ds\ì	§‰\Éqˆ\0\öİ¸(C@€M¦©R\Z”\Æ\óœ—	t5¹’`,M\Íg™¶iî±²\ã\í)€9üG@®ª\è\Õl\Ş:Tx`\ÉU2\é\Ü\Ñ\á_\Ò\ØS\Í&\Í\Í\ó#R9µ:Cˆp‚>b\Ö\Z„5 ’tl\æı†R¤\ö\Åjú\'—¹\n(˜9&fsTre@\Âey\Ç\0\ÒSaÁ¢DfQD\ÏbŸ4ıP„4€78Â™@n	¢S€0IA\"…lØ¨ú\ÎÉ´š]*æ·{\Ü?M\ÒGD\0†ªÎ—+1ø\Ğ*†[2®\î\Õ\'p¸Nœ\Â\Û,X\ß|®‹¡pgÁü\Ç\ÌvC	uş&Êµ4hTø\ÎA;Šsä„‰N&rD¦8\ÌJ£\è¿Á\å\'$%k„œKHM|·4a‹Fgq\Ø%\0‰ú\Í\Ñ\Úx\È „¡º˜\È&…\nˆ‚“\Ô\ä±\nŒ´¶e©‚\ïj’^]\Õ=\Ş\ÕOC\Z9\æLG$\å\ä\\P\×U´u°\×aW\ï$‰¦?KŒi	\Ñ$\'/Ë´q\Ìa‡\Âh\n€y\êÀTy\ñ\Ğ{‚\')\ÄID!ª¢y¨FZ\ã\âŒ\÷I\É[&¹§Qš}0ILÓ’„B,\è¸GE\ÂŞ‹†4\İ\0\ê¸[\' ²£~iÛš€\\#¢¤\É	­‘T\é•I \ÖŞ‹{¼\Z±Kƒsv\îMfQ\íG(„J¦\Ù(º]š=\â tN9ªµ\éPi}g†°j\\`,_k™H:†‰ÿ\0\ğW7WUR½W<“«ŒüÀL\Ëu\Ú\ÜNÀ2Gy\ê-\0p¿\n\ÃvŸ\r\ÄXjyª\Ç\ôü\nwB\á2©˜*¨;\ó\Ë\ÅS\ãk\ğLx¨ÀÁ\Ñ\Æ\òk\Û\Úq\ÉN \ã2¨c)­T[$\'¸5¥[Râ·¬\çd\'£QkI¨ıe\É\àB<!0å„ j„N‰\Æ%c;Ska4\í¢µm ‡‰X-}‰8:æ¡£\Za£\æ™\n\Â\ö«\Ã\Ëi½\Şvˆ\ëµ\ØV´8n&YP2±Ö›~å¢›\â‰\ä\är@f­m\İU\àFJ\â…6Y¼´0\É9I\ÜR™O\Õ„\íT#\Ù\æ‰\Ü(N\Ñ3šj!\0­³ª ¤ª$†…T\ëN…c\ÛPp\'ZV\ó|v\ÕjšE¿©‘\íTnm\ï\è²\æ\Õ\í}*™‡>\ã\íNk˜`­9/	\Ï\0+ı£Ã°\àC\ê‡\Õú2}\ë\Ú|Cs\Ø\×yª2a¬:iù\Ã\æ89\ápĞ¬+k¯l¸i]»\Ï\ÒOyaø\å†*Á\òz€?›NN\nœŒ‘’&R<JÑœyB\Ú[R\Â-\È\ó\Õ\ÈuPm§üÜ™\ßm7¶HsA\Å4KQŠ9\î:n n*B•;\Ê	›‚·t8\'Óš¸\'Ÿ	[~\à,°8\ê-›\Úà·Œ\ï\ÙÕUŸ\Ät!>­¥\Õ\nu\íj‡±\í\â\êjÌ¤%\î\0\rIX–\Õa\ö`¶›\Åjƒ“ş\Ôb7\Å\Ík¼\Í3ú,ş%=\Îy%\ÆO\Î\ÙZµ2\r:…„hBÂ¶\Æ\ö\Î)\Ş~Ÿ]á¸˜\Ğkşƒ²rlO\"¨\ğ_\â40¬2µ\íÃ»”›>.\ä‰X®![¿¸\Ä._/©P•…T\ó\Øe…I*\ÏúB`N\ÕFi\Û\İ\Ú=Œ·„\Ä:ªD\È@\Ë\â\áU\Ü\\‚\Û\ğ~C…“ ¨\á\ñ\n\ÕYcx–\Ç2\Ú\íÁ‡\ôNc\İ*\ï\Äo\ãOp\é0>I\Ò~~D\ò\Ì+\r¥\Å\ì@¹5\Z4m^\ğV~P\ßK„\İY\Ï_6\ï\àV\Öí›¶Š•½¥\no£mL\ñ\è—9”-¨‚a\ÓÊ”|*düŠ	\è¨NGx\ßwBf¨‚!3\"©f\ÔıJ|\É^P66TÏ¼zŸ‘d\÷`–¡\ÆxK\Çú•:œ ø¢\à\ä4OGq\×sˆnp¸\Ç6¦D\ï˜Y\ö˜†‰\Ú&Dı‰ıU\\›o[8e\ô¹hø´ú£c¤\àŒ\öUrd¸N\ç\òPS^@ˆM<BwGf750dU#˜O\Ğøª®[v?©Xi§\öTlkAÀZ\ã9\rB¦ˆ‰ArGsÆˆL\ôT\ñ\íY\ö\Z˜‚¥\É;\Ñ*®em\àş¢aı¦Ÿ\Ø}Q±£ı¤z\Ôq\İLd‘”:#¹ü–A5­p\Í\n\Ø\ÕRO 9-ZÀH[}–ÁûM?°úœ\èV\Æ0\r™¶$f\\\óş¢¸GDÜ“\Î\àœˆO“©E3Cw;AA< ¦d\È#\Ím\öx\rûC>\Ã\êqü\Ç4\r˜±\ğ\Ş%P\Ñ9Fe’vˆ§\éº4\ìJ×²šv‹šjı\×Ám\÷\æ\Z¼³\ì>§\Z³\rÃ‡üø”hGv‰\Û\ãv–\ò\ìN\ê\'0œ2Dg(# ]V\ß~a¢?io\Ø}O\Él\óx01¿³Sú\Ân…œ†\ço$)w{7Á\è€2o\÷§–h*(f\Ô\ô\Õ:IN^P?23\÷–}‡\Ô\ãP°v‘„X–\ôş\èQ7rv\ì“ùn§§\ä\\\n\0ªyB§›S\Ä 79mÿ\0\æ6~\òÏ°ú£\îa\ö­?\îš>$\Å59;]\ï\İOMÇ²á¹ª‰\ÉU\Ñq„\Õ\Æ\0¶ÿ\0\ó?yg\Ø}ODqTcz­\Ç\âÔ›Ñ -\ğ¨\ï-\Ô\÷\Ø\Ü\ÕG’¬;¡9\0†«o\òÀ\Ùû\Í?°úÅœw¶¬\ëUƒ\ëTQ\÷\"3Gp\Ñ8§opƒDn\È\ŞJŠ¨fœ\"\Éæ„¦‰r\ò‚#¥û\Ó>\Ã\ê|b–\r<\ë\ÓûÊ–T\ÈNEB$\éN\Ş?*Ğ©-[\ğN29¦´7B¼¡ˆ\Ù\ëW}+¶ı\Ó\ê|‹a\Óÿ\0˜§\÷‚N\n: †ˆ£ù#\Újf4\ä4+@SI…\åFh\ŞB\íŸ[]\ê|N1†ş\ñO\ï¤#¸\Éw–	¼•4B2˜Ğ¼¥eZ{n\éı\ÇzŸü\ñ†ş\ñO\ï\'\äZ¦\áª:#®\â;@\î<»A55S9ªx*˜•\å3\ó\ïlû\õ>ù\ßı\âŸ\Ş\n¤\Ã §f\à£¸\öNøü€*e7OzxÈªC2¼¥şaÃ¿|púŸ\Ö\Øa\ësO\ïSF#¢#45N\Ğ\"¡\ØS\Û	º&&\é\ïN\ÅLC\Ê\ò–?©0Áû_ÿ\0B©°Sım†û.iı\à\èSR¥sGM\Å\Ç|~Dk¹ª™È¦œ“sjk\"ª\òšcÂ›\Ö\èıÂ¾¦Á\Ìb¸yı¢Ÿ\Ş	\ç¸\Í\Îw;DQEÁ\í\ÃÛ¹Š‡Áh©™·¾j\Õ\å<\Æƒ·™®\ó\ğ§Â²\Ä\ìüzx\'ú\ğGš;ˆ£\Ø\Ëq\í\r7\rÁ1S]\n¢£&\åEßÁ©~µS\õ}M†\Äl¿\Îg\Ş	ÙŠh\êQ\Î7;M\Çq\ï\çù6ªy\Ôy!›\ò¤sÁ[\ì®~\ê:ú›şıbzViÿ\0PNÍ´\Ìê®\èD”u\ÜQP\ã\ÙoiªI\ÃEO’¦%¤/*oüggJuOÄ„u\õ6bú\Óü\Æ}\ät¢Š\'qDg¸£\Ø\'59(\Şh&rG8)™#\İ+Ê‘œK\r-\Ï\Ş\õ=‡\÷\ëO\óY\ö£¥/ıÁQ\ìF\ì¡w\ÈA32\Ğ!Q?ƒ=ayN¨][3“l\Ù\÷»\Ô\ö\ß-¿\ÍgÚˆ\î\Ó>\Äıww¸…\îF{oˆ@ ™\É\ZC\Ğ+\Ê;ƒ¶€–´‡\ÖO©\í]\ÃqD\ô{OÀ¡*G\Ø\óGD2E\Ù\ñ\ß\à³G’‚²Z ‚b)%\r¿ |”;C[üªc\à\ßS\Ó0\à}¡R \Ú\Ñÿ\0‘¥;S¼\å\Şı\Ş\í\Çt ¡@\İ\Ï{3l•P\Ñ\Ë\Êÿ\0hkÿ\0—O\îú¢À\ña\öfu¢\Ã\õ\'¢¼\Ş\ä\äQNÄ\Í\Ôn:(\Óp½©™±k\n–A\Ë\Ê+v\Ï\"Kjd{‰¨\Â\\N‡—›z_t\'‰Fz)\ì;TG\ä¨AF}‚¢;ˆ8qB¤F‹\Êu\ÜNÊ¸nN·\àŸk\\O©ù‚Ue\Î\r†=¤m©ı\Ô\æz\'DCÁ\Ì)3¢\İ\È\'\rÑº\n„B„Ñ˜S¸2¤\n\â\\aFK@š\àhvfrTˆ¬/*Œh§…?. ú£\Üc\Ô\ál®\Øÿ\0F0Y^µÏ¶–8\ó\'_¬\ñkA‚¥•\Õ:­<\ïœ\âN‹,\å©\Í‘A\"Œ„L\òE\Ş\Ä©9L\îv»†¡NP³MkŠ\Ï2ƒU\Â\Ô@\Ê\0C\\•7pŒ\Ê/\r¸\ÂÄ¶»\Â@nEj­Ò#&}§@¶hn\ö‚\ğW®8)°pÒ§\ôG\ó>©¶º¯iQµmê¾›Æ…® ¬?oq[n]1—,\Üx]\ñ\n\Ãl\ğKÀ\ß;_\ä\õÚš|SjP¸cj[\Õk\ÚD‚…\ÂZ3ú“–‘¦i\Íi\ÉF„¨k‡ÚƒO\ÒA¿¬‹D®\0ƒ\ZˆGE$\è@\ÕFD#Uƒ7½Œÿ\0™À*¸¶@\ÅlJƒ]\Ğ<sµ\Ø\r¼\Å\çœ#“\ZUß”*cdjµ]P•ŠmF/Š\Ú\÷.m#ş3\Â\Ô\âgÕ¶˜…í›¸­®ªR?ª\â\Ş\â\ö\ğ.YJ\á¼Ë‡¾![m\æXE\Ë_E\ß\÷5[c˜E\ài¡}H\Ï\"\à\Ó\ğ0W\'\ã\Ç\Åp\Ñ3\àœ\\5?İ¹\Ô\Z\Ót\"\ôJ_D¨L*—6\ô½:\ìh\ê\ç\0«\í\rlH«Jz5\Ò~¥[m\ğJSÀú•?\åo\ó…q\åE>ÚşJ\ãm\ñš\ßÙ¾!úşr«c¸­p\ï9ˆV3\Ñ\ä}A>µJ®\ã¨\â\çu$\Ê\âYt^\Ö$\Ï ƒ\Ü\ßE\Ä*W—³®\öx8„\Üwg¡ˆ\×ú\Êf\Ó\ãl ŒJ¯¿46\Ïh‡ş\"\ö\Ùü“¶\Óhœ\Øşÿ\0\ãg\òNÚ¼}\Ú\âÿ\0µ¡;h±·\É8oq„q|E\â*^\Õ#\Ú\òªWª\ó&£½I™&J9ÿ\0\Ñwÿ\Ù');
/*!40000 ALTER TABLE `ArticlesToImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilterColor`
--

DROP TABLE IF EXISTS `FilterColor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FilterColor` (
  `Color` varchar(20) NOT NULL DEFAULT 'Unknown',
  `ColorID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilterColor`
--

LOCK TABLES `FilterColor` WRITE;
/*!40000 ALTER TABLE `FilterColor` DISABLE KEYS */;
INSERT INTO `FilterColor` VALUES ('Red',0),('Orange',1),('Yellow',2),('Green',3),('Blue',4),('Purple',5),('Multicolor',6);
/*!40000 ALTER TABLE `FilterColor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FilterSeason`
--

DROP TABLE IF EXISTS `FilterSeason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FilterSeason` (
  `Season` varchar(20) NOT NULL DEFAULT 'Unknown',
  `SeasonID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FilterSeason`
--

LOCK TABLES `FilterSeason` WRITE;
/*!40000 ALTER TABLE `FilterSeason` DISABLE KEYS */;
INSERT INTO `FilterSeason` VALUES ('Spring',0),('Summer',1),('Fall',2),('Winter',3);
/*!40000 ALTER TABLE `FilterSeason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OutfitItems`
--

DROP TABLE IF EXISTS `OutfitItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OutfitItems` (
  `outfitID` int NOT NULL,
  `clothingArticleID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OutfitItems`
--

LOCK TABLES `OutfitItems` WRITE;
/*!40000 ALTER TABLE `OutfitItems` DISABLE KEYS */;
INSERT INTO `OutfitItems` VALUES (1,1);
/*!40000 ALTER TABLE `OutfitItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Outfits`
--

DROP TABLE IF EXISTS `Outfits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Outfits` (
  `outfitID` int NOT NULL AUTO_INCREMENT,
  `outfitName` varchar(100) NOT NULL,
  `userID` int NOT NULL,
  `is_favorited` tinyint(1) DEFAULT '0',
  `timeCreated` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `timeLastModified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`outfitID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Outfits`
--

LOCK TABLES `Outfits` WRITE;
/*!40000 ALTER TABLE `Outfits` DISABLE KEYS */;
INSERT INTO `Outfits` VALUES (1,'woah',1,0,'2024-12-02 23:59:01','2024-12-02 23:59:01');
/*!40000 ALTER TABLE `Outfits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OutfitsToImage`
--

DROP TABLE IF EXISTS `OutfitsToImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OutfitsToImage` (
  `outfitID` int NOT NULL,
  `Image` mediumblob NOT NULL,
  PRIMARY KEY (`outfitID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OutfitsToImage`
--

LOCK TABLES `OutfitsToImage` WRITE;
/*!40000 ALTER TABLE `OutfitsToImage` DISABLE KEYS */;
INSERT INTO `OutfitsToImage` VALUES (1,_binary 'undefined');
/*!40000 ALTER TABLE `OutfitsToImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SubtypesOfClothing`
--

DROP TABLE IF EXISTS `SubtypesOfClothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SubtypesOfClothing` (
  `clothingSubTypeID` int NOT NULL,
  `clothingSubtype` varchar(50) NOT NULL,
  `clothingTypeID` int NOT NULL,
  PRIMARY KEY (`clothingSubTypeID`),
  UNIQUE KEY `clothingSubTypeID` (`clothingSubTypeID`),
  UNIQUE KEY `clothingSubtype` (`clothingSubtype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SubtypesOfClothing`
--

LOCK TABLES `SubtypesOfClothing` WRITE;
/*!40000 ALTER TABLE `SubtypesOfClothing` DISABLE KEYS */;
INSERT INTO `SubtypesOfClothing` VALUES (1,'T-Shirt',1),(2,'Short Sleeve',1),(3,'Long Sleeve',1),(4,'Dress Shirt',1),(5,'Workout Tops',1),(6,'Turtleneck',1),(7,'Jeans',2),(8,'Skirts',2),(9,'Shorts',2),(10,'Dress Pants',2),(11,'Athletic Shorts',2),(12,'Athletic Pants',2),(13,'Sweat Pants',2),(14,'Dresses',3),(15,'Jumpsuits',3),(16,'Rompers',3),(17,'Overalls',3),(18,'Belts',4),(19,'Watch',4),(20,'Bags',4),(21,'Sneakers',5),(22,'Boots',5),(23,'Sandals',5),(24,'Flats',5),(25,'Heels',5),(26,'Jackets',6),(27,'Hoodie',6),(28,'Cardigan',6),(29,'Coats',6),(30,'Blazers',6),(31,'Windbreakers',6),(32,'Parkas',6);
/*!40000 ALTER TABLE `SubtypesOfClothing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TypesOfClothing`
--

DROP TABLE IF EXISTS `TypesOfClothing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TypesOfClothing` (
  `clothingTypeID` int NOT NULL,
  `clothingType` varchar(50) NOT NULL,
  PRIMARY KEY (`clothingTypeID`),
  UNIQUE KEY `clothingTypeID` (`clothingTypeID`),
  UNIQUE KEY `clothingType` (`clothingType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TypesOfClothing`
--

LOCK TABLES `TypesOfClothing` WRITE;
/*!40000 ALTER TABLE `TypesOfClothing` DISABLE KEYS */;
INSERT INTO `TypesOfClothing` VALUES (4,'Accessories'),(2,'Bottoms'),(5,'Footwear'),(3,'Fullbody'),(6,'Outerwear'),(1,'Tops');
/*!40000 ALTER TABLE `TypesOfClothing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInfo`
--

DROP TABLE IF EXISTS `UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UserInfo` (
  `userID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `timeAccountCreated` timestamp NULL DEFAULT NULL,
  `timeZone` varchar(5) NOT NULL,
  `zipCode` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `hashedPassword` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `isRegistrationConfirmed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInfo`
--

LOCK TABLES `UserInfo` WRITE;
/*!40000 ALTER TABLE `UserInfo` DISABLE KEYS */;
INSERT INTO `UserInfo` VALUES (1,'rigo','2024-12-02 23:57:19','CST','78744','rigo.middle08@gmail.com','$2b$12$IBkBBvCu8c3sqZx0C7c3UOWIbbEHuvCw1ODWGtj8dU9Ks7fdsarpK','2024-12-02',1);
/*!40000 ALTER TABLE `UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersPendingRegistration`
--

DROP TABLE IF EXISTS `UsersPendingRegistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsersPendingRegistration` (
  `userID` int NOT NULL,
  `timeRegistrationProcessStarted` timestamp NOT NULL,
  `expirationTime` timestamp NOT NULL,
  `uuidKey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersPendingRegistration`
--

LOCK TABLES `UsersPendingRegistration` WRITE;
/*!40000 ALTER TABLE `UsersPendingRegistration` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersPendingRegistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsersResettingPassword`
--

DROP TABLE IF EXISTS `UsersResettingPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UsersResettingPassword` (
  `userID` int NOT NULL,
  `uuidKey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsersResettingPassword`
--

LOCK TABLES `UsersResettingPassword` WRITE;
/*!40000 ALTER TABLE `UsersResettingPassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `UsersResettingPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WebSessions`
--

DROP TABLE IF EXISTS `WebSessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `WebSessions` (
  `sessionID` varchar(255) NOT NULL,
  `userIDAssociated` int NOT NULL,
  `ipAddress` varchar(36) NOT NULL,
  `timeLastAccessed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `expiryTime` timestamp NOT NULL,
  PRIMARY KEY (`sessionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WebSessions`
--

LOCK TABLES `WebSessions` WRITE;
/*!40000 ALTER TABLE `WebSessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `WebSessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-02 19:07:38
