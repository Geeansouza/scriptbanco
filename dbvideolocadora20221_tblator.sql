-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: dbvideolocadora20221
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblator`
--

DROP TABLE IF EXISTS `tblator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblator` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `nomeArtistico` varchar(80) DEFAULT NULL,
  `dataNascimento` date NOT NULL,
  `dataFalescimento` date DEFAULT NULL,
  `biografia` text,
  `idSexo` int unsigned NOT NULL,
  `qtdeOscar` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `Fk_Sexo_ator` (`idSexo`),
  CONSTRAINT `Fk_Sexo_ator` FOREIGN KEY (`idSexo`) REFERENCES `tblsexo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblator`
--

LOCK TABLES `tblator` WRITE;
/*!40000 ALTER TABLE `tblator` DISABLE KEYS */;
INSERT INTO `tblator` VALUES (2,'James Edmund Caan','JAMES CAAN','1940-03-26',NULL,'- Conquistou a faixa preta de caratê quando jovem;- Possui uma estrela na Calçada da Fama, localizada em 6648 Hollywood Boulevard;- Pai do tambem ator Scott Caan.',7,NULL),(3,'Marlon Brando',NULL,'1924-04-03','2004-07-01','- Trabalhou como ascensorista de elevador em uma loja por 4 dias, antes de se tornar famoso.- Possui uma ilha particular no oceano Pacífico, na Polinésia, desde 1966.- O Oscar que ganhou por \"Sindicato dos Ladrões\" foi roubado de sua casa, com o ator tendo solicitado à Academia de Artes e Ciências Cinematográficas a reposição da estatueta, em 1970.- Recusou o Oscar recebido por \"O Poderoso Chefão\", em protesto pelo modo como os Estados Unidos e, especialmente, Hollywood vinham discriminando os índios nativos do país. Brando não compareceu à cerimônia de entrega do Oscar e enviou em seu lugar a atriz Sacheen Littlefeather, que subiu ao palco para receber a estatueta do ator como se fosse uma índia verdadeira, divulgando seu protesto.- Em determinado momento das filmagens de \"A Cartada Final\", se recusava a estar no mesmo set que o diretor Frank Oz.- Possui uma estrela na ...\n',7,0),(4,'MARLON BRANDO',NULL,'1924-04-03','2004-07-01','- Trabalhou como ascensorista de elevador em uma loja por 4 dias, antes de se tornar famoso.- Possui uma ilha particular no oceano Pacífico, na Polinésia, desde 1966.- O Oscar que ganhou por \"Sindicato dos Ladrões\" foi roubado de sua casa, com o ator tendo solicitado à Academia de Artes e Ciências Cinematográficas a reposição da estatueta, em 1970.- Recusou o Oscar recebido por \"O Poderoso Chefão\", em protesto pelo modo como os Estados Unidos e, especialmente, Hollywood vinham discriminando os índios nativos do país. Brando não compareceu à cerimônia de entrega do Oscar e enviou em seu lugar a atriz Sacheen Littlefeather, que subiu ao palco para receber a estatueta do ator como se fosse uma índia verdadeira, divulgando seu protesto.- Em determinado momento das filmagens de \"A Cartada Final\", se recusava a estar no mesmo set que o diretor Frank Oz.- Possui uma estrela na ...\n',7,3),(5,'Alfredo James Paci0no','AL PACINO','1940-04-25',NULL,' É um grande fã de ópera;- É um dos poucos astros de Hollywood que nunca casou;- Foi preso em janeiro de 1961, acusado de carregar consigo uma arma escondida;- Recusou o personagem Han Solo, da trilogia original de \"Star Wars\";- Foi o primeiro na história do Oscar a ser indicado no mesmo ano nas categorias de melhor ator e melhor ator coadjuvante.\n',7,NULL);
/*!40000 ALTER TABLE `tblator` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06 15:12:45
