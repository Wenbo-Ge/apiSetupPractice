-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: Shop
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `Item`
--

DROP TABLE IF EXISTS `Item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `image_url` tinytext,
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Item`
--

LOCK TABLES `Item` WRITE;
/*!40000 ALTER TABLE `Item` DISABLE KEYS */;
INSERT INTO `Item` VALUES (1,'MEN U BLOCKTECH COAT','69.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_32_405941?$prod$','Windproof and water-repellent! Our simple, versatile single-breasted coat.\n\nWindproof design keeps cold air out.\nWater-repellent coating plus waterproof taped seams.\nChambray twill material with a smooth, elegant texture.\nSimple, highly versatile single-breasted design.\nOur team headed by Christophe Lemaire provided this collection of innovative basics.'),(2,'MEN COTTON FULL-ZIP PARKA','19.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_69_404364?$prod$','A casual hoodie featuring the natural feel of cotton.\n\nComfortably soft, 100% natural cotton material.\nIn range of faded colors to match causal and surfer styles.\nMade from a high density twill fabric, combining texture with a washed look.\nThe boxy silhouette is roomy through the shoulders.\nWith a straight cut from the bust to the hem and short length, it pairs well with a range of bottoms.\nThe front zipper, hood cord, and buttons are finished in the same color for a sophisticated look.\nSince there is no lining, you can throw this over a T-shirt for a lightweight ensemble.'),(3,'MEN BLOCKTECH PARKA','49.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_03_182577?$prod$','In water-resistant material & loaded with details! Be ready with a pocketable parka.\n\nWith a durable water-repellent coating that keeps out light rain.\nHas waterproof and windproof functions added to keep the rain and wind out.\nNow with more waterproof features, such as a brim added to the hood and a rain flap on the placket.\nBreathable to keep you fresh.\nA 3-dimensional shape at the elbows and hems with different lengths in front and back add ease of movement.\nA pull was attached to the zipper to make it easier to pull.\nComes with a convenient pouch for compact storage and carrying.'),(4,'MEN OXFORD SLIM-FIT LONG SLEEVE SHIRT','14.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_63_164168?$prod$','This classic Men button-up shirt features extensive updates that make it better-looking and more comfortable than ever. The 100% cotton Oxford material adds just the right casual touch for everyday wear. A stylish button-down collar gives it an elegant look, and the slim fit creates a sleek, fitted outline.'),(5,'MEN DRY-EX CREWNECK LONG-SLEEVE T-SHIRT','14.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_16_404151?$prod$','Increased stretch for ease of movement! This DRY-EX t-shirt is perfect for athletes.\n\nDries moisture even quicker than regular DRY wear to keep you feeling cool and comfortable.\nMade from our incredibly quick-drying DRY-EX material.\nUpdated for a new season! Increased stretch for ease of movement.\nUpdated for a new season! Now available in a range of subtle mottled hues, perfect for a casual look.\nIn response to customer feedback, we’ve added anti-microbial and anti-odor properties to our DRY-EX and UV Cut technology.\nVersatile LifeWear that can be worn in every setting, whether you\'re running a marathon or simply running errands.'),(6,'MEN OMIYAGE SHORT-SLEEVE GRAPHIC T-SHIRT','9.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_03_403858?$prod$','Nippon Omiyage - Feat. Fujio Akatsuka\n\nMangas Tensai Bakabon and Moretsu Ataro celebrate their 50th anniversaries in 2017. They\'re two of the most beloved works of celebrated manga artist Fujio Akatsuka whose long and varied manga career included slapstick, the fantastic, and heart-warming gag stories. Bakabon\'s dad, Unagi-inu, Nyarome, and other cute and fun characters that populated Akatsuka\'s works remain popular even today.'),(7,'WOMEN IDLF COTTON POPLIN JACKET','49.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_62_405404?$prod$','Part of our collaboration with Ines de la Fressange, synonymous with the timeless appeal of Parisian chic.\n\nLight, casual in fresh patterns suitable for office wear.\nMade of light cotton poplin material.'),(8,'WOMEN STAND COLLAR BLOUSON','19.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_54_405019?$prod$','A lightweight nylon blouson that\'s handy to slip on.\n\n100% nylon material.\nThe nylon is light, wrinkle-resistant and convenient to carry.\nHandy for slipping on during the changing seasons.\nFeatures a storable hood, so you\'re ready for sudden showers.\nThe fabric is purposely puckered to add just the right amount of casual flair.'),(9,'WOMEN U BOAT NECK SHORT-SLEEVE T-SHIRT\n','9.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_03_407408?$prod$','Durable feel plus on-trend style! Our feminine, stylish fashion t-shirt.\n\nOn-trend design with a shallow boat neck and rounded sleeves.\nSlightly thick double-sided knit fabric with a soft, flexible feel.\nVertically-running stitchwork creates a feminine silhouette.'),(10,'WOMEN MILANO RIBBED 3/4 SLEEVE PULLOVER','9.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_01_408479?$prod$','Made with elegantly textured Milano rib material. Simple, easily styled pullover.\n\nThe simple design is easy to style.\nThe fresh, light three-quarter length sleeves are perfect for when the seasons are changing.\nMilano rib material has a smooth surface and lends itself to sophisticated styling.'),(11,'WOMEN RAYON LONG-SLEEVE T-SHIRT BLOUSE','9.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_00_404545?$prod$','Button at the back of the collar! A great option for dressy or feminine styles.\n\nSpecial spun yarn with rayon and premium long-fiber polyester used in both the warp and the weft.\nSpinning and weaving methods create a smooth-feeling, wrinkle-resistant material.\nSoft, light, and comfortable feel.\nWrinkle-resistant processing holds up even after washing for easy care.\nNew for this season! Open-backed design adds a fashionable touch.\nVersatile relaxed, oversized cut.\nPairs with anything from a clean work look to denim for a more casual style.\nBack button can be left open or done up, expanding your style options.'),(12,'WOMEN SOFT COTTON LONG SLEEVE SHIRT (ONLINE E','14.90','https://uniqlo.scene7.com/is/image/UNIQLO/goods_24_404546?$prod$','123');
/*!40000 ALTER TABLE `Item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-27 18:22:01
