-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 16, 2018 at 04:40 AM
-- Server version: 5.5.20
-- PHP Version: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crackyourway`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`) VALUES
('user1', 'user1'),
('user10', 'user10'),
('user11', 'user11'),
('user12', 'user12'),
('user13', 'user13'),
('user14', 'user14'),
('user15', 'user15'),
('user16', 'user16'),
('user17', 'user17'),
('user18', 'user18'),
('user19', 'user19'),
('user2', 'user2'),
('user20', 'user20'),
('user21', 'user21'),
('user22', 'user22'),
('user23', 'user23'),
('user24', 'user24'),
('user25', 'user25'),
('user3', 'user3'),
('user4', 'user4'),
('user5', 'user5'),
('user6', 'user6'),
('user7', 'user7'),
('user8', 'user8'),
('user9', 'user9');

-- --------------------------------------------------------

--
-- Table structure for table `passwordtable`
--

CREATE TABLE IF NOT EXISTS `passwordtable` (
  `uid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  UNIQUE KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passwordtable`
--

INSERT INTO `passwordtable` (`uid`, `password`) VALUES
('user1', '5678'),
('user10', ''),
('user11', ''),
('user12', ''),
('user13', ''),
('user14', ''),
('user15', ''),
('user16', ''),
('user17', ''),
('user18', ''),
('user19', ''),
('user2', '12345'),
('user20', ''),
('user21', ''),
('user22', ''),
('user23', ''),
('user24', ''),
('user25', ''),
('user26', ''),
('user27', ''),
('user28', ''),
('user3', ''),
('user4', ''),
('user5', ''),
('user6', ''),
('user7', ''),
('user8', ''),
('user9', '');

-- --------------------------------------------------------

--
-- Table structure for table `pnp`
--

CREATE TABLE IF NOT EXISTS `pnp` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pnp`
--

INSERT INTO `pnp` (`no`, `place`, `password`) VALUES
(1, '[AV-gate]', 'kvy2567'),
(2, '[AV-107]', 'tos9727'),
(3, '[AV-LAWN]', 'ryx5836'),
(4, '[AV-005]', 'btd3466'),
(5, '[AV-102]', 'sdh2356');

-- --------------------------------------------------------

--
-- Table structure for table `quetable`
--

CREATE TABLE IF NOT EXISTS `quetable` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `que` varchar(300) NOT NULL,
  `a` varchar(200) NOT NULL,
  `b` varchar(200) NOT NULL,
  `c` varchar(200) NOT NULL,
  `d` varchar(200) NOT NULL,
  `correct` varchar(200) NOT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `quetable`
--

INSERT INTO `quetable` (`no`, `que`, `a`, `b`, `c`, `d`, `correct`) VALUES
(1, ' Identify the incorrect option.', ' enumerators are constants', ' enumerators are user defined types', 'enumerators are same as macros', 'enumerator values start from 0 by default', 'enumerators are same as macros'),
(2, 'Void pointer can point to which type of objects?', 'int', 'float', 'double', 'all of the mentioned', 'all of the mentioned'),
(3, 'The pointer can point to any variable that is not declared with which of these?', 'const', 'volatile', 'both const & volatile', 'static', 'both const & volatile'),
(4, 'Identify the incorrect statement', 'Reference is the alternate name of the object', 'A reference value once defined can be reassigned', ' A reference value once defined cannot be reassigned', ' None of the mentioned', 'A reference value once defined can be reassigned'),
(5, ' What does a reference provide?', 'Alternate name for the class', 'Alternate name for the variable', 'Alternate name for the pointer', 'None of the mentioned', 'Alternate name for the variable'),
(6, 'It is guaranteed that a ____ has atleast 8bits and a ____ has atleast 16 bits.', ' int, float', 'char, int', 'bool, char', 'char, short', 'char, short'),
(7, ' The size of an object or a type can be determined using which operator?', 'malloc', ' sizeof', ' malloc', 'calloc', ' sizeof'),
(8, 'Implementation dependent aspects about an implementation can be found in ____', 'implementation', 'limits', 'limit', 'numeric', 'limits'),
(9, 'What will happen when the structure is declared?', 'it will not allocate any memory', ' it will allocate the memory', ' it will be declared and initialized', 'none of the mentioned', 'it will not allocate any memory'),
(10, 'Which operator is having right to left associativity in the following?', 'Array subscripting', ' Function call', 'Addition and subtraction', 'Type cast', 'Type cast'),
(11, 'What is the use of dynamic_cast operator?', 'it converts virtual base class to derived class', ' it converts virtual base object to derived objeccts', 'it will convert the operator based on precedence', 'none of the mentioned', 'it converts virtual base class to derived class'),
(12, 'How many ways of passing a parameter are there in c++?', '1', '2', '3', '4', '3'),
(13, 'If the file name is enclosed in double quotation marks', 'The preprocessor treats it as a user-defined file', 'The preprocessor treats it as a system-defined file', 'The preprocessor treats it as a user-defined file & system-defined file', 'None of the mentioned', 'The preprocessor treats it as a user-defined file'),
(14, 'The below two lines are equivalent to<br>\r\n#define C_IO_HEADER<br> \r\n#include C_IO_HEADER<br>', '#include "scanf"', ' #include”printf”', '#include”C_IO_HEADER”', '#include', '#include'),
(15, 'Which of the following names for files not accepted?', 'header.h.h', '123header.h', '_head_er.h', 'None of the mentioned', 'None of the mentioned'),
(16, 'In the C language', 'At most one activation record exists between the current activation record and the activation record for the main', 'The number of activation records between the current activation record and the activation record for the main depends on the actual function calling sequence.', 'The visibility of global variables depends on the actual function calling sequence.', 'Recursion requires the activation record for the recursive function to be saved on a different stack before the recursive function can be called.\r\n', 'The number of activation records between the current activation record and the activation record for the main depends on the actual function calling sequence.'),
(17, 'Consider a program P that consists of two source modules M1 and M2 contained in two different files. If M1 contains a reference to a function defined in M2, the reference will be resolved at', 'Edit-time', 'Compile-time', 'Link-time', 'Load-time\r\n', 'Link-time'),
(18, 'What is the validity of template parameters?', 'inside that block only', 'inside the class', 'whole program', 'any of the mentioned', 'inside that block only'),
(19, 'What do input and output objects support?', 'Terminated sequences', 'Extracted sequences', 'Null-terminated sequences', 'None of the mentioned', 'Null-terminated sequences'),
(20, 'What kind of execution does sequence point allow?', 'Non-overlap', 'Overlap', 'Concurrent', 'None of the mentioned', 'Non-overlap'),
(21, 'How many runtime error messages associated with exception?', '2', '4', '5', 'infinite', '4'),
(22, 'How many types of exception handling are there in c++?', '1', '2', '3', '4', '2'),
(23, 'Which is used to do the dereferencing?', 'pointer without asterix', 'value without asterix', 'pointer with asterix', 'value with asterix', 'pointer with asterix'),
(24, 'Pick out the correct option.', 'References automatically dereference without needing an extra character', 'References automatically dereference with an extra character', 'Reference will not dereference', 'None of the mentioned', 'References automatically dereference without needing an extra character'),
(25, 'Identify the correct statement.', 'typedef does not create different types. It only creates synonyms existing types', 'typedef create different types', 'typedef create own types', 'none of the mentioned', 'typedef does not create different types. It only creates synonyms existing types'),
(26, 'What does the data type defined by union will do?', 'It allow one different portion of memory to be accessed as same data types', 'It allow one same portion of memory to be accessed as same data types', 'It allow one different portion of memory to be accessed as different data types', 'It allow one same portion of memory to be accessed as different data types', 'It allow one same portion of memory to be accessed as different data types'),
(27, 'It allow one different portion of memory to be accessed as same data types', '1', '2', '3', '4', '3'),
(28, 'Which header file is used to declare the complex number?', 'complexnum', 'complex', 'complexnumber', 'none of the mentioned', 'complex'),
(29, 'How many parameters does a conversion operator may take?', '0', '1', '2', 'as many as possible', '0'),
(30, 'What is the return type of the conversion operator?', 'void', 'int', 'float', 'no return type', 'no return type'),
(31, 'Which operator is used in catch-all handler?', 'ellipses operator', 'ternary operator', 'string operator', 'unary operator', 'ellipses operator'),
(32, 'What will happen when an exception is uncaught?', 'arise an error', 'program will run', 'exceute continuously', 'none of the mentioned', 'arise an error'),
(33, 'Which alternative can replace the throw statement?', 'for', 'break', 'return', 'exit', 'return'),
(34, 'What is most suitable for returning the logical errors in the program?', 'Use contructor and destructor', 'Set a global error indicator', 'Use break keyword', 'None of the mentioned', 'Set a global error indicator'),
(35, 'Which is used to allocate and deallocate storage for objects during the execution?', 'Stack', 'Heap', 'Freestore', 'None of the mentioned', 'Freestore'),
(36, 'What type of class member is operator new?', 'static', 'dynamic', 'const', 'smart', 'static'),
(37, 'Which operators are used in the free store?', 'new', 'delete', 'both new & delete', 'none of the mentioned', 'both new & delete'),
(38, 'What kind of library is Standard Template Library?', 'Polymorphic', 'Generic', 'Both Polymorphic & Generic', 'None of the mentioned', 'Generic'),
(39, 'To what type of object does the container can be instantiated?', 'int', 'float', 'double', 'any type of object', 'any type of object'),
(40, 'Which are not full container classes in c++?', 'Sequence container', 'Associative container', 'Container adaptor', 'None of the mentioned', 'Container adaptor'),
(41, 'What is the lifetime of the element in container?', 'Whole program', 'Outside the block', 'Everywhere', 'Only on that container', 'Only on that container'),
(42, 'Which is used for formatting purpose in c++?', 'Whitespace', 'Container', '&', 'Vector', 'Whitespace'),
(43, 'What can be improved by formatting the source code?', 'Memory', 'Address', 'User interface', 'None of the mentioned', 'User interface'),
(44, 'Choose the correct formatted code.', ' int a = 5', 'int a=5', 'int a =5', 'none of the mentioned', ' int a = 5'),
(45, 'What is the use of the function “showbase”?', 'Indicate the base used', 'Indicate the variable', 'Indicate the base used & variable', 'None of the mentioned', 'Indicate the base used'),
(46, ' Where are allocators used?', 'Allocation of memory', 'Deallocation of memory', 'Used for pointers', 'Both Allocation & Deallocation of memory', 'Both Allocation & Deallocation of memory');

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE IF NOT EXISTS `user1` (
  `no` int(5) NOT NULL AUTO_INCREMENT,
  `queNo` int(5) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE IF NOT EXISTS `user2` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user3`
--

CREATE TABLE IF NOT EXISTS `user3` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user4`
--

CREATE TABLE IF NOT EXISTS `user4` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user5`
--

CREATE TABLE IF NOT EXISTS `user5` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user6`
--

CREATE TABLE IF NOT EXISTS `user6` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user7`
--

CREATE TABLE IF NOT EXISTS `user7` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user8`
--

CREATE TABLE IF NOT EXISTS `user8` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user9`
--

CREATE TABLE IF NOT EXISTS `user9` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user10`
--

CREATE TABLE IF NOT EXISTS `user10` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user11`
--

CREATE TABLE IF NOT EXISTS `user11` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user12`
--

CREATE TABLE IF NOT EXISTS `user12` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user13`
--

CREATE TABLE IF NOT EXISTS `user13` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user14`
--

CREATE TABLE IF NOT EXISTS `user14` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user15`
--

CREATE TABLE IF NOT EXISTS `user15` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user16`
--

CREATE TABLE IF NOT EXISTS `user16` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user17`
--

CREATE TABLE IF NOT EXISTS `user17` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user18`
--

CREATE TABLE IF NOT EXISTS `user18` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user19`
--

CREATE TABLE IF NOT EXISTS `user19` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user20`
--

CREATE TABLE IF NOT EXISTS `user20` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user21`
--

CREATE TABLE IF NOT EXISTS `user21` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user22`
--

CREATE TABLE IF NOT EXISTS `user22` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user23`
--

CREATE TABLE IF NOT EXISTS `user23` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user24`
--

CREATE TABLE IF NOT EXISTS `user24` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user24`
--

INSERT INTO `user24` (`no`, `queNo`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user25`
--

CREATE TABLE IF NOT EXISTS `user25` (
  `no` int(6) NOT NULL AUTO_INCREMENT,
  `queNo` int(11) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `queNo` (`queNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `winner`
--

CREATE TABLE IF NOT EXISTS `winner` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(32) NOT NULL,
  `time1` varchar(32) NOT NULL,
  PRIMARY KEY (`no`),
  UNIQUE KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
