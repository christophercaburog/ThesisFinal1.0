-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2015 at 04:24 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ojt`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_codes`
--

CREATE TABLE IF NOT EXISTS `access_codes` (
  `id` int(11) NOT NULL,
  `access_codes` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `update_date` date NOT NULL,
  `student_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `checklist`
--

CREATE TABLE IF NOT EXISTS `checklist` (
  `checklist_id` int(5) unsigned zerofill NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `department_id` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checklist`
--

INSERT INTO `checklist` (`checklist_id`, `name`, `type`, `department_id`) VALUES
(00001, 'Moa', 1, 00001),
(00002, 'Endorsement Letter', 1, 00001),
(00003, 'Acknowledgement Letter', 1, 00001),
(00004, 'Letter of Acceptance', 1, 00001),
(00005, 'Letter of Application', 1, 00001),
(00006, 'Resume', 1, 00001),
(00007, 'Waiver Form', 1, 00001),
(00008, 'DTR', 0, 00001),
(00009, 'Accomplishment Report', 0, 00001),
(00010, 'Documentation at Work', 0, 00001),
(00011, 'Certificate Of Completion', 0, 00001),
(00012, 'Evaluation Form', 0, 00001),
(00015, 'Moa', 1, 00002),
(00016, 'Endorsement Letter', 1, 00002),
(00017, 'Acknowledgement Letter', 1, 00002),
(00018, 'Letter of Acceptance', 1, 00002),
(00019, 'Letter of Application', 1, 00002),
(00020, 'Resume', 1, 00002),
(00021, 'Waiver Form', 1, 00002),
(00022, 'DTR', 0, 00002),
(00023, 'Accomplishment Report', 0, 00002),
(00024, 'Documentation at Work', 0, 00002),
(00025, 'Certificate of Completion', 0, 00002),
(00026, 'Evaluation Form', 0, 00002),
(00028, 'Evaluation of grades', 0, 00003),
(00029, 'MOA', 0, 00003),
(00033, 'Parent''s Permit', 0, 00003),
(00034, 'Practice Teaching Fee ( P1,000)', 0, 00003),
(00035, 'Medical certificate(x-ray)', 0, 00003),
(00036, 'Portfolio Report', 1, 00003),
(00037, 'Narrative Report', 1, 00003),
(00044, 'Moa', 1, 00004),
(00045, 'Major Subjects (passed)', 0, 00004),
(00046, 'Compilation of Cases', 1, 00004),
(00047, 'Completed RLE', 1, 00004),
(00048, 'Diary Report', 1, 00004),
(00049, 'Case Study Presentation', 0, 00004);

-- --------------------------------------------------------

--
-- Table structure for table `coordinator`
--

CREATE TABLE IF NOT EXISTS `coordinator` (
  `coordinator_id` int(5) unsigned zerofill NOT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `mname` varchar(32) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `department_id` int(5) unsigned zerofill NOT NULL,
  `course_id` int(5) unsigned zerofill NOT NULL,
  `x` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coordinator`
--

INSERT INTO `coordinator` (`coordinator_id`, `fname`, `lname`, `mname`, `username`, `password`, `department_id`, `course_id`, `x`) VALUES
(00001, 'Admin', 'Admin', 'Admin', 'admin', 'admin', 00000, 00000, 1),
(00002, 'Mean', 'Arino', 'Sabio', 'mean', 'mean', 00001, 00001, 0),
(00003, 'Christopher', 'Caburog', 'Raposon', 'wish', 'admin', 00001, 00002, 0),
(00004, 'Christopher', 'Caburog', 'Raposon', 'badlogic', 'badlogic', 00001, 00004, 0),
(00005, 'christopher', 'caburog', 'raposon', 'badlogic', 'badlogic123', 00001, 00003, 0),
(00006, 'Caburog', 'Caburog', 'Raposon', 'ccaburog', 'caburog123', 00002, 00009, 0),
(00007, 'test', 'test', 'test', 'test', 'test', 00001, 00001, 0),
(00008, 'test_nursing', 'test_nursing', 'test_nursing', 'test_nursing', 'remolacio', 00004, 00013, 0),
(00009, 'bist', 'bsit', 'bsit', 'bsit', 'bsit', 00001, 00002, 0);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `course_id` int(5) unsigned zerofill NOT NULL,
  `clabel` varchar(32) NOT NULL,
  `cname` varchar(50) NOT NULL,
  `department_id` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `clabel`, `cname`, `department_id`) VALUES
(00001, 'BSIS', 'BS in Information System', 00001),
(00002, 'BSIT', 'BS in Information Technology', 00001),
(00003, 'BSCS', 'BS in Computer Science', 00001),
(00004, 'BSCpE', 'BS in Computer Engineering', 00001),
(00005, 'BSECE', 'BS in Electronics Engineering', 00001),
(00006, 'BSET', 'BS in Electronics Technology', 00002),
(00007, 'BSELT', 'BS in Electrical Technology', 00002),
(00008, 'BSAT', 'BS in Automotive Technology', 00002),
(00009, 'BSMT', 'BS in Mechanical Technology', 00002),
(00010, 'Entrep', 'Bs In Entrepreneurship', 00002),
(00011, 'BEEd', 'Bachelor in Elementary Education', 00003),
(00012, 'BSEd', 'Bachelor in Secondary Education', 00003),
(00013, 'BSN', 'Bachelor of Science in Nursing', 00004),
(00014, 'BSFT', 'Bachelor of Science in Food Technology', 00002),
(00015, 'BSEntrep', 'Bachelor of Science in Entrepreneurship', 00002);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `department_id` int(5) unsigned zerofill NOT NULL,
  `name` varchar(100) NOT NULL,
  `label` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `name`, `label`) VALUES
(00001, 'Computer and Engineering Studies Department', 'CESD'),
(00002, 'Technology and Entrepreneurship Department', 'TED'),
(00003, 'Teacher Education Department', 'TEdD'),
(00004, 'Nursing and Health Sciences Department', 'NHSD');

-- --------------------------------------------------------

--
-- Table structure for table `docs`
--

CREATE TABLE IF NOT EXISTS `docs` (
  `id` int(11) NOT NULL,
  `name_of_file` varchar(255) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `name_hash` varchar(255) NOT NULL,
  `coordinator_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `docs`
--

INSERT INTO `docs` (`id`, `name_of_file`, `department_id`, `create_date`, `name_hash`, `coordinator_id`) VALUES
(30, 'ew', '00004', 'November 6, 2015, 5:37 am', 'upload/2cd14a8a12e92cde64f549926e6383f9152f765a.doc', '00013'),
(31, 'miley', '00004', 'November 6, 2015, 5:45 am', 'upload/9046dafe9ba558b1ebf7cfa32799d29a50ec511e.doc', '00013'),
(32, 'sample', '00001', 'November 6, 2015, 6:02 am', 'upload/23fd362419415eb0b2dec4d4ec9308fa27f5faed.doc', '00004');

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` int(11) NOT NULL,
  `final_grades` varchar(255) NOT NULL,
  `department_id` varchar(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_date` varchar(255) NOT NULL,
  `coordinator_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `final_grades`, `department_id`, `student_id`, `create_date`, `update_date`, `coordinator_id`) VALUES
(1, '5.0', '00004', '00029', 'Friday 6th of November 2015 10:10:14 AM', 'Friday 6th of November 2015 10:10:14 AM', '00008'),
(2, '3.0', '00004', '00031', 'Friday 6th of November 2015 10:34:26 AM', 'Friday 6th of November 2015 10:34:26 AM', '00008'),
(3, '1.1', '00001', '00010', 'Friday 6th of November 2015 12:48:21 PM', 'Friday 6th of November 2015 12:48:21 PM', '00004'),
(4, '2.1', '00001', '00010', 'Friday 6th of November 2015 03:34:52 PM', 'Friday 6th of November 2015 03:34:52 PM', '00004'),
(5, '5.0', '00001', '00032', 'Friday 6th of November 2015 05:15:43 PM', 'Friday 6th of November 2015 05:15:43 PM', '00009');

-- --------------------------------------------------------

--
-- Table structure for table `isubmit`
--

CREATE TABLE IF NOT EXISTS `isubmit` (
  `isubmit_id` int(5) unsigned zerofill NOT NULL,
  `student_id` int(5) unsigned zerofill NOT NULL,
  `checklist_id` int(5) unsigned zerofill NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `isubmit`
--

INSERT INTO `isubmit` (`isubmit_id`, `student_id`, `checklist_id`) VALUES
(00150, 00029, 00048),
(00151, 00029, 00048),
(00152, 00029, 00044),
(00153, 00029, 00046),
(00154, 00029, 00047),
(00155, 00029, 00044),
(00156, 00029, 00046),
(00157, 00029, 00047),
(00158, 00029, 00044),
(00159, 00029, 00046),
(00160, 00029, 00047),
(00161, 00029, 00044),
(00162, 00029, 00046),
(00163, 00029, 00047),
(00164, 00029, 00044),
(00165, 00029, 00046),
(00166, 00029, 00047),
(00167, 00029, 00044),
(00168, 00029, 00046),
(00169, 00029, 00047),
(00170, 00029, 00044),
(00171, 00029, 00046),
(00172, 00029, 00047),
(00173, 00029, 00044),
(00174, 00029, 00046),
(00175, 00029, 00047),
(00176, 00029, 00044),
(00177, 00029, 00046),
(00178, 00029, 00047),
(00179, 00023, 00001),
(00180, 00010, 00001),
(00181, 00023, 00002),
(00182, 00010, 00002),
(00183, 00010, 00002),
(00184, 00010, 00002),
(00185, 00010, 00002),
(00186, 00010, 00002),
(00187, 00033, 00001),
(00188, 00033, 00002),
(00189, 00033, 00003),
(00190, 00033, 00004),
(00191, 00033, 00005),
(00192, 00033, 00006),
(00193, 00033, 00007);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL,
  `message_subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `create_date` varchar(255) NOT NULL,
  `update_date` varchar(255) NOT NULL,
  `coordinator_id` int(255) NOT NULL,
  `department_id` int(255) NOT NULL,
  `student_id` varchar(255) NOT NULL,
  `group_message` int(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message_subject`, `message`, `create_date`, `update_date`, `coordinator_id`, `department_id`, `student_id`, `group_message`) VALUES
(8, 'Web Deve Application', 'I am numher 5', 'Monday 2nd of November 2015 06:44:06 PM', 'Monday 2nd of November 2015 06:44:06 PM', 8, 4, '00030', 0),
(9, 'Resume', 'kulang ka po ng resume', 'Monday 2nd of November 2015 06:44:37 PM', 'Monday 2nd of November 2015 06:44:37 PM', 8, 4, '00029', 0),
(12, 'asa', 'asas', 'Friday 6th of November 2015 02:27:17 PM', 'Friday 6th of November 2015 02:27:17 PM', 8, 4, '0', 0),
(13, 'Hello Worl!', 'hello worl!', 'Friday 6th of November 2015 02:27:37 PM', 'Friday 6th of November 2015 02:27:37 PM', 8, 4, '0', 0),
(14, 'Group Message', 'Attecntion To all', 'Friday 6th of November 2015 02:33:08 PM', 'Friday 6th of November 2015 02:33:08 PM', 8, 4, '0', 1),
(15, 'patrick', 'patrick', 'Friday 6th of November 2015 02:41:00 PM', 'Friday 6th of November 2015 02:41:00 PM', 4, 1, '0', 1),
(17, 'bakla si patrick', 'bakla', 'Friday 6th of November 2015 03:03:01 PM', 'Friday 6th of November 2015 03:03:01 PM', 4, 1, '0', 1),
(21, 'Message  Receive', 'hello world!', 'Friday 6th of November 2015 03:31:02 PM', 'Friday 6th of November 2015 03:31:02 PM', 4, 1, '00010', 0),
(22, 'To All BSIT', 'BSIT anouncement', 'Friday 6th of November 2015 05:02:18 PM', 'Friday 6th of November 2015 05:02:18 PM', 9, 1, '0', 1),
(23, 'Personal message', 'sample message', 'Friday 6th of November 2015 05:48:22 PM', 'Friday 6th of November 2015 05:48:22 PM', 8, 4, '00031', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(5) unsigned zerofill NOT NULL,
  `title` varchar(200) NOT NULL,
  `year` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `year`) VALUES
(00001, 'Student Deployment Record Management System', '2014-2015');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(5) unsigned zerofill NOT NULL,
  `fname` varchar(32) NOT NULL,
  `mname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `address` varchar(100) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `dob` varchar(32) NOT NULL,
  `contact` varchar(32) NOT NULL,
  `course_id` int(5) unsigned zerofill NOT NULL,
  `year` varchar(1) NOT NULL,
  `block` varchar(1) NOT NULL,
  `date` varchar(32) NOT NULL,
  `sy` varchar(10) NOT NULL,
  `dir` varchar(100) NOT NULL,
  `coordinator` varchar(100) NOT NULL,
  `access_code` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `is_delete` int(255) NOT NULL,
  `student_image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `fname`, `mname`, `lname`, `address`, `gender`, `dob`, `contact`, `course_id`, `year`, `block`, `date`, `sy`, `dir`, `coordinator`, `access_code`, `sem`, `is_delete`, `student_image`) VALUES
(00010, 'Burnok', 'sample', 'hahahah', 'wedewdwd', 1, '06/08/2015', '+999-999-999-999', 00004, '4', 'A', '09/08/2015', '2015-2016', 'Burnok_Sample_Hahahah', 'Christopher Raposon Caburog', '-21-3213', 'First Sem', 0, ''),
(00013, 'christopher', 'raposon', 'caburog', '49 matimtiman', 1, '08/13/2015', '+639-099-971-573', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Christopher_Raposon_Caburog', 'christopher raposon caburog', '', '', 0, ''),
(00014, 'acacac', 'asdadad', 'asdasdad', 'asdadadasd', 1, '09/06/2015', '+234-234-242-424', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Acacac_Asdadad_Asdasdad', 'christopher raposon caburog', '-3143', '', 0, ''),
(00015, 'dssdfsfsf', 'sdfsssss', 'ssssssssssssssss', 'sssssssssssss', 0, '09/06/2015', '+342-424-242-424', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Dssdfsfsf_Sdfsssss_Ssssssssssssssss', 'christopher raposon caburog', '-3468', '', 0, ''),
(00017, 'asdsasdad', 'asdada', 'asdasdasd', 'asdasd', 1, '09/01/2015', '+213-131-313-131', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Asdsasdad_Asdada_Asdasdasd', 'christopher raposon caburog', '-3152', '', 0, ''),
(00018, 'patrick', 'pat', 'pat', 'pat', 1, '05/12/2015', '+232-323-232-323', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Patrick_Pat_Pat', 'christopher raposon caburog', '-1123', '', 0, ''),
(00019, 'pa', 'pat', 'pat', 'pat', 1, '07/08/2013', '+221-222-111-111', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Pa_Pat_Pat', 'christopher raposon caburog', '-2133', '', 0, ''),
(00020, 'sample', 'sample', 'sample', 'sample', 1, '09/01/2014', '+234-242-342-342', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Sample_Sample_Sample', 'christopher raposon caburog', '-2244', '', 0, ''),
(00021, 'burnok', 'burnok', 'burnok', 'asdaadad', 1, '09/01/2015', '+344-455-152-555', 00003, '4', 'A', '09/15/2015', '2015-2016', 'Burnok_Burnok_Burnok', 'christopher raposon caburog', '-55-5555', 'First Sem', 0, ''),
(00023, 'Patrick', 'V', 'Rojero', 'Ligao, City', 1, '08/04/2013', '+899-888-998-999', 00004, '4', 'A', '10/03/2015', '2015-2016', 'Patrick_V_Rojero', 'Christopher Raposon Caburog', '-21-3413', 'Second Sem', 0, ''),
(00024, 'Vince', 'Vaughn', 'Vaughn', 'LA California', 1, '03/16/2015', '+999-999-999-999', 00009, '4', 'B', '10/07/2015', '2015-2016', 'Vince_Vaughn_Vaughn', 'Caburog Raposon Caburog', '-12-1221', 'First Sem', 1, ''),
(00025, 'Vince', 'Vaughn', 'Vaughn', 'LA California', 1, '03/16/2015', '+999-999-999-999', 00009, '4', 'B', '10/07/2015', '2015-2016', 'Vince_Vaughn_Vaughn', 'Caburog Raposon Caburog', '-12-1221', 'First Sem', 0, ''),
(00027, 'Maine', 'Alden', 'Mendoza', 'Bulacan, PH', 1, '06/07/2015', '+923-423-423-423', 00001, '4', 'B', '10/26/2015', '2015-2016', 'Maine_Alden_Mendoza', 'test test test', '-32-3231', 'Second Sem', 0, 'upload/f9b278fb4a6bdea3628d3f8aa101ec3502555373.jpg'),
(00029, 'nursing', 'nursing', 'nursing', 'nursing', 1, '10/11/2015', '+232-423-423-423', 00013, '4', 'A', '10/26/2015', '2015-2016', 'Nursing_Nursing_Nursing', 'test_nursing test_nursing test_nursing', '-11-1111', 'Second Sem', 0, ''),
(00030, 'VanceA', 'Bello', 'Bello', 'Qc', 1, '08/10/2015', '+121-212-122-121', 00013, '4', 'A', '11/01/2015', '2015-2016', 'VanceA_Bello_Bello', 'test_nursing test_nursing test_nursing', '-04-9922', 'First Sem', 0, ''),
(00031, 'James', 'Manongsong', 'Roi', 'Quezon City', 1, '08/02/2015', '+939-399-393-939', 00013, '4', 'A', '11/05/2015', '2015-2016', 'James_Manongsong_Roi', 'test_nursing test_nursing test_nursing', '-31-2000', 'Second Sem', 0, ''),
(00032, 'BSIT', 'BSIT', 'BSIT', 'BSIT', 1, '07/05/2015', '+121-212-121-212', 00002, '4', 'B', '11/06/2015', '2015-2016', 'BSIT_BSIT_BSIT', 'bist bsit bsit', '-91-9288', 'First Sem', 0, ''),
(00033, 'Christopher', 'Raposon', 'Caburog', 'Quezon, City', 1, '01/06/2013', '+63-909-999-9999', 00001, '4', 'A', '12/08/2015', '2015-2016', 'Christopher_Raposon_Caburog', 'test test test', '12-1231', 'First Sem', 0, 'upload/f9b278fb4a6bdea3628d3f8aa101ec3502555373.jpg'),
(00034, 'sadasdsad', 'asdasdasd', 'asdasdasd', 'asdasdad', 1, '12/29/2015', '+63-213-123-1232', 00001, '4', 'A', '12/13/2015', '2015-2016', 'Sadasdsad_Asdasdasd_Asdasdasd', 'test test test', '21-3213', 'First Sem', 0, 'upload/422cbcb35c3c4dcb4728898134574a2dd65d0274.jpg'),
(00035, 'James Roi Manungsong', 'manungsong', 'manungosng', 'ligao', 1, '12/28/2015', '+63-214-234-3243', 00001, '4', 'A', '12/19/2015', '2015-2016', 'James_Roi_Manungsong_Manungsong_Manungosng', 'test test test', '2000-12121', 'First Sem', 0, 'upload/2b8354534dd8e63cf78b23d3e0494abbd0e2dde9.png');

-- --------------------------------------------------------

--
-- Table structure for table `submit`
--

CREATE TABLE IF NOT EXISTS `submit` (
  `submit_id` int(5) unsigned zerofill NOT NULL,
  `student_id` int(5) unsigned zerofill NOT NULL,
  `checklist_id` int(5) unsigned zerofill NOT NULL,
  `file` varchar(100) NOT NULL,
  `date` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE IF NOT EXISTS `work` (
  `work_id` int(5) unsigned zerofill NOT NULL,
  `student_id` int(5) unsigned zerofill NOT NULL,
  `workdata_id` int(5) unsigned zerofill NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`work_id`, `student_id`, `workdata_id`, `value`) VALUES
(00064, 00010, 00001, 'dqwdqdqd'),
(00065, 00010, 00002, 'dqdqwdqwd'),
(00066, 00010, 00003, 'qwsqsq'),
(00067, 00010, 00004, '+232-342-342-342'),
(00068, 00010, 00005, 'tiperw@yahoo.com'),
(00069, 00010, 00006, '07/09/2015'),
(00070, 00010, 00007, '22/09/2015'),
(00085, 00013, 00001, 'BrewewLogic Inc'),
(00086, 00013, 00002, 'Ortigas Center'),
(00087, 00013, 00003, 'Ortigas'),
(00088, 00013, 00004, '+233-232-323-232'),
(00089, 00013, 00005, 'ccaburog@brewedlogic.com'),
(00090, 00013, 00006, '15/09/2015'),
(00091, 00013, 00007, '29/09/2015'),
(00092, 00014, 00001, 'saasdadadad'),
(00093, 00014, 00002, 'sasadadad'),
(00094, 00014, 00003, 'asdasdadad'),
(00095, 00014, 00004, '+213-123-123-131'),
(00096, 00014, 00005, 'qeqeq@asdadad.com'),
(00097, 00014, 00006, '14/09/2015'),
(00098, 00014, 00007, '29/09/2015'),
(00099, 00015, 00001, 'sdssss'),
(00100, 00015, 00002, 'sssss'),
(00101, 00015, 00003, 'sssss'),
(00102, 00015, 00004, '+234-234-242-342'),
(00103, 00015, 00005, 'sadasdsd@dadad.com'),
(00104, 00015, 00006, '14/09/2015'),
(00105, 00015, 00007, '30/09/2015'),
(00113, 00017, 00001, ''),
(00114, 00017, 00002, ''),
(00115, 00017, 00003, ''),
(00116, 00017, 00004, ''),
(00117, 00017, 00005, ''),
(00118, 00017, 00006, ''),
(00119, 00017, 00007, ''),
(00120, 00018, 00001, 'sample'),
(00121, 00018, 00002, 'asdsad'),
(00122, 00018, 00003, 'asaas'),
(00123, 00018, 00004, '+122-121-212-121'),
(00124, 00018, 00005, 'pat@yaho.com'),
(00125, 00018, 00006, '15/09/2015'),
(00126, 00018, 00007, '30/09/2015'),
(00127, 00019, 00001, 'wedwdwd'),
(00128, 00019, 00002, 'ligap'),
(00129, 00019, 00003, 'sadsada'),
(00130, 00019, 00004, '+234-324-234-242'),
(00131, 00019, 00005, 'asdadasdad'),
(00132, 00019, 00006, '16/09/2015'),
(00133, 00019, 00007, '30/09/2015'),
(00134, 00020, 00001, 'sample'),
(00135, 00020, 00002, 'asdasda'),
(00136, 00020, 00003, 'sadsadad'),
(00137, 00020, 00004, '+234-234-324-324'),
(00138, 00020, 00005, 'sadadas@yahoo.com'),
(00139, 00020, 00006, '14/09/2015'),
(00140, 00020, 00007, '30/09/2015'),
(00141, 00021, 00001, 'burnok'),
(00142, 00021, 00002, 'burnok'),
(00143, 00021, 00003, 'asdadad'),
(00144, 00021, 00004, '+777-777-777-778'),
(00145, 00021, 00005, ''),
(00146, 00021, 00006, '14/09/2015'),
(00147, 00021, 00007, '30/09/2015'),
(00155, 00023, 00001, 'Ligao'),
(00156, 00023, 00002, 'saadasdasd'),
(00157, 00023, 00003, 'sadasdasdad'),
(00158, 00023, 00004, '+232-324-324-243'),
(00159, 00023, 00005, 'asdasd@asdsadasda'),
(00160, 00023, 00006, '05/10/2015'),
(00161, 00023, 00007, '30/10/2015'),
(00162, 00024, 00012, 'Star Records'),
(00163, 00024, 00013, 'USA california'),
(00164, 00024, 00014, 'USA california'),
(00165, 00024, 00015, '+233-233-333-333'),
(00166, 00024, 00016, 'usa@yahoo.com'),
(00167, 00024, 00017, '13/10/2015'),
(00168, 00024, 00018, '28/10/2015'),
(00169, 00025, 00012, 'Star Records'),
(00170, 00025, 00013, 'USA california'),
(00171, 00025, 00014, 'USA california'),
(00172, 00025, 00015, '+233-233-333-333'),
(00173, 00025, 00016, 'usa@yahoo.com'),
(00174, 00025, 00017, '13/10/2015'),
(00175, 00025, 00018, '28/10/2015'),
(00183, 00027, 00001, 'GMA 7 philippines'),
(00184, 00027, 00002, 'Kamuning Quezon City'),
(00185, 00027, 00003, 'Makati, City'),
(00186, 00027, 00004, '+232-323-232-323'),
(00187, 00027, 00005, 'sample@yahoo.com'),
(00188, 00027, 00006, '29/10/2015'),
(00189, 00027, 00007, '31/10/2015'),
(00197, 00029, 00026, 'nursing'),
(00198, 00029, 00027, 'nursing'),
(00199, 00029, 00028, 'nursing'),
(00200, 00029, 00029, '+123-131-231-231'),
(00201, 00029, 00030, 'nursing@yahoo.com'),
(00202, 00029, 00031, '27/10/2015'),
(00203, 00029, 00032, '30/10/2015'),
(00204, 00030, 00026, 'Tech Mahindra'),
(00205, 00030, 00027, 'QC'),
(00206, 00030, 00028, 'QC'),
(00207, 00030, 00029, ''),
(00208, 00030, 00030, 'vance@yahoo.com'),
(00209, 00030, 00031, '02/11/2015'),
(00210, 00030, 00032, '23/11/2015'),
(00211, 00031, 00026, 'IBM'),
(00212, 00031, 00027, 'UP Techohub'),
(00213, 00031, 00028, 'UP Technohub'),
(00214, 00031, 00029, '+282-828-812-999'),
(00215, 00031, 00030, 'up@gmail.com'),
(00216, 00031, 00031, '09/11/2015'),
(00217, 00031, 00032, '28/11/2015'),
(00218, 00032, 00001, 'BSIT'),
(00219, 00032, 00002, 'BSIT'),
(00220, 00032, 00003, 'BSIT'),
(00221, 00032, 00004, '+999-192-919-291'),
(00222, 00032, 00005, 'angie_amaro@yahoo.com'),
(00223, 00032, 00006, '09/11/2015'),
(00224, 00032, 00007, '25/11/2015'),
(00225, 00033, 00001, 'BrewedLogic Inc.'),
(00226, 00033, 00002, 'Makati, City'),
(00227, 00033, 00003, 'Makati, City'),
(00228, 00033, 00004, '+991-923-912-939'),
(00229, 00033, 00005, '@yahooascasc'),
(00230, 00033, 00006, '09/12/2015'),
(00231, 00033, 00007, '30/12/2015'),
(00232, 00034, 00001, 'weqeqweqwe'),
(00233, 00034, 00002, 'qweqweqwe'),
(00234, 00034, 00003, 'qweqweqweq'),
(00235, 00034, 00004, '+63-123-123-1231'),
(00236, 00034, 00005, 'asdasdasdasd'),
(00237, 00034, 00006, '21/12/2015'),
(00238, 00034, 00007, '30/12/2015'),
(00239, 00035, 00001, 'asdadasdsadsa'),
(00240, 00035, 00002, 'asdasdsadasd'),
(00241, 00035, 00003, 'asdasdasdas'),
(00242, 00035, 00004, '+63-123-123-1232'),
(00243, 00035, 00005, 'asdasdad@yahoo.com'),
(00244, 00035, 00006, '24/12/2015'),
(00245, 00035, 00007, '30/12/2015');

-- --------------------------------------------------------

--
-- Table structure for table `workdata`
--

CREATE TABLE IF NOT EXISTS `workdata` (
  `workdata_id` int(5) unsigned zerofill NOT NULL,
  `department_id` int(5) unsigned zerofill NOT NULL,
  `label` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workdata`
--

INSERT INTO `workdata` (`workdata_id`, `department_id`, `label`, `name`) VALUES
(00001, 00001, 'Company', 'company'),
(00002, 00001, 'Address', 'waddress'),
(00003, 00001, 'Office Head', 'head'),
(00004, 00001, 'Contact', 'wcontact'),
(00005, 00001, 'Email', 'email'),
(00006, 00001, 'Starting Date', 'start'),
(00007, 00001, 'Ending Date', 'end'),
(00012, 00002, 'Company', 'company'),
(00013, 00002, 'Address', 'waddress'),
(00014, 00002, 'Office Head', 'head'),
(00015, 00002, 'Contact', 'wcontact'),
(00016, 00002, 'Email', 'email'),
(00017, 00002, 'Starting Date', 'start'),
(00018, 00002, 'Ending Date', 'end'),
(00019, 00003, 'Company', 'company'),
(00020, 00003, 'Address', 'waddress'),
(00021, 00003, 'Office Head', 'head'),
(00022, 00003, 'Contact', 'wcontact'),
(00023, 00003, 'Email', 'email'),
(00024, 00003, 'Starting Date', 'start'),
(00025, 00003, 'Ending Date', 'end'),
(00026, 00004, 'Company', 'company'),
(00027, 00004, 'Address', 'waddress'),
(00028, 00004, 'Office Head', 'head'),
(00029, 00004, 'Contact', 'wcontact'),
(00030, 00004, 'Email', 'email'),
(00031, 00004, 'Starting Date', 'start'),
(00032, 00004, 'Ending Date', 'end');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_codes`
--
ALTER TABLE `access_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checklist`
--
ALTER TABLE `checklist`
  ADD PRIMARY KEY (`checklist_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `coordinator`
--
ALTER TABLE `coordinator`
  ADD PRIMARY KEY (`coordinator_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `docs`
--
ALTER TABLE `docs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `isubmit`
--
ALTER TABLE `isubmit`
  ADD PRIMARY KEY (`isubmit_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `checklist_id` (`checklist_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `submit`
--
ALTER TABLE `submit`
  ADD PRIMARY KEY (`submit_id`),
  ADD KEY `checklist_id` (`checklist_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`work_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `workdata_id` (`workdata_id`);

--
-- Indexes for table `workdata`
--
ALTER TABLE `workdata`
  ADD PRIMARY KEY (`workdata_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_codes`
--
ALTER TABLE `access_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `checklist`
--
ALTER TABLE `checklist`
  MODIFY `checklist_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `coordinator`
--
ALTER TABLE `coordinator`
  MODIFY `coordinator_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `docs`
--
ALTER TABLE `docs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `isubmit`
--
ALTER TABLE `isubmit`
  MODIFY `isubmit_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `submit`
--
ALTER TABLE `submit`
  MODIFY `submit_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `work_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=246;
--
-- AUTO_INCREMENT for table `workdata`
--
ALTER TABLE `workdata`
  MODIFY `workdata_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `checklist`
--
ALTER TABLE `checklist`
  ADD CONSTRAINT `checklist_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `isubmit`
--
ALTER TABLE `isubmit`
  ADD CONSTRAINT `isubmit_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `isubmit_ibfk_2` FOREIGN KEY (`checklist_id`) REFERENCES `checklist` (`checklist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `submit`
--
ALTER TABLE `submit`
  ADD CONSTRAINT `submit_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `submit_ibfk_2` FOREIGN KEY (`checklist_id`) REFERENCES `checklist` (`checklist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `work`
--
ALTER TABLE `work`
  ADD CONSTRAINT `work_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `work_ibfk_2` FOREIGN KEY (`workdata_id`) REFERENCES `workdata` (`workdata_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `workdata`
--
ALTER TABLE `workdata`
  ADD CONSTRAINT `workdata_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
