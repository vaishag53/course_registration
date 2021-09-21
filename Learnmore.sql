CREATE DATABASE  IF NOT EXISTS `learnmore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `learnmore`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: learnmore
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courseid` int NOT NULL AUTO_INCREMENT,
  `coursename` varchar(45) DEFAULT NULL,
  `desc` longtext,
  `imgs` varchar(45) DEFAULT NULL,
  `extras` longtext,
  PRIMARY KEY (`courseid`),
  UNIQUE KEY `courseid_UNIQUE` (`courseid`),
  UNIQUE KEY `coursename_UNIQUE` (`coursename`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Web Designing','This course will give you an overview of client-side web UI frameworks, in particular Bootstrap 4.\n                        You will learn about grids and responsive design, Bootstrap CSS and JavaScript components.','\"imgs/html-5.png\"','<span class=\"badge badge-warning\">HTML</span> <span class=\"badge badge-primary\">CSS</span> <span class=\"badge badge-danger\">JS</span>'),(2,'Basics of Python','This course aims to teach everyone the basics of programming computers using Python.\n                        We cover the basics of how one constructs a program from a series of simple instructions in Python.\n                        The course has no pre-requisites and avoids all but the simplest mathematics.','\"imgs/py.jpg\"','<i></i>'),(3,'Machine Learning ','Machine learning is the science of getting computers to act without being explicitly programmed.\n                        In the past decade, machine learning has given us self-driving cars, practical speech recognition, effective web search, and a vastly improved understanding of the human genome.\n                        Machine learning is so pervasive today that you probably use it dozens of times a day without knowing it.\n                        Many researchers also think it is the best way to make progress towards human-level AI.','\"imgs/ml.jpg\"','<span class=\"badge badge-danger\">NEW</span>'),(4,'DBMS ','The purpose of this course is to introduce relational database concepts and help you learn and apply foundational knowledge of the SQL language.\n                        It is also intended to get you started with performing SQL access in a data science environment.\n                        The emphasis in this course is on hands-on and practical learning . As such, you will work with real databases, real data science tools, and real-world datasets.\n                        You will create a database instance in the cloud.','\"imgs/sql.jpg\"',' <span class=\"badge badge-warning\">SQL</span>'),(8,'JAVA ','Take your first step towards a career in software development with this introduction to Java—one of the most in-demand programming languages and the foundation of the Android operating system. Designed for beginners,\n			this Specialization will teach you core programming concepts and equip you to write programs to solve complex problems. \n            In addition, you will gain the foundational skills a software engineer needs to solve real-world problems, from designing algorithms to testing and debugging your programs.','\"imgs/j.jpg\"',' <span class=\"badge badge-warning\">JAVA</span>'),(9,'Deep Learning ','If you want to break into cutting-edge AI, this course will help you do so. Deep learning engineers are highly sought after, and mastering deep learning will give you numerous new career opportunities.\n Deep learning is also a new superpower that will let you build AI systems that just weren\'t possible a few years ago. ','\"imgs/dl.jpg\"',' <span class=\"badge badge-danger\">NEW</span>'),(10,'App Development','The course will give students hands-on experience in developing interesting Android applications. No previous experience in programming is needed, and the course is suitable for students with any level of computing experience.\n MIT App Inventor will be used in the course. It is a blocks-based programming tool that allows everyone, even novices,\n to start programming and build fully functional apps for Android devices. ','\"imgs/app.jpg\"',' <i></i>'),(11,'AI','AI is not only for engineers. If you want your organization to become better at using AI, this is the course to tell everyone--especially your non-technical colleagues--to take. \n	In this course, you will learn,The meaning behind common AI terminology, including neural networks, machine learning, deep learning, and data science.','\"imgs/ai.jpg\"',' <i></i>'),(12,'PHP','In this course, you\'ll explore the basic structure of a web application, and how a web browser interacts with a web server.\n You\'ll be introduced to the request/response cycle, including GET/POST/Redirect. You\'ll also gain an introductory understanding of Hypertext Markup Language (HTML), as well as the basic syntax and data structures of the PHP language, variables, logic, iteration, arrays, error handling, and superglobal variables, among other elements. ','\"imgs/php.jpg\"',' <i></i>');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercourses`
--

DROP TABLE IF EXISTS `usercourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usercourses` (
  `ind` int NOT NULL AUTO_INCREMENT,
  `u4` int DEFAULT NULL,
  `u5` int DEFAULT NULL,
  PRIMARY KEY (`ind`),
  UNIQUE KEY `u4` (`u4`),
  UNIQUE KEY `u5` (`u5`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercourses`
--

LOCK TABLES `usercourses` WRITE;
/*!40000 ALTER TABLE `usercourses` DISABLE KEYS */;
INSERT INTO `usercourses` VALUES (1,NULL,NULL),(3,NULL,NULL),(4,NULL,NULL),(7,4,NULL),(9,NULL,NULL),(10,NULL,4),(11,NULL,NULL),(12,3,NULL),(13,NULL,NULL);
/*!40000 ALTER TABLE `usercourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userextra`
--

DROP TABLE IF EXISTS `userextra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userextra` (
  `userid` int NOT NULL,
  `college` varchar(45) DEFAULT NULL,
  `degree` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userextra`
--

LOCK TABLES `userextra` WRITE;
/*!40000 ALTER TABLE `userextra` DISABLE KEYS */;
INSERT INTO `userextra` VALUES (4,'kce','cse','5-3-2000');
/*!40000 ALTER TABLE `userextra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` tinytext NOT NULL,
  `email` tinytext NOT NULL,
  `password` longtext NOT NULL,
  `phone` varchar(10) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `user-id_UNIQUE` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'vaisag','123@gmail.com','123','9787537739'),(5,'jack','1233@gmail.com','123','9787537739');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-27 12:57:47
