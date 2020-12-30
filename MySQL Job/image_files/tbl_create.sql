-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2018 at 11:30 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8 */
;

--
-- Database: `phppot`
--
-- --------------------------------------------------------
CREATE DATABASE IF NOT EXISTS authentication;

USE authentication;

--
-- Table structure for table `devices`
--
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(32) NOT NULL,
  `access` int(10) unsigned,
  `data` text,
  PRIMARY KEY (id)
) ENGINE = InnoDB AUTO_INCREMENT = 1 DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

INSERT INTO
  `users` (
    `id`,
    `username`,
    `email`,
    `user_type`,
    `password`
  )
VALUES
  (1, 'Reiner', 'Reiner@web.de', 'admin', '8fe4c11451281c094a6578e6ddbf5eed');