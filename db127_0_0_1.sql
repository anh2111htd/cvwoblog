-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2016 at 09:11 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `blog_members`
--

CREATE TABLE `blog_members` (
  `memberID` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_members`
--

INSERT INTO `blog_members` (`memberID`, `username`, `password`, `email`) VALUES
(1, 'demo', '$2y$10$wJxa1Wm0rtS2BzqKnoCPd.7QQzgu7D/aLlMR5Aw3O.m9jx3oRJ5R2', NULL),
(7, 'admin', '$2y$10$NVwJTjHSjmEH/gxEk4FHzOQvx7n3asr16W3ITER3tlOKyvRJ4ODoW', 'anhhuynh98@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `postID` int(11) UNSIGNED NOT NULL,
  `postTitle` varchar(255) DEFAULT NULL,
  `postDesc` text,
  `postCont` text,
  `postDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`postID`, `postTitle`, `postDesc`, `postCont`, `postDate`) VALUES
(1, 'Hello World!', 'A "Hello, world!" program is often used to introduce beginning programmers to a programming language. In general, it is simple enough to be understood easily, especially with the guidance of a teacher or a written guide.', '<h2><span id="Purpose" class="mw-headline">Purpose</span></h2>\r\n<p>A "Hello, world!" program is often used to introduce beginning programmers to a programming language. In general, it is simple enough to be understood easily, especially with the guidance of a teacher or a written guide.</p>\r\n<p>In addition, "Hello world!" can be a useful <a class="mw-redirect" title="Sanity test" href="https://en.wikipedia.org/wiki/Sanity_test">sanity test</a> to make sure that a language''s <a title="Compiler" href="https://en.wikipedia.org/wiki/Compiler">compiler</a>, <a class="mw-redirect" title="Development environment (software development process)" href="https://en.wikipedia.org/wiki/Development_environment_%28software_development_process%29">development environment</a>, and <a class="mw-redirect" title="Run-time environment" href="https://en.wikipedia.org/wiki/Run-time_environment">run-time environment</a> are correctly installed.<sup class="noprint Inline-Template" style="white-space: nowrap;">[<em><a title="Wikipedia:No original research" href="https://en.wikipedia.org/wiki/Wikipedia:No_original_research"><span title="The material near this tag possibly contains original research. (May 2016)">original research?</span></a></em>]</sup> Configuring a complete programming <a title="Toolchain" href="https://en.wikipedia.org/wiki/Toolchain">toolchain</a> from scratch to the point where even trivial programs can be compiled and run can involve substantial amounts of work. For this reason, a simple program is used first when testing a new tool chain.<sup class="noprint Inline-Template Template-Fact" style="white-space: nowrap;">[<em><a title="Wikipedia:Citation needed" href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed"><span title="This claim needs references to reliable sources. (May 2016)">citation needed</span></a></em>]</sup></p>\r\n<div class="thumb tright">\r\n<div class="thumbinner" style="width: 222px;"><a class="image" href="https://en.wikipedia.org/wiki/File:PSP-Homebrew.jpeg"><img class="thumbimage" src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/PSP-Homebrew.jpeg/220px-PSP-Homebrew.jpeg" alt="" width="220" height="165" data-file-width="2816" data-file-height="2112" /></a>\r\n<div class="thumbcaption">&nbsp;</div>\r\n</div>\r\n</div>\r\n<div class="thumb tright">\r\n<div class="thumbinner" style="width: 222px;">\r\n<div class="thumbcaption">A "Hello world!" program running on Sony''s <a title="PlayStation Portable homebrew" href="https://en.wikipedia.org/wiki/PlayStation_Portable_homebrew">PlayStation Portable</a> as a proof of concept.</div>\r\n</div>\r\n</div>\r\n<p>"Hello world!" is also used by computer hackers as a <a title="Proof of concept" href="https://en.wikipedia.org/wiki/Proof_of_concept">proof of concept</a> that arbitrary code can be executed through an <a title="Exploit (computer security)" href="https://en.wikipedia.org/wiki/Exploit_%28computer_security%29">exploit</a> where the system designers did not intend code to be executed&mdash;for example, on Sony''s <a title="PlayStation Portable" href="https://en.wikipedia.org/wiki/PlayStation_Portable">PlayStation Portable</a>. This is the first step in using homemade content ("<a title="Homebrew (video games)" href="https://en.wikipedia.org/wiki/Homebrew_%28video_games%29">home brew</a>") on such a device.</p>\r\n<p>"Hello, world." was used as their first <a title="Twitter" href="https://en.wikipedia.org/wiki/Twitter">Tweet</a> in 2016 by the previously secretive <a title="Government Communications Headquarters" href="https://en.wikipedia.org/wiki/Government_Communications_Headquarters">GCHQ</a> UK communications interception agency.<sup id="cite_ref-2" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-2">[2]</a></sup><sup id="cite_ref-3" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-3">[3]</a></sup></p>\r\n<h2><span id="History" class="mw-headline">History</span></h2>\r\n<p>While small test programs existed since the development of programmable <a title="Computer" href="https://en.wikipedia.org/wiki/Computer">computers</a>, the tradition of using the phrase "Hello world!" as a test message was influenced by an example program in the seminal book <em><a class="mw-redirect" title="The C Programming Language (book)" href="https://en.wikipedia.org/wiki/The_C_Programming_Language_%28book%29">The C Programming Language</a></em><sup class="noprint Inline-Template Template-Fact" style="white-space: nowrap;">[<em><a title="Wikipedia:Citation needed" href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed"><span title="This claim needs references to reliable sources. (March 2015)">citation needed</span></a></em>]</sup>. The example program from that book prints "<code>hello,&nbsp;world</code>" (without capital letters or exclamation mark), and was inherited<sup class="noprint Inline-Template Template-Fact" style="white-space: nowrap;">[<em><a title="Wikipedia:Citation needed" href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed"><span title="This claim needs references to reliable sources. (March 2015)">citation needed</span></a></em>]</sup> from a 1974 <a title="Bell Labs" href="https://en.wikipedia.org/wiki/Bell_Labs">Bell Laboratories</a> internal memorandum by <a title="Brian Kernighan" href="https://en.wikipedia.org/wiki/Brian_Kernighan">Brian Kernighan</a>, <em>Programming in C: A Tutorial</em>,<sup id="cite_ref-4" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-4">[4]</a></sup> which contains the first known version:</p>\r\n<div class="mw-highlight mw-content-ltr" dir="ltr">\r\n<pre>#include \r\n\r\nmain( )\r\n{\r\n        printf("hello, worldn");\r\n}\r\n</pre>\r\n</div>\r\n<p>The C version was adapted<sup class="noprint Inline-Template Template-Fact" style="white-space: nowrap;">[<em><a title="Wikipedia:Citation needed" href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed"><span title="This claim needs references to reliable sources. (March 2015)">citation needed</span></a></em>]</sup> from Kernighan''s 1972 <em>A Tutorial Introduction to the Language <a title="B (programming language)" href="https://en.wikipedia.org/wiki/B_%28programming_language%29">B</a></em>,<sup id="cite_ref-langb_5-0" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-langb-5">[5]</a></sup> where the first known version of the program is found in an example used to illustrate external variables:</p>\r\n<div class="mw-highlight mw-content-ltr" dir="ltr">\r\n<pre>main(){\r\n  extrn a,b,c;\r\n  putchar(a); putchar(b); putchar(c); putchar(''!*n'');\r\n  }\r\n\r\na ''hell'';\r\nb ''o, w'';\r\nc ''orld'';\r\n</pre>\r\n</div>\r\n<p>The program prints <em>hello,&nbsp;world!</em> on the terminal, including a <a title="Newline" href="https://en.wikipedia.org/wiki/Newline">newline</a> character. The phrase is divided into multiple variables because in B, a character constant is limited to four <a title="ASCII" href="https://en.wikipedia.org/wiki/ASCII">ASCII</a> characters. The previous example in the tutorial printed <em>hi!</em> on the terminal, and the phrase <em>hello,&nbsp;world!</em> was introduced as a slightly longer greeting that required several character constants for its expression.</p>\r\n<p>It is also claimed that<sup class="noprint Inline-Template" style="white-space: nowrap;">[<em><a title="Wikipedia:Manual of Style/Words to watch" href="https://en.wikipedia.org/wiki/Wikipedia:Manual_of_Style/Words_to_watch#Unsupported_attributions"><span title="The material near this tag may use weasel words or too-vague attribution. (March 2015)">by whom?</span></a></em>]</sup> <em>hello, world</em> originated instead with <a title="BCPL" href="https://en.wikipedia.org/wiki/BCPL">BCPL</a> (1967).<sup id="cite_ref-6" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-6">[6]</a></sup><sup class="noprint Inline-Template" style="white-space: nowrap;">[<em><a title="Wikipedia:Identifying reliable sources" href="https://en.wikipedia.org/wiki/Wikipedia:Identifying_reliable_sources"><span title="The material near this tag may rely on an unreliable source. (March 2015)">unreliable source?</span></a></em>]</sup>This claim is supported by the archived notes of the inventors of BCPL, Prof. Brian Kernighan at Princeton and Martin Richards at Cambridge.<sup class="noprint Inline-Template Template-Fact" style="white-space: nowrap;">[<em><a title="Wikipedia:Citation needed" href="https://en.wikipedia.org/wiki/Wikipedia:Citation_needed"><span title="This claim needs references to reliable sources. (May 2016)">citation needed</span></a></em>]</sup></p>\r\n<p>For modern languages, hello world programs vary in sophistication. For example, the <a class="mw-redirect" title="Go programming language" href="https://en.wikipedia.org/wiki/Go_programming_language">Go programming language</a> introduced a multilingual program,<sup id="cite_ref-7" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-7">[7]</a></sup> <a title="Sun Microsystems" href="https://en.wikipedia.org/wiki/Sun_Microsystems">Sun</a> demonstrated a <a title="Java (programming language)" href="https://en.wikipedia.org/wiki/Java_%28programming_language%29">Java</a> hello world based on <a class="mw-redirect" title="Scalable vector graphics" href="https://en.wikipedia.org/wiki/Scalable_vector_graphics">scalable vector graphics</a>,<sup id="cite_ref-8" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-8">[8]</a></sup> and the <a title="XL (programming language)" href="https://en.wikipedia.org/wiki/XL_%28programming_language%29">XL</a> programming language features a spinning Earth hello world using 3D graphics.<sup id="cite_ref-9" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-9">[9]</a></sup> While some languages such as <a class="mw-redirect" title="Perl (programming language)" href="https://en.wikipedia.org/wiki/Perl_%28programming_language%29">Perl</a>, <a title="Python (programming language)" href="https://en.wikipedia.org/wiki/Python_%28programming_language%29">Python</a> or <a title="Ruby (programming language)" href="https://en.wikipedia.org/wiki/Ruby_%28programming_language%29">Ruby</a> may need only a single statement to print "hello world", a low-level <a title="Assembly language" href="https://en.wikipedia.org/wiki/Assembly_language">assembly language</a> may require dozens of commands. Mark Guzdial and Elliot Soloway have suggested that the "hello world" test message may be outdated now that graphics and sound can be manipulated as easily as text.<sup id="cite_ref-10" class="reference"><a href="https://en.wikipedia.org/wiki/%22Hello,_World%21%22_program#cite_note-10">[10]</a></sup></p>', '2016-12-08 19:37:58'),
(2, 'National University of Singapore', 'The National University of Singapore (Abbreviation: NUS) is a publicly-funded autonomous university in Singapore. Founded in 1905, it is the oldest institute of higher learning (IHL) in Singapore, as well as the largest university in the country in terms of student enrolment and curriculum offered. NUS is a research-intensive, comprehensive university with an entrepreneurial dimension. ', '<p>The <strong>National University of Singapore</strong> (<a title="Abbreviation" href="https://en.m.wikipedia.org/wiki/Abbreviation">Abbreviation</a>: <strong>NUS</strong>) is a publicly-funded <a title="Autonomous university" href="https://en.m.wikipedia.org/wiki/Autonomous_university">autonomous</a> <a title="List of universities and colleges in Singapore" href="https://en.m.wikipedia.org/wiki/List_of_universities_and_colleges_in_Singapore">university in Singapore</a>. Founded in 1905, it is the oldest institute of higher learning (IHL) in <a title="Singapore" href="https://en.m.wikipedia.org/wiki/Singapore">Singapore</a>, as well as the largest university in the country in terms of student enrolment and curriculum offered. NUS is a <a title="Research" href="https://en.m.wikipedia.org/wiki/Research">research</a>-intensive, comprehensive university with an <a class="mw-redirect" title="Entrepreneurial" href="https://en.m.wikipedia.org/wiki/Entrepreneurial">entrepreneurial</a> dimension.</p>\r\n<p>NUS is consistently ranked as one of Asia''s top universities in various league tables such as the <a title="QS World University Rankings" href="https://en.m.wikipedia.org/wiki/QS_World_University_Rankings">QS World University Rankings</a> and the <a title="Times Higher Education World University Rankings" href="https://en.m.wikipedia.org/wiki/Times_Higher_Education_World_University_Rankings">Times Higher Education World University Rankings</a>. According to the latest 2015 <a title="QS World University Rankings" href="https://en.m.wikipedia.org/wiki/QS_World_University_Rankings">QS World University Rankings</a>, NUS is ranked 12th in the world and retained its position as 1st in Asia.<sup id="cite_ref-topuniversities.com_4-0" class="reference"><a href="https://en.m.wikipedia.org/wiki/National_University_of_Singapore#cite_note-topuniversities.com-4">[4]</a></sup> NUS also fared well in the 2015-16 <a title="Times Higher Education World University Rankings" href="https://en.m.wikipedia.org/wiki/Times_Higher_Education_World_University_Rankings">Times Higher Education World University Rankings</a>, coming in 26th in the world and 1st in Asia.<sup id="cite_ref-5" class="reference"><a href="https://en.m.wikipedia.org/wiki/National_University_of_Singapore#cite_note-5">[5]</a></sup> Alternatively, the <a class="mw-redirect" title="ARWU" href="https://en.m.wikipedia.org/wiki/ARWU">ARWU</a> ranking system published by the Shanghai Ranking Consultancy that measures universities academic achievements and research performance consistently places NUS in the range of 100&ndash;150 worldwide and 1st in Singapore. Additionally, 2014''s <em><a title="U.S. News &amp; World Report" href="https://en.m.wikipedia.org/wiki/U.S._News_%26_World_Report">U.S. News &amp; World Report</a></em> Best Global Universities Rankings<sup id="cite_ref-US_News_Best_Global_Universities_Rankings_6-0" class="reference"><a href="https://en.m.wikipedia.org/wiki/National_University_of_Singapore#cite_note-US_News_Best_Global_Universities_Rankings-6">[6]</a></sup> places NUS at 55th in the world.</p>\r\n<p>NUS''s main campus is located in South-West Singapore adjacent to <a title="Kent Ridge" href="https://en.m.wikipedia.org/wiki/Kent_Ridge">Kent Ridge</a>, with an area of 150 hectares (0.58&nbsp;sq&nbsp;mi).<sup id="cite_ref-7" class="reference"><a href="https://en.m.wikipedia.org/wiki/National_University_of_Singapore#cite_note-7">[7]</a></sup> The <a title="Bukit Timah" href="https://en.m.wikipedia.org/wiki/Bukit_Timah">Bukit Timah</a> campus houses the <a title="National University of Singapore Faculty of Law" href="https://en.m.wikipedia.org/wiki/National_University_of_Singapore_Faculty_of_Law">Faculty of Law</a>, <a title="Lee Kuan Yew School of Public Policy" href="https://en.m.wikipedia.org/wiki/Lee_Kuan_Yew_School_of_Public_Policy">Lee Kuan Yew School of Public Policy</a> and research institutes, while the <a title="Duke-NUS Medical School" href="https://en.m.wikipedia.org/wiki/Duke-NUS_Medical_School">Duke-NUS Medical School</a> Singapore is located at the <a title="Outram, Singapore" href="https://en.m.wikipedia.org/wiki/Outram,_Singapore">Outram</a> campus.</p>\r\n<div class="toc-mobile view-border-box">&nbsp;</div>\r\n<h2 class="section-heading in-block collapsible-heading open-block" tabindex="0"><span id="History" class="mw-headline">History</span></h2>', '2016-12-09 00:17:13'),
(3, 'CS1101S: Programming Methodology', 'CS1101S is a module taught in the Department of Computer Science at the NUS School of Computing. It serves as a rigorous and thorough introduction to programming methodology. The module follows the didactic strategy of the classic textbook Structure and Interpretation of Computer programs (SICP), which Harold Abelson and Gerald Jay Sussman developed for MIT introductory programming class 6.001.', '<table style="font-family: Verdana, sans-serif; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" width="100%" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<h1 style="text-align: center; display: block; font-size: 1.5em; margin: 0.4em 0px; font-weight: bold;">CS1101S: Programming Methodology</h1>\r\n<h2 style="text-align: center; display: block; font-size: 1.2em; margin: 0.5em 0px; font-weight: bold;">A Freshmen Module in the Department of Computer Science</h2>\r\n<h3 style="text-align: center; display: block; font-size: 1em; margin: 0.4em 0px; font-weight: bold;"><a href="http://www.comp.nus.edu.sg/">School of Computing</a></h3>\r\n<h3 style="text-align: center; display: block; font-size: 1em; margin: 0.4em 0px; font-weight: bold;"><a href="http://www.nus.edu.sg/">National University of Singapore</a></h3>\r\n<h3 style="text-align: center; display: block; font-size: 1em; margin: 0.4em 0px; font-weight: bold;">by <a href="http://www.comp.nus.edu.sg/~henz">Martin Henz</a> and <a href="http://www.comp.nus.edu.sg/~lowkl">Low Kok Lim</a></h3>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="3">\r\n<p>CS1101S is a module taught in the Department of Computer Science at the NUS School of Computing. It serves as a rigorous and thorough introduction to programming methodology. The module follows the didactic strategy of the classic textbook <a href="https://en.wikipedia.org/wiki/Structure_and_Interpretation_of_Computer_Programs">Structure and Interpretation of Computer programs</a> (SICP), which Harold Abelson and Gerald Jay Sussman developed for MIT introductory programming class 6.001. Since the module''s introduction at NUS as IC1101S in 1997, it underwent substantial revisions and additions. As of 2016, CS1101S is characterized by a constructivist didactic approach, an immersive gamified learning environment and a considerable wealth of application domains covered in examples to stimulate student interest in computing.</p>\r\n<p>The module has an official workload of five modular credits (typical NUS modules have four), and additional programming exercises called <a href="http://www.comp.nus.edu.sg/~cs1101s/#sidequests">side quests</a>carry the option of one further modular credit, which means that the module has a maximum of six attainable modular credits.</p>\r\n<p>CS1101S is offered as a more challenging alternative to <a href="http://www.comp.nus.edu.sg/~cs1010/">CS1010</a>. Eligible are the students in the 4-year undergraduate degrees offered by the Department of Computer Science. Out of 321 eligible students, 102 students have chosen CS1101S in Semester 1 AY2016/17.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h1 style="text-align: center; display: block; font-size: 1.5em; margin: 0.4em 0px; font-weight: bold; color: #000000; font-family: Verdana, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><a id="approach" class="anchor"></a>Approach</h1>\r\n<p><span style="color: #000000; font-family: Verdana, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">The module broadly follows </span><a style="font-family: Verdana, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" href="https://en.wikipedia.org/wiki/Constructivist_teaching_methods">constructivist teaching methods</a><span style="color: #000000; font-family: Verdana, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">, with a particular emphasis on </span><a style="font-family: Verdana, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;" href="https://en.wikipedia.org/wiki/Constructivist_teaching_methods#Problem-Based_Learning">problem-based learning</a><span style="color: #000000; font-family: Verdana, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">. The following list contains the main instructional components:</span></p>\r\n<dl style="color: #000000; font-family: Verdana, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;"><dt><strong>Lectures</strong><img class="padded" style="padding: 10px;" src="http://www.comp.nus.edu.sg/~cs1101s/images/classroom2.jpg" alt="" height="200" align="right" /></dt><dd>The module content is introduced in one two-hour and one one-hour lecture per week that bring the whole cohort (around 100 students as of 2016) together in a classroom. [<a href="http://www.comp.nus.edu.sg/~cs1101s/#ex">example webcast</a>, <a href="http://www.comp.nus.edu.sg/~cs1101s/#ex2">example slides</a>]</dd><dt><strong>Paths</strong><img class="padded" style="padding: 10px;" src="http://www.comp.nus.edu.sg/~cs1101s/images/path.png" alt="" height="300" align="right" /></dt><dd>The digestion of the material is then facilitated with paths, which are small sets of compulsory simple online quizzes and exercises, to be completed within two days of the lecture. (The picture on the right shows an example path, while in progress.)</dd><dt><strong>Recitations</strong></dt><dd>The main examples given in the lectures are re-visited in 1-hour practical sessions led by a lecturer, and conducted in smaller classes of around 20 students each. [<a href="http://www.comp.nus.edu.sg/~cs1101s/#env">example recitation sheet</a>]</dd><dt><strong>Discussion groups</strong><img class="padded" style="padding: 10px;" src="http://www.comp.nus.edu.sg/~cs1101s/images/dg_scene3.jpg" alt="" height="200" align="right" /><img class="padded" style="padding: 10px;" src="http://www.comp.nus.edu.sg/~cs1101s/images/dg_scene5.jpg" alt="" height="200" align="right" /></dt><dd>The main vehicle for the constructivist teaching approach are discussion groups that comprise 8 students and a facilitator called "Avenger". These groups meet physically in a 2-hour session every week to discuss the current material based on discussion group sheets that are handed out a few days prior to the meetings. [<a href="http://www.comp.nus.edu.sg/~cs1101s/#ooo">example discussion group exercises</a>]</dd><dt><strong>Discussion forum</strong></dt><dd>The module uses the NUS Integrated Virtual Learning Environment (IVLE) to host a semester-long forum for students to discuss their progress, questions and difficulties.</dd><dt><a id="missions" class="anchor"></a><strong>Missions</strong></dt><dd>A central vehicle for learning in CS1101S are "missions", which are homework programming assignments that are completed by the students under close online supervision by the students'' Avenger. The Avenger points out mistakes, answers questions and provides guidance, and&mdash;upon online submission of the mission&mdash;grades it and provides written feedback. The module comprises 22 missions, grouped into seven themes, and the mission schedule is given <a href="http://www.comp.nus.edu.sg/~cs1101s/#mission_overview">below</a>. [<a href="http://www.comp.nus.edu.sg/~cs1101s/#cim">example mission description</a>]\r\n<p><img class="padded" style="padding: 10px;" src="http://www.comp.nus.edu.sg/~cs1101s/images/forest.png" alt="" height="300" align="right" />The mission work is facilitated by the <a href="http://www.comp.nus.edu.sg/~cs1101s/#academy">Source Academy</a>, an online programming environment built for CS1101S. The missions are embedded into a coherent story line in the Academy; the picture on the right shows a scene set on an alien planet.</p>\r\n</dd><dt><a id="sidequests" class="anchor"></a><strong>Side quests</strong></dt><dd>Side quests are additional optional homework programming assignments. By completing most of the these, the student earns one additional modular credit for CS1101S. The module comprises 13 side quests, typically aligned with the missions, and the side quest schedule is given <a href="http://www.comp.nus.edu.sg/~cs1101s/#mission_overview">below</a>. [<a href="http://www.comp.nus.edu.sg/~cs1101s/#cisq">example side quest description</a>]</dd><dt><a id="contests" class="anchor"></a><strong>Contests</strong></dt><dd>The module comprises seven programming contests, covering <a href="http://www.comp.nus.edu.sg/~cs1101s/#runes_and_curves">runes and curves</a>, <a href="http://www.comp.nus.edu.sg/~cs1101s/#sumobot">robotics</a> and <a href="http://www.comp.nus.edu.sg/~cs1101s/#sound">sound processing</a>. [<a href="http://www.comp.nus.edu.sg/~cs1101s/samples/contest-15.3.pdf">example contest description (Contest 15.3)</a>]</dd></dl>\r\n<p><span style="color: #000000; font-family: Verdana, sans-serif; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none;">In the terminology of constructivist learning theory, the Avengers are the primary More Knowledgeable Others in this module, and the Discussion Groups let students enter their personal Zones of Proximal Development, both during the discussion group sessions and while engaging with the material in the Source Academy and interacting with their Avenger online.</span></p>', '2016-12-09 13:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"phpmyadmin","table":"blog_posts"},{"db":"phpmyadmin","table":"blog_members"},{"db":"phpmyadmin","table":"pma__users"},{"db":"phpmyadmin","table":"comments"},{"db":"mysql","table":"column_stats"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-12-07 09:32:55', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `num_comments` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `num_comments`, `date`) VALUES
(1, 'Testing', 'Do Something', 0, 1481104916);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_members`
--
ALTER TABLE `blog_members`
  ADD PRIMARY KEY (`memberID`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_members`
--
ALTER TABLE `blog_members`
  MODIFY `memberID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `postID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
