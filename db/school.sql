SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

CREATE TABLE IF NOT EXISTS `admin` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'Sujay', '12345'),
(2, 'Sumanth', '12345');

CREATE TABLE IF NOT EXISTS `class` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `CNAME` varchar(150) NOT NULL,
  `CSEC` varchar(150) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;
INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(1, 'VII', 'A'),
(2, 'VII', 'B'),
(3, 'VIII','A'),
(4, 'VIII','B'),
(5, 'IX',  'A'),
(6, 'IX',  'B'),
(7, 'X',   'A'),
(8, 'X',   'B');

CREATE TABLE IF NOT EXISTS `exam` (
  `EID` int(11) NOT NULL AUTO_INCREMENT,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;
INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(1, 'Term Exam', 'II-Term', '14-08-2018', 'FN', 'VIII', 'Kannada'),
(3, 'Term Exam', 'II-Term', '10-09-2018', 'FN', 'III', 'English'),
(4, 'Term Exam', 'II-Term', '18-09-2018', 'AN', 'V', 'Maths'),
(5, 'Term Exam', 'III-Term', '19-11-2018', 'FN', 'VIII', 'Kannada');

CREATE TABLE IF NOT EXISTS `hclass` (
  `HID` int(11) NOT NULL AUTO_INCREMENT,
  `TID` int(11) NOT NULL,
  `CLA` varchar(150) NOT NULL,
  `SEC` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  PRIMARY KEY (`HID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
INSERT INTO `hclass` (`HID`, `TID`, `CLA`, `SEC`, `SUB`) VALUES
(1, 1, 'VIII', 'A', 'English'),
(2, 4, 'X', 'B', 'English');


CREATE TABLE IF NOT EXISTS `mark` (
  `MID` int(11) NOT NULL AUTO_INCREMENT,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;
INSERT INTO `mark` (`MID`, `REGNO`, `SUB`, `MARK`, `TERM`, `CLASS`) VALUES
(1, 'S101', 'Kannada', '95', 'I-Term', 'VII'),
(2, 'S102', 'English', '65', 'II-Term', 'VIII'),
(3,'S103','Social Science','75','III-Term','IX');

CREATE TABLE IF NOT EXISTS `staff` (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(150) NOT NULL,
  `SAL` varchar(150) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;
INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(1, 'Sathish', '1234', 'B.ed', '15000', '9876543210', 'sathish@gmail.com', 'Davanagere', 'staff/1.jpg'),
(2, 'Prabhavati', '1234', 'B.ed', '15000', '9876543210', 'Prabha123@gmail.com', 'Davanagere', 'staff/2.jpg'),
(3, 'Premakumari', '1234', 'B.ed', '20000', '9876543210', 'prema46@gmail.com', 'Davanagere', 'staff/3.jpg'),
(4, 'Bhuvaneshwari', '1234', 'B.ed', '30000', '9876543210', 'gsb@gmail.com', 'Davanagere', 'staff/4.jpg');


CREATE TABLE IF NOT EXISTS `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(150) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` text NOT NULL,
  `SCLASS` varchar(150) NOT NULL,
  `SSEC` varchar(150) NOT NULL,
  `SIMG` varchar(150) NOT NULL,
  `TID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT= 12 ;
INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(1, 'S101', 'Suhas', 'Basavaraj', '17-10-2004', 'Male', '9874561230', 'suhas@gmail.com', 'Davanagere', 'VII', 'C', 'student/1.jpg', 1),
(2, 'S102', 'Spoorthi', 'Sadhanand', '19-11-2007', 'Female', '8529634710', 'Spookie@gmail.com', 'Davanagere', 'VIII', 'A', 'student/2.jpg', 2),
(3, 'S103', 'Sudeshna', 'Bharat', '17-10-2004', 'Female', '9874561230', 'suddhu@gmail.com', 'Davanagere', 'IX', 'C', 'student/3.jpg', 3),
(4, 'S104', 'Chandan', 'Parameshwaraiah', '19-11-2007', 'Male', '8529634710', 'Chandu@gmail.com', 'Davanagere', 'X', 'A', 'student/4.jpg', 4),
(5, 'S105', 'Hardhik', 'Bethur', '17-10-2004', 'Male', '9874561230', 'hardhik34@gmail.com', 'Davanagere', 'VII', 'C', 'student/5.jpg', 1),
(6, 'S106', 'Gangadhar', 'Rangaswamy', '19-11-2007', 'Male', '8529634710', 'ganga@gmail.com', 'Davanagere', 'VIII', 'A', 'student/6.jpg', 2),
(7, 'S107', 'Priyanka', 'Dheeraj', '17-10-2004', 'Female', '9874561230', 'pri45@gmail.com', 'Davanagere', 'IX', 'C', 'student/7.jpg', 3),
(8, 'S108', 'Bindu', 'Shekar', '19-11-2007', 'Female', '8529634710', 'bindu@gmail.com', 'Davanagere', 'X', 'A', 'student/8.jpg', 4),
(9, 'S109', 'Chandana', 'Kiran', '17-10-2004', 'Female', '9874561230', 'chandana03@gmail.com', 'Davanagere', 'VII', 'C', 'student/9.jpg', 1),
(10, 'S110', 'Sindhu', 'Munjunath', '19-11-2007', 'Female', '8529634710', 'Sindugc@gmail.com', 'Davanagere', 'VIII', 'A', 'student/10.jpg', 2),
(11, 'S111', 'Vijay', 'Ghanesh', '17-03-2005', 'Male', '8794561230', 'Vijay@gmail.com', 'Davanagere', 'IX', 'C', 'student/11.jpg', 1);


CREATE TABLE IF NOT EXISTS `sub` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(150) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;
INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(1, 'Kannada'),
(2, 'English'),
(3, 'Hindi'),
(4, 'Maths'),
(5, 'Science'),
(6, 'Social Science');

COMMIT;
