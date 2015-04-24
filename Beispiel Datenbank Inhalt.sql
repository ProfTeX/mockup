-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 24. Apr 2015 um 09:52
-- Server Version: 5.6.21
-- PHP-Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `proftex`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chapter`
--

CREATE TABLE IF NOT EXISTS `chapter` (
`ID` int(11) NOT NULL,
  `Name` varchar(150) NOT NULL,
  `Position` varchar(45) NOT NULL,
  `Room_ID` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `chapter`
--

INSERT INTO `chapter` (`ID`, `Name`, `Position`, `Room_ID`, `created_at`, `updated_at`) VALUES
(10, 'Test', '0', 13, '2015-04-24 09:37:08', '2015-04-24 09:37:47'),
(11, 'TagsTest', '2', 13, '2015-04-24 09:38:10', '2015-04-24 09:39:42'),
(12, 'GroßTest', '4', 13, '2015-04-24 09:39:40', '2015-04-24 09:39:40');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `chapter_has_snippet`
--

CREATE TABLE IF NOT EXISTS `chapter_has_snippet` (
  `Chapter_ID` int(11) NOT NULL,
  `Snippet_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `chapter_has_snippet`
--

INSERT INTO `chapter_has_snippet` (`Chapter_ID`, `Snippet_ID`) VALUES
(10, 4),
(11, 5),
(12, 6),
(12, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `Email` varchar(200) NOT NULL,
  `Role` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `role`
--

INSERT INTO `role` (`Email`, `Role`) VALUES
('Test', 'user');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `room`
--

CREATE TABLE IF NOT EXISTS `room` (
`ID` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Course` varchar(100) DEFAULT NULL,
  `Description` text,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `room`
--

INSERT INTO `room` (`ID`, `Name`, `Course`, `Description`, `created_at`) VALUES
(13, 'Test', NULL, NULL, '2015-04-24 02:19:55');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `snippet`
--

CREATE TABLE IF NOT EXISTS `snippet` (
`ID` int(11) NOT NULL,
  `Title` varchar(150) NOT NULL,
  `Content` text NOT NULL,
  `Position` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `snippet`
--

INSERT INTO `snippet` (`ID`, `Title`, `Content`, `Position`, `created_at`, `updated_at`) VALUES
(4, 'UnterTest', 'Das hier ist ein Test. Ohne Tags.', '1', '2015-04-24 09:37:28', '2015-04-24 09:37:57'),
(5, 'UnterTagsTest', 'Das hier ist ein Test mit Tags.', '3', '2015-04-24 09:39:01', '2015-04-24 09:39:42'),
(6, 'Unter Groß-Test', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '5', '2015-04-24 09:40:30', '2015-04-24 09:40:37'),
(7, 'Zweites Unter Groß-Test', 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.', '6', '2015-04-24 09:42:10', '2015-04-24 09:42:10');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `snippet_has_tag`
--

CREATE TABLE IF NOT EXISTS `snippet_has_tag` (
  `Snippet_ID` int(11) NOT NULL,
  `Tag_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `snippet_has_tag`
--

INSERT INTO `snippet_has_tag` (`Snippet_ID`, `Tag_ID`) VALUES
(6, 1),
(7, 1),
(5, 4),
(5, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
`ID` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `tag`
--

INSERT INTO `tag` (`ID`, `Name`, `created_at`, `updated_at`) VALUES
(1, 'Beispiel', '2015-04-24 00:00:00', '2015-04-24 00:00:00'),
(3, 'Beweis', '2015-04-24 00:00:00', '2015-04-24 00:00:00'),
(4, 'Definition', '2015-04-24 00:00:00', '2015-04-24 00:00:00'),
(5, 'Loesung', '2015-04-24 00:00:00', '2015-04-24 00:00:00'),
(6, 'Uebung', '2015-04-24 00:00:00', '2015-04-24 00:00:00'),
(7, 'v11', '2015-04-24 00:00:00', '2015-04-24 00:00:00'),
(8, 'v12', '2015-04-24 00:00:00', '2015-04-24 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`ID` int(11) NOT NULL,
  `Name` varchar(200) DEFAULT 'Dummy',
  `Email` varchar(200) NOT NULL,
  `Password` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user`
--

INSERT INTO `user` (`ID`, `Name`, `Email`, `Password`) VALUES
(1, 'Dummy', 'Test', '098f6bcd4621d373cade4e832627b4f6');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_has_role`
--

CREATE TABLE IF NOT EXISTS `user_has_role` (
  `User_ID` int(11) NOT NULL,
  `Role_Email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_has_room`
--

CREATE TABLE IF NOT EXISTS `user_has_room` (
  `User_ID` int(11) NOT NULL,
  `Room_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `user_has_room`
--

INSERT INTO `user_has_room` (`User_ID`, `Room_ID`) VALUES
(1, 13);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `chapter`
--
ALTER TABLE `chapter`
 ADD PRIMARY KEY (`ID`), ADD KEY `fk_Chapter_Room1_idx` (`Room_ID`);

--
-- Indizes für die Tabelle `chapter_has_snippet`
--
ALTER TABLE `chapter_has_snippet`
 ADD PRIMARY KEY (`Chapter_ID`,`Snippet_ID`), ADD KEY `fk_Chapter_has_Snippet_Snippet1_idx` (`Snippet_ID`), ADD KEY `fk_Chapter_has_Snippet_Chapter1_idx` (`Chapter_ID`);

--
-- Indizes für die Tabelle `role`
--
ALTER TABLE `role`
 ADD PRIMARY KEY (`Email`), ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

--
-- Indizes für die Tabelle `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `snippet`
--
ALTER TABLE `snippet`
 ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `snippet_has_tag`
--
ALTER TABLE `snippet_has_tag`
 ADD PRIMARY KEY (`Snippet_ID`,`Tag_ID`), ADD KEY `fk_Snippet_has_Tag_Tag1_idx` (`Tag_ID`), ADD KEY `fk_Snippet_has_Tag_Snippet1_idx` (`Snippet_ID`);

--
-- Indizes für die Tabelle `tag`
--
ALTER TABLE `tag`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Name_UNIQUE` (`Name`);

--
-- Indizes für die Tabelle `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Email_UNIQUE` (`Email`);

--
-- Indizes für die Tabelle `user_has_role`
--
ALTER TABLE `user_has_role`
 ADD PRIMARY KEY (`User_ID`,`Role_Email`), ADD KEY `fk_User_has_Group_Group1_idx` (`Role_Email`), ADD KEY `fk_User_has_Group_User1_idx` (`User_ID`);

--
-- Indizes für die Tabelle `user_has_room`
--
ALTER TABLE `user_has_room`
 ADD PRIMARY KEY (`User_ID`,`Room_ID`), ADD KEY `fk_User_has_Room_Room1_idx` (`Room_ID`), ADD KEY `fk_User_has_Room_User_idx` (`User_ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `chapter`
--
ALTER TABLE `chapter`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT für Tabelle `room`
--
ALTER TABLE `room`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT für Tabelle `snippet`
--
ALTER TABLE `snippet`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `tag`
--
ALTER TABLE `tag`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT für Tabelle `user`
--
ALTER TABLE `user`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `chapter`
--
ALTER TABLE `chapter`
ADD CONSTRAINT `fk_Chapter_Room1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `chapter_has_snippet`
--
ALTER TABLE `chapter_has_snippet`
ADD CONSTRAINT `fk_Chapter_has_Snippet_Chapter1` FOREIGN KEY (`Chapter_ID`) REFERENCES `chapter` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Chapter_has_Snippet_Snippet1` FOREIGN KEY (`Snippet_ID`) REFERENCES `snippet` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `snippet_has_tag`
--
ALTER TABLE `snippet_has_tag`
ADD CONSTRAINT `fk_Snippet_has_Tag_Snippet1` FOREIGN KEY (`Snippet_ID`) REFERENCES `snippet` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_Snippet_has_Tag_Tag1` FOREIGN KEY (`Tag_ID`) REFERENCES `tag` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `user_has_role`
--
ALTER TABLE `user_has_role`
ADD CONSTRAINT `fk_User_has_Group_Group1` FOREIGN KEY (`Role_Email`) REFERENCES `role` (`Email`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_User_has_Group_User1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `user_has_room`
--
ALTER TABLE `user_has_room`
ADD CONSTRAINT `fk_User_has_Room_Room1` FOREIGN KEY (`Room_ID`) REFERENCES `room` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_User_has_Room_User` FOREIGN KEY (`User_ID`) REFERENCES `user` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
