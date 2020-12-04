-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: iot_reto_2
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Temporary view structure for view `hr_and_o2`
--

DROP TABLE IF EXISTS `hr_and_o2`;
/*!50001 DROP VIEW IF EXISTS `hr_and_o2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hr_and_o2` AS SELECT 
 1 AS `Persona`,
 1 AS `Nivel O2`,
 1 AS `Nivel Ritmo Cardiaco`,
 1 AS `Fecha Medida`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `hr`
--

DROP TABLE IF EXISTS `hr`;
/*!50001 DROP VIEW IF EXISTS `hr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `hr` AS SELECT 
 1 AS `Persona`,
 1 AS `Nivel Ritmo Cardiaco`,
 1 AS `Fecha Medida`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `o2`
--

DROP TABLE IF EXISTS `o2`;
/*!50001 DROP VIEW IF EXISTS `o2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `o2` AS SELECT 
 1 AS `Persona`,
 1 AS `Nivel O2`,
 1 AS `Fecha Medida`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `hr_and_o2`
--

/*!50001 DROP VIEW IF EXISTS `hr_and_o2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hr_and_o2` AS select `hr`.`Persona` AS `Persona`,`o2`.`Nivel O2` AS `Nivel O2`,`hr`.`Nivel Ritmo Cardiaco` AS `Nivel Ritmo Cardiaco`,`hr`.`Fecha Medida` AS `Fecha Medida` from (`hr` join `o2` on((`hr`.`Fecha Medida` = `o2`.`Fecha Medida`))) order by `hr`.`Fecha Medida` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `hr`
--

/*!50001 DROP VIEW IF EXISTS `hr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `hr` AS select `persona`.`nombrePersona` AS `Persona`,`ritmo_cardiaco`.`nivelRitmoCardiaco` AS `Nivel Ritmo Cardiaco`,`ritmo_cardiaco`.`fechaRitmoCardiaco` AS `Fecha Medida` from (`persona` join `ritmo_cardiaco` on((`persona`.`idPersona` = `ritmo_cardiaco`.`idPersona`))) order by `ritmo_cardiaco`.`fechaRitmoCardiaco` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `o2`
--

/*!50001 DROP VIEW IF EXISTS `o2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `o2` AS select `persona`.`nombrePersona` AS `Persona`,`oxigeno`.`nivelOxigeno` AS `Nivel O2`,`oxigeno`.`fechaOxigeno` AS `Fecha Medida` from (`persona` join `oxigeno` on((`persona`.`idPersona` = `oxigeno`.`idPersona`))) order by `oxigeno`.`fechaOxigeno` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'iot_reto_2'
--

--
-- Dumping routines for database 'iot_reto_2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-04 13:26:16
