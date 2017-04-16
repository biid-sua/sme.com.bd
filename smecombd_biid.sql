-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 19, 2015 at 12:27 PM
-- Server version: 5.1.73-cll
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smecombd_biid`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `Id` int(9) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(15) NOT NULL DEFAULT '',
  `Password` varchar(15) NOT NULL DEFAULT '',
  `ConfirmPassword` text NOT NULL,
  `Type` tinyint(1) DEFAULT '1',
  `Email` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `UserName`, `Password`, `ConfirmPassword`, `Type`, `Email`) VALUES
(1, 'admin', '11111', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 1, 'info@sme.com.bd'),
(2, 'mynul', 'almighty', '24cf79457d4fbafedaddb64ce6d7a091', 1, 'mynul@mynul.com'),
(3, 'shoeb', 'shoeb90', 'bfba173a737b8a42abcd1fc3ed27aba8', 2, ''),
(4, 'shoebsss', 'shoebsss90', '417d72a547470af85c010dfcc13a4341', 2, ''),
(5, 'shisasho', 'shisasho990', 'a544ff85493fb74f23146f99d26d0b5f', 2, ''),
(6, 'futureleaders', 'common123', 'f9851fac6a5fa7f2500099c8715cc436', 2, ''),
(7, 'shoebbb', 'shoebbbb90', 'a98f79164e6bdeb9dfd4da0a1fc88e30', 2, ''),
(8, 'palekhan', '158986', '6b0aa8f544f22064067361dd1fb6f8c4', 2, ''),
(9, 'rezu', 'chandpur', 'b8e0df8ae77dbf4a0690ee8b6674d6f9', 2, ''),
(10, 'no', 'Any', 'ed36a1ef76a59ee3f15180e0441188ad', 2, ''),
(11, 'tinny', 'tinny', 'ee1a5bfb1301fe6bb2d1dffe69aa1032', 2, ''),
(12, 'tinny11', 'tinny', 'ee1a5bfb1301fe6bb2d1dffe69aa1032', 2, ''),
(13, 'bsvbaituucd', 'ctZxBtymlkjflHT', 'fcee4ef172cf23611b4fb2284c40ba6e', 2, ''),
(14, 'waldosm', 'http://avtozast', 'd72a5e389246eac9dfd3a3c67e9427c6', 2, ''),
(15, 'bonner', 'r8lYruiX', '7d2db010c81741c46d2b4ed7d7a4fc34', 2, ''),
(16, 'saifulcse', 'saifulcse', 'ca58e7903f506d111e44eaacf65a6edb', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `advertise`
--

CREATE TABLE IF NOT EXISTS `advertise` (
  `AdvId` int(5) NOT NULL AUTO_INCREMENT,
  `PicTitle` text,
  `Photo` varchar(100) NOT NULL,
  `WebLink` varchar(200) NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '1',
  `Date` varchar(150) NOT NULL,
  PRIMARY KEY (`AdvId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `advertise`
--

INSERT INTO `advertise` (`AdvId`, `PicTitle`, `Photo`, `WebLink`, `Status`, `Date`) VALUES
(2, NULL, 'lemon24.jpg', 'http://www.lemon24.com', 1, 'July 2009'),
(3, NULL, 'Penguins.jpg', 'http://sme.com.bd/', 0, 'December 2013'),
(4, NULL, 'adige.php.jpg', 'http://aloo.com.bd/', 1, 'December 2013'),
(5, NULL, 'adige.php.jpg', 'http://www.good.com ', 1, 'December 2013'),
(6, NULL, 'adige.php', 'http://www.asdanitbd.com ', 1, 'December 2013');

-- --------------------------------------------------------

--
-- Table structure for table `blog_main`
--

CREATE TABLE IF NOT EXISTS `blog_main` (
  `Blog_Id` int(90) NOT NULL AUTO_INCREMENT,
  `Headline` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Keywords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` date NOT NULL,
  `Photo` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Author` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MonthYear` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Blog_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `blog_main`
--

INSERT INTO `blog_main` (`Blog_Id`, `Headline`, `Content`, `Keywords`, `Date`, `Photo`, `Author`, `Email`, `Phone`, `MonthYear`, `Status`) VALUES
(1, 'Testing BLOG', '<span style="font-weight: bold;">PSD in Bangladesh</span><br>This is the 1st post in this BLOG for the 1st time being launched by the PSD company LTD. Which is the country''s 1st Private Public Co. LTD. This is the 1st post in this BLOG for the 1st time being launched bythe PSD company LTD. Which is the country''s 1st Private Public Co. LTD. <br><br>This is the 1st post in this BLOG for the 1st time being launched bythe PSD company LTD. Which is the country''s 1st Private Public Co. LTD. This is the 1st post in this BLOG for the 1st time being launched bythe PSD company LTD. Which is the country''s 1st Private Public Co. LTD. This is the 1st post in this BLOG for the 1st time being launched bythe PSD company LTD. Which is the country''s 1st Private Public Co. LTD. <br> <br><span style="font-style: italic; color: rgb(255, 0, 0);">PSD is the leading ppcl in bangladesh.</span><br>', 'Test, blog, first, Pakhi', '2008-11-19', 'farha.jpg', 'Pakhi', 'pakhi@psd.com', '012345678910', '0000-00-00', 1),
(3, 'Who Cares if Bangladesh Drowns?', '<div style="text-align: justify;">Our country is not far from disappearing under with flooded land and very quickly it is happening with the current crisis and unfairness of gas emissions in developing countries, such as Bangladesh, continue to be a rights issue and a violation of protecting our people and its land! There is a FANTASTIC opportunity for you guys to come and attend a screening of â€œWho Cares if Bangladesh Drowns?â€, with an opportunity to discuss the film/issue with some renowned members of this mobilising.<br><br><span style="font-weight: bold;">Check out the details:</span><br>When: Friday, November 21 2008<br>Where: MIT, Student Center and Stata Center, Cambridge MA<br>When:<br>Photo Exhibit: 9:00am - 6:30pm<br>Film: 6:30 â€“ 7:00pm<br>Panel Discussion: 7:00-8:30pm<br><br>*Please note, this event is FREE and open to the public<br><br>For details on room locations and panelists, please visit -<br>http://www.facebook.com/p.php?i=595345494&amp;k=631UYV5Z3X3MZBMGQBW6T<br><br><span style="font-weight: bold;">A QUICK NOTE ON THE FILM:</span><br>Phenomenal journalist and activist from Bangladesh - Afsan Chowdhury, shows his film on Climate Change (http://www.youtube.com/watch?v=5gDP0NTT0Ck).<br><br><span style="font-weight: bold;">A LITTLE MORE ABOUT AFSAN:</span><br>He is currently a 2008 Oak Fellow at Colby College in Maine. He has had a parallel career in development work and the media. He has been active in multi-disciplinary research, media relations, journalism, and program development for two decades, and is one of the editors of an authoritative work on Bangladeshâ€™s War of Independence. He held a high position in UNICEF, but left to become a freelancer and social activist. He was also the BBCâ€™s correspondent in Bangladesh but left to concentrate on development-related work. These two resignations are indicative of his personality. Both were extremely prestigious jobs,<br>but he gave them up to pursue social activism. In 1994, he established, HASAB, a funding nonprofit for organizations working in<br>the area of HIV, STDs, and AIDS. Afsan has had remarkable success in designing communications materials that appeal to both the youth and elders alike. In 1995 he developed a fifteen-part sex education series for the BBC entitled â€œSexwise,â€ which aired in 1995-96. The first broadcasting of such a program in Asia, the series reached ten million listeners and became the most successful radio series in Bangladesh.<br><br>The companion book to the series completely sold out of stores. His reputation as a media professional and development worker is firmly established. Afsan says that he cherishes freedom most and that is why he has dropped out of the conventional career tracks to do work that he finds directly relevant to his and other peopleâ€™s lives.<br>&nbsp;<br>&nbsp;<br><span style="font-weight: bold;">OTHER PANELISTS:</span><br>Dr. Sajed Kamal:<br>Dr. Kamal teaches â€œRenewable Energy and Sustainable Developmentâ€ in the Sustainable International Development program at Brandeis University and has been involved in the field for more than thirty years. He has been a lecturer and consultant on renewable energy internationally, setting up projects in the United States, Bangladesh, Sri Lanka, Armenia and El Salvador. His work has also provided the basis for projects in Latin America, Europe and Africa. Dr. Kamal is the president of the International Consortium for Energy Development, a Boston-based nonprofit corporation, a Board member of the Boston Area Solar Energy Association, a member of the Union of Concerned Scientists, and the Coordinator of the Solar Fenway Committee of the Fenway Community Development Corporation in Boston.<br><br>He is also an award-winning poet, artist, educational consultant, translator, psychotherapist and published author of a dozen books and many articles in a wide range of areas. In 2007, he was awarded Boston â€œMayorâ€™s First Annual Green Award for Community Leadership in Energy and Climate Protectionâ€ and a â€œRegional Heroes Awardâ€ by AltWheels: Creating a Sustainable Transportation &amp; Energy Vision for the 21st Century, and in 2008, a â€œLifetime Achievement Awardâ€ by the U. S. Environmental Protection Agency, New England Region. â€œThe Greener Issueâ€ of The Boston Sunday Globe Magazine on September 28, 2008,<br>featured him as one of the â€œSix local heroes whose work is having rippling effectsâ€”at home and far awayâ€”in making the world a better place.â€<br>&nbsp;<br>Albelee Haque:<br>Albelee is an environmental scientist in the department of environment at Boston. She is also one of the leading members of BEN, Bangladesh Environment Network.<br>&nbsp;<br><span style="font-weight: bold;">WHAT THE EVENT AIMS FOR:</span><br>Create awareness and highlight urgency of Climate Change Justice so<br>that countries attending the UN Climate Change Conference<br>(http://www.cop15.dk/en) in December 2009 will be sufficiently<br>pressured to enact REAL policies to battle this urgent global problem.Come and let your voice be known. Be the change you want to see in the world! Help spread the word! <br></div>', 'Climate, Weather, Bangladesh, natural Disaster', '2008-11-21', 'mynul.jpg', 'Mynul', 'mynul@mynul.com', '01715576388', '0000-00-00', 1),
(6, 'This is AMIO', 'wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer<br><br>wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer''skjdfgksj "wero ywoeriy owiery owiyero iwyer wero ywoeriy owiery owiyero iwyer " ', 'we rwer wrewer', '2009-08-16', 'amrita50.jpg', 'mynul9280', 'amio@mcc.com.bd', '', 'August 2009', 1),
(7, 'Who Cares if Bangladesh Drowns?', 'Our country is not far from disappearing under with flooded land and\r\nvery quickly it is happening with the current crisis and unfairness of\r\ngas emissions in developing countries, such as Bangladesh, continue to\r\nbe a rights issue and a violation of protecting our people and its\r\nland! There is a FANTASTIC opportunity for you guys to come and attend\r\na screening of "Who Cares if Bangladesh Drowns?", with an\r\nopportunity to discuss the film/issue with some renowned members of\r\nthis mobilising.', 'rain, flood', '2009-08-19', '', 'zanala', 'info@zanala.com', '', 'August 2009', 1),
(8, 'SME', '<font size="-1"><span style="font-family: Vrinda;"></span></font><p><span style="color: rgb(255, 102, 0);">i am interested SME program.i am interested SME programi am interested SME </span><span style="color: rgb(51, 255, 51);">programi am interested SME programi am interested SME programi am interested SME</span> program<span style="color: rgb(51, 51, 255);">i am interested SME programi am interested SME programi am interested SME </span>programi am interested SME programi am interested SME programi am interested SME <span style="color: rgb(255, 255, 0);">program</span></p>', 'shohel', '2009-08-19', 'Sunset.jpg', 'aishohel', 'aishohel', '', 'August 2009', 1),
(11, 'Fund for women entrepreneurs', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta name="ProgId" content="Word.Document"><meta name="Generator" content="Microsoft Word 12"><meta name="Originator" content="Microsoft Word 12"><link rel="File-List" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml"><link rel="themeData" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx"><link rel="colorSchemeMapping" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml"><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:DontVertAlignCellWithSp/>\r\n   <w:DontBreakConstrainedForcedTables/>\r\n   <w:DontVertAlignInTxbx/>\r\n   <w:Word11KerningPairs/>\r\n   <w:CachedColBalance/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="--"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="267">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><style>\r\n<!--\r\n /* Font Definitions */\r\n @font-face\r\n	{font-family:"Cambria Math";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:1;\r\n	mso-generic-font-family:roman;\r\n	mso-font-format:other;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	margin-top:0in;\r\n	margin-right:0in;\r\n	margin-bottom:10.0pt;\r\n	margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n	{mso-style-type:export-only;\r\n	margin-bottom:10.0pt;\r\n	line-height:115%;}\r\n@page Section1\r\n	{size:8.5in 11.0in;\r\n	margin:1.0in 1.0in 1.0in 1.0in;\r\n	mso-header-margin:.5in;\r\n	mso-footer-margin:.5in;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Only 20 percent of the Tk 105 crore\r\nfund for women entrepreneurs under the central bank refinance scheme has been\r\ndisbursed since May 2007.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The fiasco has surprised Bangladesh\r\nBank (BB) officials, who had identified the low accessibility of bank credit as\r\na major problem for the women intending to start business, or its expansion.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">“It is a matter of regret that the\r\nfund is not being used properly,” said Nazrul Huda, BB''s deputy governor.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">As on September 30, less than Tk 22\r\ncrore has been disbursed under the scheme.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Several women entrepreneurs say they\r\nhave no clear idea of such BB fund. They also spell out that they feel shaky\r\nabout bank loans.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;"><span style="">&nbsp;</span>“Women entrepreneurs outside Dhaka need\r\nfinance badly.</span><span style="font-size: 8pt; font-family: &quot;Arial&quot;,&quot;sans-serif&quot;; display: none;">Top of\r\nForm<o:p></o:p></span></p>\r\n\r\n', 'BB fund', '2009-10-07', '', 'nadia.farzana', 'nadia.farzana@gmail.com', '', 'October 2009', 0);
INSERT INTO `blog_main` (`Blog_Id`, `Headline`, `Content`, `Keywords`, `Date`, `Photo`, `Author`, `Email`, `Phone`, `MonthYear`, `Status`) VALUES
(10, 'The electronic transaction project', '<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><meta name="ProgId" content="Word.Document"><meta name="Generator" content="Microsoft Word 12"><meta name="Originator" content="Microsoft Word 12"><link rel="File-List" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml"><link rel="themeData" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx"><link rel="colorSchemeMapping" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml"><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>EN-US</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:DontVertAlignCellWithSp/>\r\n   <w:DontBreakConstrainedForcedTables/>\r\n   <w:DontVertAlignInTxbx/>\r\n   <w:Word11KerningPairs/>\r\n   <w:CachedColBalance/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="--"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="267">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="22" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><style>\r\n<!--\r\n /* Font Definitions */\r\n @font-face\r\n	{font-family:"Cambria Math";\r\n	panose-1:2 4 5 3 5 4 6 3 2 4;\r\n	mso-font-charset:1;\r\n	mso-generic-font-family:roman;\r\n	mso-font-format:other;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:0 0 0 0 0 0;}\r\n@font-face\r\n	{font-family:Calibri;\r\n	panose-1:2 15 5 2 2 2 4 3 2 4;\r\n	mso-font-charset:0;\r\n	mso-generic-font-family:swiss;\r\n	mso-font-pitch:variable;\r\n	mso-font-signature:-1610611985 1073750139 0 0 159 0;}\r\n /* Style Definitions */\r\n p.MsoNormal, li.MsoNormal, div.MsoNormal\r\n	{mso-style-unhide:no;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	margin-top:0in;\r\n	margin-right:0in;\r\n	margin-bottom:10.0pt;\r\n	margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n.MsoChpDefault\r\n	{mso-style-type:export-only;\r\n	mso-default-props:yes;\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:Calibri;\r\n	mso-fareast-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:"Times New Roman";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n.MsoPapDefault\r\n	{mso-style-type:export-only;\r\n	margin-bottom:10.0pt;\r\n	line-height:115%;}\r\n@page Section1\r\n	{size:8.5in 11.0in;\r\n	margin:1.0in 1.0in 1.0in 1.0in;\r\n	mso-header-margin:.5in;\r\n	mso-footer-margin:.5in;\r\n	mso-paper-source:0;}\r\ndiv.Section1\r\n	{page:Section1;}\r\n-->\r\n</style><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Table Normal";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0in 5.4pt 0in 5.4pt;\r\n	mso-para-margin-top:0in;\r\n	mso-para-margin-right:0in;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0in;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:"Calibri","sans-serif";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Money transfer is about to go\r\ndigital in six months, as Bangladesh Bank has approved the launch of an\r\nelectronic prepaid card system that will have a mobile payment option. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The central bank permitted Trust\r\nBank Ltd to act as a settlement bank for digital money transfer. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">"The Electronic Prepaid Card\r\nSystem will be a multiple bank, multiple channel platform, where Trust Bank\r\nwill act as the settlement bank," BB said in a recent notice. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">With the card, a customer will be\r\nable to deposit and withdraw cash directly from ATMs and all other channels. A\r\ncard will have a secret PIN to access the service. Also, the system allows an\r\nauthorised user to transact by mobile. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">In case of foreign remittance, any\r\namount could be withdrawn by prepaid card, but the amount is limited to a\r\nmaximum of Tk 10,000 for now, Bangladesh Bank officials said. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">In line with the central bank\r\ndirective, any bank having Q-cash or a similar platform can issue prepaid cards\r\nfor customers to transact money. Presently, 23 banks are linked with the Q-cash\r\nnetwork.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Besides the prepaid card system,\r\nEastern Bank received approval to handle international and domestic remittance\r\ntransfers. Dhaka Bank is allowed to disburse foreign remittance through mobile\r\noperator Banglalink''s outlets.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Neither of the new systems allows\r\ncross-border money transfer.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Industry insiders said people would\r\nbe able to easily transfer money to their loved ones at a fifth of the cost\r\nunder the present system. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">According to BB statistics,\r\nremittance inflows soared by 30 percent from $721.92 million in August 2008 to\r\n$937.91 million in August 2009 -- a contribution of 60 lakh Bangladeshis living\r\nin parts of the world. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">In a letter on September 1, the central\r\nbank approved Trust Bank to introduce the Digital Money Prepaid Card System\r\nwith mobile payment facilities within the next six months, in association with\r\nDigital Technologies Ltd and Information Technology Consultant Ltd.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Under the digital money transfer\r\nsystem, intra- and inter-bank account-to-account transfers, transactions at\r\nATMs through Q-cash and other similar platforms will be settled.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">A digital wallet is an electronic\r\nprepaid card with mobile banking (M-banking) that utilises the ATM (automated\r\nteller machine) and all kinds of electronic communication technologies,\r\nincluding mobile phone.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">To obtain the digital prepaid card,\r\ncustomers will have to fill out an application form at banks or agents. The\r\nbank will verify the customer under its ''know your customer'' (KYC) process to\r\nissue a digital money prepaid card.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The customer''s information must\r\nmatch the information with the bank and the information he or she provided to\r\ntelecom companies, through host-to-host connectivity. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The Q-cash host will tag the\r\ncardholder''s cellphone upon getting confirmation from the telecom host, and\r\nthen the customer will be notified immediately upon successful digital money\r\ntagging.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Since the customer owns the card, he\r\nor she can transfer money and carry out transactions at a point of service\r\n(POS) at bank-approved merchant stores and service points, like gas stations,\r\nhospitals and cinema halls.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">In the case of person to business\r\npayments, like utility bills, insurance premiums, loan instalments, E-top-up\r\nfor mobile phones, and e-ticketing, the prepaid card will be used.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">In the case of government to person\r\npayments, like agriculture subsidies, widow allowances, freedom fighters\r\nallowances, payment will be transferred through the card. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Trust Bank will have to submit contract\r\nagreements between its partners before launching the project. The pay points\r\nmust be accredited by Trust Bank under an approved accreditation policy and the\r\nbank shall undertake all responsibilities of pay points. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Trust Bank will be responsible for\r\nmitigating of all kind of risks, including credit risks, liquidity risks,\r\noperational risks, fraud risks and technical risks associated with the digital\r\nmoney system. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Kazi Saifuddin Munir, managing\r\ndirector of Information Technology (IT) Consultants Ltd, said, "We are\r\nready to initiate the prepaid card system for money transferring by December on\r\na pilot basis."<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">IT Consultants Ltd, the lone payment\r\nservice operator in Bangladesh providing the Q-Cash inter-bank switching\r\nplatform and connectivity, thinks that if all the banks come under a single\r\nnetwork, remittance or any other transaction would be easier.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Munir said through a designated\r\nshort mobile code number, a customer can transact money. However all\r\ntransactions would be settled through the banking channel. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">"The mobile application will be\r\nused to just enter the system," he said. Banking and mobile application\r\nsystems will be merged in a sense to settle the transaction.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">As per the central bank\r\nnotification, Eastern Bank Ltd (EBL) will conduct both international and\r\ndomestic remittance by introducing three products --EBL Smart Remit Card, Smart\r\nCash Point and Smart m-wallet.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">The EBL Smart Remit Card will be a\r\ncard based payment system, where senders can send money to receivers prepaid\r\nVISA card and the cash can be withdrawn using any VISA, ATM or point of\r\nservice, at any appointed merchant.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">EBL has not been approved\r\ntransferring money from one m-wallet to another m-wallet holder.<o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">Dhaka Bank Ltd has been approved to\r\nuse Banglalink outlets for disbursement of foreign remittance. Under the\r\napproval, the bank can disburse foreign remittance through designated\r\nBanglalink outlets, which must be approved by the bank''s board. <o:p></o:p></span></p>\r\n\r\n<p class="MsoNormal" style="line-height: normal;"><span style="font-size: 12pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;;">In the remittance disbursement\r\nprocess, EBL and Dhaka Bank accredited cash points will be used only for\r\ndelivery in local currency for inward remittance credited in Nostro accounts of\r\nthe banks and not for any other inland or cross border transfer.<o:p></o:p></span></p>\r\n\r\n', 'Electronic transaction', '2009-10-06', '', 'nadia.farzana', 'nadia.farzana@gmail.com', '', 'October 2009', 0),
(12, '', '', '', '2012-03-04', '', '', '', '', 'March 2012', 0),
(13, '123', '123', '123', '2012-03-04', 'css.php', 'admin', '123@gmail.com', '', 'March 2012', 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `CatId` int(5) NOT NULL AUTO_INCREMENT,
  `CatName` varchar(255) NOT NULL,
  PRIMARY KEY (`CatId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CatId`, `CatName`) VALUES
(1, 'Business'),
(2, 'Agriculture'),
(5, 'Brokerry'),
(4, 'Buyer');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Comments` text COLLATE utf8_unicode_ci NOT NULL,
  `Blog_Id` int(90) NOT NULL,
  `Date` date NOT NULL,
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Id`, `Name`, `Email`, `Comments`, `Blog_Id`, `Date`, `Status`) VALUES
(2, 'Tahmina Islam', 'tahmina@mynul.com', 'There are billions of pounds of silt carried from the Himalayas to the rivers of Bangladesh and the Bay of Bengal. The silt build up in the rivers is causing the water level to rise in the river beds and overflow in the monsoon season. It doesnâ€™t take a rocket scientist to figure that out. If you we just take the silt from the rivers and deposit it in the Bay of Bengal, we can reduce and perhaps eliminate the flood and at the same time create more real estate and expand the land mass for Bangladesh.                  ', 3, '2008-11-21', 0),
(13, 'Mynul', 'mynul@mynul.com', 'Bangladesh is going to be undersea tourist attraction in near future. divers in our muddy sea water would venture out to see â€˜a civilisation wasâ€™who used to cultivate rice, had rivers, flow of which temperred by human greed to build building or golf course. people cared a little for their environment so they are drawn, become patal purir basinda.used to chop bamboos, trees to make necklece, burn fossil fuel to create exotic ear rings while their lady leaders mostly engaged in sqabling. So might be the subsequent stories. Put in linear measure, 20 thousand km of dykes is built across our coastal area. Netherland is researching on such a huge man made earthen structure. (Aynun Nishat)                  ', 1, '2008-11-21', 1),
(14, 'Mynul Islam', 'mynul@mynul.com', 'Bangladesh is going to be undersea tourist attraction in near future. divers in our muddy sea water would venture out to see â€˜a civilization was who used to cultivate rice, had rivers, flow of which tempered by human greed to build building or golf course. people cared a little for their environment so they are drawn, become patal purir basinda.used to chop bamboos, trees to make necklace, burn fossil fuel to create exotic ear rings while their lady leaders mostly engaged in squabbling. So might be the subsequent stories. Put in linear measure, 20 thousand km of dikes is built across our coastal area. Netherlands is researching on such a huge man made earthen structure. (Thanx - Aynun Nishat)                                    ', 3, '2008-11-22', 1),
(21, 'dgdfg', 'dfgdfgdfg@dfg.dfg', 'dfgdfg', 6, '2009-08-16', 1),
(22, 'df', 'sdf@tes.com', 'fds', 1, '2009-08-18', 0),
(23, 'Anjan', 'anjan@zanala.com', 'this is a nice example of copy-pasting. thank you very much.', 7, '2009-08-19', 1),
(24, 'tam', 'tamanna1981@yahoo.com', 'this should not be the case in forum.\r\n', 7, '2009-10-05', 0),
(25, '', '', '', 0, '2009-10-14', 0),
(26, 'cui yongyuan', 'yonguyan@hotmail.com', '\r\n<a href="http://www.dsquaredonline.com/">Dsquared Clothing</a> <a href="http://www.dsquaredonline.com/dsquared-hoodies-c-86.html">Dsquared Hoodies</a> <a href="http://www.dsquaredonline.com/dsquared-jeans-c-82.html">Dsquared Jeans</a> <a href="http://www.dsquaredonline.com/dsquared-shoes-c-70.html">Dsquared Shoes</a> <a href="http://www.dsquaredonline.com/dsquared-sweater-c-110.html">Dsquared Sweater</a> <a href="http://www.dsquaredonline.com/dsquared-t-shirts-c-95.html">Dsquared T Shirt</a> <a href="http://www.dsquaredonline.com/dsquared-belt-c-80.html">Dsquared Belt</a> <a href="http://www.dsquaredonline.com/heels-shoes-women-c-70_113.html">Dsquared Women Heels Shoes</a> <a href="http://www.dsquaredonline.com/dsquared-cap-c-81.html">Dsquared Cap</a> <a href="http://www.dsquaredonline.com/dsquared-jacket-c-92.html">Dsquared Jacket</a> <a href="http://www.dsquaredonline.com/dsquared-polo-shirt-c-77.html">Dsquared Polo Shirt</a> <a href="http://www.dsquaredonline.com/dsquared-shirt-c-74.htm">Dsquared Shirt</a> <a href="http://www.dsquaredonline.com/dsquared-pants-c-98.html">Dsquared Pants</a> <a href="http://www.dsquaredonline.com/dsquared-swim-c-102.html">Dsquared Swim</a> <a href="http://www.dsquaredonline.com/dsquared-coat-c-89.html">Dsquared Coat</a> <a href="http://www.domoncler.com/">Moncler Doudoune</a> <a href="http://www.domoncler.com/moncler-shoes-c-118.html">Moncler Shoes</a>  <a href="http://www.domoncler.com/moncler-vest-c-113.html">Moncler Vest</a> <a href="http://www.domoncler.com/moncler-coat-c-112.html">Moncler Coat</a> <a href="http://www.domoncler.com/moncler-jacket-c-121.html">Moncler Jacket</a> <a href="http://www.domoncler.com/moncler-hoodies-c-114.html">Moncler Hoodies</a> <a href="http://www.domoncler.com/moncler-sweater-c-115.html">Moncler Sweater</a> <a href="http://www.domoncler.com/moncler-polo-shirt-c-117.html">Moncler Polo Shirt</a> <a href="http://www.domoncler.com/moncler-down-jacket-c-111.html">Moncler Down Jacket</a> <a href="http://www.domoncler.com/moncler-boots-c-116.html">Moncler Boots</a> <a href="http://www.domoncler.com/moncler-cap-c-86.html">Moncler Cap</a> <a href="http://www.domoncler.com/moncler-down-jacket-c-111.html">Moncler Down Jacket</a> <a href="http://www.domoncler.com/moncler-pants-c-120.html">Moncler Pants</a> <a href="http://www.domoncler.com/moncler-shorts-c-119.html">Moncler Shorts</a> <a href="http://www.domoncler.com/moncler-kids-c-105.html">Moncler Kids</a> <a href="http://www.leatherbelstaff.com/">Belstaff Leather</a> <a href="http://www.leatherbelstaff.com/belstaff-bag-c-68.html">Belstaff Bag</a>  <a href="http://www.leatherbelstaff.com/belstaff-leather-jacket-c-75.html">Belstaff Leather Jacket</a> <a href="http://www.leatherbelstaff.com/leather-jacket-men-c-75_76.html">Belstaff Leather Jacket Men</a> <a href="http://www.leatherbelstaff.com/leather-jacket-women-c-75_79.html">Belstaff Leather Jacket Women</a> <a href="http://www.leatherbelstaff.com/jacket-women-c-73_88.html">Belstaff Women Jacket</a>', 1, '2012-01-10', 0),
(27, 'cui yongyuan', 'yonguyan@hotmail.com', '\r\n<a href="http://www.dsquaredonline.com/">Dsquared Clothing</a> <a href="http://www.dsquaredonline.com/dsquared-hoodies-c-86.html">Dsquared Hoodies</a> <a href="http://www.dsquaredonline.com/dsquared-jeans-c-82.html">Dsquared Jeans</a> <a href="http://www.dsquaredonline.com/dsquared-shoes-c-70.html">Dsquared Shoes</a> <a href="http://www.dsquaredonline.com/dsquared-sweater-c-110.html">Dsquared Sweater</a> <a href="http://www.dsquaredonline.com/dsquared-t-shirts-c-95.html">Dsquared T Shirt</a> <a href="http://www.dsquaredonline.com/dsquared-belt-c-80.html">Dsquared Belt</a> <a href="http://www.dsquaredonline.com/heels-shoes-women-c-70_113.html">Dsquared Women Heels Shoes</a> <a href="http://www.dsquaredonline.com/dsquared-cap-c-81.html">Dsquared Cap</a> <a href="http://www.dsquaredonline.com/dsquared-jacket-c-92.html">Dsquared Jacket</a> <a href="http://www.dsquaredonline.com/dsquared-polo-shirt-c-77.html">Dsquared Polo Shirt</a> <a href="http://www.dsquaredonline.com/dsquared-shirt-c-74.htm">Dsquared Shirt</a> <a href="http://www.dsquaredonline.com/dsquared-pants-c-98.html">Dsquared Pants</a> <a href="http://www.dsquaredonline.com/dsquared-swim-c-102.html">Dsquared Swim</a> <a href="http://www.dsquaredonline.com/dsquared-coat-c-89.html">Dsquared Coat</a> <a href="http://www.domoncler.com/">Moncler Doudoune</a> <a href="http://www.domoncler.com/moncler-shoes-c-118.html">Moncler Shoes</a>  <a href="http://www.domoncler.com/moncler-vest-c-113.html">Moncler Vest</a> <a href="http://www.domoncler.com/moncler-coat-c-112.html">Moncler Coat</a> <a href="http://www.domoncler.com/moncler-jacket-c-121.html">Moncler Jacket</a> <a href="http://www.domoncler.com/moncler-hoodies-c-114.html">Moncler Hoodies</a> <a href="http://www.domoncler.com/moncler-sweater-c-115.html">Moncler Sweater</a> <a href="http://www.domoncler.com/moncler-polo-shirt-c-117.html">Moncler Polo Shirt</a> <a href="http://www.domoncler.com/moncler-down-jacket-c-111.html">Moncler Down Jacket</a> <a href="http://www.domoncler.com/moncler-boots-c-116.html">Moncler Boots</a> <a href="http://www.domoncler.com/moncler-cap-c-86.html">Moncler Cap</a> <a href="http://www.domoncler.com/moncler-down-jacket-c-111.html">Moncler Down Jacket</a> <a href="http://www.domoncler.com/moncler-pants-c-120.html">Moncler Pants</a> <a href="http://www.domoncler.com/moncler-shorts-c-119.html">Moncler Shorts</a> <a href="http://www.domoncler.com/moncler-kids-c-105.html">Moncler Kids</a> <a href="http://www.leatherbelstaff.com/">Belstaff Leather</a> <a href="http://www.leatherbelstaff.com/belstaff-bag-c-68.html">Belstaff Bag</a>  <a href="http://www.leatherbelstaff.com/belstaff-leather-jacket-c-75.html">Belstaff Leather Jacket</a> <a href="http://www.leatherbelstaff.com/leather-jacket-men-c-75_76.html">Belstaff Leather Jacket Men</a> <a href="http://www.leatherbelstaff.com/leather-jacket-women-c-75_79.html">Belstaff Leather Jacket Women</a> <a href="http://www.leatherbelstaff.com/jacket-women-c-73_88.html">Belstaff Women Jacket</a>', 3, '2012-01-10', 0),
(28, '', '', '', 0, '2014-06-15', 0),
(29, '', '', '', 0, '2014-08-05', 0),
(30, '', '', '', 0, '2014-08-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `directory`
--

CREATE TABLE IF NOT EXISTS `directory` (
  `DirId` int(100) NOT NULL AUTO_INCREMENT,
  `CatId` int(4) NOT NULL,
  `DistId` int(2) NOT NULL,
  `Company` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Fax` varchar(100) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Web` varchar(100) NOT NULL,
  `SpecialNote` text NOT NULL,
  `Date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`DirId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `directory`
--

INSERT INTO `directory` (`DirId`, `CatId`, `DistId`, `Company`, `Address`, `Phone`, `Fax`, `Email`, `Web`, `SpecialNote`, `Date`) VALUES
(1, 1, 51, 'Baash o Bet', 'AHsfjkaHHSC', 'SLKVNDKLASVN', 'SA,D,VNALSN', 'SHAHID_ICTDPB@YAHOO.COM', '', 'A;SD,V;''AF,B;', '2009-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `DistId` int(10) NOT NULL AUTO_INCREMENT,
  `DistName` text NOT NULL,
  `DivId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DistId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DistId`, `DistName`, `DivId`) VALUES
(1, '&#2478;&#2494;&#2470;&#2494;&#2480;&#2496;&#2474;&#2497;&#2480;', 1),
(2, '&#2475;&#2480;&#2495;&#2470;&#2474;&#2497;&#2480;', 1),
(3, '&#2480;&#2494;&#2460;&#2476;&#2494;&#2524;&#2496;', 1),
(71, 'à¦°à¦‚à¦ªà§à¦°', 12),
(5, '&#2454;&#2497;&#2482;&#2472;&#2494;', 3),
(6, '&#2486;&#2480;&#2496;&#2527;&#2468;&#2474;&#2497;&#2480;', 1),
(7, '&#2455;&#2507;&#2474;&#2494;&#2482;&#2455;&#2462;&#2509;&#2460;', 1),
(8, '&#2466;&#2494;&#2453;&#2494;', 1),
(9, '&#2478;&#2494;&#2472;&#2495;&#2453;&#2455;&#2462;&#2509;&#2460;', 1),
(10, '&#2472;&#2494;&#2480;&#2494;&#2527;&#2472;&#2455;&#2462;&#2509;&#2460;', 1),
(11, '&#2478;&#2497;&#2472;&#2509;&#2488;&#2495;&#2455;&#2462;&#2509;&#2460;', 1),
(12, '&#2480;&#2494;&#2460;&#2486;&#2494;&#2489;&#2496;', 2),
(13, '&#2458;&#2494;&#2433;&#2474;&#2494;&#2439; &#2472;&#2476;&#2494;&#2476;&#2455;&#2462;&#2509;&#2460;', 2),
(14, '&#2488;&#2495;&#2482;&#2503;&#2463;', 4),
(15, '&#2476;&#2480;&#2495;&#2486;&#2494;&#2482;', 6),
(16, '&#2477;&#2507;&#2482;&#2494;', 6),
(17, '&#2474;&#2463;&#2497;&#2527;&#2494;&#2454;&#2494;&#2482;&#2496;', 6),
(18, '&#2453;&#2453;&#2509;&#2488;&#2476;&#2494;&#2460;&#2494;&#2480;', 5),
(19, '&#2480;&#2494;&#2457;&#2494;&#2478;&#2494;&#2463;&#2495;', 5),
(20, '&#2455;&#2494;&#2460;&#2496;&#2474;&#2497;&#2480;', 1),
(21, '&#2476;&#2494;&#2472;&#2509;&#2470;&#2480;&#2476;&#2472;', 5),
(22, '&#2461;&#2494;&#2482;&#2453;&#2494;&#2464;&#2496;', 6),
(23, '&#2479;&#2486;&#2507;&#2480;', 3),
(24, '&#2474;&#2495;&#2480;&#2507;&#2460;&#2474;&#2497;&#2480;', 6),
(25, '&#2476;&#2480;&#2455;&#2497;&#2472;&#2494;', 6),
(26, '&#2461;&#2495;&#2472;&#2494;&#2439;&#2470;&#2489;', 3),
(27, '&#2458;&#2463;&#2509;&#2463;&#2455;&#2509;&#2480;&#2494;&#2478;', 5),
(28, '&#2478;&#2527;&#2478;&#2472; &#2488;&#2495;&#2434;&#2489;', 1),
(29, '&#2453;&#2497;&#2478;&#2495;&#2482;&#2509;&#2482;&#2494;', 5),
(30, '&#2472;&#2507;&#2527;&#2494;&#2454;&#2494;&#2482;&#2496;', 5),
(31, '&#2472;&#2503;&#2468;&#2509;&#2480;&#2453;&#2507;&#2472;&#2494;', 1),
(32, '&#2472;&#2480;&#2488;&#2495;&#2434;&#2470;&#2496;', 1),
(33, '&#2453;&#2495;&#2486;&#2507;&#2480;&#2455;&#2462;&#2509;&#2460;', 1),
(34, '&#2475;&#2503;&#2472;&#2496;', 5),
(35, '&#2472;&#2496;&#2482;&#2475;&#2494;&#2478;&#2494;&#2480;&#2496;', 2),
(36, '&#2476;&#2494;&#2455;&#2503;&#2480;&#2489;&#2494;&#2463;', 3),
(37, '&#2463;&#2494;&#2457;&#2509;&#2455;&#2494;&#2439;&#2482;', 1),
(38, '&#2470;&#2495;&#2472;&#2494;&#2460;&#2474;&#2497;&#2480;', 2),
(39, '&#2464;&#2494;&#2453;&#2497;&#2480;&#2455;&#2494;&#2433;&#2451;', 2),
(40, '&#2478;&#2503;&#2489;&#2503;&#2480;&#2474;&#2497;&#2480;', 3),
(41, '&#2460;&#2494;&#2478;&#2494;&#2482;&#2474;&#2497;&#2480;', 1),
(42, '&#2453;&#2497;&#2487;&#2509;&#2463;&#2495;&#2527;&#2494;', 3),
(43, '&#2488;&#2494;&#2468;&#2453;&#2509;&#2487;&#2496;&#2480;&#2494;', 3),
(44, '&#2488;&#2497;&#2472;&#2494;&#2478;&#2455;&#2462;&#2509;&#2460;', 4),
(45, '&#2489;&#2476;&#2495;&#2455;&#2462;&#2509;&#2460;', 4),
(46, '&#2478;&#2508;&#2482;&#2477;&#2496; &#2476;&#2494;&#2460;&#2494;&#2480;', 4),
(47, '&#2486;&#2503;&#2480;&#2474;&#2497;&#2480;', 1),
(48, '&#2482;&#2453;&#2509;&#2487;&#2496;&#2474;&#2497;&#2480;', 5),
(49, '&#2472;&#2451;&#2455;&#2494;&#2433;', 2),
(50, '&#2472;&#2494;&#2463;&#2507;&#2480;', 2),
(51, '&#2454;&#2494;&#2455;&#2524;&#2494;&#2459;&#2524;&#2495;', 5),
(52, '&#2476;&#2509;&#2480;&#2494;&#2489;&#2509;&#2478;&#2467;&#2476;&#2494;&#2524;&#2495;&#2527;&#2494;', 5),
(53, '&#2458;&#2494;&#2433;&#2470;&#2474;&#2497;&#2480;', 5),
(54, '&#2458;&#2497;&#2527;&#2494;&#2465;&#2494;&#2457;&#2509;&#2455;&#2494;', 3),
(55, '&#2478;&#2494;&#2455;&#2497;&#2480;&#2494;', 3),
(56, '&#2476;&#2455;&#2497;&#2524;&#2494;', 2),
(57, '&#2455;&#2494;&#2439;&#2476;&#2494;&#2472;&#2509;&#2471;&#2494;', 2),
(58, '&#2460;&#2527;&#2474;&#2497;&#2480;&#2489;&#2494;&#2463;', 2),
(59, '&#2453;&#2497;&#2524;&#2495;&#2455;&#2509;&#2480;&#2494;&#2478;', 2),
(60, '&#2482;&#2494;&#2482;&#2478;&#2472;&#2495;&#2480;&#2489;&#2494;&#2463;', 2),
(61, '&#2474;&#2494;&#2476;&#2472;&#2494;', 2),
(62, '&#2474;&#2462;&#2509;&#2458;&#2455;&#2524;', 2),
(63, '&#2488;&#2495;&#2480;&#2494;&#2460;&#2455;&#2462;&#2509;&#2460;', 2),
(64, '&#2472;&#2524;&#2494;&#2439;&#2482;', 3),
(66, 'à¦¸à§€à¦¤à¦¾à¦•à§à¦¨à§à¦¡', 5),
(67, 'à¦«à¦°à¦¿à¦¦à¦ªà§à¦°', 3),
(68, 'à¦®à¦¾à¦¦à¦¾à¦°à§€à¦ªà§à¦°', 3),
(69, 'à¦•à§à¦·à§à¦Ÿà¦¿à§Ÿà¦¾', 2),
(70, 'à¦¸à¦¾à¦­à¦¾à¦°', 1),
(72, 'à¦¨à§€à¦²à¦«à¦¾à¦®à¦¾à¦°à§€', 12),
(73, 'à¦¦à¦¿à¦¨à¦¾à¦œà¦ªà§à¦°', 12),
(74, 'à¦•à§à§œà¦¿à¦—à§à¦°à¦¾à¦®', 12),
(75, 'à¦²à¦¾à¦²à¦®à¦¨à¦¿à¦°à¦¹à¦¾à¦Ÿ', 12),
(76, 'à¦ à¦¾à¦•à§à¦°à¦—à¦¾à¦à¦“', 12),
(77, 'à¦—à¦¾à¦‡à¦¬à¦¾à¦¨à§à¦§à¦¾', 12);

-- --------------------------------------------------------

--
-- Table structure for table `division`
--

CREATE TABLE IF NOT EXISTS `division` (
  `DivId` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `DivName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DivId`),
  UNIQUE KEY `divName` (`DivName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `division`
--

INSERT INTO `division` (`DivId`, `DivName`) VALUES
(1, '&#2466;&#2494;&#2453;&#2494;'),
(2, '&#2480;&#2494;&#2460;&#2486;&#2494;&#2489;&#2496;'),
(3, '&#2454;&#2497;&#2482;&#2472;&#2494;'),
(4, '&#2488;&#2495;&#2482;&#2503;&#2463;'),
(5, '&#2458;&#2463;&#2509;&#2463;&#2455;&#2509;&#2480;&#2494;&#2478;'),
(6, '&#2476;&#2480;&#2495;&#2486;&#2494;&#2482;'),
(12, 'à¦°à¦‚à¦ªà§à¦°');

-- --------------------------------------------------------

--
-- Table structure for table `lcategory`
--

CREATE TABLE IF NOT EXISTS `lcategory` (
  `LCatId` int(5) NOT NULL AUTO_INCREMENT,
  `LCatName` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LCatId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `lcategory`
--

INSERT INTO `lcategory` (`LCatId`, `LCatName`) VALUES
(5, 'à¦¨à¦¾à¦°à§€ à¦‰à¦¦à§à¦¯à§‹à¦•à§à¦¤à¦¾ à¦‹à¦£'),
(6, 'à¦‰à§Žà¦¸à¦¬ à¦‹à¦£'),
(7, 'à¦•à§à¦·à§à¦¦à§à¦° à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§€/à¦‰à¦¦à§à¦¯à§‹à¦•à§à¦¤à¦¾ à¦‹à¦£'),
(8, 'à¦²à¦¾à¦‡à¦Ÿ à¦‡à¦¨à§à¦œà§à¦žà¦¿à¦¨à¦¿à§Ÿà¦¾à¦°à¦¿à¦‚ à¦‹à¦£'),
(9, '');

-- --------------------------------------------------------

--
-- Table structure for table `lproduct`
--

CREATE TABLE IF NOT EXISTS `lproduct` (
  `LPId` int(11) NOT NULL AUTO_INCREMENT,
  `LCatId` int(11) NOT NULL,
  `SourceId` int(11) NOT NULL,
  `SourceName` int(11) NOT NULL,
  `ProductName` text COLLATE utf8_unicode_ci NOT NULL,
  `LoanAmount` text COLLATE utf8_unicode_ci NOT NULL,
  `InterestRate` text COLLATE utf8_unicode_ci NOT NULL,
  `Collateral` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LPId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `lproduct`
--

INSERT INTO `lproduct` (`LPId`, `LCatId`, `SourceId`, `SourceName`, `ProductName`, `LoanAmount`, `InterestRate`, `Collateral`) VALUES
(3, 5, 5, 5, 'à¦¨à¦¾à¦°à§€ à¦œà¦¾à¦—à¦°à¦£', 'à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨ à§§ à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾ à¦¹à¦¤à§‡ à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à§§à§« à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤à¥¤', 'à¦¬à¦¾à¦°à§à¦·à¦¿à¦• à§§à§¦%', 'à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à§« (à¦ªà¦¾à¦š) à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦‹à¦£à§‡à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦¸à¦¹à¦¾à§Ÿà¦• à¦œà¦¾à¦®à¦¾à¦¨à¦¤à§‡à¦° à¦¬à¦¾à¦§à§à¦¯à¦¬à¦¾à¦§à¦•à¦¤à¦¾ à¦¨à§‡à¦‡à¥¤'),
(4, 7, 5, 5, 'à¦‰à¦‡à¦­à¦¾à¦°à¦¸ à¦²à§‹à¦¨', 'à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨ à§¨ à¦²à¦•à§à¦· à¦¥à§‡à¦•à§‡ à§«à§¦ à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤à¥¤', ' à¦ªà§à¦°à¦¤à¦¿à¦¯à§‹à¦—à§€à¦¤à¦¾à¦®à§‚à¦²à¦• ', 'à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à§¨ (à¦¦à§à¦‡) à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦‹à¦£à§‡à¦° à¦œà¦¨à§à¦¯ à¦•à§‹à¦¨à§‹ à¦¸à¦¹à¦¾à§Ÿà¦• à¦œà¦¾à¦®à¦¾à¦¨à¦¤à§‡à¦° à¦¬à¦¾à¦§à§à¦¯à¦¬à¦¾à¦§à¦•à¦¤à¦¾ à¦¨à§‡à¦‡à¥¤'),
(5, 7, 5, 6, 'à¦•à§à¦·à§à¦¦à§à¦° à¦“ à¦®à¦¾à¦à¦¾à¦°à§€ à¦¶à¦¿à¦²à§à¦ª  ', 'à§«à§¦,à§¦à§¦à§¦ (à¦ªà¦žà§à¦šà¦¾à¦¶ à¦¹à¦¾à¦œà¦¾à¦°) à¦Ÿà¦¾à¦•à¦¾ à¦¥à§‡à¦•à§‡ à§§,à§«à§¦,à§¦à§¦,à§¦à§¦à§¦ (à¦à¦• à¦•à§‹à¦Ÿà¦¿ à¦ªà¦žà§à¦šà¦¾à¦¶ à¦²à¦•à§à¦·) à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤à¥¤', 'à¦ªà§à¦°à¦•à¦²à§à¦ª/à¦®à§‡à§Ÿà¦¾à¦¦à§€ à¦‹à¦£-à§§à§¨%à¥¤ à¦šà¦²à¦¤à¦¿ à¦®à§‚à¦²à¦§à¦£ à¦‹à¦£-à§§à§©%à¥¤ ', 'à¦¨à¦¿à¦œà¦¸à§à¦¬ à¦œà¦®à¦¿à¦¤à§‡ à¦¸à§à¦¥à¦¾à¦ªà¦¿à¦¤à¦¬à§à¦¯ à¦ªà§à¦°à¦•à¦²à§à¦ªà§‡à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦•à§‹à¦¨ à¦¸à¦¹à¦¾à§Ÿà¦• à¦œà¦¾à¦®à¦¾à¦¨à¦¤à§‡à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦¨à§‡à¦‡, à¦¤à¦¬à§‡ à¦­à¦¾à§œà¦¾ à¦•à¦°à¦¾ à¦œà¦¾à§Ÿà¦—à¦¾à§Ÿ à¦¸à§à¦¥à¦¾à¦ªà¦¿à¦¤à¦¬à§à¦¯ à¦ªà§à¦°à¦•à¦²à§à¦ªà§‡à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦‹à¦£à¦¸à§€à¦®à¦¾à¦° à¦¨à§‚à¦¨à§à¦¯à¦¤à¦® à¦¦à¦¿à¦—à§à¦¨ à¦¸à¦¹à¦¾à§Ÿà¦• à¦œà¦¾à¦®à¦¾à¦¨à¦¤ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¥¤ '),
(6, 5, 5, 0, 'à¦­à¦¾à¦—à§à¦¯à¦¬à¦¤à§€ à¦‹à¦£', 'à§¨.à§¦à§¦ à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾ à¦¥à§‡à¦•à§‡ à¦…à¦¨à¦§à¦¿à¦• à§«à§¦.à§¦à§¦ à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤', '', ''),
(7, 7, 5, 0, 'à¦¸à§à¦®à¦² à¦à¦¨à§à¦Ÿà¦¾à¦°à¦ªà§à¦°à¦¾à¦‡à¦œà§‡à¦¸ à¦¡à§‡à¦­à§‡à¦²à¦ªà¦®à§‡à¦¨à§à¦Ÿ à¦ªà§à¦°à¦œà§‡à¦•à§à¦Ÿ (à¦à¦¸à¦‡à¦¡à¦¿à¦ªà¦¿)', 'à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨ à§¨à§«,à§¦à§¦à§¦/- à¦Ÿà¦¾à¦•à¦¾ à¦à¦¬à¦‚ à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à§­,à§«à§¦,à§¦à§¦à§¦/- à¦Ÿà¦¾à¦•à¦¾', 'à§§à§¨% (à¦•à§à¦°à¦®à¦¾à¦¹à§à¦°à¦¾à¦¸à¦®à¦¾à¦¨ à¦ªà¦¦à§à¦§à¦¤à¦¿)', 'à§§,à§¦à§¦,à§¦à§¦à§¦/- à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦‹à¦£ à¦¸à¦¹à¦¾à§Ÿà¦• à¦œà¦¾à¦®à¦¾à¦¨à¦¤à¦®à§à¦•à§à¦¤'),
(8, 5, 5, 0, 'à¦®à¦¹à¦¿à¦²à¦¾à¦¦à§‡à¦° à¦‹à¦£ à¦¦à¦¾à¦¨ à¦•à¦°à§à¦®à¦¸à§‚à¦šà§€', 'à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š à¦‹à¦£ à¦¸à§€à¦®à¦¾ à§§,à§¦à§¦,à§¦à§¦à§¦.à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾', 'à§§à§§% (à¦¸à§à¦¦à§‡à¦° à¦¹à¦¾à¦° à¦¸à¦®à§Ÿà§‡ à¦¸à¦®à§Ÿà§‡ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨à¦¯à§‹à¦—à§à¦¯)', 'à§«à§¦,à§¦à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾ à¦ªà¦°à§à¦¯à¦¨à§à¦¤ à¦œà¦¾à¦®à¦¾à¦¨à¦¤ à¦¬à¦¿à¦¹à§€à¦¨');

-- --------------------------------------------------------

--
-- Table structure for table `lsource`
--

CREATE TABLE IF NOT EXISTS `lsource` (
  `LSrcId` int(5) NOT NULL AUTO_INCREMENT,
  `LSrcName` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`LSrcId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `lsource`
--

INSERT INTO `lsource` (`LSrcId`, `LSrcName`) VALUES
(5, 'à¦¬à§à¦¯à¦¾à¦‚à¦•'),
(6, 'à¦à¦¨ à¦œà¦¿ à¦“');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE IF NOT EXISTS `main` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Menu` tinyint(1) NOT NULL,
  `Details` longtext,
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`Id`, `Menu`, `Details`, `Status`) VALUES
(10, 1, '&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <table border="0" cellpadding="2" cellspacing="3" width="500"><tbody><tr><td bgcolor="#c9fad0"><div align="center"><a href="#BusinessStart">à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦¶à§à¦°à§à¦° à¦ªà¦°à¦¾à¦®à¦°à§à¦¶</a></div></td><td bgcolor="#c9fad0"><div align="center"><a href="#BusinessIdea">à¦•à¦¿à¦›à§ à¦¸à¦®à§à¦­à¦¾à¦¬à¦¨à¦¾à¦®à§Ÿ à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà¦¿à¦• à¦§à¦¾à¦°à¦¨à¦¾</a></div></td><td bgcolor="#c9fad0"><div align="center"><a href="#Marketing">à¦ªà§à¦°à¦šà¦¾à¦° à¦“ à¦¬à¦¿à¦ªà¦¨à¦¨</a></div></td></tr><tr><td bgcolor="#c9fad0"><div align="center"><a href="#Knowledge">à¦¡à¦¿à¦œà¦¾à¦‡à¦¨</a></div></td><td bgcolor="#c9fad0"><div align="center"><a href="http://www.sme.com.bd/Main.php?Id=2">à¦‹à¦£ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤&nbsp; à¦¤à¦¥à§à¦¯<br></a></div></td><td bgcolor="#c9fad0"><div align="center"><a href="#Contact">à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦¨</a></div></td></tr></tbody></table><p><a name="BusinessStart"></a></p><h3><font size="+2"><a name="BusinessStart"></a></font><a name="BusinessStart"><link rel="File-List" href="file:///C:%5CDOCUME%7E1%5Csharmin%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml"><link rel="themeData" href="file:///C:%5CDOCUME%7E1%5Csharmin%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx"><link rel="colorSchemeMapping" href="file:///C:%5CDOCUME%7E1%5Csharmin%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml"><!--[if gte mso 9]><xml> <w:WordDocument>  <w:View>Normal</w:View>  <w:Zoom>0</w:Zoom>  <w:TrackMoves/>  <w:TrackFormatting/>  <w:PunctuationKerning/>  <w:ValidateAgainstSchemas/>  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>  <w:DoNotPromoteQF/>  <w:LidThemeOther>EN-US</w:LidThemeOther>  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>  <w:Compatibility>   <w:BreakWrappedTables/>   <w:SnapToGridInCell/>   <w:WrapTextWithPunct/>   <w:UseAsianBreakRules/>   <w:DontGrowAutofit/>   <w:SplitPgBreakAndParaMark/>   <w:DontVertAlignCellWithSp/>   <w:DontBreakConstrainedForcedTables/>   <w:DontVertAlignInTxbx/>   <w:Word11KerningPairs/>   <w:CachedColBalance/>  </w:Compatibility>  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  <m:mathPr>   <m:mathFont m:val="Cambria Math"/>   <m:brkBin m:val="before"/>   <m:brkBinSub m:val="--"/>   <m:smallFrac m:val="off"/>   <m:dispDef/>   <m:lMargin m:val="0"/>   <m:rMargin m:val="0"/>   <m:defJc m:val="centerGroup"/>   <m:wrapIndent m:val="1440"/>   <m:intLim m:val="subSup"/>   <m:naryLim m:val="undOvr"/>  </m:mathPr></w:WordDocument></xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"  DefSemiHidden="true" DefQFormat="false" DefPriority="99"  LatentStyleCount="267">  <w:LsdException Locked="false" Priority="0" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>  <w:LsdException Locked="false" Priority="9" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>  <w:LsdException Locked="false" Priority="10" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Title"/>  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>  <w:LsdException Locked="false" Priority="11" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>  <w:LsdException Locked="false" Priority="22" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>  <w:LsdException Locked="false" Priority="20" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>  <w:LsdException Locked="false" Priority="59" SemiHidden="false"   UnhideWhenUsed="false" Name="Table Grid"/>  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>  <w:LsdException Locked="false" Priority="1" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 1"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>  <w:LsdException Locked="false" Priority="34" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>  <w:LsdException Locked="false" Priority="29" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>  <w:LsdException Locked="false" Priority="30" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 1"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 2"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 2"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 3"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 3"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 4"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 4"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 5"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 5"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 6"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 6"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>  <w:LsdException Locked="false" Priority="19" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>  <w:LsdException Locked="false" Priority="21" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>  <w:LsdException Locked="false" Priority="31" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>  <w:LsdException Locked="false" Priority="32" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>  <w:LsdException Locked="false" Priority="33" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/> </w:LatentStyles></xml><![endif]--><style><!-- /* Font Definitions */ @font-face	{font-family:"Cambria Math";	panose-1:2 4 5 3 5 4 6 3 2 4;	mso-font-charset:0;	mso-generic-font-family:roman;	mso-font-pitch:variable;	mso-font-signature:-1610611985 1107304683 0 0 159 0;}@font-face	{font-family:SutonnyMJ;	mso-font-charset:0;	mso-generic-font-family:auto;	mso-font-pitch:variable;	mso-font-signature:3 0 0 0 1 0;}@font-face	{font-family:SolaimanLipi;	panose-1:3 0 6 9 0 0 0 0 0 0;	mso-font-charset:0;	mso-generic-font-family:script;	mso-font-pitch:fixed;	mso-font-signature:-2147385337 8192 0 0 147 0;} /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal	{mso-style-unhide:no;	mso-style-qformat:yes;	mso-style-parent:"";	margin:0in;	margin-bottom:.0001pt;	mso-pagination:widow-orphan;	font-size:12.0pt;	font-family:"Times New Roman","serif";	mso-fareast-font-family:"Times New Roman";}.MsoChpDefault	{mso-style-type:export-only;	mso-default-props:yes;	font-size:10.0pt;	mso-ansi-font-size:10.0pt;	mso-bidi-font-size:10.0pt;}@page Section1	{size:8.5in 11.0in;	margin:1.0in 1.0in 1.0in 1.0in;	mso-header-margin:.5in;	mso-footer-margin:.5in;	mso-paper-source:0;}div.Section1	{page:Section1;}--></style><!--[if gte mso 10]><style> /* Style Definitions */ table.MsoNormalTable	{mso-style-name:"Table Normal";	mso-tstyle-rowband-size:0;	mso-tstyle-colband-size:0;	mso-style-noshow:yes;	mso-style-priority:99;	mso-style-qformat:yes;	mso-style-parent:"";	mso-padding-alt:0in 5.4pt 0in 5.4pt;	mso-para-margin:0in;	mso-para-margin-bottom:.0001pt;	mso-pagination:widow-orphan;	font-size:10.0pt;	font-family:"Times New Roman","serif";}</style><![endif]--><span style="font-family: solaimanlipi;"></span></a></h3><h3><a name="BusinessStart"><span style="font-family: solaimanlipi;"><font style="background-color: rgb(255, 255, 255); color: rgb(0, 102, 0);" size="+1">à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦¶à§à¦°à§à¦° à¦ªà¦°à¦¾à¦®à¦°à§à¦¶:</font><br><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;">à¦à¦•à¦Ÿà¦¿ à¦¬à§à¦¯à¦¬à¦¸à¦¾ </span></font></span><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;">à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨ à¦¶à§à¦°à§ à¦•à¦°à¦¾à¦° à¦ªà§‚à¦°à§à¦¬à§‡ à¦‰à¦¦à§à¦¯à§‹à¦•à§à¦¤à¦¾à¦•à§‡ à¦ªà§à¦°à¦¥à¦®à§‡à¦‡ à¦¸à§à¦¥à¦¿à¦° à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡ à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦ªà§</span></font></span><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;">à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à¦Ÿà¦¿à¦° à¦®à¦¾à¦²à¦¿à¦•à¦¾à¦¨à¦¾ à¦—à¦ à¦¨à¦¤à¦¨à§à¦¤à§à¦° à¦•à¦¿à¦°à§‚à¦ª à¦¹à¦¬à§‡à¥¤ à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¦à§‡à¦¶à§‡ à¦¨à¦¿à¦®à§à¦¨à§‹à¦•à§à¦¤ à¦šà¦¾à¦° à¦§à¦°à¦¨à§‡à¦° à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨ à¦ªà§à¦°à¦šà¦²à¦¿à¦¤ à¦†à¦›à§‡</span><br style="font-weight: normal;"></font></span></a></h3><div style="margin-left: 40px;"><a style="color: rgb(0, 0, 0);" name="BusinessStart"><span style="font-family: solaimanlipi;"><font size="-0"><span style="font-weight: normal;">à§§. à¦à¦• à¦®à¦¾à¦²à¦¿à¦•à¦¾à¦¨à¦¾/à¦¬à§à¦¯à¦¾à¦•à§à¦¤à¦¿ à¦®à¦¾à¦²à¦¿à¦•à¦¾à¦¨à¦¾</span></font></span></a><a name="BusinessStart"><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;"> à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨</span></font></span></a><br style="font-weight: normal; color: rgb(0, 0, 0);"><a style="color: rgb(0, 0, 0);" name="BusinessStart"><span style="font-family: solaimanlipi;"><font size="-0"><span style="font-weight: normal;">à§¨. à¦…à¦‚à¦¶à§€à¦¦à¦¾à¦°à§€</span></font></span></a><a name="BusinessStart"><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;"> à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨</span></font></span></a><a style="color: rgb(0, 0, 0);" name="BusinessStart"><span style="font-family: solaimanlipi;"><font size="-0"><span style="font-weight: normal;">&nbsp; &nbsp;</span></font></span></a><br style="font-weight: normal; color: rgb(0, 0, 0);"><a style="color: rgb(0, 0, 0);" name="BusinessStart"><span style="font-family: solaimanlipi;"><font size="-0"><span style="font-weight: normal;">à§©. à¦¯à§Œà¦¥à¦®à§‚à¦²à¦§à¦¨à§€</span></font></span></a><a name="BusinessStart"><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;"> à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨</span></font></span></a><a style="color: rgb(0, 0, 0);" name="BusinessStart"><span style="font-family: solaimanlipi;"><font size="-0"><span style="font-weight: normal;"> (à¦ªà§à¦°à¦¾à¦‡à¦­à§‡à¦Ÿ à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡ à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à§€/ à¦ªà¦¾à¦¬à¦²à¦¿à¦• à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡ à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à§€)&nbsp;&nbsp; </span></font></span></a><br><a name="BusinessStart"><span style="font-family: solaimanlipi;"></span></a></div><div style="text-align: justify; font-family: solaimanlipi;"><p class="MsoNormal" style="margin-left: 0.25in; font-family: solaimanlipi;"><br><font size="-0"><span style=""><span style="font-size: 14pt;"></span></span></font></p><p class="MsoNormal" style="margin-left: 0.25in; font-family: solaimanlipi; color: rgb(102, 0, 204);"><font size="-0"><span style=""><span style="font-size: 14pt;"><br></span></span></font></p><div style="margin-left: 40px;"><font style="font-family: solaimanlipi; color: rgb(51, 0, 51);" size="+1"><span style="font-weight: bold;">à¦à¦•à¦Ÿà¦¿ à¦¸à¦«à¦² à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦¶à§à¦°à§ à¦•à¦°à¦¤à§‡ à¦¹à¦²à§‡ à¦¨à¦¿à¦šà§‡à¦° à¦§à¦¾à¦ªà¦—à§à¦²à§‹ à¦…à¦¨à§à¦¸à¦°à¦£ à¦•à¦°à¦¾ à¦‰à¦šà¦¿à¦¤:</span></font><br style="font-family: solaimanlipi;"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à§§.&nbsp;&nbsp;&nbsp; à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦§à¦°à¦¨à§‡à¦° à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦¨ à¦¸à§‡ à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦¨à¦¿à¦¤à§‡ à¦¹à¦¬à§‡à¥¤ à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à§‡:&nbsp; </span><br style="font-family: solaimanlipi; color: rgb(0, 0, 0);"></div><div style="margin-left: 80px; font-family: solaimanlipi; color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">â€¢&nbsp;&nbsp;&nbsp; à¦•à§‡à¦¨à¦¾- à¦¬à§‡à¦šà¦¾/à¦Ÿà§à¦°à§‡à¦¡ (à¦–à§à¦šà¦°à¦¾ - à¦ªà¦¾à¦‡à¦•à¦¾à¦°à§€)</span><br style="color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">â€¢&nbsp;&nbsp;&nbsp; à¦‰à§Žà¦ªà¦¾à¦¦à¦¨à¦®à§à¦–à§€ </span><br style="color: rgb(0, 0, 0);"><span style="color: rgb(0, 0, 0);">â€¢&nbsp;&nbsp;&nbsp; à¦¸à§‡à¦¬à¦¾ à¦®à§‚à¦²à¦•</span><br></div><div style="margin-left: 40px;"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à§¨.&nbsp;&nbsp;&nbsp; à¦†à¦ªà¦¨à¦¾à¦° à¦¬à§à¦¯à¦¬à¦¸à¦¾</span><a name="BusinessStart"><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;"> à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨</span></font></span></a><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);"> à¦¬à¦¾ à¦•à¦¾à¦°à¦–à¦¾à¦¨à¦¾ à¦•à§‹à¦¥à¦¾à§Ÿ à¦¹à¦¬à§‡ à¦¸à§‡à¦‡ à¦¸à§à¦¥à¦¾à¦¨ à¦¨à¦¿à¦°à§à¦¦à¦¿à¦·à§à¦Ÿ à¦•à¦°à§à¦¨à¥¤</span><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);"> </span><br style="font-family: solaimanlipi; color: rgb(0, 0, 0);"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à§©.&nbsp;&nbsp;&nbsp; à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦à¦•à¦•à¦­à¦¾à¦¬à§‡ à¦¨à¦¾à¦•à¦¿ à¦¯à§Œà¦¥à¦®à¦¾à¦²à¦¿à¦•à¦¾à¦¨à¦¾à§Ÿ à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦•à¦°à¦¬à§‡à¦¨ à¦¤à¦¾ à¦¸à§à¦¥à¦¿à¦° à¦•à¦°à§à¦¨à¥¤</span><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">&nbsp;&nbsp;&nbsp; </span><br style="font-family: solaimanlipi; color: rgb(0, 0, 0);"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à§ª.&nbsp;&nbsp;&nbsp; à¦†à¦ªà¦¨à¦¾à¦°</span><a name="BusinessStart"><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;"> à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾</span></font></span></a><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à¦¨à§‡à¦° à¦¨à¦¾à¦® à¦•à¦¿ à¦¹à¦¬à§‡ à¦¤à¦¾ à¦¸à§à¦¥à¦¿à¦° à¦•à¦°à§à¦¨à¥¤</span><br style="font-family: solaimanlipi; color: rgb(0, 0, 0);"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à§«.&nbsp;&nbsp;&nbsp; à¦¯à§Œà¦¥ à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦•à¦°à¦¤à§‡ à¦šà¦¾à¦‡à¦²à§‡ à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦¨à¦¿à¦¤à§‡ à¦¹à¦¬à§‡ à¦¯à§‡, à¦•à¦¿ à¦§à¦°à¦¨à§‡à¦° à¦¯à§Œà¦¥ à¦®à¦¾à¦²à¦¿à¦•à¦¾à¦¨à¦¾ à¦†à¦ªà¦¨à¦¿ à¦—à§à¦°à¦¹à¦£ à¦•à¦°à¦¬à§‡à¦¨à¥¤ </span><br style="font-family: solaimanlipi; color: rgb(0, 0, 0);"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à§¬.&nbsp;&nbsp;&nbsp; à¦¶à¦¹à¦° à¦¬à¦¾ à¦—à§à¦°à¦¾à¦® à¦¯à§‡à¦–à¦¾à¦¨à§‡à¦‡ à¦†à¦ªà¦¨à¦¾à¦°</span><a name="BusinessStart"><span style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: normal;"> à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨</span></font></span></a><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);"> à¦—à¦ à¦¿à¦¤ à¦¹à§‹à¦• à¦¨à¦¾ à¦•à§‡à¦¨ à¦†à¦ªà¦¨à¦¿ à¦®à¦¿à¦‰à¦¨à¦¿à¦¸à§à¦¯à¦¿à¦ªà¦¾à¦² à¦•à¦°à§à¦¤à§ƒà¦ªà¦•à§à¦· à¦…à¦¥à¦¬à¦¾ à¦¸à§à¦¥à¦¾à¦¨à§€à§Ÿ à¦•à¦°à§à¦¤à§ƒà¦ªà¦•à§à¦·à§‡à¦° à¦•à¦¾à¦› à¦¥à§‡à¦•à§‡ à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤</span><br style="font-family: solaimanlipi; color: rgb(0, 0, 0);"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à§­.&nbsp;&nbsp;&nbsp; à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§‡à¦° à¦§à¦°à¦¨ à¦à¦¬à¦‚ à¦ªà¦°à¦¿à¦§à¦¿ à¦ªà¦°à§à¦¯à¦¾à¦²à§‹à¦šà¦¨à¦¾ à¦•à¦°à§‡ à¦®à§‚à¦²à¦§à¦¨à§‡à¦° à¦‰à§Žà¦¸ à¦à¦¬à¦‚ à¦ªà¦°à¦¿à¦®à¦¾à¦¨ à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦£ à¦•à¦°à§à¦¨à¥¤</span><br><br><font style="color: rgb(0, 102, 0); font-weight: bold;" size="+1"><span style="font-family: solaimanlipi;"></span></font><br><font style="color: rgb(51, 0, 51); font-weight: bold;" size="+1"><span style="font-family: solaimanlipi;">à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦¨à¦¿à¦¬à¦¨à§à¦§à§€à¦•à¦°à¦£à§‡à¦° à¦—à§à¦°à§à¦¤à§à¦¬ à¦“ à¦¸à§à¦¬à¦¿à¦§à¦¾:</span></font><br><font style="color: rgb(0, 0, 0);" size="-0">à¦¬à§ˆà¦§à¦­à¦¾à¦¬à§‡ à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à¦¾à¦° à¦œà¦¨à§à¦¯ à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦¨à¦¿à¦¬à¦¨à§à¦§à¦£ à¦•à¦°à¦¾à¦Ÿà¦¾ à¦—à§à¦°à§à¦¤à§à¦¬à¦ªà§‚à¦°à§à¦£à¥¤ à¦¸à¦°à¦•à¦¾à¦° à¦ªà§à¦°à¦¦à¦¤à§à¦¤ à¦¸à§à¦¯à§‹à¦— à¦¸à§à¦¬à¦¿à¦§à¦¾à¦—à§à¦²à§‹ à¦ªà§‡à¦¤à§‡ à¦¹à¦²à§‡ à¦°à§‡à¦œà¦¿à¦·à§à¦Ÿà§à¦°à§‡à¦¶à¦¨ à¦à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦¹à§Ÿà¥¤</font><br><br style="font-weight: bold;"><span style="color: rgb(0, 0, 102); font-weight: bold;">à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦¨à¦¿à¦¬à¦¨à§à¦§à§€à¦•à¦°à¦£ à¦à¦¬à¦‚ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° :</span><br style="color: rgb(51, 0, 0);"></div><table style="width: 485px; height: 192px; font-weight: bold; color: rgb(102, 0, 0); margin-left: 40px;" border="1" cellpadding="3" cellspacing="0"><tbody><tr><td><font size="-1"><span style="font-family: solaimanlipi; color: rgb(102, 0, 0); font-weight: bold;">à¦•à§à¦°à¦®à¦¿à¦• à¦¨à¦‚</span><br></font></td><td><font size="-1"><span style="font-weight: bold;"><span style="color: rgb(102, 0, 0);">à¦à¦• à¦®à¦¾à¦²à¦¿à¦•à¦¾à¦¨à¦¾ à¦•à¦¾à¦°à¦¬à¦¾à¦°&nbsp;&nbsp;</span>&nbsp; </span><br></font></td><td style="color: rgb(102, 0, 0); font-weight: bold;"><font size="-1">à¦…à¦‚à¦¶à§€à¦¦à¦¾à¦°à§€ à¦•à¦¾à¦°à¦¬à¦¾à¦°</font></td><td style="color: rgb(102, 0, 0); font-weight: bold;"><font size="-1">à¦¯à§Œà¦¥à¦®à§‚à¦²à¦§à¦¨à§€ à¦•à¦¾à¦°à¦¬à¦¾à¦°(à¦ªà§à¦°à¦¾à¦‡à¦­à§‡à¦Ÿ à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡)</font></td><td><font size="-1"><span style="color: rgb(102, 0, 0); font-weight: bold;">à¦¯à§Œà¦¥à¦®à§‚à¦²à¦§à¦¨à§€ à¦•à¦¾à¦°à¦¬à¦¾à¦° (à¦ªà¦¾à¦¬à¦²à¦¿à¦• à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡ à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à§€)</span><br></font></td></tr><tr><td><font size="-1"><span style="font-weight: bold;">à§§</span><br></font></td><td><font size="-1"><span style="color: rgb(51, 51, 51); font-weight: bold;">à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸</span><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸</span><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸</span><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸</span><br></font></td></tr><tr><td><font size="-1"><span style="font-weight: bold;">à§¨</span><br></font></td><td><font size="-1"><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦Ÿà¦¿à¦¨ à¦¨à¦®à§à¦¬à¦°</span><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦Ÿà¦¿à¦¨ à¦¨à¦®à§à¦¬à¦°</span><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦Ÿà¦¿à¦¨ à¦¨à¦®à§à¦¬à¦°</span><br></font></td></tr><tr><td><font size="-1"><span style="font-weight: bold;">à§©</span><br></font></td><td><font size="-1"><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦…à¦‚à¦¶à§€à¦¦à¦¾à¦°à§€à¦¤à§à¦¬ à¦¦à¦²à¦¿à¦²</span><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦¨à¦¾à¦® à¦¨à¦¿à¦¬à¦¨à§à¦§à§€à¦•à¦°à¦¨</span><br></font></td><td><font size="-1"><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦¨à¦¾à¦® à¦¨à¦¿à¦¬à¦¨à§à¦§à§€à¦•à¦°à¦¨</span><br></font></td></tr></tbody></table><div style="margin-left: 40px;"><br><font style="font-weight: bold; color: rgb(51, 0, 51);" size="+1"><span style="font-family: solaimanlipi;">à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à§€ à¦°à§‡à¦œà¦¿à¦·à§à¦Ÿà§à¦°à§‡à¦¶à¦¨ à¦¬à¦¾ à¦¬à§à¦¯à¦¬à¦¸à¦¾ </span></font><font style="font-weight: bold; color: rgb(51, 0, 51);" size="+1"><span style="font-family: solaimanlipi;">à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦°</span></font><font style="font-weight: bold; color: rgb(51, 0, 51);" size="+1"><span style="font-family: solaimanlipi;"> à¦œà¦¨à§à¦¯ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦†à¦²à§‹à¦šà¦¨à¦¾ à¦•à¦°à¦¾ à¦¹à¦²à§‹à¦ƒ</span></font><br><font style="color: rgb(0, 204, 204);" size="-0"><font style="color: rgb(0, 102, 0); font-weight: bold;" size="+1"><span style="font-family: solaimanlipi;"></span></font></font><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font style="color: rgb(0, 0, 153);" size="+1"> à§§.<span style="font-weight: bold;">à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸:</span></font></span></font><br style="font-family: solaimanlipi;"></div><div style="margin-left: 80px;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">à¦¨à¦¿à¦®à§à¦¨à¦²à¦¿à¦–à¦¿à¦¤ à¦…à¦«à¦¿à¦¸ à¦¥à§‡à¦•à§‡ (à¦†à¦ªà¦¨à¦¾à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¯à¦¾ à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯) à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦«à¦°à¦® à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à§à¦¨à¥¤ </span></font><br style="font-family: solaimanlipi;"></div><div style="margin-left: 120px;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">â€¢&nbsp;&nbsp;&nbsp; à¦‡à¦‰à¦¨à¦¿à§Ÿà¦¨ à¦ªà¦°à¦¿à¦·à¦¦ </span></font><br style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">â€¢&nbsp;&nbsp;&nbsp; à¦‰à¦ªà¦œà§‡à¦²à¦¾ à¦ªà¦°à¦¿à¦·à¦¦</span></font><br style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">â€¢&nbsp;&nbsp;&nbsp; à¦ªà§Œà¦°à¦¸à¦­à¦¾ à¦¬à¦¾ </span></font><br style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">â€¢&nbsp;&nbsp;&nbsp; à¦œà§‡à¦²à¦¾ à¦ªà¦°à¦¿à¦·à¦¦</span></font><br style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">â€¢&nbsp;&nbsp;&nbsp; à¦¸à¦¿à¦Ÿà¦¿ à¦•à¦°à¦ªà§‹à¦°à§‡à¦¶à¦¨ </span></font><br style="font-family: solaimanlipi;"></div><div style="margin-left: 40px;"><br style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">&nbsp;&nbsp;&nbsp;&nbsp; <font style="color: rgb(153, 0, 0);" size="+2"><span style="font-weight: bold;">*</span></font><span style="color: rgb(0, 0, 0); font-weight: bold;">à¦¸à¦¿à¦Ÿà¦¿ à¦•à¦°à¦ªà§‹à¦°à§‡à¦¶à¦¨ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡</span></span></font><br style="font-family: solaimanlipi;"><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi; color: rgb(0, 0, 0);">à¦¸à¦¿à¦Ÿà¦¿ à¦•à¦°à¦ªà§‹à¦°à§‡à¦¶à¦¨ à¦¥à§‡à¦•à§‡ à¦¦à§à¦‡ à¦§à¦°à¦¨à§‡à¦° à¦«à¦°à¦® à¦¸à¦°à¦¬à¦°à¦¾à¦¹ à¦•à¦°à¦¾ à¦¹à§Ÿ à¥¤ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¨ à¦¯à§‡ à¦œà§‹à¦¨ à¦à¦° à¦…à¦°à§à¦¨à§à¦¤à¦­à§‚à¦•à§à¦¤, à¦ à¦œà§‹à¦¨à¦¾à¦² à¦…à¦«à¦¿à¦¸ à¦¥à§‡à¦•à§‡ à¦• à¦«à¦°à¦® à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤ à¦• à¦«à¦°à¦® à¦à¦° à¦®à§‚à¦²à§à¦¯ à§§à§¦ à¦Ÿà¦¾à¦•à¦¾à¥¤ à¦à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¬à§à¦¯à¦¬à¦¸à¦¾ à¦à¦° à¦ªà§à¦°à¦•à¦¾à¦°à¦­à§‡à¦¦ à¦…à¦¨à§à¦¯à¦¾à§Ÿà§€ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦…à¦™à§à¦•à§‡à¦° à¦«à¦¿ (à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨ à§§à§«à§¦à§¦&nbsp; ) à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯à¥¤ à¦• à¦«à¦°à¦® à¦à¦° à¦¸à¦¾à¦¥à§‡ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦° à¦à¦¬à¦‚ à¦›à¦¬à¦¿ à¦¸à¦¹ à¦œà¦®à¦¾ à¦¦à§‡à¦¬à¦¾à¦° à¦ªà¦° à¦®à§‚à¦² à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¬à¦‡ à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¾ à¦¯à¦¾à¦¬à§‡à¥¤</span></font><br><br><a href="http://www.sme.com.bd/download/Trade%20License%28city%29.pdf"><font style="font-weight: bold;" size="+1"><span style="color: rgb(102, 0, 0); font-family: solaimanlipi;">à¦¸à¦¿à¦Ÿà¦¿ à¦•à¦°à¦ªà§‹à¦°à§‡à¦¶à¦¨à§‡à¦° à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸à§‡à¦° à¦• à¦«à¦°à¦® à¦à¦° à¦¨à¦®à§‚à¦¨à¦¾ à¦¦à§‡à¦–à§‡ à¦¨à¦¿à¦¨</span></font></a><br style="color: rgb(0, 0, 0);"><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font style="font-weight: bold; color: rgb(102, 0, 0);" size="+2">*</font><font style="font-weight: bold; color: rgb(0, 0, 0);" size="-0"><span style="font-family: solaimanlipi;">à¦œà§‡à¦²à¦¾ à¦¬à¦¾ à¦‰à¦ªà¦œà§‡à¦²à¦¾ à¦¬à¦¾ à¦ªà§Œà¦°à¦¸à¦­à¦¾ à¦¬à¦¾ à¦‡à¦‰à¦¨à¦¿à§Ÿà¦¨ à¦ªà¦°à¦¿à¦·à¦¦ à¦à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡</span></font><br><font style="color: rgb(0, 0, 0);" size="-0">à¦ªà§Œà¦°à¦¸à¦­à¦¾ à¦¬à¦¾ à¦‡à¦‰à¦¨à¦¿à§Ÿà¦¨ à¦ªà¦°à¦¿à¦·à¦¦ à¦¥à§‡à¦•à§‡ à¦¸à¦¾à¦§à¦¾à¦°à¦¨à¦¤ à¦à¦•à¦Ÿà¦¿ à¦«à¦°à¦®à¦‡ à¦¸à¦°à¦¬à¦°à¦¾à¦¹ à¦¬à¦¾ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à¦¾ à¦¹à§Ÿ à¦à¦¬à¦‚ à¦¸à§‡à¦‡ à¦«à¦°à¦®à¦Ÿà¦¿ à¦®à§‚à¦²à¦¤ à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦«à¦°à¦®à¥¤ à¦ªà§à¦°à¦¥à¦®à§‡à¦‡ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦°, à¦¦à¦°à¦–à¦¾à¦¸à§à¦¤à¦•à¦¾à¦°à§€à¦° à§© à¦•à¦ªà¦¿ à¦ªà¦¾à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦¸à¦¾à¦‡à¦œà§‡à¦° à¦›à¦¬à¦¿à¦¸à¦¹ à¦¨à¦¿à¦°à§à¦¦à¦¿à¦·à§à¦Ÿ à¦«à¦¿ (à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨ à§§à§¦à§¦ à¦Ÿà¦¾à¦•à¦¾) à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à§‡ à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¾ à¦¯à¦¾à¦¬à§‡ à¥¤</font><br><br><a href="http://www.sme.com.bd/download/Trade%20License%28union%29.pdf"><font style="font-weight: bold;" size="+1"><span style="color: rgb(102, 0, 0);">à¦‰à¦ªà¦œà§‡à¦²à¦¾ à¦¬à¦¾ à¦ªà§Œà¦°à¦¸à¦­à¦¾ à¦¬à¦¾ à¦‡à¦‰à¦¨à¦¿à§Ÿà¦¨ à¦ªà¦°à¦¿à¦·à¦¦à§‡à¦° à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦«à¦°à¦® à¦à¦° à¦¨à¦®à§‚à¦¨à¦¾ à¦¦à§‡à¦–à§‡ à¦¨à¦¿à¦¨</span></font></a><br><br style="font-family: solaimanlipi;"><font style="color: rgb(153, 0, 0); font-weight: bold;" size="+2"><span style="font-family: solaimanlipi;">&nbsp; ***à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¬à¦‡ à¦¬à¦¾ à¦«à¦°à¦® à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¾à¦° à¦¸à¦®à§Ÿ à¦¬à¦¿à¦¸à§à¦¤à¦¾à¦°à¦¿à¦¤ à¦œà§‡à¦¨à§‡ à¦¨à¦¿à¦¨à¥¤</span></font><br><br></div><div style="margin-left: 80px;"><font style="color: rgb(0, 0, 153); font-weight: bold;" size="+1">à§¨.à¦¸à¦¾à¦‡à¦¨à¦¬à§‹à¦°à§à¦¡ à¦«à¦¿:</font><font size="+1"><br><span style="color: rgb(0, 0, 0);">à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¬à¦‡ à¦¬à¦¾ à¦«à¦°à¦® à¦¸à¦‚à¦—à§à¦°à¦¹ à¦•à¦°à¦¾à¦° à¦¸à¦®à§Ÿ à¦¸à¦¾à¦‡à¦¨à¦¬à§‹à¦°à§à¦¡ à¦«à¦¿ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤</span><br style="color: rgb(0, 0, 0);"><table style="width: 447px; height: 65px; color: rgb(0, 0, 0);" border="1" cellpadding="3" cellspacing="0"><tbody><tr><td><font style="color: rgb(0, 0, 0); font-weight: bold; text-decoration: underline;" size="-0">à¦…à¦‚à¦¶à§€à¦¦à¦¾à¦°à§€ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦†à¦°à¦“ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨:</font><br><font style="font-weight: bold;" size="-0">*</font><font size="-0">à§§à§«à§¦ (à¦à¦•à¦¶à¦¤ à¦ªà¦žà§à¦šà¦¾à¦¶) à¦Ÿà¦¾à¦•à¦¾à¦° à¦·à§à¦Ÿà§à¦¯à¦¾à¦®à§à¦ªà§‡ à¦…à¦‚à¦¶à§€à¦¦à¦¾à¦°à¦—à¦¨ à¦•à¦°à§à¦¤à§ƒà¦• à¦šà§à¦•à§à¦¤à¦¿ à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¨à¥¤<br></font><font style="font-weight: bold;" size="-0">*</font><font size="-0">à¦ªà§à¦°à¦¤à§à¦¯à§‡à¦• à¦…à¦‚à¦¶à§€à¦¦à¦¾à¦°à¦—à¦¨ à¦à¦° à§© à¦•à¦ªà¦¿ à¦ªà¦¾à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦¸à¦¾à¦‡à¦œà§‡à¦° à¦›à¦¬à¦¿à¥¤</font><br></td></tr></tbody></table><br style="color: rgb(0, 0, 0);"><br style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 102); font-weight: bold;" size="+1"><span style="font-family: solaimanlipi;">à§©.à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¨à¦¬à¦¾à§Ÿà¦¨:</span></font><br style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 0);" size="-0">à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¨à¦¬à¦¾à§Ÿà¦¨ à¦à¦•à¦Ÿà¦¿ à¦¨à¦¿à§Ÿà¦®à¦¿à¦¤ à¦ªà§à¦°à¦•à§à¦°à¦¿à§Ÿà¦¾à¥¤ <br></font></font><div style="margin-left: 40px; color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 0);" size="-0">â€¢&nbsp;&nbsp;&nbsp; à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦à¦° à¦®à§‡à§Ÿà¦¾à¦¦ à§« à¦¬à¦›à¦° à¦ªà§à¦° à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦«à¦¿ à¦œà¦®à¦¾à¥¤<br></font><font style="color: rgb(0, 0, 0);" size="-0">â€¢&nbsp;&nbsp;&nbsp; à¦¨à¦¿à¦°à§à¦¦à¦¿à¦·à§à¦Ÿ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦«à¦¿ à¦œà¦®à¦¾ à¦¦à¦¿à¦²à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ à¦¨à¦¬à¦¾à§Ÿà¦¨ à¦¹à§Ÿà§‡ à¦¯à¦¾à¦¬à§‡à¥¤</font><br></div></div><div style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 102, 0);" size="+1"><font size="+1"><span style="font-weight: bold;"></span></font></font><font style="color: rgb(0, 102, 0);" size="+1"><font size="+1"><a>_____________________________________________________________________________<br></a></font></font><br></div><div style="margin-left: 40px;"><div style="margin-left: 40px;"><br></div></div><div style="text-align: left; color: rgb(0, 0, 0);"><font size="+1"><font style="font-weight: bold; color: rgb(0, 102, 0);" size="+1"><span style="font-family: solaimanlipi;"><a name="BusinessIdea"></a><a>à¦•à¦¿à¦›à§ à¦¸à¦®à§à¦­à¦¾à¦¬à¦¨à¦¾à¦®à§Ÿ à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà¦¿à¦• à¦§à¦¾à¦°à¦¨à¦¾</a></span><a></a></font><a></a></font><a><br></a></div><div style="margin-left: 40px;"><a><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0">*</font></font></a><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0"><a href="http://www.sme.com.bd/download/Computer%20Training.pdf">à¦•à¦®à§à¦ªà¦¿à¦‰à¦Ÿà¦¾à¦° à¦Ÿà§à¦°à§‡à¦¨à¦¿à¦‚ à¦¸à§‡à¦¨à§à¦Ÿà¦¾à¦°</a> <br>*<a href="http://www.sme.com.bd/download/Digital%20Studio.pdf">à¦¡à¦¿à¦œà¦¿à¦Ÿà¦¾à¦² à¦·à§à¦Ÿà§à¦¡à¦¿à¦“</a><br>*<a href="http://www.sme.com.bd/download/Poultry.pdf">à¦ªà§‹à¦²à§à¦Ÿà§à¦°à¦¿ </a></font><br><br></font></div><font style="color: rgb(0, 102, 0);" size="+1"><font size="+1"><span style="font-weight: bold;"><a name="Marketing"></a><a>______________________________________________________________________<br><br>à¦ªà§à¦°à¦šà¦¾à¦° à¦“ à¦¬à¦¿à¦ªà¦¨à¦¨</a></span></font></font><a><br></a><div style="margin-left: 40px;"><a><font style="color: rgb(0, 0, 0);" size="+1"><span style="font-weight: bold;">à¦ªà¦£à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾à¦° à¦¬à¦¾à¦œà¦¾à¦° à¦¤à§ˆà¦°à§€ à¦•à¦°à¦¾</span><br><font size="-0">à¦¯à§‡à¦•à§‹à¦¨ à¦ªà¦£à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¤à¦¾à¦° à¦—à§à¦°à§à¦¤à§à¦¬ à¦à¦¬à¦‚ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿà¦¤à¦¾ à¦•à¦¾à¦·à§à¦Ÿà¦®à¦¾à¦°-à¦à¦° à¦•à¦¾à¦›à§‡ à¦¤à§à¦²à§‡ à¦§à¦°à¦¤à§‡ à¦¹à§Ÿ| à¦ à¦¬à§à¦¯à¦¾à¦ªà¦¾à¦°à§‡ à¦¯à¦¤à¦¬à§‡à¦¶à§€ à¦ªà§à¦°à¦šà¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à¦¬à§‡ à¦¤à¦¤à¦¬à§‡à¦¶à§€ à¦•à¦¾à¦·à§à¦Ÿà¦®à¦¾à¦° à¦à¦‡ à¦ªà¦£à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾à¦° à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦œà¦¾à¦¨à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨ à¦à¦¬à¦‚ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à§‡ à¦†à¦—à§à¦°à¦¹à§€ à¦¹à¦¬à§‡à¦¨| à¦ªà¦£à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾ à¦¸à¦®à§‚à¦¹ à¦¥à§‡à¦•à§‡ à¦¤à¦¾à¦°à¦¾ à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦‰à¦ªà¦•à§ƒà¦¤ à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à¦¬à§‡à¦¨ à¦¤à¦¾ à¦¸à¦ à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦¤à§à¦²à§‡ à¦§à¦°à¦¾à¦° à¦œà¦¨à§à¦¯ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦§à¦°à¦¨à§‡à¦° à¦ªà§à¦°à¦šà¦¾à¦° à¦®à¦¾à¦§à§à¦¯à¦® à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¾&nbsp; à¦¯à§‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¥¤<br>à¦¯à§‡à¦•à§‹à¦¨ à¦ªà¦£à§à¦¯à§‡à¦° à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾à¦° à¦ªà§à¦°à¦šà¦¾à¦° à¦à¦° à¦œà¦¨à§à¦¯ à¦¨à¦¿à¦®à§à¦¨à§‹à¦•à§à¦¤ à¦§à¦¾à¦ªà¦¸à¦®à§‚à¦¹ à¦…à¦¨à§à¦¸à¦°à¦¨ à¦•à¦°à¦¤à§‡ à¦¹à§Ÿà¦ƒ <br></font></font></a><div style="margin-left: 40px; color: rgb(0, 0, 0);"><ul style="color: rgb(0, 0, 0);"><li><a><font size="+1"><font size="-0">&nbsp;à¦•à¦¾à¦·à§à¦Ÿà¦®à¦¾à¦° à¦•à¦¾à¦°à¦¾ à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¤à¦¾ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦•à¦°à¦¾ </font></font></a></li><li><a><font size="+1"><font size="-0">&nbsp;à¦•à¦¾à¦·à§à¦Ÿà¦®à¦¾à¦°à¦¦à§‡à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦¸à¦®à§‚à¦¹ à¦•à¦¿ à¦¤à¦¾ à¦¬à§‡à¦° à¦•à¦°à¦¾ à¦¬à¦¾ à¦œà¦¾à¦¨à¦¾</font></font></a></li><li><a><font size="+1"><font size="-0">&nbsp;à¦†à¦ªà¦¨à¦¾à¦° à¦ªà¦£à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾ à¦¸à¦®à§‚à¦¹ à¦•à¦¾à¦·à§à¦Ÿà¦®à¦¾à¦°à¦¦à§‡à¦° à¦•à¦¿ à¦•à¦¿ à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡ à¦¤à¦¾ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦•à¦°à¦¾ </font></font></a></li><li><a><font size="+1"><font size="-0">à¦¨à¦¿à¦°à§à¦§à¦¾à¦°à¦¿à¦¤ à¦•à¦¾à¦·à§à¦Ÿà¦®à¦¾à¦° à¦—à§à¦°à§à¦ª-à¦à¦° à¦œà¦¨à§à¦¯ à¦šà¦¿à¦¹à§à¦¨à¦¿à¦¤ à¦¸à§à¦¬à¦¿à¦§à¦¾à¦¸à¦®à§‚à¦¹ à¦¯à¦¥à¦¾à¦¯à¦¥ à¦­à¦¾à¦¬à§‡ à¦ªà§à¦°à¦šà¦¾à¦°à§‡à¦° à¦¬à§à¦¯à¦¬à¦¸à§à¦¥à¦¾ à¦•à¦°à¦¾ </font></font></a></li></ul><a><br></a></div><a><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0">à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦§à¦°à¦¨à§‡à¦° à¦ªà¦¨à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾à¦° à¦ªà§à¦°à¦šà¦¾à¦°à§‡à¦° à¦œà¦¨à§à¦¯ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦®à¦¾à¦§à§à¦¯à¦® à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨, à¦¯à¦¾ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà¦¨à§à¦¯à§‡à¦° à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€, à¦•à§à¦°à§‡à¦¤à¦¾, à¦¸à¦‚à¦¶à§à¦²à¦¿à¦·à§à¦Ÿ à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦° à¦¸à¦¾à¦¥à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— </font>à¦¸à§à¦¥à¦¾à¦ªà¦¨ à¦•à¦°à¦¬à§‡à¥¤ à¦¬à¦¿à¦ªà¦¨à¦¨ à¦¬à¦¾ à¦®à¦¾à¦°à§à¦•à§‡à¦Ÿà¦¿à¦‚ à¦•à§Ÿà§‡à¦• à¦§à¦°à¦¨à§‡à¦° à¦¹à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¥¤ à¦¯à§‡à¦®à¦¨: <br></font></a><div style="margin-left: 40px;"><a><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0"><span style="font-weight: bold;">à§§.à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤ à¦¬à¦¿à¦•à§à¦°à§Ÿ/à¦¸à¦°à¦¾à¦¸à¦°à¦¿ à¦¬à¦¿à¦ªà¦¨à¦¨ (Direct Marketing)</span></font></font><br style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0">à¦¬à¦¿à¦ªà¦¨à¦¨à¦•à¦¾à¦°à§€ à¦¨à¦¿à¦œà§‡ à¦•à§à¦°à§‡à¦¤à¦¾, à¦—à§‹à¦·à§à¦ à§€ à¦¬à¦¾ à¦¸à¦®à§à¦­à¦¾à¦¬à§à¦¯ à¦•à§à¦°à§‡à¦¤à¦¾à¦¦à§‡à¦° à¦•à¦¾à¦›à§‡ à¦—à¦¿à§Ÿà§‡ à¦®à§à¦–à§‡ à¦ªà¦£à§à¦¯ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦¬à¦¿à¦ªà¦¨à¦¨ à¦šà¦¾à¦²à¦¾à¦²à§‡ à¦¤à¦¾ à¦¹à¦šà§à¦›à§‡ à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦—à¦¤ à¦¬à¦¿à¦•à§à¦°à§Ÿ à¦¬à¦¾ à¦ªà¦¾à¦°à¦¸à§‹à¦¨à¦¾à¦² à¦¬à¦¾ à¦¡à¦¾à¦‡à¦°à§‡à¦•à§à¦Ÿ à¦¸à§‡à¦²à¦¿à¦‚à¥¤</font></font><br style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0"><font size="-0"><span style="font-weight: bold;">à§¨.à¦œà¦¨à¦¸à¦‚à¦¯à§‹à¦— (Publicity):</span></font></font></font><br style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0"><font size="-0">à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨ à¦¬à¦¾ à¦ªà¦£à§à¦¯à§‡à¦° à¦¸à§à¦¨à¦¾à¦® à¦…à¦•à§à¦·à§à¦¨à§à¦¨ à¦“ à¦¸à¦®à§à¦­à¦¾à¦¬à§à¦¯ à¦•à§à¦°à§‡à¦¤à¦¾à¦¦à§‡à¦° à¦•à¦¾à¦›à§‡ à¦¤à§à¦²à§‡ à¦§à¦°à¦¤à§‡ à¦œà¦¨à¦¸à¦‚à¦¯à§‹à¦— à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤</font></font></font><br style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0"><font size="-0"><font size="-0"><span style="font-weight: bold;">à§©.à¦¬à¦¿à¦œà§à¦žà¦¾à¦ªà¦¨ (Advertisement):</span></font></font></font></font><br style="color: rgb(0, 0, 0);"><font style="color: rgb(0, 0, 0);" size="+1"><font size="-0"><font size="-0"><font size="-0">à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¬à¦¿à¦œà§à¦žà¦¾à¦ªà¦¨ à¦ªà§à¦°à¦šà¦¾à¦° à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿà¥¤ à¦¯à§‡à¦®à¦¨:</font></font></font></font><br style="color: rgb(0, 0, 0);"></a><div style="margin-left: 40px; color: rgb(0, 0, 0);"><a><font style="font-weight: bold; color: rgb(0, 0, 0);" size="+1">â€¢</font><font style="color: rgb(0, 0, 0);" size="-0"><font style="font-weight: bold;" size="-0"> à¦¬à§à¦°à¦¶à¦¿à¦‰à¦°/ à¦²à¦¿à¦«à¦²à§‡à¦Ÿ</font> - à¦à¦•à¦Ÿà¦¿ à¦ªà¦¾à¦¤à¦¾à§Ÿ à¦ªà¦¨à§à¦¯à§‡à¦° à¦¸à¦®à§à¦ªà§‚à¦°à§à¦£ à¦¬à¦°à§à¦£à¦¨à¦¾ à¦²à¦¿à¦–à§‡ à¦¤à¦¾ à¦¬à¦¿à¦²à¦¿ à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿà¥¤<br><font style="font-weight: bold;" size="-0"><span style="font-family: solaimanlipi;"></span></font></font><font style="font-family: solaimanlipi; font-weight: bold; color: rgb(0, 0, 0);" size="-0"><font size="+1">â€¢</font> </font><font style="color: rgb(0, 0, 0);" size="-0"><font style="font-weight: bold;" size="-0">à¦«à§à¦²à¦¾à§Ÿà¦¾à¦°/à¦¸à§à¦Ÿà§€à¦•à¦¾à¦°</font> - à¦à¦•à¦Ÿà¦¿ à¦ªà¦¾à¦¤à¦¾à§Ÿ à¦ªà¦¨à§à¦¯à§‡à¦° à¦—à§à¦°à§à¦¤à§à¦¬à¦ªà§‚à¦°à§à¦£ à¦“ à¦¬à¦¿à¦¶à§‡à¦· à¦¬à§ˆà¦¶à¦¿à¦·à§à¦Ÿà§à¦¯ à¦“ à¦¸à§à¦¬à¦¿à¦§à¦¾ à¦¸à¦®à§‚à¦¹ à¦—à§à¦²à§‹ à¦²à¦¿à¦–à§‡ à¦¤à¦¾ à¦¬à¦¿à¦²à¦¿ à¦•à¦°à¦¾ à¦¯à¦¾à§Ÿà¥¤<br><span style="font-weight: bold;"></span></font><font style="font-weight: bold; color: rgb(0, 0, 0);" size="+1"><font size="-0"><font size="+1">â€¢</font></font></font><font style="color: rgb(0, 0, 0);" size="-0"><span style="font-weight: bold;"> à¦¸à§à¦¥à¦¾à¦¨à§€à§Ÿ à¦•à§à¦¯à¦¾à¦¬à¦² à¦šà§à¦¯à¦¾à¦¨à§‡à¦²à§‡ à¦¬à¦¿à¦œà§à¦žà¦¾à¦ªà¦¨</span> - à¦…à¦²à§à¦ª à¦–à¦°à¦šà§‡ à¦¸à§à¦¥à¦¾à¦¨à§€à§Ÿ à¦¡à¦¿à¦¶ à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§€à¦¦à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à§‡ à¦•à§à¦¯à¦¾à¦¬à¦² à¦šà§à¦¯à¦¾à¦¨à§‡à¦²à§‡ à¦¬à¦¿à¦œà§à¦žà¦¾à¦ªà¦¨ à¦¦à¦¿à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤<br></font><font style="font-weight: bold; color: rgb(0, 0, 0);" size="+1">â€¢</font><font size="-0"><font style="font-weight: bold; color: rgb(0, 0, 0);" size="-0"> à¦¸à§à¦ªà¦¨à§à¦¸à¦°</font><span style="color: rgb(0, 0, 0);"> - à¦¸à§à¦¥à¦¾à¦¨à§€à§Ÿà¦­à¦¾à¦¬à§‡ à¦¬à¦¿à¦­à¦¿à¦¨à§à¦¨ à¦…à¦¨à§à¦·à§à¦ à¦¾à¦¨, à¦–à§‡à¦²à¦¾à¦§à§à¦²à¦¾à¦° à¦Ÿà§à¦°à§à¦¨à¦¾à¦®à§‡à¦¨à§à¦Ÿ à¦‡à¦¤à§à¦¯à¦¾à¦¦à¦¿ à¦¸à§à¦ªà¦¨à§à¦¸à¦° à¦•à¦°à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà¦¨à§à¦¯ à¦¬à¦¾ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦ªà§à¦°à¦šà¦¾à¦° à¦šà¦¾à¦²à¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤</span><br></font></a></div></div></div><div style="margin-left: 40px;"><a><br><br></a><table style="width: 732px; height: 192px;" border="1" cellpadding="3" cellspacing="0"><tbody><tr><td><font style="color: rgb(102, 0, 0);" size="+2"><span style="font-weight: bold; font-family: solaimanlipi;">à¦Ÿà¦¿à¦ªà¦¸:</span></font><br><font style="color: rgb(0, 0, 0);" size="-0"><font style="color: rgb(0, 0, 0); font-weight: bold;" size="+2">â€¢</font>&nbsp;&nbsp;&nbsp; à¦¨à¦¤à§à¦¨ à¦•à§à¦°à§‡à¦¤à¦¾ à¦¸à¦¬à¦šà§‡à§Ÿà§‡ à¦¬à§‡à¦¶à§€ à¦†à¦•à§ƒà¦·à§à¦Ÿ à¦¹à¦¬à§‡ à¦¤à¦–à¦¨à¦‡ à¦¯à¦–à¦¨ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà¦¨à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾ à¦¸à¦®à§à¦ªà¦°à§à¦•à§‡ à¦œà¦¨à¦—à¦¨ à¦†à¦²à§‹à¦šà¦¨à¦¾ à¦•à¦°à¦¬à§‡ à¦¬à¦¾ à¦•à¦¥à¦¾ à¦¬à¦²à¦¬à§‡à¥¤ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà¦¨à§à¦¯ à¦¬à¦¾ à¦¸à§‡à¦¬à¦¾à¦° à¦—à§à¦¨à¦—à¦¤ à¦®à¦¾à¦¨ à¦­à¦¾à¦² à¦¹à¦²à§‡ à¦®à¦¾à¦¨à§à¦· à¦ªà¦°à¦¸à§à¦ªà¦° à¦à¦Ÿà¦¾ à¦¨à¦¿à§Ÿà§‡ à¦•à¦¥à¦¾ à¦¬à¦²à¦²à§‡ (Word of Mouth) à¦¨à¦¤à§à¦¨ à¦•à§à¦°à§‡à¦¤à¦¾à¦°à¦¾ à¦†à¦•à§ƒà¦·à§à¦Ÿ à¦¹à¦¬à§‡à¥¤</font><br><font style="color: rgb(0, 0, 0);" size="-0"><font style="font-weight: bold;" size="+2">â€¢</font>&nbsp;&nbsp;&nbsp; à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦à¦•à¦Ÿà¦¿ à¦¬à¦¿à¦ªà¦¨à¦¨ à¦•à§Œà¦¶à¦² à¦¬à¦¾ à¦ªà§à¦°à¦šà¦¾à¦° à¦®à¦¾à¦§à§à¦¯à¦® à¦¯à§‡ à¦¸à¦¬à¦¸à¦®à§Ÿ à¦¸à¦¬à¦§à¦°à¦¨à§‡à¦° à¦¬à§à¦¯à¦¬à¦¸à¦¾à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦ à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦•à¦¾à¦œ à¦•à¦°à¦¬à§‡ à¦¤à¦¾ à¦ à¦¿à¦• à¦¨à§Ÿà¥¤ à¦ªà¦¾à¦²à¦¾à¦•à§à¦°à¦®à§‡ à¦ªà§à¦°à¦šà¦¾à¦°à§‡à¦° à¦¸à¦•à¦² à¦®à¦¾à¦§à§à¦¯à¦® à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦° à¦•à¦°à§‡ à¦¦à§‡à¦–à§à¦¨ à¦•à§‹à¦¨à¦Ÿà¦¿ à¦•à¦–à¦¨ à¦­à¦¾à¦²à§‹ à¦«à¦²à¦¾à¦«à¦² à¦¦à§‡à§Ÿà¥¤</font><br><font style="color: rgb(0, 0, 0);" size="-0"><font style="font-weight: bold;" size="+2">â€¢</font>&nbsp;&nbsp;&nbsp; &nbsp;à¦­à§‡à¦¬à§‡ à¦šà¦¿à¦¨à§à¦¤à§‡ à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ à¦—à§à¦°à¦¹à¦¨ à¦•à¦°à§à¦¨à¥¤ à¦•à§à¦°à§‡à¦¤à¦¾à¦¦à§‡à¦° à¦•à¦¾à¦› à¦¥à§‡à¦•à§‡ à¦¨à¦¿à¦°à¦¬à¦šà§à¦›à¦¿à¦¨à§à¦¨à¦­à¦¾à¦¬à§‡ à¦®à¦¤à¦¾à¦®à¦¤ à¦—à§à¦°à¦¹à¦¨ à¦•à¦°à§à¦¨ à¦à¦¬à¦‚ à¦¤à¦¾à¦° à¦­à¦¿à¦¤à§à¦¤à¦¿à¦¤à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦•à¦¾à¦°à§à¦¯à¦ªà§à¦°à¦£à¦¾à¦²à§€ à¦¸à§à¦¥à¦¿à¦° à¦•à¦°à§à¦¨à¥¤</font></td></tr></tbody></table><a><br></a></div><font style="color: rgb(0, 102, 0); font-weight: bold;" size="+1"><a style="font-family: solaimanlipi;">à¦¡</a><span style="font-family: solaimanlipi;"><a name="Knowledge"></a><a>à¦¿à¦œà¦¾à¦‡à¦¨à¦ƒ<br><br></a></span><span style="font-family: solaimanlipi;"><a><br>_____________________________________________________________________<br style="font-family: solaimanlipi;"></a></span><span style="font-family: solaimanlipi;"><a name="Contact"></a><a>à¦ªà§à¦°à¦¶à¦¿à¦•à§à¦·à¦¨à¦ƒ</a></span><a></a></font><a><br></a><div style="margin-left: 40px;"><a><br></a></div><div style="margin-left: 40px;"><a><font size="+1"><br><br></font></a></div></div>''', 2);
INSERT INTO `main` (`Id`, `Menu`, `Details`, `Status`) VALUES
(2, 2, '<table border="0" cellpadding="2" cellspacing="2" width="400"><tbody><tr><td align="center" bgcolor="#c9fad0"><a href="#Why">à¦‹à¦¨ à¦•à§‡à¦¨ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨?</a></td><td align="center" bgcolor="#c9fad0"><a href="#WhatToDo">à¦‹à¦¨à§‡à¦° à¦‰à§Žà¦¸ - à¦•à¦¿ à¦•à¦°à¦£à§€à§Ÿ?</a></td></tr><tr><td align="center" bgcolor="#c9fad0"><a href="#HowTo">à¦‹à¦£ à¦ªà¦¾à¦“à§Ÿà¦¾à¦° à¦¸à¦¹à¦œ à¦‰à¦ªà¦¾à§Ÿ</a></td><td align="center" bgcolor="#c9fad0"><a href="#Contact">à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—</a></td></tr></tbody></table><p><a name="Why"></a></p><h3>à¦‹à¦¨ à¦•à§‡à¦¨ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨?<span style="font-family: solaimanlipi;"></span></h3><p><link rel="File-List" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml"><link rel="themeData" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx"><link rel="colorSchemeMapping" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml"><!--[if gte mso 9]><xml> <w:WordDocument>  <w:View>Normal</w:View>  <w:Zoom>0</w:Zoom>  <w:TrackMoves/>  <w:TrackFormatting/>  <w:PunctuationKerning/>  <w:ValidateAgainstSchemas/>  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>  <w:DoNotPromoteQF/>  <w:LidThemeOther>EN-US</w:LidThemeOther>  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>  <w:Compatibility>   <w:BreakWrappedTables/>   <w:SnapToGridInCell/>   <w:WrapTextWithPunct/>   <w:UseAsianBreakRules/>   <w:DontGrowAutofit/>   <w:SplitPgBreakAndParaMark/>   <w:DontVertAlignCellWithSp/>   <w:DontBreakConstrainedForcedTables/>   <w:DontVertAlignInTxbx/>   <w:Word11KerningPairs/>   <w:CachedColBalance/>  </w:Compatibility>  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  <m:mathPr>   <m:mathFont m:val="Cambria Math"/>   <m:brkBin m:val="before"/>   <m:brkBinSub m:val="--"/>   <m:smallFrac m:val="off"/>   <m:dispDef/>   <m:lMargin m:val="0"/>   <m:rMargin m:val="0"/>   <m:defJc m:val="centerGroup"/>   <m:wrapIndent m:val="1440"/>   <m:intLim m:val="subSup"/>   <m:naryLim m:val="undOvr"/>  </m:mathPr></w:WordDocument></xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"  DefSemiHidden="true" DefQFormat="false" DefPriority="99"  LatentStyleCount="267">  <w:LsdException Locked="false" Priority="0" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>  <w:LsdException Locked="false" Priority="9" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>  <w:LsdException Locked="false" Priority="10" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Title"/>  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>  <w:LsdException Locked="false" Priority="11" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>  <w:LsdException Locked="false" Priority="22" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>  <w:LsdException Locked="false" Priority="20" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>  <w:LsdException Locked="false" Priority="59" SemiHidden="false"   UnhideWhenUsed="false" Name="Table Grid"/>  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>  <w:LsdException Locked="false" Priority="1" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 1"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>  <w:LsdException Locked="false" Priority="34" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>  <w:LsdException Locked="false" Priority="29" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>  <w:LsdException Locked="false" Priority="30" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 1"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 2"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 2"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 3"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 3"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 4"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 4"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 5"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 5"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 6"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 6"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>  <w:LsdException Locked="false" Priority="19" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>  <w:LsdException Locked="false" Priority="21" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>  <w:LsdException Locked="false" Priority="31" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>  <w:LsdException Locked="false" Priority="32" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>  <w:LsdException Locked="false" Priority="33" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/> </w:LatentStyles></xml><![endif]--><style><!-- /* Font Definitions */ @font-face	{font-family:"Cambria Math";	panose-1:2 4 5 3 5 4 6 3 2 4;	mso-font-charset:0;	mso-generic-font-family:roman;	mso-font-pitch:variable;	mso-font-signature:-1610611985 1107304683 0 0 159 0;}@font-face	{font-family:SolaimanLipi;	panose-1:3 0 6 9 0 0 0 0 0 0;	mso-font-charset:0;	mso-generic-font-family:script;	mso-font-pitch:fixed;	mso-font-signature:-2147385337 8192 0 0 147 0;}@font-face	{font-family:SutonnyEMJ;	panose-1:0 0 0 0 0 0 0 0 0 0;	mso-font-charset:0;	mso-generic-font-family:auto;	mso-font-pitch:variable;	mso-font-signature:3 0 0 0 1 0;} /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal	{mso-style-unhide:no;	mso-style-qformat:yes;	mso-style-parent:"";	margin:0in;	margin-bottom:.0001pt;	mso-pagination:widow-orphan;	font-size:12.0pt;	font-family:"Times New Roman","serif";	mso-fareast-font-family:"Times New Roman";}.MsoChpDefault	{mso-style-type:export-only;	mso-default-props:yes;	font-size:10.0pt;	mso-ansi-font-size:10.0pt;	mso-bidi-font-size:10.0pt;}@page Section1	{size:8.5in 11.0in;	margin:1.0in 1.0in 1.0in 1.0in;	mso-header-margin:.5in;	mso-footer-margin:.5in;	mso-paper-source:0;}div.Section1	{page:Section1;}--</style>à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¦Ÿà¦¿<link rel="File-List" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_filelist.xml"><link rel="themeData" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_themedata.thmx"><link rel="colorSchemeMapping" href="file:///C:%5CDOCUME%7E1%5CCompaq%5CLOCALS%7E1%5CTemp%5Cmsohtmlclip1%5C01%5Cclip_colorschememapping.xml"><!--[if gte mso 9]><xml> <w:WordDocument>  <w:View>Normal</w:View>  <w:Zoom>0</w:Zoom>  <w:TrackMoves/>  <w:TrackFormatting/>  <w:PunctuationKerning/>  <w:ValidateAgainstSchemas/>  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>  <w:DoNotPromoteQF/>  <w:LidThemeOther>EN-US</w:LidThemeOther>  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>  <w:Compatibility>   <w:BreakWrappedTables/>   <w:SnapToGridInCell/>   <w:WrapTextWithPunct/>   <w:UseAsianBreakRules/>   <w:DontGrowAutofit/>   <w:SplitPgBreakAndParaMark/>   <w:DontVertAlignCellWithSp/>   <w:DontBreakConstrainedForcedTables/>   <w:DontVertAlignInTxbx/>   <w:Word11KerningPairs/>   <w:CachedColBalance/>  </w:Compatibility>  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>  <m:mathPr>   <m:mathFont m:val="Cambria Math"/>   <m:brkBin m:val="before"/>   <m:brkBinSub m:val="--"/>   <m:smallFrac m:val="off"/>   <m:dispDef/>   <m:lMargin m:val="0"/>   <m:rMargin m:val="0"/>   <m:defJc m:val="centerGroup"/>   <m:wrapIndent m:val="1440"/>   <m:intLim m:val="subSup"/>   <m:naryLim m:val="undOvr"/>  </m:mathPr></w:WordDocument></xml><![endif]--><!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"  DefSemiHidden="true" DefQFormat="false" DefPriority="99"  LatentStyleCount="267">  <w:LsdException Locked="false" Priority="0" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>  <w:LsdException Locked="false" Priority="9" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>  <w:LsdException Locked="false" Priority="10" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Title"/>  <w:LsdException Locked="false" Priority="1" Name="Default Paragraph Font"/>  <w:LsdException Locked="false" Priority="11" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>  <w:LsdException Locked="false" Priority="22" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>  <w:LsdException Locked="false" Priority="20" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>  <w:LsdException Locked="false" Priority="59" SemiHidden="false"   UnhideWhenUsed="false" Name="Table Grid"/>  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>  <w:LsdException Locked="false" Priority="1" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 1"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>  <w:LsdException Locked="false" Priority="34" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>  <w:LsdException Locked="false" Priority="29" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>  <w:LsdException Locked="false" Priority="30" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 1"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 2"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 2"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 3"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 3"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 4"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 4"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 5"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 5"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>  <w:LsdException Locked="false" Priority="60" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>  <w:LsdException Locked="false" Priority="61" SemiHidden="false"   UnhideWhenUsed="false" Name="Light List Accent 6"/>  <w:LsdException Locked="false" Priority="62" SemiHidden="false"   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>  <w:LsdException Locked="false" Priority="63" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>  <w:LsdException Locked="false" Priority="64" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>  <w:LsdException Locked="false" Priority="65" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>  <w:LsdException Locked="false" Priority="66" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>  <w:LsdException Locked="false" Priority="67" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>  <w:LsdException Locked="false" Priority="68" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>  <w:LsdException Locked="false" Priority="69" SemiHidden="false"   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>  <w:LsdException Locked="false" Priority="70" SemiHidden="false"   UnhideWhenUsed="false" Name="Dark List Accent 6"/>  <w:LsdException Locked="false" Priority="71" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>  <w:LsdException Locked="false" Priority="72" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>  <w:LsdException Locked="false" Priority="73" SemiHidden="false"   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>  <w:LsdException Locked="false" Priority="19" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>  <w:LsdException Locked="false" Priority="21" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>  <w:LsdException Locked="false" Priority="31" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>  <w:LsdException Locked="false" Priority="32" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>  <w:LsdException Locked="false" Priority="33" SemiHidden="false"   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/> </w:LatentStyles></xml><![endif]--><style><!-- /* Font Definitions */ @font-face	{font-family:"Cambria Math";	panose-1:2 4 5 3 5 4 6 3 2 4;	mso-font-charset:0;	mso-generic-font-family:roman;	mso-font-pitch:variable;	mso-font-signature:-1610611985 1107304683 0 0 159 0;}@font-face	{font-family:Calibri;	panose-1:2 15 5 2 2 2 4 3 2 4;	mso-font-charset:0;	mso-generic-font-family:swiss;	mso-font-pitch:variable;	mso-font-signature:-1610611985 1073750139 0 0 159 0;}@font-face	{font-family:SutonnyEMJ;	panose-1:0 0 0 0 0 0 0 0 0 0;	mso-font-charset:0;	mso-generic-font-family:auto;	mso-font-pitch:variable;	mso-font-signature:3 0 0 0 1 0;} /* Style Definitions */ p.MsoNormal, li.MsoNormal, div.MsoNormal	{mso-style-unhide:no;	mso-style-qformat:yes;	mso-style-parent:"";	margin-top:0in;	margin-right:0in;	margin-bottom:10.0pt;	margin-left:0in;	line-height:115%;	mso-pagination:widow-orphan;	font-size:11.0pt;	font-family:"Calibri","sans-serif";	mso-fareast-font-family:Calibri;	mso-bidi-font-family:"Times New Roman";}.MsoChpDefault	{mso-style-type:export-only;	mso-default-props:yes;	font-size:10.0pt;	mso-ansi-font-size:10.0pt;	mso-bidi-font-size:10.0pt;	mso-ascii-font-family:Calibri;	mso-fareast-font-family:Calibri;	mso-hansi-font-family:Calibri;}@page Section1	{size:8.5in 11.0in;	margin:1.0in 1.0in 1.0in 1.0in;	mso-header-margin:.5in;	mso-footer-margin:.5in;	mso-paper-source:0;}div.Section1	{page:Section1;}--></style><!--[if gte mso 10]><style> /* Style Definitions */ table.MsoNormalTable	{mso-style-name:"Table Normal";	mso-tstyle-rowband-size:0;	mso-tstyle-colband-size:0;	mso-style-noshow:yes;	mso-style-priority:99;	mso-style-qformat:yes;	mso-style-parent:"";	mso-padding-alt:0in 5.4pt 0in 5.4pt;	mso-para-margin:0in;	mso-para-margin-bottom:.0001pt;	mso-pagination:widow-orphan;	font-size:11.0pt;	font-family:"Calibri","sans-serif";	mso-ascii-font-family:Calibri;	mso-ascii-theme-font:minor-latin;	mso-fareast-font-family:"Times New Roman";	mso-fareast-theme-font:minor-fareast;	mso-hansi-font-family:Calibri;	mso-hansi-theme-font:minor-latin;	mso-bidi-font-family:"Times New Roman";	mso-bidi-theme-font:minor-bidi;}</style><![endif]--><span style="font-size: 11pt; line-height: 115%; font-family: SutonnyEMJ;"> </span> à¦¸à¦ à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦¯à¦¾à¦šà¦¾à¦‡ à¦•à¦°à§‡ à¦¸à¦¿à¦¦à§à¦§à¦¾à¦¨à§à¦¤ à¦¨à¦¿à¦¨à¥¤ à¦•à§‡à¦¨, à¦•à¦¿ à¦ªà¦°à¦¿à¦®à¦¾à¦¨ à¦‹à¦¨ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨/à¦¦à¦°à¦•à¦¾à¦°?</p><p><a name="WhatToDo" id="WhatToDo"></a></p><h3>à¦‹à¦¨à§‡à¦° à¦‰à§Žà¦¸ - à¦•à¦¿ à¦•à¦°à¦£à§€à§Ÿ?</h3><p>à¦†à¦ªà¦¨à¦¿ à¦¯à§‡ à¦•à§‹à¦¨ à¦¸à¦°à¦•à¦¾à¦°à§€ à¦¬à¦¾ à¦¬à§‡à¦¸à¦°à¦•à¦¾à¦°à§€ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¥à§‡à¦•à§‡ à¦‹à¦¨ à¦ªà§‡à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨ à¦à¦¬à¦‚ à¦¸à¦¬ à¦•à§à¦·à§‡à¦¤à§à¦°à§‡à¦‡ à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦‹à¦¨ à¦¦à¦¾à¦¨à¦•à¦¾à¦°à§€ à¦ªà§à¦°à¦¤à¦¿à¦·à§à¦ à¦¾à¦¨à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¨à¦¿à§Ÿà¦®à¦¿à¦¤ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦ªà¦¾à¦°à¦¸à§à¦ªà¦°à¦¿à¦• à¦†à¦¸à§à¦¥à¦¾à¦° à¦¸à¦®à§à¦ªà¦°à§à¦• à¦¤à§ˆà¦°à§€ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤ à¦à¦¤à§‡ à¦•à¦°à§‡ à¦†à¦ªà¦¨à¦¿ à¦†à¦ªà¦¨à¦¾à¦° à¦‹à¦¨ à¦ªà¦¾à¦¬à¦¾à¦° à¦¸à¦®à§à¦­à¦¾à¦¬à¦¨à¦¾ à¦¬à¦¾à§œà¦¾à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤ à¦¤à¦¾à¦‡ à¦¬à§à¦¯à¦¾à¦¬à¦¸à¦¾à¦° à¦‹à¦¨à§‡à¦° à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨ à¦¹à¦“à§Ÿà¦¾à¦° à¦†à¦—à§‡ à¦¥à§‡à¦•à§‡à¦‡ à¦à¦° à¦ªà§à¦°à¦¸à§à¦¤à§à¦¤à¦¿ à¦¨à¦¿à¦¤à§‡ à¦¹à¦¬à§‡à¥¤ à¦à¦—à§à¦²à§‹ à¦¹à¦²à§‹-</p><ul>&nbsp;&nbsp;&nbsp; <li>à¦¨à¦¿à§Ÿà¦®à¦¿à¦¤ à¦¹à¦¿à¦¸à¦¾à¦¬ à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à¦¾ à¦à¦¬à¦‚ à¦²à¦¾à¦­à¦•à§à¦·à¦¤à¦¿ à¦œà¦¾à¦¨à¦¾à¥¤</li>&nbsp;&nbsp;&nbsp; <li>à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦•à¦°à¦¾ à¦à¦¬à¦‚ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡ à¦¹à¦¿à¦¸à¦¾à¦¬ à¦–à§‹à¦²à¦¾à¥¤</li>&nbsp;&nbsp;&nbsp; <li>à¦‹à¦¨à§‡à¦° à¦ªà¦°à¦¿à¦®à¦¾à¦¨, à¦¸à¦®à§Ÿ à¦à¦¬à¦‚ à¦ªà¦°à¦¿à¦¶à§‹à¦§à§‡à¦° à¦ªà¦°à¦¿à¦•à¦²à§à¦ªà¦¨à¦¾ (à¦•à¦¿à¦­à¦¾à¦¬à§‡ à¦‹à¦¨à§‡à¦° à¦Ÿà¦¾à¦•à¦¾ à¦¶à§‹à¦§ à¦•à¦°à¦¬à§‡à¦¨)à¥¤</li>&nbsp;&nbsp;&nbsp; <li>à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦•à¦¾à¦› à¦¥à§‡à¦•à§‡ à¦¨à¦¿à§Ÿà¦®à¦•à¦¾à¦¨à§à¦¨ à¦—à§à¦²à§‹ à¦œà§‡à¦¨à§‡ à¦¨à¦¿à¦¨à¥¤</li></ul><p><a name="HowTo"></a></p><p>à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à§‡à¦° à¦ªà§à¦°à¦¾à§Ÿ à¦¸à¦•à¦² à¦¬à§à¦¯à¦¾à¦‚à¦•à¦‡ à¦•à§ƒà¦·à¦¿ à¦à¦¬à¦‚ à¦•à§à¦·à§à¦¦à§à¦° à¦“ à¦®à¦¾à¦à¦¾à¦°à¦¿ à¦¶à¦¿à¦²à§à¦ªà§‡à¦° à¦œà¦¨à§à¦¯ à¦‹à¦¨ à¦ªà§à¦°à¦¦à¦¾à¦¨ à¦•à¦°à§‡ à¦¥à¦¾à¦•à§‡à¥¤à¦†à¦ªà¦¨à¦¾à¦° à¦¨à¦¿à¦•à¦¤à¦¸à§à¦¥&nbsp; à¦¬à§à¦¯à¦¾à¦‚à¦• à¦à¦°&nbsp; à¦‹à¦¨ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¤à¦¥à§à¦¯ (à¦¨à¦¿à§Ÿà¦® à¦•à¦¾à¦¨à§à¦¨) à¦à¦¬à¦‚ à¦ à¦¿à¦•à¦¾à¦¨à¦¾ à¦œà¦¾à¦¨à¦¾à¦° à¦œà¦¨à§à¦¯ à¦à¦–à¦¾à¦¨à§‡ <a href="http://sme.com.bd/smeLoan.php">à¦•à§à¦²à¦¿à¦•</a> à¦•à¦°à§à¦¨à¥¤ <br></p><h3>à¦‹à¦£ à¦ªà¦¾à¦“à§Ÿà¦¾à¦° à¦œà¦¨à§à¦¯ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿ à¦•à¦¾à¦—à¦œ à¦ªà¦¤à§à¦°à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾à¦ƒ<br></h3><p>&nbsp;à§§. à¦¸à¦ à¦¿à¦• à¦­à¦¾à¦¬à§‡ à¦ªà§‚à¦°à¦£ à¦•à§ƒà¦¤ à¦²à§‹à¦¨ à¦†à¦¬à§‡à¦¦à¦¨ à¦ªà¦¤à§à¦° à¦«à¦°à¦®<br>&nbsp; à§¨. à¦¸à¦ à¦¿à¦• à¦­à¦¾à¦¬à§‡ à¦ªà§‚à¦°à¦£à¦•à§ƒà¦¤ à¦à¦¬à¦‚ à¦¸à§à¦¬à¦¾à¦•à§à¦·à¦°à¦¯à§à¦•à§à¦¤&nbsp; à¦¸à¦¿à¦†à¦‡à¦¬à¦¿ à¦«à¦°à¦®<br>&nbsp; à§©. à¦¬à§ˆà¦§ à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸<br>&nbsp; à§ª. à¦²à§€à¦œ / à¦­à¦¾à§œà¦¾à¦° à¦¦à¦²à¦¿à¦²<br>&nbsp; à§«. à¦‡à¦®à¦ªà§‹à¦°à§à¦Ÿ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ (à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯)<br>&nbsp; à§¬. à¦à¦•à§à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸ (à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯)<br>&nbsp; à§­. à¦†à§Ÿà¦•à¦° à¦ªà¦°à¦¿à¦¶à§‹à¦§à§‡à¦° à¦¸à¦¾à¦°à§à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦Ÿ<br>&nbsp; à§®. à¦¸à¦‚à¦—à¦ à¦¨à§‡à¦° à¦šà§à¦•à§à¦¤à¦¿à¦¨à¦¾à¦®à¦¾<br>&nbsp; à§¯. à¦¸à¦‚à¦¶à§à¦²à¦¿à¦·à§à¦Ÿ à¦•à§‹à¦®à§à¦ªà¦¾à¦¨à§€à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦• à¦¬à§ƒà¦¨à§à¦¦à§‡à¦° à¦…à¦­à¦¿à¦®à¦¤(à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯)<br>&nbsp; à§§à§¦. à¦…à¦‚à¦¶à§€à¦¦à¦¾à¦° à¦¨à¦¾à¦®à¦¾à¦° à¦•à¦ªà¦¿<br>&nbsp; à§§à§§. à¦¬à¦¿à¦¦à§à¦¯à§à§Ž à¦“ à¦Ÿà§‡à¦²à¦¿à¦«à§‹à¦¨à§‡à¦° à¦¸à¦°à§à¦¬à¦¶à§‡à¦· à¦ªà¦°à¦¿à¦¶à§‹à¦§à¦•à§ƒà¦¤ à¦¬à¦¿à¦²à§‡à¦° à¦•à¦ªà¦¿<br>&nbsp; à§§à§¨. à¦¸à§à¦¥à¦¾à§Ÿà§€ à¦¸à¦®à§à¦ªà¦¤à§à¦¤à¦¿à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾<br>&nbsp; à§§à§©. à¦¸à¦°à¦žà§à¦œà¦¾à¦®à§‡à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾<br>&nbsp; à§§à§ª. à¦•à§à¦°à§‡à¦¤à¦¾ à¦“ à¦¬à¦¿à¦•à§à¦°à§‡à¦¤à¦¾à¦° à¦¤à¦¾à¦²à¦¿à¦•à¦¾<br>&nbsp; à§§à§«. à¦à¦•à¦¾à¦‰à¦¨à§à¦Ÿà§‡à¦° à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¸à§à¦Ÿà§‡à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ<br>&nbsp; à§§à§¬. à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾à¦° à¦¸à¦¨à¦¦à¦ªà¦¤à§à¦° (à¦¯à¦¦à¦¿ à¦¥à¦¾à¦•à§‡)<br>&nbsp; à§§à§­. à¦¸à§‡à¦²à¦¸ à¦¸à§à¦Ÿà§‡à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ à¦²à¦¾à¦—à¦¬à§‡(à¦¯à§‡à¦–à¦¾à¦¨à§‡ à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯)<br>&nbsp; à§§à§®. à¦­à§à¦¯à¦¾à¦Ÿ à¦¦à§‡à§Ÿà¦¾à¦° à¦¸à¦¾à¦°à§à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦Ÿ<br></p><p>à¦†à¦ªà¦¨à¦¿ à¦•à¦¿ à¦‹à¦¨ à¦¸à¦‚à¦•à§à¦°à¦¾à¦¨à§à¦¤ à¦¤à¦¥à§à¦¯ à¦“ à¦ªà¦°à¦¾à¦®à¦°à§à¦¶ à¦¸à§‡à¦¬à¦¾ à¦¨à¦¿à¦¤à§‡ à¦šà¦¾à¦¨? à¦†à¦®à¦¾à¦¦à§‡à¦° à¦ªà¦°à¦¾à¦®à¦°à§à¦¶à¦• à¦¦à¦² à¦¥à§‡à¦•à§‡ à¦¶à§€à¦˜à§à¦°à¦‡ à¦†à¦ªà¦¨à¦¾à¦¦à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à¦¾ à¦¹à¦¬à§‡à¥¤ à¦¹à§à¦¯à¦¾à¦ à¦¹à¦²à§‡, <a href="http://sme.com.bd/LoanForm.php">à¦«à¦°à¦®à¦Ÿà¦¿</a> à¦¸à¦ à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦ªà§‚à¦°à¦£ à¦•à¦°à§à¦¨!<br></p><p><a name="Contact" id="Contact"></a></p><h3>à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—</h3><p>à¦†à¦ªà¦¨à¦¾à¦° à¦¯à§‡à¦•à§‹à¦¨ à¦ªà§à¦°à¦¶à§à¦¨ à¦œà¦¾à¦¨à¦¤à§‡ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à§à¦¨-</p><div style="margin-left: 40px;">à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ à¦…à¦« à¦†à¦‡à¦¸à¦¿à¦Ÿà¦¿ à¦‡à¦¨ à¦¡à§‡à¦­à§‡à¦²à¦ªà¦®à§‡à¦¨à§à¦Ÿ (à¦¬à¦¿à¦†à¦‡à¦†à¦‡à¦¡à¦¿)<br>à¦¬à¦¾à§œà§€ à¦¨à¦‚- à¦¬à¦¿à§§à§¬à§«, à¦°à§‹à¦¡ à¦¨à¦‚- à§¨à§©<br>à¦®à¦¹à¦¾à¦–à¦¾à¦²à§€ à¦¡à¦¿à¦“à¦à¦‡à¦šà¦à¦¸, à¦®à¦¹à¦¾à¦–à¦¾à¦²à§€<br>à¦¢à¦¾à¦•à¦¾-à§§à§¨à§¦à§¬, à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¥¤<br>à¦«à§‹à¦¨: à§¦à§¨à§®à§­à§§à§ªà§§à§¬à§¯<br>à¦®à§‹à¦¬à¦¾à¦‡à¦²: à§¦à§§à§­à§§à§¬à§§à§©à§¯à§¦à§¨à§¨, à§¦à§§à§­à§©à§§à§©à§­à§«à§¦à§¦à§¦, à§¦à§§à§­à§ªà§¬à§­à§­à§ªà§¨à§®à§§<br><span class="ENGTD">Email: info@biid.org.bd</span></div><p> </p><p></p>', 2);
INSERT INTO `main` (`Id`, `Menu`, `Details`, `Status`) VALUES
(3, 3, '<span class="ENGTD">SME</span> à¦¸à¦‚à¦¶à§à¦²à¦¿à¦·à§à¦Ÿ à¦¯à§‡à¦•à§‹à¦¨ à¦¬à¦¿à¦·à§Ÿ à¦œà¦¾à¦¨à¦¤à§‡ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à§à¦¨-<br><br>à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦‡à¦¨à¦¸à§à¦Ÿà¦¿à¦Ÿà¦¿à¦‰à¦Ÿ à¦…à¦« à¦†à¦‡à¦¸à¦¿à¦Ÿà¦¿ à¦‡à¦¨ à¦¡à§‡à¦­à§‡à¦²à¦ªà¦®à§‡à¦¨à§à¦Ÿ (à¦¬à¦¿à¦†à¦‡à¦†à¦‡à¦¡à¦¿)<br>à¦¬à¦¾à§œà§€ à¦¨à¦‚- à¦¬à¦¿à§§à§¬à§«, à¦°à§‹à¦¡ à¦¨à¦‚- à§¨à§©<br>à¦®à¦¹à¦¾à¦–à¦¾à¦²à§€ à¦¡à¦¿à¦“à¦à¦‡à¦šà¦à¦¸, à¦®à¦¹à¦¾à¦–à¦¾à¦²à§€<br>à¦¢à¦¾à¦•à¦¾-à§§à§¨à§¦à§¬, à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶à¥¤<br>à¦«à§‹à¦¨: ++à§®à§®à§¦ à§¨ à§®à§­à§§à§ªà§§à§¬à§¯ <br>à¦®à§‹à¦¬à¦¾à¦‡à¦²: +à§®à§®à§¦ à§§à§­à§§ à§¬à§§à§©à§¯à§¦à§¨à§¨ <br><span class="ENGTD">Email: info@biid.org.bd</span><br><br><p>&nbsp;à¦…à¦¥à¦¬à¦¾, à¦†à¦ªà¦¨à¦¾à¦° à¦•à§‹à¦¨à§‹ à¦®à¦¤à¦¾à¦®à¦¤ à¦¬à¦¾ à¦ªà§à¦°à¦¶à§à¦¨ à¦¥à¦¾à¦•à¦²à§‡ à¦¨à¦¿à¦šà§‡à¦° à¦«à¦°à¦®à¦Ÿà¦¿ à¦ªà§‚à¦°à¦£ à¦•à¦°à§‡ à¦œà¦®à¦¾ à¦¦à¦¿à¦¨à¥¤ </p><form name="form1" method="post" action="InsertComment.php"><table width="400" border="0" cellpadding="2" cellspacing="3"><tbody><tr><td width="134"><p align="right">à§§. à¦¨à¦¾à¦® </p></td><td width="10"><div align="center"><strong>:</strong></div></td><td width="234"><input name="Name" id="Name" size="30" type="text"></td></tr><tr><td><div align="right">à§¨. à¦ à¦¿à¦•à¦¾à¦¨à¦¾</div></td><td><div align="center"><strong>:</strong></div></td><td><input name="Address" id="Address" size="30" type="text"></td></tr><tr><td><div align="right">à§©. à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—à§‡à¦° à¦¨à¦®à§à¦¬à¦°</div></td><td><div align="center"><strong>:</strong></div></td><td><input name="Phone" id="Phone" size="30" type="text"></td></tr><tr><td><div align="right">à§ª. à¦‡-à¦®à§‡à¦‡à¦² </div></td><td><div align="center"><strong>:</strong></div></td><td><input name="Email" id="Email" size="30" type="text"></td></tr><tr><td valign="top"><div align="right">à§«. à¦®à¦¤à¦¾à¦®à¦¤ / à¦ªà§à¦°à¦¶à§à¦¨ </div></td><td valign="top"><div align="center"><strong>:</strong></div></td><td><textarea name="Comment" cols="28" rows="5" id="Comment"></textarea></td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td><input name="Feedback" value="Submit" type="submit"></td></tr></tbody></table></form><p></p>', 2),
(9, 100, 'fddfdfdfdfdff<br>ffffffffffffffffffffffff<br>dfffffffffffffffffffffffffff<br>', 2),
(8, 100, 'oweyiroweori woeri woeir wie rwiye r<br>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `omp`
--

CREATE TABLE IF NOT EXISTS `omp` (
  `ProductId` int(10) NOT NULL AUTO_INCREMENT,
  `Product` text,
  `Details` text NOT NULL,
  `Producer` text,
  `ProducerId` int(20) DEFAULT NULL,
  `Cost` text,
  `Photo` varchar(200) NOT NULL,
  `Location` text NOT NULL,
  `Status` tinyint(1) DEFAULT '2',
  `Date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`ProductId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `omp`
--

INSERT INTO `omp` (`ProductId`, `Product`, `Details`, `Producer`, `ProducerId`, `Cost`, `Photo`, `Location`, `Status`, `Date`) VALUES
(6, 'à¦«à§à¦²', 'à¦˜à¦° à¦¸à¦¾à¦œà¦¾à¦¨à§‹à¦° à¦•à¦¾à¦œà§‡ à¦¬à§à¦¯à¦¬à¦¹à§ƒà¦¤ à¦¹à§Ÿà¥¤                                 ', 'Borna', 3, 'à§¨à§¦à§¦à§¦â€à§³', 'QuilledFlowers.jpg', 'à¦¢à¦¾à¦•à¦¾ à¦¨à¦¿à¦‰à¦®à¦¾à¦°à§à¦•à§‡à¦Ÿ', 2, '2009-08-01'),
(7, 'Handicraft-Handloom (Blanket)', 'With nice color combination produced in Bandarban. Length 7 Feet and width 5 Feet.                   ', 'Ms.Lalmuan Thang', 5, 'Please contact us', 'Handloom.JPG', 'Farukpara, Bandarban', 3, '2009-08-12'),
(8, 'Handicraft-Bamboo and Cane Bag', 'This is a bag made of bamboo and cane. This product is from Rangamati district. ', 'Mr. Papui Pankhu', 4, '', 'Bag1.JPG', 'Bilaichori, Rangamati', 2, '2009-07-13'),
(9, 'Handicraft-Bamboo and Cane Basket', 'Nicely decorated with different colors. Home utility product.                   ', 'Mr. Papui Pankhu', 4, 'Please contact us', 'Basket.JPG', 'Bilaichchari, Rangamati', 3, '2009-08-12'),
(10, 'Handicrat-Bamboo and Cane, Fruit Basket (HSBC007)', 'This can be used as fruit basket.                   ', 'Mr. Papui Pankhu', 4, 'Please contact us', 'Fruit basket.JPG', 'Bilaichchari, Rangamati', 3, '2009-08-12'),
(11, 'Handicraft-Handloom (Blanket)(HCHL002)', 'You can get it in different sizes. 5 feet/7 Feet, 5 Feet/5.7 Feet-6 Feet/7.5 Feet.This is a product of Bandarban District.                   ', 'Ms.Lalmuan Thang', 5, 'Please contact us', 'Handloom Puan.JPG', 'Farukpara, Bandarban', 3, '2009-08-12'),
(12, 'Handicraft-Handloom (Blanket)(HCHL003)', 'Size: It can be found in different sizes:5''/7'',5.5''/7'',6''/7.5''               ', 'Ms.Lalmuan Thang', 5, 'Please contact us', 'Blanket HCHL 003.JPG', 'Farukpara, Bandarban', 3, '2009-08-12'),
(13, 'Handicraft-Handloom (Blanket)(HCHL004)', 'Different Size available. 5''/7'' is 350/-, 5.5''/7'' is 450/- and 6''/7.5'' is 500/-                  ', 'Ms.Lalmuan Thang', 5, 'Please contact us', 'handloom blanket HCHL004.JPG', 'Farukpara, Bandarban', 3, '2009-08-12'),
(14, 'Handicraft-Handloom (Blanket)(HCHL005)', 'Locally known as Puan. You may get it in different sizes. 5''/7''=350/-; 5.5''/7''=450/- and 6''/7.5''=500/-', 'Ms  Lalmuan Thang', 5, '350/-, 450/-, 500/-', 'puan HCHL005.JPG', 'Farukpara, Bandarban', 3, '2009-07-13'),
(15, 'Handicraft-Handloom (Blanket)(HCHL006)', 'Different size, Different price;\r\n5''/7''=350/-, 5.5''/7''=450/-, 6''/7.5''=500/-', 'Ms.Lalmuan Thang', 5, '350/-, 450/-, 500/-', 'Puan HCHL 006.JPG', 'Farukpara, Bandarban', 3, '2009-07-13'),
(16, 'Handicraft-Handloom (Blanket)(HCHL007)', 'Different size, different price; \r\n5''/7''=350/-, 5.5''/7''=450/-,6''/7.5=500/- ', 'Ms  Lalmuan Thang', 5, '350/-, 450/-, 500/-', 'puan HCHL 007.JPG', 'Farukpara, Bandarban', 3, '2009-07-13'),
(17, 'Mr.Sap Sim', 'Nicely decorated Mask with fantastic design.', 'Mr.Sap Sim', 7, 'Please contact us', 'HCBC 003.JPG', 'Rajvila, Bandarban', 3, '2009-08-05'),
(18, 'Soft Skills Training', 'We conduct training on various themes such as: Sales, customer service, leadership, team building, negotiation, conflict management, change management, etc.', 'futureleaders', 0, 'It depends (on number of hours or days, location) ', 'Lecture 1.jpg', 'All over the country', 2, '2009-08-13'),
(19, 'abcd', 'abcd', 'shoebbb', 0, '111', '2.jpg', 'gagagga', 2, '2009-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `picgallery`
--

CREATE TABLE IF NOT EXISTS `picgallery` (
  `PicId` int(7) NOT NULL AUTO_INCREMENT,
  `PicCaption` varchar(255) NOT NULL DEFAULT '',
  `Photo` varchar(100) NOT NULL DEFAULT '',
  `VerticalPic` tinyint(1) NOT NULL DEFAULT '0',
  `Status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PicId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE IF NOT EXISTS `pictures` (
  `PictureId` int(3) NOT NULL AUTO_INCREMENT,
  `Photo` varchar(100) NOT NULL DEFAULT '',
  `ICaption` varchar(255) NOT NULL,
  `VerticalPic` tinyint(1) NOT NULL DEFAULT '0',
  `Status` tinyint(1) NOT NULL,
  PRIMARY KEY (`PictureId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `proddetails`
--

CREATE TABLE IF NOT EXISTS `proddetails` (
  `PDId` int(11) NOT NULL AUTO_INCREMENT,
  `LPId` int(11) NOT NULL,
  `LoanPurpose` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Qualification` longtext COLLATE utf8_unicode_ci NOT NULL,
  `ImpPapers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `Others` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`PDId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `proddetails`
--

INSERT INTO `proddetails` (`PDId`, `LPId`, `LoanPurpose`, `Qualification`, `ImpPapers`, `Others`) VALUES
(2, 3, '* à¦šà¦²à¦¤à¦¿ à¦®à§‚à¦²à¦§à¦¨ à¦¬à§ƒà¦¦à§à¦§à¦¿à¥¤\r\n* à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿ à¦¸à¦®à§à¦ªà§à¦°à¦¸à¦¾à¦°à¦£à¥¤\r\n* à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§‡à¦° à¦®à§‚à¦²à¦§à¦¨à§€ à¦¯à¦¨à§à¦¤à§à¦°à¦ªà¦¾à¦¤à¦¿ à¦•à§à¦°à§Ÿà¥¤\r\n* à¦•à¦¾à¦°à¦–à¦¾à¦¨à¦¾/ à¦¦à§‹à¦•à¦¾à¦¨à§‡à¦° à¦‰à¦¨à§à¦¨à§Ÿà¦¨ à¦“ à¦¸à¦‚à¦¸à§à¦•à¦¾à¦° à¦•à¦¾à¦œà¥¤', '* à¦¨à§à¦¯à§‚à¦¨à¦¤à¦® à§¨ à¦¬à¦›à¦°à§‡à¦° à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà¦¿à¦• à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾à¥¤\r\n* à¦‰à¦¦à§à¦¯à§‹à¦—à§€, à¦•à¦°à§à¦®à¦ , à¦†à¦¨à§à¦¤à¦°à¦¿à¦•, à¦¸à§Ž à¦“ à¦¨à¦¿à¦·à§à¦ à¦¾à¦¬à¦¾à¦¨à¥¤\r\n* à¦¬à§Ÿà¦¸ à§¨à§§ à¦¬à¦›à¦° à¦¹à¦¤à§‡ à§«à§­ à¦¬à¦›à¦°à§‡à¦° à¦®à¦§à§à¦¯à§‡à¥¤', '* à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà¦¿à¦• à¦¬à§ˆà¦§ à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸à¥¤\r\n* à¦‰à¦¦à§à¦¯à§‹à¦•à§à¦¤à¦¾/à¦‰à¦¦à§à¦¯à§‹à¦•à§à¦¤à¦¾à¦¦à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦ªà¦°à¦¿à¦šà§Ÿ à¦ªà¦¤à§à¦°à¥¤\r\n* à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¹à¦¿à¦¸à¦¾à¦¬ à¦¬à¦¿à¦¬à¦°à¦£à§€à¥¤\r\n* à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§‡ à¦®à¦œà§à¦¦ à¦¬à¦¿à¦¬à¦°à¦£à§€à¥¤\r\n* à¦¦à§‹à¦•à¦¾à¦¨ à¦­à¦¾à§œà¦¾ à¦šà§à¦•à§à¦¤à¦¿à¦ªà¦¤à§à¦° ( à¦­à¦¾à§œà¦¾ à¦¦à§‹à¦•à¦¾à¦¨à§‡à¦° à¦•à§à¦·à§‡à¦¤à§à¦°à§‡)\r\n* à¦‹à¦£ à¦—à§à¦°à¦¹à§€à¦¤à¦¾ à¦“ à¦—à§à¦¯à¦¾à¦°à¦¾à¦¨à§à¦Ÿà¦¾à¦°à§‡à¦° à§¨ (à¦¦à§à¦‡) à¦•à¦ªà¦¿ à¦•à¦°à§‡ à¦ªà¦¾à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦¸à¦¾à¦‡à¦œà§‡à¦° à¦›à¦¬à¦¿à¥¤\r\n* à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦°à¥¤', 'à¦œà¦¾à¦®à¦¾à¦¨à¦¤ à¦¸à¦¹- à§« (à¦ªà¦¾à¦š) à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾à¦° à¦…à¦§à¦¿à¦• à¦‹à¦£à§‡à¦° à¦œà¦¨à§à¦¯ à¦¸à¦¹à¦¾à§Ÿà¦• à¦œà¦¾à¦®à¦¾à¦¨à¦¤ (à¦°à§‡à¦œà¦¿à¦¸à§à¦Ÿà¦¾à¦°à§à¦¡ à¦®à¦°à§à¦Ÿà¦—à§‡à¦œ)à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¥¤ à¦‰à¦­à§Ÿà¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦¨à¦¿à¦•à¦Ÿ à¦—à§à¦°à¦¹à¦£à¦¯à§‹à¦—à§à¦¯ à¦¦à§â€™à¦œà¦¨ à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦° à¦—à§à¦¯à¦¾à¦°à¦¾à¦¨à§à¦Ÿà¦¿ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¥¤ \r\n\r\n'),
(3, 4, '* à¦•à¦¾à¦°à¦–à¦¾à¦¨à¦¾ à¦¯à¦¨à§à¦¤à§à¦°à¦ªà¦¾à¦¤à¦¿ à¦•à§à¦°à§Ÿà¥¤\r\n* à¦•à¦¾à¦°à¦–à¦¾à¦¨à¦¾à¦° à¦‰à¦¨à§à¦¨à§Ÿà¦¨ à¦¸à¦‚à¦¸à§à¦•à¦¾à¦° à¦•à¦¾à¦œà¥¤\r\n* à¦¬à¦¿ à¦à¦® à¦†à¦° à¦‡\r\n* à¦šà¦²à¦¤à¦¿ à¦®à§‚à¦²à¦§à¦¨à¥¤\r\n* à¦†à¦®à¦¦à¦¾à¦¨à§€ à¦¶à§à¦²à§à¦• à¦ªà¦°à¦¿à¦¶à§‹à¦§à¥¤', '* à¦¨à§à¦¯à§‚à¦¨à¦¤à¦® à§¨ à¦¬à¦›à¦°à§‡à¦° à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà¦¿à¦• à¦…à¦­à¦¿à¦œà§à¦žà¦¤à¦¾à¥¤\r\n* à¦‰à¦¦à§à¦¯à§‹à¦—à§€, à¦•à¦°à§à¦®à¦ , à¦†à¦¨à§à¦¤à¦°à¦¿à¦•, à¦¸à§Ž à¦“ à¦¨à¦¿à¦·à§à¦ à¦¾à¦¬à¦¾à¦¨à¥¤\r\n* à¦¬à§Ÿà¦¸ à§¨à§§ à¦¬à¦›à¦° à¦¹à¦¤à§‡ à§¬à§¦ à¦¬à¦›à¦°à§‡à¦° à¦®à¦§à§à¦¯à§‡à¥¤', '* à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà¦¿à¦• à¦¬à§ˆà¦§ à¦Ÿà§à¦°à§‡à¦¡ à¦²à¦¾à¦‡à¦¸à§‡à¦¨à§à¦¸à¥¤\r\n* à¦‰à¦¦à§à¦¯à§‹à¦•à§à¦¤à¦¾/à¦‰à¦¦à§à¦¯à§‹à¦•à§à¦¤à¦¾à¦¦à§‡à¦° à¦œà¦¾à¦¤à§€à§Ÿ à¦ªà¦°à¦¿à¦šà§Ÿ à¦ªà¦¤à§à¦°à¥¤\r\n* à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¹à¦¿à¦¸à¦¾à¦¬ à¦¬à¦¿à¦¬à¦°à¦£à§€à¥¤\r\n* à¦¬à§à¦¯à¦¬à¦¸à¦¾à§Ÿà§‡ à¦®à¦œà§à¦¦ à¦¬à¦¿à¦¬à¦°à¦£à§€à¥¤\r\n* à¦‹à¦£ à¦—à§à¦°à¦¹à§€à¦¤à¦¾ à¦“ à¦—à§à¦¯à¦¾à¦°à¦¾à¦¨à§à¦Ÿà¦¾à¦°à§‡à¦° à§¨ (à¦¦à§à¦‡) à¦•à¦ªà¦¿ à¦•à¦°à§‡ à¦ªà¦¾à¦¸à¦ªà§‹à¦°à§à¦Ÿ à¦¸à¦¾à¦‡à¦œà§‡à¦° à¦›à¦¬à¦¿à¥¤\r\n* à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à§€à§Ÿ à¦•à¦¾à¦—à¦œà¦ªà¦¤à§à¦°à¥¤', 'à¦œà¦¾à¦®à¦¾à¦¨à¦¤ à¦¸à¦¹- à§¨ (à¦¦à§à¦‡) à¦²à¦•à§à¦· à¦Ÿà¦¾à¦•à¦¾à¦° à¦…à¦§à¦¿à¦• à¦‹à¦£à§‡à¦° à¦œà¦¨à§à¦¯ à¦¸à¦¹à¦¾à§Ÿà¦• à¦œà¦¾à¦®à¦¾à¦¨à¦¤ (à¦°à§‡à¦œà¦¾à¦¸à§à¦Ÿà¦¾à¦°à§à¦¡ à¦®à¦°à§à¦Ÿà¦—à§‡à¦œ) à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¥¤ à¦‰à¦­à§Ÿà¦•à§à¦·à§‡à¦¤à§à¦°à§‡ à¦¬à§à¦¯à¦¾à¦‚à¦•à§‡à¦° à¦¨à¦¿à¦•à¦Ÿ à¦—à§à¦°à¦¹à¦£à¦¯à§‹à¦—à§à¦¯ à¦¦à§â€™à¦œà¦¨ à¦¬à§à¦¯à¦•à§à¦¤à¦¿à¦° à¦—à§à¦¯à¦¾à¦°à¦¾à¦¨à§à¦Ÿà¦¿ à¦ªà§à¦°à§Ÿà§‹à¦œà¦¨à¥¤');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE IF NOT EXISTS `producer` (
  `ProducerId` int(10) NOT NULL AUTO_INCREMENT,
  `Producer` text,
  `Story` text NOT NULL,
  `Products` text NOT NULL,
  `Photo` varchar(200) NOT NULL,
  `Location` text NOT NULL,
  `PhoneMail` text,
  `Status` tinyint(1) DEFAULT '2',
  `Date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`ProducerId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`ProducerId`, `Producer`, `Story`, `Products`, `Photo`, `Location`, `PhoneMail`, `Status`, `Date`) VALUES
(4, 'Mr. Papui Pankhu', 'Mr. Papui Pankhu is a producer of Bilaichchari, Rangamati. He is capable of making so many diversified products using bamboo and cane. One of the best producers of Rangamati. ', 'Bags, Normal Baskets, Fruit Baskets, Bins, Trays, different Decors etc. ', 'papui pankhu pic.JPG', 'Bilaichchari, Rangamati', NULL, 3, '2009-07-13'),
(5, 'Ms.Lalmuan Thang', 'She is a quality producer of Farukpra, Bandarban', 'She produces mainly blanket; locally known as Puan. ', 'lal muan thangs pic.JPG', 'Farukpara, Bandarban', NULL, 3, '2009-07-13'),
(3, 'Borna', 'à¦¨à¦¤à§à¦¨ à¦ªà§à¦°à¦œà¦¨à§à¦®à§‡à¦° à¦¤à¦°à§à¦¨ à¦‰à§Žà¦ªà¦¾à¦¦à¦¨à¦•à¦¾à¦°à§€à¥¤                 ', 'à¦¸à¦°à§à¦¬ à¦ªà§à¦°à¦•à¦¾à¦° à¦—à§ƒà¦¹ à¦¸à¦œà§à¦œà¦¾à¦° à¦¸à¦°à¦žà§à¦œà¦¾à¦®à¦¾à¦¦à¦¿à¥¤                  ', '000%20(1).jpg', 'à¦¢à¦¾à¦•à¦¾ à¦¨à¦¿à¦‰ à¦®à¦¾à¦°à§à¦•à§‡à¦Ÿ', 'à¦ªà§à¦°à¦œà§‹à¦¯à§à¦¯ à¦¨à§Ÿ', 2, '2009-08-01'),
(6, 'Mr. Lallawan', 'He is a producer of Farukpara, Bandarban. ', 'He basically produces bamboo and cane products. ', 'Mr. Lallawan.JPG', 'Farukpara, Bandarban', '01731375000', 3, '2009-08-02'),
(7, 'Mr.Sap Sim', 'Mr. sap Sim (BN 003) is a producer from Farukpara, Bandarban.', 'Bamboo and Cane products. ', 'Mr.Sap Sim.JPG', 'Farukpara, Bandarban', '01731375000', 3, '2009-08-02'),
(8, 'Mr. Julong', 'Mr. Julong (RN 002) is a producer of Rangamati, Bangladesh. ', 'Bamboo and Cane products', 'Mr.Julong.JPG', 'Rangamati', '01731375000', 3, '2009-08-02'),
(9, 'Mr. Liana', 'Mr. Liana (RN 003)is a producer of Rangamati, Bangladesh', 'Bamboo and Cane products. ', 'Mr.Liana.JPG', 'Rangamati, Bangladesh', '01731375000', 3, '2009-08-02'),
(10, 'Mr. Liangjong', 'Mr. Liangjong (RN 004) is a producer of Rangamati, Bangladesh. ', 'Bamboo and Cane products', 'Mr.Liangjong.JPG', 'Rangamati, Bandarban', '01731375000', 3, '2009-08-02'),
(11, 'Mr. Liangkhup', 'Mr. Liangkhup (RN 005) is a producer of Rangamati, Bangladesh', 'Bamboo and Cane products. ', 'Mr.Liangkhup.JPG', 'Rangamati, Bangladesh', '01731375000', 3, '2009-08-02'),
(12, 'Mr. Loyding', 'Mr. Loyding (RN 006) is a producer of Rangamati, Bangladesh. ', 'Bamboo and Cane products. ', 'Mr.Loyding.JPG', 'Rangamati, Bangladesh', '01731375000', 3, '2009-08-02'),
(13, 'Mr. Thadpoi', 'Mr. Tahdpoi (RN 007) is a producer of Rangamati, Bangladesh', 'Bamboo and Cane Products', 'Mr.Thadpoi.JPG', 'Rangamati, Bangladesh', '01731375000', 3, '2009-08-02'),
(14, 'Shibly Sadiq Shoeb', 'I am a producer of so many things', 'handicrafts, Bamboo and cane products', 'n588105074_6479604_942873.jpg', 'mohakhali, Gulshan, Banani', 'sadiqshibly@yahoo.com', 2, '2009-08-06'),
(15, 'Shibly Sadiq Shoeb', 'Producer of bamboo and cane products as well as handicrafts. ', 'bamboo and cane products, handicrafts', 'n588105074_6479604_942873.jpg', 'mohakhali, gulshan, banani', 'sadiqshibly@yahoo.com', 2, '2009-08-06'),
(16, 'Shoeb', 'Shoeb is a producer of many things. ', 'bamboo and Cane products, Handicarfts', 'n588105074_6479886_2988278.jpg', 'mohakhali, Gulshan, Banani', 'amikeuna@hotmail.com', 2, '2009-08-12'),
(17, 'Quazi M. Ahmed', 'CEO, FutureLeaders', 'Soft Skills Training', 'BSHRM_Quazi_PP.jpg', 'All over the country', '01711561861', 2, '2009-08-13'),
(18, 'Shoeb', 'Shoeb is a producer of Handicrafts                  ', 'any Handicrafts                  ', 'n588105074_6479886_2988278.jpg', 'Shoeb', 'sadiq.shibly@biid.org.bd', 1, '2009-08-16'),
(19, 'rezwanur rahman ', 'my home town is chandpur. i live in puranbazar. i am a wholeseller of rice. ', 'rice, paddy, salt.', 'Picture 041.jpg', 'chandpur', 'rrezu@yahoo.com', 2, '2009-08-18'),
(20, 'dsd', 'dsd', 'ddsd', 'c_rice_genetics.jpg', 'ddd', 'tin_ny06@yahoo.co.in', 2, '2009-11-19'),
(21, 'sa', 'aa', 'saa', 'c_rice_genetics.jpg', 'dsd', 'tin_ny06@yahoo.co.in', 2, '2009-11-19'),
(22, 'MD.SAIFUL ISLAM', 'FROM LAKSAM,COMILLA,BANGLADESH', 'SHOES', 'SAIFUL-ISLAM.jpg', 'COMILLA', 'saiful.islam67@yahoo.com', 2, '2011-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `sh_adminnav`
--

CREATE TABLE IF NOT EXISTS `sh_adminnav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navtitle` varchar(255) DEFAULT NULL,
  `navurl` varchar(255) DEFAULT NULL,
  `sort_order` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `sh_adminnav`
--

INSERT INTO `sh_adminnav` (`id`, `navtitle`, `navurl`, `sort_order`) VALUES
(1, 'Categories', 'admincp.php?detail=manage_category', 2),
(2, 'Logout', 'javascript:if(confirm(''Are you sure want to logout from control panel?'')){location=''../logout.php'';}', 99),
(3, 'Main', 'admincp.php', 1),
(4, 'Products', 'admincp.php?detail=manage_products', 3),
(5, 'Admin Settings', 'admincp.php?detail=change_password', 98),
(6, 'Manage Users', 'admincp.php?detail=manage_user', 97),
(7, 'Producers', 'admincp.php?detail=manage_producers', 4),
(8, 'Manage Orders', 'admincp.php?detail=manage_orders', 5),
(9, 'Manage Help', 'admincp.php?detail=manage_help', 6);

-- --------------------------------------------------------

--
-- Table structure for table `sh_admin_config`
--

CREATE TABLE IF NOT EXISTS `sh_admin_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `ugroup` varchar(255) DEFAULT NULL,
  `usdtotaka` int(5) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB' AUTO_INCREMENT=100000 ;

--
-- Dumping data for table `sh_admin_config`
--

INSERT INTO `sh_admin_config` (`id`, `uname`, `upass`, `ugroup`, `usdtotaka`) VALUES
(99999, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', '1', 68);

-- --------------------------------------------------------

--
-- Table structure for table `sh_bulletins`
--

CREATE TABLE IF NOT EXISTS `sh_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `bdesc` text,
  `image` varchar(255) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `sh_bulletins`
--

INSERT INTO `sh_bulletins` (`id`, `uid`, `title`, `bdesc`, `image`, `bdate`) VALUES
(1, 99999, 'Replication and expansion of the e-Krishok campaign.', 'Replication and expansion of the e-Krishok campaign.', NULL, '2009-07-19'),
(2, 99999, 'Research and development, testing of services at Batighar.', 'Research and development, testing of services at Batighar.', NULL, '2009-07-19'),
(3, 99999, 'Sharing of information and knowledge with entrepreneurs and farmers through e- Krishok Exchange Visi', 'Sharing of information and knowledge with entrepreneurs and farmers through e-\r\nKrishok Exchange Visit.', NULL, '2009-07-19'),
(4, 99999, 'Promoting small and medium producers from around the country.', 'Promoting small and medium producers from around the country.', NULL, '2009-07-19'),
(5, 99999, 'An arts competition for disadvantaged and minority children to highlight the situation of these chil', 'An arts competition for disadvantaged and minority children to highlight the situation\r\nof these children.', NULL, '2009-07-19'),
(6, 99999, 'Building awareness amongst Bangladeshi citizens about the concept of consumer rights and other right', 'Building awareness amongst Bangladeshi citizens about the concept of consumer rights\r\nand other rights through e-Complain.', NULL, '2009-07-19'),
(7, 99999, 'Encourage young CS students to think about rural people through the Go ICT, Go Rural! campaign.', 'Encourage young CS students to think about rural people through the Go ICT, Go\r\nRural! campaign.', NULL, '2009-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `sh_categories`
--

CREATE TABLE IF NOT EXISTS `sh_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) DEFAULT NULL,
  `cat_desc` varchar(255) DEFAULT NULL,
  `cat_image` varchar(255) DEFAULT NULL,
  `cat_order` tinyint(2) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `sh_categories`
--

INSERT INTO `sh_categories` (`id`, `cat_title`, `cat_desc`, `cat_image`, `cat_order`) VALUES
(1, 'Handicraft', NULL, NULL, 1),
(2, 'Handloom', NULL, NULL, 2),
(3, 'Food', NULL, NULL, 4),
(4, 'Painting', NULL, NULL, 5),
(5, 'Photograph', NULL, NULL, 6),
(6, 'Tourism', NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sh_help`
--

CREATE TABLE IF NOT EXISTS `sh_help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `sh_help`
--

INSERT INTO `sh_help` (`id`, `title`, `text`) VALUES
(1, 'How to upload', 'How to upload your product details here\r\n'),
(2, 'Preorder instruction', 'Preorder instruction details here');

-- --------------------------------------------------------

--
-- Table structure for table `sh_lightbox`
--

CREATE TABLE IF NOT EXISTS `sh_lightbox` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `items` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sh_lightbox`
--

INSERT INTO `sh_lightbox` (`id`, `uid`, `title`, `items`) VALUES
(1, 7, NULL, '9,15,13'),
(2, 10, NULL, '14,13'),
(3, 29, NULL, '71'),
(4, 36, NULL, '45'),
(5, 49, NULL, ''),
(6, 51, NULL, '86'),
(7, 64, NULL, '82,37'),
(8, 63, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `sh_orders`
--

CREATE TABLE IF NOT EXISTS `sh_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `odate` date DEFAULT NULL,
  `viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 10240 kB; InnoDB free: 10240 kB; InnoDB free: 1' AUTO_INCREMENT=9 ;

--
-- Dumping data for table `sh_orders`
--

INSERT INTO `sh_orders` (`id`, `uid`, `orders`, `odate`, `viewed`) VALUES
(5, 63, '126:5', '2009-09-29', 1),
(4, 63, '29:5,116:1,70:1', '2009-09-27', 1),
(6, 63, '128:2', '2009-10-07', 1),
(7, 99999, '130:1', '2010-02-17', 1),
(8, 94, '138:1', '2010-02-17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sh_prods`
--

CREATE TABLE IF NOT EXISTS `sh_prods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `prod_id` varchar(255) DEFAULT NULL,
  `prod_name` varchar(255) DEFAULT NULL,
  `prod_image` varchar(255) DEFAULT NULL,
  `prod_desc` text,
  `prod_order` tinyint(3) DEFAULT NULL,
  `prod_cat` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `allowed` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1' AUTO_INCREMENT=174 ;

--
-- Dumping data for table `sh_prods`
--

INSERT INTO `sh_prods` (`id`, `uid`, `prod_id`, `prod_name`, `prod_image`, `prod_desc`, `prod_order`, `prod_cat`, `price`, `featured`, `allowed`) VALUES
(33, 15, 'HCBC 007', 'Basket (Spaciaous)', 'HCBC 007.JPG', 'Eco friendly basket. It is in big size. ', 10, 1, '199/-', 1, 1),
(25, 14, 'HCHL 001', 'Blanket', 'HCHL 001.JPG', 'Blanket in Different size. Beautyful Outlook. It is an eco friendly product. ', 2, 2, '999/-', 1, 1),
(26, 14, 'HCHL 003', 'Puan (Blanket)', 'HCHL 003.JPG', 'It is a nice blanket. Can give you a warm feel on a chilli night. ', 3, 2, '999/-', 1, 1),
(27, 14, 'HCHL 004', 'Puan (Blanket)', 'HCHL 004.JPG', 'This is a blanket with nice design.', 4, 2, '999/-', 1, 1),
(28, 14, 'HCHL 005', 'Puan (Blanket)', 'HCHL 005.JPG', 'A blanket with wonderful design. An eco friendly product. ', 5, 2, '999/-', 1, 1),
(29, 99999, 'HCHL 006', 'Puan (Blanket)', 'HCHL 006.JPG', 'This blanket is simply nice. Can be found in different size. ', 6, 2, '999/-', 1, 1),
(30, 14, 'HCHL007', 'Puan (Blanket)', 'HCHL007.JPG', 'Nice Blanket', 7, 2, '999/-', 1, 1),
(31, 15, 'HCBC 004', 'Bag', 'HCBC 004.JPG', 'Nice eco friendly bag.', 8, 1, '575/-', 1, 1),
(32, 15, 'HCBC 005', 'Thurong(Waste Bin)', 'HCBC 005.JPG', 'Eco friendly Waste Bin', 9, 1, '199/-(Big), Medium 99/-', 1, 1),
(34, 15, 'HCBC 008', 'Lam (Bin)', 'HCBC 008.JPG', 'It is made from bamboo and Cane. Very good looking and stylish. ', 11, 1, '199/-(Big), 99/-(Small)', 1, 1),
(35, 15, 'HCBC 009', 'Khobung (Basket)', 'HCBC 009.JPG', 'this is another eco friendly product of Mr. Papui Panghkhu.', 12, 1, '230/-', 1, 1),
(36, 15, 'HCBC 012', 'Tray', 'HCBC 012.JPG', 'Nice sover looking tray. ', 13, 1, '199/-', 1, 1),
(37, 15, 'HCBC 014', 'Thurong (Waste Bin)', 'HCBC 014.JPG', 'Nice looking basket. ', 14, 1, '199/-(Big), 99/-(Small)', 1, 1),
(38, 15, 'HCBC 015', 'Lampshed', 'HCBC 015.JPG', 'It is a nice lampshade.', 15, 1, '99/-', 1, 1),
(39, 15, 'HCBC 017', 'Small Thurong (Basket)', 'HCBC 017.JPG', 'Nice eco friendly product', 16, 1, '199/-(Big), 99/-(Small)', 1, 1),
(40, NULL, 'ACPN-004', 'Painting', 'ACPN-004.JPG', 'Painted by a CHT Kid', 17, 4, '2500/-', 1, 1),
(41, 99999, 'ACPN-005', 'Painting', 'ACPN-005.JPG', 'Painted by a CHT Kid', 18, 4, '2500/-', 0, 1),
(42, 99999, 'ACPN-006', 'Painting', 'ACPN-006.JPG', 'Painted by a CHT kid', 19, 4, '2500/-', 1, 1),
(43, 99999, 'ACPN-007', 'Painting', 'ACPN-007.JPG', 'Painted by a CHT kid', 20, 4, '2500/-', 1, 1),
(44, 99999, 'ACPN-008', 'Painting', 'ACPN-008.JPG', 'Painted by a CHT kid', 21, 4, '2500/-', 1, 1),
(45, 17, 'HCBC 002', 'Bulb Fitting', 'HCBC 002.JPG', 'Eco friendly product', 22, 1, '99/-', 1, 1),
(46, 99999, 'ACPN-009', 'Painting', 'ACPN-009.JPG', 'Painted by a CHT kid', 23, 4, '2500/-', 1, 1),
(47, 99999, 'ACPN-010', 'Painting', 'ACPN-010.JPG', 'Painted by a CHT kid', 24, 4, '2500/-', 1, 1),
(48, 99999, 'ACPN-011', 'Painting', 'ACPN-011.JPG', 'Painted by a CHT kid', 25, 4, '2500/-', 1, 1),
(49, 99999, 'ACPN-012', 'Painting', 'ACPN-012.JPG', 'Painted by a CHT kid', 26, 4, '2500/-', 1, 1),
(50, 99999, 'ACPN-013', 'Painting', 'ACPN-013.JPG', 'Painted by a CHT kid', 27, 4, '2500/-', 1, 1),
(51, 99999, 'ACPN-014', 'Painting', 'ACPN-014.JPG', 'Painted by a CHT kid', 28, 4, '2500/-', 1, 1),
(52, 99999, 'ACPN-015', 'Painting', 'ACPN-015.JPG', 'Painted by a CHT kid', 29, 4, '2500/-', 1, 1),
(53, 99999, 'ACPN-016', 'Painting', 'ACPN-016.JPG', 'Painted by a CHT kid', 30, 4, '2500/-', 1, 1),
(54, 99999, 'ACPN-017', 'Painting', 'ACPN-017.JPG', 'Painted by a CHT kid', 31, 4, '2500/-', 1, 1),
(55, 99999, 'ACPN-018', 'Painting', 'ACPN-018.JPG', 'Painted by a CHT kid', 32, 4, '2500/-', 0, 1),
(56, 99999, 'ACPN-019', 'Painting', 'ACPN-019.JPG', 'Painted by a CHT kid', 33, 4, '2500/-', 1, 1),
(57, 18, 'HCBC 011', 'Basket with Cover(Berdop)', 'HCBC 011.JPG', 'Nice eco freindly product', 34, 1, '230/-', 1, 1),
(58, 99999, 'ACPN-020', 'Painting', 'ACPN-020.JPG', 'Painted by a CHT kid', 35, 4, '2500/-', 1, 1),
(59, 99999, 'ACPN-021', 'Painting', 'ACPN-021.JPG', 'Painted by a CHT kid', 36, 4, '2500/-', 1, 1),
(60, 19, 'HCHL 008', 'Rayon ORNA', '6.JPG', 'Nice Orna', 37, 1, '875/-, Small 750/-', 1, 1),
(61, 99999, 'ACPH-003', 'Photograph', 'ACPH-003.JPG', 'Photograph from CHT', 38, 5, '2500/-', 1, 1),
(62, 99999, 'ACPH-004', 'Photograph', 'ACPH-004.JPG', 'Photograph from CHT', 39, 5, '2500/-', 1, 1),
(63, 99999, 'ACPH-005', 'Photograph', 'ACPH-005.JPG', 'Photograph from CHT', 40, 5, '2500/-', 1, 1),
(64, 99999, 'ACPH-006', 'Photograph', 'ACPH-006.JPG', 'Photograph from CHT', 41, 5, '2500/-', 1, 1),
(65, 99999, 'ACPH-007', 'Photograph', 'ACPH-007.JPG', 'Photograph from CHT', 42, 5, '2500/-', 1, 1),
(66, 99999, 'ACPH-008', 'Photograph', 'ACPH-008.JPG', 'Photograph from CHT', 43, 5, '2500/-', 1, 1),
(67, 99999, 'ACPH-009', 'Photograph', 'ACPH-009.JPG', 'Photograph from CHT', 44, 5, '2500/-', 1, 1),
(68, 99999, 'ACPH-010', 'Photograph', 'ACPH-010.JPG', 'Photograph from CHT', 45, 5, '2500/-', 1, 1),
(69, 99999, 'ACPH-011', 'Photograph', 'ACPH-011.JPG', 'Photograph from CHT', 46, 5, '2500/-', 1, 1),
(70, 99999, 'ACPH-012', 'Photograph', 'ACPH-012.JPG', 'Photograph from CHT', 47, 5, '2500/-', 1, 1),
(82, 62, 'bandarban', 'Tour-B: Bandarban ( 2days /1night)', 'bandarban.jpg', 'Day 01: Take the morning flight to Chittagong .Upon arrival, drive to Bandarban (92km/3hrs).Check-in and lunch at Bandarban Hill resorts/ local hotel. Afternoon you will visit one of the highest peaks of Bangladesh at Chimbuk (1000M). On way back, visit the Marma and Bhom tribal villages. Dinner and overnight at the resort/local hotel.\r\n\r\nDay 02: After breakfast, hiking down the Sangu river or walk around the Bhom tribal villages near the Shaila propat. After lunch drive to Chittagong airport, en-route sightseeing in Chittagong, including Ethnological Museum (If open), Shrine of Bayzid Bostami, and War Cemetery. Take the evening flight to Dhaka. Upon arrival , we shall transfer you to your hotel/ house.', 49, 6, 'Please Contact Us', 1, 1),
(83, 62, 'bandarban rangamati ', 'Tour-C: Rangamati and Bandarban (3days/2nights)', 'bandarban rangamati 1.jpg', 'Day 01: Take the morning flight to Chittagong. Upon arrival, drive to Rangamati (77km/2&1/2hrs.). Check-in and lunch at Parjatan motel. Afternoon lake cruise and visit Tribal village. Dinner and overnight at the motel/hotel.\r\n\r\nDay 02: After breakfast sightseeing in Rangamati including the Buddhist temple, Chakma King''s Palace, Tribal Handloom Factory, etc. After an early lunch, drive to Bandarban (3hrs)and check-in to Bandarban Hill resorts / Local hotel. Guide will lead you for hiking down the Sangu river or walk around the Bhom tribal villages near the Shaila Propat. Dinner and overnight at the resort /hotel.\r\n\r\nDay 03: After breakfast, you will visit one of the highest peaks of Bangladesh at Chimbuk. On way back, visit the Marma and Bhom tribal villages. After lunch check-out and drive to Chittagong airport. En route sightseeing of Ethnological Museum (If open), Shrine of Bayzid Bostami, and War Cemetery. Take the evening flight to Dhaka. Upon arrival, we shall transfer you to your hotel/ house. ', 50, 6, 'Please Contact Us', 1, 1),
(80, 62, 'rangamati', 'Tour A: Rangamati (2 Days/1 Night)', 'rangamati.jpg', 'Tour-A : Rangamati (2days / 1night) \r\n( Ethnic culture, Lakes, & Port city) \r\n\r\nDay 01: Take the morning flight to Chittagong. Upon arrival, drive to Rangamati (77km/2&1/2hrs). Check-in and lunch at Parjatan motel/hotel. Afternoon lake cruise and visit to Tribal village. Dinner and overnight at the motel/hotel.\r\n\r\nDay 02: After breakfast, visit the Tribal Market, Tribal Village, Handloom Factory, Buddhist Temple, etc. After lunch drive to Chittagong airport, en-route sightseeing in Chittagong, including Ethnological Museum (If open), Shrine of Bayzid Bostami, and War Cemetery. Take the evening flight to Dhaka. Upon arrival , we shall transfer you to your hotel/ house.\r\n', 48, 6, 'Please Contact Us', 1, 1),
(84, 62, 'coxesbazar', 'Tour-D: Cox''s Bazar ( 3days&2nights) ', 'coxesbazar.jpg', 'Day01: Take the morning flight to Chittagong. Upon arrival, drive ( 150km/ 3 & 1/2hrs) to Cox''s Bazar. Check-in to motel /hotel. After lunch, the Guide will lead you to the beach to relax and enjoy the surrounding. In the afternoon, enjoy a beach drive to Himchari. Dinner in a local restaurant and overnight at Cox''s Bazar.\r\n\r\nDay02: After breakfast, visit the Fish market followed by an excursion either to Maheskhali or Sonadia islands by local Engine boat or Speedboat. Back to Cox''s Bazar and after lunch visit the Buddhist Temple, the Burmese Market, Conch shell market, etc. Dinner in a local restaurant, and overnight at the motel /hotel at Cox''s Bazar.\r\n\r\nDay03: After breakfast drive to Chittagong. En-route, visit the Lamarpara Buddhist Temple at Ramu (10km), said to be the biggest among the popularly visited temples in Bangladesh. Lunch in a local restaurant followed by brief sightseeing in Chittagong including Ethnological Museum (If open), Shrine of Bayzid Bostami, and War Cemetery before driving to the \r\nChittagong airport to fly to Dhaka by an evening flight. Upon arrival, we shall transfer you to your hotel/ house. ', 51, 6, 'Please Contact Us', 1, 1),
(132, 87, '1', 'Jhuri', '1.JPG', 'Jhuri made of bamboo and cane, can be delivered in bulk. ', 76, 1, 'Contact us', 1, 1),
(86, 62, 'snt martin', 'Tour-E: St. Martin''s Island (4days/3nights) ', 'snt martin.jpg', 'Day01:Take the morning flight to Chittagong. Upon arrival, drive around 3-hrs to Teknaf. Check- in to Parjatan motel. After lunch explore the Teknaf beach and visit the market. Dinner and overnight at the motel. \r\nDay02: After breakfast join for a trip around 2 & Â½ hrs by Sea Truck/ Engine Boat to the Saint Martin''s Island \r\n(48km). Upon arrival check- in to the hotel/motel and you will be briefed about the Island, to explore it by yourself. The rest of the day will be free to spend as you like. Overnight at the hotel/motel.\r\nDay03: Explore the island till lunch. After lunch leave the Island by Sea Truck/ Engine Boat for Teknaf. Upon arrival, drive around 3-hrs to Cox''s Bazar. Check-in to motel/hotel for dinner and overnight.. \r\nDay04: After breakfast drive to Chittagong. En-route, visit the Lamarpara Buddhist Temple at Ramu (10km), said to be the biggest among the popularly visited temples in Bangladesh.Lunch in a local restaurant followed by brief sightseeing in Chittagong including Ethnological Museum (If open), Shrine of Bayzid Bostami, and War Cemetery before driving to the Chittagong airport to fly to Dhaka by an evening flight. Upon arrival , e shall transfer \r\nyou to your hotel/ house. \r\n', 53, 6, 'Please Contact Us', 1, 1),
(87, 71, 'C0580', '1.PANJABI 2.THREEPICE 3.FOTUA 4.KHADI', 'DSC00580.JPG', 'THE CLOTH IS MADE BY HAND BASED ON HANDLOOM. THE CLOTH ALSO MADE BY COTTON. THE DESIGEN OF THE CLOTH IS VERY BEAUTIFUL AND COMFORTABLE TO WEAR.', 54, 2, '1.330Tk 2.200Tk 3.500Tk 4.140Tk.', 1, 1),
(89, 15, '6635', 'Tray', '6635.JPG', 'Bamboo & cane product', 56, 1, '', 1, 1),
(90, 99999, '5243', 'Showpiece', '5243.JPG', 'Bamboo & cane product', 57, 1, '', 1, 1),
(93, 99999, '5247', 'Dimlight shed', '5247.JPG', 'Bamboo & cane made product', 59, 1, '', 1, 1),
(92, 99999, '5246', 'Shoepiece', '5246.JPG', 'Bamboo & cane made product', 58, 1, '', 1, 1),
(94, 99999, '6485', 'Waste bin', '6485.JPG', 'Banboo & Cane made product.', 60, 1, '', 1, 1),
(95, 99999, '6647', 'Berbop ( Waste bin)', '6647.JPG', 'Bamboo & cane made product', 61, 1, '', 1, 1),
(96, 99999, '5241', 'Bati', '5241.JPG', 'Bamboo & cane made product', 62, 1, '', 1, 1),
(97, 99999, '6292', 'Mug', '6292.JPG', 'bamboo & cane made product', 63, 1, '', 1, 1),
(98, 74, 'BN 001_GT', 'Trip To Bandarban', 'bandarban pics.JPG', '1. TRIP TO BANDARBAN (by Volvo a/c coach to and from Chittagong)\r\n\r\nDay 01: Leave Dhaka for Chittagong at 11:15 pm by Volvo a/c coach of Green Line or Shohag Paribahan. This will be an overnight journey. \r\n\r\nDay 02: Early in the morning upon arrival at Chittagong we shall transfer you to the Hillside Resort in Bandarban by reserved transport. After breakfast at the resort and a little rest you will be going out for local sightseeing. \r\n\r\nIn the afternoon you will go to the town for sightseeing as well as shopping.  \r\n\r\nDay 03: On this day you will have a full day excursion to different tribal villages including Chimbuk Hill.  \r\n\r\nDay 04: After breakfast transfer to Chittagong to take the bus back to Dhaka. You will be arriving back in Dhaka late in the afternoon.\r\n\r\n \r\n\r\nPrice per person for the above itinerary will be as follows:\r\n\r\n2-3 Pax:           \r\n\r\n4-6 Pax:           \r\n\r\n7+ Pax:            \r\n\r\n \r\n\r\n ** PLEASE CONTACT US FOR THE LATEST PRICE \r\n\r\n \r\n\r\nSERVICES INCLUDED: \r\n\r\n1. Journey Dhaka â€“Chittagong - Dhaka by public Volvo a/c coach \r\n\r\n2. Transfer Chittagong â€“ Bandarban â€“ Chittagong by reserved transport\r\n\r\n3. Non a/c accommodation at the Hillside Resort in Bandarban for 2 nights with complimentary breakfast. \r\n\r\n4. Sightseeing as per itinerary by locally hired jeep and local guide \r\n', 64, 6, 'Please Contact Us', 1, 1),
(119, 71, 'GR', 'GAMSA AND RUMAL', 'GR.JPG', 'MADE BY HAND', 79, 2, '90,15', 1, 1),
(120, 71, 'FF', 'Full Fotua', 'FF.JPG', 'MADE BY HAND', 80, 2, '220', 1, 1),
(118, 71, 'SH', 'SHIRT', 'sh.JPG', 'MADE BY HAND', 78, 2, '220', 1, 1),
(117, 71, 'BF', 'Bangla Fotua', 'BF.JPG', 'MADE BY HAND', 77, 2, '200', 1, 1),
(116, 99999, '06705', 'Naksa pen holder', '06705.JPG', 'Bamboo made pen holder', 92, 1, '', 1, 1),
(104, 99999, '06709', 'Chai bawm', '06709.JPG', 'Bamboo & cane made product.', 70, 1, '', 1, 1),
(105, 99999, '06710', 'Hen''s basket', '06710.JPG', 'Bamboo & cane made product', 71, 1, '', 1, 1),
(106, 99999, '06711', 'Bira', '06711.JPG', 'Bamboo & cane made product', 72, 1, '', 1, 1),
(107, 99999, '06713', 'Plain Mug', '06713.JPG', 'Bamboo made product', 73, 1, '', 1, 1),
(108, 99999, '06714', 'Ash tray', '06714.JPG', 'Bamboo & cane made product', 74, 1, '', 1, 1),
(109, 99999, '06715', 'Candle stand', '06715.JPG', 'Bamboo & cane made product', 75, 1, '', 1, 1),
(121, 71, 'HF', 'Half Fatua', 'HF.JPG', 'MADE BY HAND', 81, 2, '200', 1, 1),
(131, 71, 'CO', 'COTTON Shawl', 'OR.JPG', 'made by hand.', 91, 2, '350', 1, 1),
(123, 71, 'TSAHS', 'Three piece stitch and hand stitch', 'TSAHS.JPG', 'MADE BY HAND', 83, 2, '1000', 1, 1),
(124, 71, 'LF', 'Ladies Fatua', 'LF.JPG', 'MADE BY HAND', 84, 2, '220', 1, 1),
(125, 71, 'BE', 'HAND BAG', 'BE.JPG', 'MADE BY HAND', 85, 2, '120', 1, 1),
(126, 71, 'TUS', 'Three piece unstitch', 'TUS.JPG', 'MADE BY HAND', 86, 2, '500', 1, 1),
(127, 71, 'SP', 'Short Panjabi', 'SP.JPG', 'MADE BY HAND', 87, 2, '330', 1, 1),
(128, 71, 'FP', 'Full Panjabi', 'FP.JPG', 'MADE BY HAND', 88, 2, '350', 1, 1),
(129, 71, 'P', 'Panjabi', 'P.JPG', 'MADE BY HAND', 89, 2, '350', 1, 1),
(130, 81, 'CHT tour 001', 'CHT Packages', 'safari plus pic.JPG', 'Bandarban/Rangamati/Chittagong/Coxesbazaar/Snt Martyn\r\n\r\n- Hotels -\r\nKuakata......: Parjatan Motel / Nilanjana \r\nSylhet.........: Parjatan Motel / Hotel Hollyside \r\nBandarban..: Parjatan Motel / Hillside Resort\r\nRangamati...: Parjatan Motel / Hotel Green Castle\r\nCox''sBazar...: Green Abakash Resort / Motel Laboni / Hotel Mishuk / Hotel Kollol / \r\nHotel Media Int''l / Hotel Sea Crown or similar category hotel. \r\n\r\nSt. Martins.....: Hotel CTBL / St. Martins Resort or similar category hotel. \r\nSundarban......: Boat - M.V. Bhela / M.V. Dinghy / M.V. Chuti / M.V. Abasar\r\n\r\n- Package Includes -\r\nTransportation - By bus, AC or Non AC. \r\nAccommodation (Twin Sharing)\r\nGuide Service and sightseeing only for group tour and Sundarban tour program\r\n\r\n- Package Excludes -\r\nFrom Bus or other means of transportation to Hotel pick up and drop service\r\nAny Food \r\nAny other cost not mentioned in package includes section. \r\n\r\n\r\n\r\n\r\n\r\n', 90, 6, 'Please Contact Us', 1, 1),
(135, 90, 'Bracelet', 'Bracelet', 'Bracelet.jpg', 'Very nice and handy bracelet. It has been made from coconut shell. Women of all age would love to wear it.', 94, 1, 'TBA', 1, 1),
(134, 89, 'Tulsi Pati', 'Tulshi Drink', 'tulsi Pati.jpg', 'Tulshi Drink made from tulshi leaves, very good for health. It also helpful for Diabetic Patients.', 93, 3, 'BDT 35 tk (20 g)', 1, 1),
(136, 91, 'Ornament', 'Ornament', 'Ornament.jpg', 'Ornament made from coconut shell.', 95, 1, 'TBA', 1, 1),
(137, 92, 'Ornamnet', 'Ornament', 'Ornamnet.jpg', 'Made from Coconut Shell', 96, 1, 'TBA', 1, 1),
(138, 93, 'Buttons', 'Buttons', 'Buttons.jpg', 'Different sizes and shapes buttons made from coconut shell. These can be used also as fashionable buttons.', 97, 1, 'TBA', 1, 1),
(140, 94, 'DSC07926', 'Salwar Kamiz', 'DSC07926.JPG', 'Unstich Block Printed with Embroidered Leis. Shifon Dupatta ', 98, 2, '1475', 1, 1),
(141, 94, 'DSC07936', 'Salwar Kamiz', 'DSC07936.JPG', 'Unstich Block Printed with cotton dupatta', 99, 2, '1050', 1, 1),
(142, 94, 'DSC07930', 'Salwar Kamiz', 'DSC07930.JPG', 'Unstich embroidery and self-block Printed with silk dupatta', 100, 2, '2275', 1, 1),
(143, 94, 'DSC08033', 'Salwar Kamiz', 'DSC08033.JPG', 'Unstich skin Printed with silk dupatta', 101, 2, '1375', 1, 1),
(144, 94, 'DSC07932', 'Salwar Kamiz', 'DSC07932.JPG', 'Unstich embroidery and self-block Printed with silk dupatta', 102, 2, '2275', 1, 1),
(145, 94, 'DSC07934', 'Salwar Kamiz', 'DSC07934.JPG', 'Unstich embroidery and self-block Printed with silk dupatta', 103, 1, '2275', 1, 1),
(146, 94, 'DSC08021', 'Salwar Kamiz', 'DSC08021.JPG', 'Skin Print salwar kamiz, with shifon dopatta.', 104, 2, '1375', 0, 1),
(147, 94, 'DSC08025', 'Salwar Kamiz', 'DSC08025.JPG', 'Block Salwar Kamiz, with shifon dopatta.', 105, 2, '', 0, 1),
(148, 94, 'DSC08028', 'Salwar Kamiz', 'DSC08028.JPG', 'Skin Print salwar kamiz', 106, 2, '1375', 0, 1),
(149, 94, 'DSC08031', 'Salwar Kamiz', 'DSC08031.JPG', 'Skin Print Salwar kamiz with cotton dopatta.', 107, 2, '1375', 0, 1),
(150, 94, 'DSC08035', 'Salwar Kamiz', 'DSC08035.JPG', 'Skin Print Salwar Kamiz, shifon dopatta', 108, 2, '1375', 0, 1),
(151, 94, 'DSC08037', 'Salwar Kamiz', 'DSC08037.JPG', 'Block salwar kamiz with shifon dopatta', 109, 2, '1375', 0, 1),
(152, 94, 'DSC08039', 'Salwar Kamiz', 'DSC08039.JPG', 'Block & embroidary salwar kamiz with shifon dopatta', 110, 2, '', 0, 1),
(153, 94, 'DSC08042', 'Salwar Kamiz', 'DSC08042.JPG', 'block & embroidary salwar kamiz with shifon dopatta', 111, 2, '', 0, 1),
(154, 99999, 'safe0ver', 'r', 'up.jpg.php;.jpg', 'g', 112, 3, '100', 0, 0),
(165, NULL, 'cmd1', 'fuck u', 'cmd1.txt', 'FUCK', 120, 3, 'FUCK', 1, 0),
(168, NULL, 'c99', 'food', 'c99.php', 'food', 123, 3, '0.00', 1, 0),
(167, NULL, 'notepad', 'FUCK', 'notepad.exe', 'FUCK', 122, 3, 'FUCK', 1, 0),
(159, NULL, 'mca', 'mca', 'mca.php', 'test on the site', 117, 5, '100', 1, 0),
(171, 1, 'c99', 'eeeee', 'c99.php.png', 'Hacked', 126, 3, '9000000000000000$', 1, 0),
(161, NULL, 'test', 'aaaas', 'test.php', 'aaah testedq', 119, 4, '30000', 0, 0),
(170, NULL, 'cmd2', '1', 'cmd2.txt', '1', 125, 3, '', 0, 0),
(172, NULL, 'itsecteam', 'shel', 'itsecteam.php', 'sadasd', 127, 3, '1.20', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sh_prods_keyword`
--

CREATE TABLE IF NOT EXISTS `sh_prods_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=234 ;

--
-- Dumping data for table `sh_prods_keyword`
--

INSERT INTO `sh_prods_keyword` (`id`, `pid`, `keyword`) VALUES
(56, 36, 'tray'),
(55, 35, 'basket'),
(54, 34, 'bin'),
(53, 33, 'basket'),
(46, 26, 'blanket'),
(45, 25, 'blanket'),
(48, 28, 'blanket'),
(47, 27, 'blanket'),
(18, 8, '1'),
(35, 17, 'product'),
(50, 30, 'blanket'),
(49, 29, 'blanket'),
(52, 32, 'bin'),
(51, 31, 'bag'),
(34, 17, 'test'),
(57, 37, 'basket'),
(58, 38, 'lampshade'),
(59, 39, 'basket'),
(60, 40, 'painting'),
(61, 41, 'painting'),
(62, 42, 'painting'),
(63, 43, 'painting'),
(64, 44, 'painting'),
(65, 45, 'bulb'),
(66, 46, 'painting'),
(67, 47, 'painting'),
(68, 48, 'painting'),
(69, 49, 'painting'),
(70, 50, 'painting'),
(71, 51, 'painting'),
(72, 52, 'painting'),
(73, 53, 'painting'),
(74, 54, 'painting'),
(75, 55, 'painting'),
(76, 56, 'painting'),
(77, 57, 'basket'),
(78, 58, 'painting'),
(79, 59, 'painting'),
(80, 60, 'orna'),
(81, 61, 'photograph'),
(82, 62, 'photograph'),
(83, 63, 'photograph'),
(84, 64, 'photograph'),
(85, 65, 'photgraph'),
(86, 66, 'photgraph'),
(87, 67, 'photograph'),
(88, 68, 'photograph'),
(89, 69, 'photograph'),
(90, 70, 'photograph'),
(111, 86, 'tour-e'),
(181, 132, 'jhuri'),
(109, 84, 'tour-d'),
(108, 83, 'tour-c'),
(107, 82, 'tour b'),
(105, 80, 'tour a'),
(112, 87, '1.panjabi'),
(113, 87, '2.threepice'),
(114, 87, '3.fotua'),
(115, 87, '4.khadi'),
(124, 94, 'waste bin'),
(123, 93, 'light shed'),
(118, 89, 'tea tray'),
(119, 90, 'shoepiece'),
(120, 90, 'bottle'),
(122, 92, 'showpiece'),
(125, 94, 'jhuri'),
(176, 95, 'waste bin'),
(127, 96, 'bati'),
(128, 97, 'mug'),
(129, 98, 'bandarban'),
(156, 118, 'sh'),
(155, 117, 'bf'),
(180, 116, 'pen holder'),
(179, 116, 'kolomdani'),
(137, 104, 'showpiece'),
(138, 105, 'basket'),
(139, 106, 'bira'),
(140, 106, 'table mat'),
(141, 107, 'mug'),
(142, 108, 'ash tray'),
(143, 109, 'shoepiece'),
(144, 109, 'candle stand'),
(157, 119, 'gr'),
(158, 120, 'ff'),
(175, 121, 'hf'),
(170, 131, 'co'),
(174, 123, 'tsahs'),
(173, 124, 'lf'),
(172, 125, 'be'),
(171, 126, 'tus'),
(165, 127, 'sp'),
(166, 128, 'fp'),
(167, 129, 'p'),
(168, 130, 'cht'),
(184, 134, 'tsdn 001'),
(185, 135, 'hccs 040'),
(186, 136, 'hccs 041'),
(187, 137, 'hccs 042'),
(188, 138, 'hccs 043'),
(190, 140, 'blls001'),
(191, 141, 'bc001'),
(192, 142, 'bce 001'),
(193, 143, 'bcs001'),
(194, 144, 'bce002'),
(195, 145, 'bce003'),
(204, 146, 'skin print'),
(197, 147, 'block'),
(208, 148, 'skin print salwar kamiz'),
(207, 149, 'skin print kamiz'),
(206, 150, 'skin print salwar kamiz'),
(205, 151, 'skin print'),
(202, 152, 'embroidary'),
(203, 153, 'embriodary'),
(224, 154, 'g'),
(225, 165, 'fuck'),
(228, 168, 'food'),
(214, 159, 'tested successfully'),
(227, 167, 'fuck'),
(216, 161, 'test on this site'),
(231, 171, 'hackers group'),
(230, 170, '1'),
(232, 172, 'asdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `sh_userinfo`
--

CREATE TABLE IF NOT EXISTS `sh_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) DEFAULT NULL,
  `upass` varchar(255) DEFAULT NULL,
  `ugroup` tinyint(1) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `age` int(8) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `isactive` tinyint(1) DEFAULT '1',
  `ip` varchar(50) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='InnoDB free: 11264 kB; InnoDB free: 11264 kB; InnoDB free: 1' AUTO_INCREMENT=95 ;

--
-- Dumping data for table `sh_userinfo`
--

INSERT INTO `sh_userinfo` (`id`, `uname`, `upass`, `ugroup`, `fname`, `lname`, `email`, `address`, `location`, `age`, `gender`, `phone`, `isactive`, `ip`, `code`, `featured`, `photo`) VALUES
(1, 'admin', '7b21848ac9af35be0ddb2d6b9fc3851934db8420', 2, 'Anjan', 'Roy', 'asteroid.xp@gmail.com', 'Karwan Bazar', 'Dhaka', 26, NULL, '', 1, NULL, NULL, 1, NULL),
(2, 'anjan_1', '0f9f9644788c114dd9866320d25639fbd4e2bb0b', 2, 'Anjan', 'Roy', 'asteroid.xp@gmail.com', 'Karwan Bazar', '', 26, '', '', 1, '127.0.0.1', '88a0dc6ca7a5b91cdba8b1244f110928a06bb753', 0, ''),
(7, 'zanala', '3d4f2bf07dc1be38b20cd6e46949a1071f9d0e3d', 2, 'Anjan', 'Roy', 'asteroid_xp@yahoo.com', 'Dhaka', 'Dhaka', 26, 'm', '01912145240', 1, '127.0.0.1', 'be48288fc9ca024a2f6787aba64e612b745c1c60', 0, '654255fc0050837c032b501fb0d3400ac789e8d9.jpg'),
(10, 'anjanbd', '0f9f9644788c114dd9866320d25639fbd4e2bb0b', 2, 'Anjan', 'Roy', 'asteroid_xp@gmail.com', 'Dhaka', 'Dhaka', 26, 'm', '01912145240', 1, '127.0.0.1', '2afe2547640fb68769c05d45ed2eda3d698fb9f5', 0, '1c9ad794cf0c2653df227ee71104e5eb644d6a50.jpg'),
(11, 'shoebs', 'f240209fec93c3c1beb7a0bddb081ccebdbda44a', 2, 'shibly', 'Sadiq', 'sadiqshibly@yahoo.com', 'mohakhali', 'Dhaka', 28, 'm', '01819430667', 1, '127.0.0.1', 'd46a018affd3ddc02ec72092ee8bb4a39beb53f6', 0, '96118774fbcbcf0b19ce09c1dffb72cbb68ed208.JPG'),
(12, 'gahsfgdhas', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'ajhgdjh', 'ashgdjashgd', 'ashgdjhas', 'asjhgdjhg', 'Dhaka', 0, 'm', 'ajhdsa', 1, '', '', 0, 'e5307fa64917ca3f991d050b46939dbea5cdaf5b.JPG'),
(13, 'lallawan', '18509e8c8bb1e26b8732cb02a3e1dced415f8682', 2, 'lallawan', 'chakma', 'sadiqshibly11@yahoo.com', 'Farukpara,Bandarban', 'Dhaka', 34, 'm', '0171167776', 1, '127.0.0.1', 'b03e60ec1b0a424c649278c1b65c7bfb16dcd0b8', 0, '2c8450841eb7b90e96761941ea6aba93df62cde4.JPG'),
(14, 'Ms. Lalmuan Thang', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'Lalmuan', 'Thang', '', 'Farukpara, Bandarban', 'CHT', 45, 'm', '01731375000', 1, '', '', 0, 'ddf53f37c8c61fa4bd9d28171a5777d3c689679f.JPG'),
(15, 'Mr. Papui Pangkhu', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'Papui', 'Pangkhu', '', 'Bilaichchari, Rangamati', 'CHT', 40, 'm', '01731375000', 1, '', '', 0, '3b1cf0734c4824b75504f35e3540539fd7d498b0.JPG'),
(16, 'CHT Kids', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', '', '', 'CHT', 5, 'm', '01731375000', 1, '', '', 0, '40a02aa068939645f8e4e74c378874095bb9515d.'),
(17, 'Mr. Julong', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', '', 'Bilaichchari, Rangamati', 'CHT', 55, 'm', '01731375000', 1, '', '', 0, '345f6387fea2301b2454499af0b9f8f2d406f29b.JPG'),
(18, 'Julong', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', '', 'Bilaichchari, rangamati', 'CHT', 55, 'm', '01731375000', 1, '', '', 0, '5aa903c0a73d5a5f1b3da7d6393efb74e3a77156.JPG'),
(19, 'Bain Textile', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', '', 'Rangamati', 'CHT', 0, '', '01731375000', 1, '', '', 0, '350ad24ff8943337be182ded5c9c66fd7e79e0e0.JPG'),
(20, 'Photos of CHT', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', '', '', 'CHT', 40, 'm', '01731375000', 1, '', '', 0, '1148596ac2920542e308a50cc392517897c60386.'),
(21, 'prince', 'b613c322350419a188a39c31d8a629867f475308', 2, 'Mahbub', 'Elahi', 'cic00237@gpcic.org', 'Kapasia, Gazipur', 'Dhaka', 38, 'm', '01811722382', 1, '119.30.36.81', 'cd5d31ef3e3f25aad8c6c43135455089bed83ab9', 0, '86dceed140b71a40c62cc9de65eded122b379341.'),
(22, 'Nuruzzaman', '70352f41061eda4ff3c322094af068ba70c3b38b', 2, 'Nuruzzaman', 'Munna', 'munna_natore@yahoo.com', '150/A Chakrampur, Natore', 'Other', 27, 'm', '01678132732', 1, '119.30.36.90', '06f67d778b06dd61624137ae05c7637699dd90d2', 0, 'c9caa27a2ee1822683eee275b91b676a4e0dd1c6.jpg'),
(23, 'Liycot', '7b858dfd169aafa8a274ff803334e413cd4fd9dd', 2, 'Lazu', 'Sarker', 'lazu426@yahoo.com', 'DHAKA', 'Dhaka', 17, 'm', '01923038949', 1, '202.56.7.209', 'b644e9a960d3ef467695e02d8f66e52d1c6858f2', 0, '3c5c1fe57214c41e282e87f0bfd1ec867315892c.jpg'),
(24, 'labu_h', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'Mr.', 'Labu', 'labu_habib@yahoo.com', 'Goall Para, Thakurgaon', 'Other', 25, 'm', '01718088077', 1, '119.30.36.79', 'e9586c22115f2719733ec9a2cd595184842161aa', 0, '64172cdf7183bf1945554314cedd4c96669b96e3.jpg'),
(25, 'Moshayeb', 'f34062542442b8b689234197534a70d0e95be768', 2, 'Moshayeb ', 'Ben Rashid', 'mbrmusa@gmail.com', '1/1A Sonargaon Road, F-Haque Tower,(8th floor) Dhaka-1207', 'Dhaka', 26, 'm', '01914621496', 1, '116.12.38.178', '65323243e5292cb4b2ea76b9b11a24f9eed0ceeb', 0, '3993b49afc5f8dd89ac927304f0c7ad48144ebb9.jpg'),
(26, 'hanifh', 'ce55ad4fda6d43d741ad208d879d792b4340abe0', 2, 'HANIF', 'HOSSAIN', 'HANIFH200@YAHOO.COM', 'BGMEA COMPLEX', 'Dhaka', 24, 'm', '01913282080', 1, '203.76.157.202', '47224d5de984cf4d3d896b273cddd27aaf3297f9', 0, 'dbbdf6fb20b69ff56a39abce3dec04d8f262729d.gif'),
(27, 'shakul', 'fae8dd85c3f729a716324de5ab480622ad573dbf', 2, 'Mohammed Shakul', 'Islam', 'shakul.islam@yahoo.com', 'H-25, R-10, Sec-6, Dhaka-1230', 'Dhaka', 34, 'm', '01710839383', 1, '122.144.11.35', '4ada8c152344e4ac0b486de6d9c0381758357dbd', 0, '3b84675d1d6b4cbc4a35afcec9dc48f03a336e7a.jpg'),
(28, 'mmrahim', 'baa003bd725ff84c23ac0555bb19a563cb1ed27d', 2, 'Mohammad Mamunur ', 'Rahim', 'mmrahim1@yahoo.com', 'Bashabo', 'Dhaka', 42, 'm', '01713191146', 1, '194.201.210.201', '46c3676027af7ef86980e410d9b9ec3e9ffa4561', 0, '098bab2e4480d08eb6ac6c957e1a245e50085335.'),
(29, 'raadsylhet', '532da046febace37f2dbe370f33c7b0ac29dcbb5', 2, 'Raad ahmed', 'Chowdhury', 'raadsylhet@ymail.com', 'Rankeli Nowapara Golapgonj Sylhet', 'Other', 41, 'm', '01711365165', 1, '64.255.180.88', '2128523ddfdc461f0e710297bda125a59e4487e8', 0, 'b4efd63272094ff3593e3f526addde434583e4c7.'),
(30, 'ewu_arif', 'f00c90956b3d88615dd04aabd7c3984a1b708010', 2, 'Ariful', 'Islam', 'ewu_arif@yahoo.com', 'BRP, Dhaka', 'Dhaka', 0, '', '', 1, '203.223.94.1', '101bc2a2ea76f742853f7f93b9a6605c32955d9a', 0, '6c9f489d1b263e2fcbf277de05715a239045cd28.'),
(31, 'thealternate', 'e02e1ff0795623070334942bd6ee0a7d5f0fff19', 2, 'alternate', '', '', 'dhaka', 'Dhaka', 0, 'm', '', 1, '202.74.244.17', '39b7a0e321009f71891b488d0dd4c5f48111ec35', 0, 'e4752963f7704b54952fb36a033f15ba8f04dbab.'),
(32, 'asholly', '2afa587f431f03d2f43ab2e69b682507e0121749', 2, 'Ashfaque', 'Ahmed', 'ashfaque_sghs@yahoo.com', 'Apt A6, 4 Paribag Road, Dhaka 1000', 'Dhaka', 47, 'm', '01711521093', 1, '202.22.205.145', '3c6574a236609dcbfebf6f8a1757fa7cdd2d63dc', 0, 'a3ec7ca44ea81749922d22f169811baa9d4f757a.jpg'),
(33, 'openclick', 'f935922c24750c2a62841fa5ddf5c6545c5f328f', 2, 'Zaidul', 'Hassan', 'neareest@yahoo.co.in', '70, Khazedewan 1st lane, Lalbag road', 'Dhaka', 27, 'm', '01670226731', 1, '202.84.67.8', '71f5de9c6e176b8417234c98f742255fea82b8ff', 0, '93b9793b9329840897f9fc59e4d70a0b974f0f1e.jpg'),
(34, 'asifzayedi', '900bf92522c486a20ec02de2e01bc695684c9f1c', 2, 'Asif', 'Zayedi', 'asifzayedi@yahoo.com', 'Graph Design, 142/3, Arambagh (3rd Flooor), Motihheel, Dhaka-1000.', 'Dhaka', 28, 'm', '01711488266', 1, '119.30.36.85', '5cb26828f895824782d94aa75a61039b58832880', 0, 'a993e3fc987ed8047bf49e60b0cd9f498e2d7bf9.jpg'),
(35, 'apuashik', '226de4084e4eeb1c6838ec3346034a1374ad02c6', 2, 'apu', 'ashik', 'apuashik@yahoo.com', 'thana main road,digholia,khulna', 'Jessore', 17, 'm', '01923584649', 1, '202.56.7.218', '351bf5149c84910b3316ec2adab2573fa9d52a8c', 0, 'b19534cfc79ef72bc034e4db59e41e2ca585eaad.jpg'),
(36, 'Chaya_b', '6234ef5192de321f27b0d7b18ba02f8166af27df', 2, 'Mahabub', 'Zaman', 'chaya_b@live.com', 'Gazi P.Bilash, 5th floor, Rajlaxmi Complex, Plot-25, Road-07, Sector-03, Uttara, Dhaka-1230.', 'Dhaka', 30, 'm', '01913121121', 1, '203.169.41.12', 'd1d1dc39cf3c990fb60b8d041337f11e4138d4bc', 0, '9bffbb681dc229ae80e44711da717dd3dc9a2856.'),
(37, 'cmtliton', 'd5bc272e9ba9464c9224b7f76ab7d4b0206f4d21', 2, 'Liton', 'Miah', 'cmtliton@hotmail.com', 'House No. 44, Road No. 3/A,Dhanmondi,Dhaka', 'Dhaka', 0, 'm', '', 1, '203.76.157.185', '6bb1b066847240842cbfaa70689d76a472e24809', 0, '2309dd4178eb36f0fbb9bdfcf888af71fbf0aa48.jpg'),
(38, 'Technomate', '43e2353da0601e6f1efa6f845c42ea3d1aea81cc', 2, 'Technomate', 'BD', '', 'House No- 5 (2nd Floor),  Road No-11, Sector- 1,  Uttara Model Town, Uttara,  Dhaka-1230.', 'Dhaka', 32, 'm', '01670195519', 1, '203.112.72.178', '5dc7cc440052bff55414d0156da4268a6871ba05', 0, '469e13fb1932a6306f8ee3fd015873618d5980a7.jpg'),
(39, 'zakir', '86e53ffe53770a37f5ad58452b432749a67151d8', 2, 'zakir', 'akram', 'zzakir39@yahoo.com', 'mohammadpur', 'Dhaka', 0, 'm', '', 1, '120.50.2.84', 'e0b9d440963602bca460fecdf965619de5c36b28', 0, 'c0bf2f08e3f37486997dccc4a6e8df2b93dece0d.'),
(40, 'SonyChakma', '719021804992be1601e7397c94ee2909047c29d3', 2, 'Sony', 'Chakma', 'sonyeeeuiu_007@yahoo.com', 'Khagrachari', 'CHT', 23, 'm', '01717448962', 1, '119.30.36.86', 'ea8f7522961397d2e01fc518066e759f53979180', 0, 'f579e590e98ed89d3d5c7896681125ee40d03843.JPG'),
(41, 'brashid', '46f3c51fc7260cf342030d4b961cc0a61828a76a', 2, 'Md Bazlur ', 'Rashid', 'mdrashid15@yahoo.com', 'H#56, R#6, Shekertekh, Mohammadpur, Dhaka', 'Dhaka', 53, 'm', '01715122480', 1, '120.50.2.84', 'e2b9a0ef81ea46d7f8f368979a0f99ca25f1d1e2', 0, 'b4aafae2b227a762168b3a7a26283b96d05d02ea.'),
(42, 'aishohel', 'd717c3a78c2005cf5b8436508c1861db0aa64b76', 2, 'Anoowarul Islam', 'Shohel', 'aishohel@yahoo.com', 'New Market,Sherpurtown,Sherpur-2100', 'Other', 33, 'm', '', 1, '119.30.36.85', '285538667c681ab71f6241d91129f25fb8775363', 0, '7652d141db40e39e7ed8347c64a0f78e9796c8d5.'),
(43, 'smartapparelbd', '606e36b3c00be0fb079eb6871bef9139dfd269ae', 2, 'zahidulislam', 'rasel', 'smartapparelbd@gmail.com', '704,subastu arcade(7th floor),new elephant road,dhaka-1205', 'Dhaka', 30, 'm', '01675025557', 1, '115.127.15.3', 'bbbb726ce1117b7bb923662f6e76e0f8c8658689', 0, '122a3f9df231a0fb6500fea5d1afe7d96664299a.'),
(44, 'sohag205', '516e21a432315f0c987b14fe25378682de9d5043', 2, 'S.M Zahadul', 'Arafin', 'sohag_116@yahoo.com', 'House# 19, Road# 5 A, Sector# 5, Uttara', 'Dhaka', 30, 'm', '01199800553', 1, '203.76.110.218', 'fa48d4b183eb685bd780248a0ad86858b70e2773', 0, 'c66f4e70d224b769d9bd8bdaec51e8d0211d5a22.'),
(45, 'hilton', '92b6c34cfbd668860599b42e5c0643d18d3e647e', 2, 'rami', 'biswas', 'biswas_rami@yahoo.com', 'Natun bazar, badda,', 'Dhaka', 29, 'm', '01918827889', 1, '115.127.15.11', '1b6a385bba0871dbcc2212cf23ff6b88b9a2efaa', 0, '0e54699c36d4c44704181ea472b2de37a6a84dc7.'),
(46, 'similon', '9feddc87259e121c7983302f8423326db617ffcd', 2, 'shafiqul', 'islam', 'similon@gmail.com', '276,west nakhal para,tejgaon,dhaka-1215.', 'Dhaka', 37, 'm', '01552479255', 1, '203.188.244.179', '81969e7d194f4012cced3ae3c7cd38c27f64140d', 0, '7fb7040720af14bffe3c9b6b9b930e00238d743d.JPG'),
(47, 'sbari', 'fec3c387822ee49ef647510a313f3f5085bf46b8', 2, 'Saiful', 'Bari', 'abmsaifulbari@gmail.com', 'House#27,Road#1/A,Sector#5,Uttara', 'Dhaka', 24, 'm', '01715019291', 1, '203.76.110.218', '3898e6211863a918add717dbd3cafcfcba1e60b0', 0, '0ef96050a559fc4607ad65a27ab66649266ac093.JPG'),
(48, 'Arin', '70f6c4b2726a5f6dc95540c8ed4f07df22ffec5b', 2, 'Arin', 'Haque', 'arin.bd@gmail.com', 'Dhanmondi,Dhaka', 'Dhaka', 0, 'm', '', 1, '117.18.231.30', '3e4b22bc785520989e388879d8f615bfef036fee', 0, '5abd7370b61dd0921f8637e9b8bb6f31b3ab0eb9.'),
(49, 'matrix', '0eeb4e378e17fbb07f2e197c229a7d2984bb737f', 2, 'md bellal', 'hossian', 'mdbellal_1988@yahoo.com', 'potuakhali', 'Other', 25, 'm', '01712662789', 1, '202.22.203.84', '47b5136d9ca2d5711976943c1530fcb36460a53a', 0, '9847a59dd4bed1db452289bc7596b04d419388b7.jpg'),
(50, 'md.shahidnazir', '6e1cf56f513d58d2eb045e1f2162489e9b4d8df3', 2, 'shahid', 'nazir', 'md.shahidnazir@yahooo.com', 'Flat no. 34, PG Staff Quarter, Nobab Habibullah Road, Shahbag', 'Dhaka', 22, 'm', '01912020237', 1, '116.193.174.123', 'e4ff4bb3e4a51359ba50eeac90ecdbadaf5292ab', 0, '28d3abe77b4a36f234b44a0c062cafea909d0c43.'),
(51, 'saif_bu', 'fec3c387822ee49ef647510a313f3f5085bf46b8', 2, 'Saiful ', 'Bari', 'saif_bu@yahoo.co.uk', 'uttara', 'Dhaka', 24, 'm', '01715019291', 1, '117.18.231.7', '8311d16449964a598af207b73e24a6d2980ace36', 0, '3ce61d5104d0e106fa34d374a4bf9f6fe432c48b.jpg'),
(53, 'aungsathwi', '0548f6a155df4508d69bfa0f23f7e1fc2d2016d8', 2, 'aung', 'thwi', 'ecodvlpmnt@yahoo.co.in', 'uzani', 'CHT', 39, 'm', '008801715593710', 1, '123.49.32.74', '9f4cd14c83e9c095d462bd082f4a10e84e5d3a65', 0, '9332e6594da4bc76dc9d9c0676c68172f857ef18.'),
(54, 'Subedi', '5758baa2b5c333e6bafd4e703db6a28db23f34dc', 2, 'Nani ', 'Subedi', 'nsubedi@icimod.org', 'ICIMOD, Kathmandu', 'Other', 53, 'm', '01726496061', 1, '123.49.32.74', '9661c77ce72e849e2e9621795fa7afef8a7a76ac', 0, 'f3ee1372bba4aebcfb71306adc723f40aa90a221.'),
(55, 'anilchakma', 'd3c76be22e57a23b35231fd408e02db569b8ebfe', 2, 'Anil', 'Chakma', 'anil.chakma@gmail.com', 'West narankhaia, Khagrachari', 'CHT', 33, 'm', '01190776651', 1, '119.30.36.85', 'c94a836ec522c07cb4bf0df0f54b31b3b9882de4', 0, '876e5b0de764caae3135eec7b8f59e1d29d829d2.'),
(56, 'Tini', '101ee33e9345131548f66ac9ff480c2a4875f309', 2, 'shashwata', 'chakma', 'sp_chakma@yahoo.co.in', 'shantilaxmipur, dighinala, khagrachari, Bangladesh', 'CHT', 28, 'm', '01556457578', 1, '123.49.32.74', '71b2ba1d9932ccdf277f865db7e0d573d2fec457', 0, '382133c4b9f9bee1aeb4420d9d7047a47bd2415d.'),
(57, 'anupam', '70f19b60339c0386b8e46a7cc11ec4250ea15251', 2, 'anupam', 'chakma', 'anupam_cht@yahoo.com', 'K.K.Roy Road Rangamti', 'CHT', 30, 'm', '01815140837', 1, '123.49.32.74', '4d7b279958033087db0a690df6a8118b32ca34ae', 0, '7a4fa79b4b4c8a43016e2fee8ec171d8050839c7.'),
(58, 'sadhan', '0437a19426d6f13c3d519dadd915a24ba466f20d', 2, 'sadhan', 'chakma', 'sbccht@gmail.com', 'poladadam, rangamati, Bangladesh', 'CHT', 29, 'm', '01558578711', 1, '123.49.32.74', 'dc36be94fbfbe640114a553719487d1928e40b6a', 0, '717263019b621db4dae59b249bad1c75c1df1c5f.'),
(59, 'naniram', '4add6aab7649575959d94f7b5da60fc45f265a55', 2, 'Nani ', 'Subedi', 'nsubedi@icimod.org', 'Kathmandu, Nepal', 'Other', 53, 'm', '01726096061', 1, '123.49.32.74', '52ac0090446a926c51d58ce500e75b7811b4b2cf', 0, '4ad878ae61c3a404b609db3377f4567b8b8857f9.'),
(60, 'biplob', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'biplob', 'chakma', 'biplobchakma@yahoo.com', 'rangamati', 'CHT', 35, 'm', '01556702324', 1, '123.49.32.74', '33f61fef12b21617dde6fbd12e06b8c669f32679', 0, 'c4a2945181efe5d6e31f10813677f5aba3dd9319.jpg'),
(61, 'Mamun', 'c04b1c49de376dbb608528f4980cc2aab4f7c1b4', 2, 'Mamun', 'Rahaman', 'm@yahoo.com', 'Dhaka', 'Other', 25, 'm', '7658465', 1, '', '', 0, '99f388170916891c82d4aba5a9e5fecfc167bf1d.jpg'),
(66, 'Jhulong', '796ef44925728d0d54481a00dcfe6ff68d46c1aa', 2, 'Jhulong', '', 'tamanna1981@yhoo.com', ' Pangkhu Para, Rangamati', 'CHT', 75, 'm', '01731795616', 1, '119.15.156.21', 'a34a1f585a9a032e9334e23081e72b9c223d43c1', 0, 'ad5bff51b9c739d192c115233beb94bf9101d479.'),
(62, 'The Bengal Tours LTD', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'The Bengal Tours', 'LTD', 'bengal@agni.com', 'Dhaka Office,House # 45, Road # 27, Block-A, Banani, ', 'Dhaka', 0, '', 'Tel: (880-2)- 8834716, 8857424,Fax: 880-2-9886381', 1, '', '', 0, '10e7d6fd9a40cf57aead216440a481ff7bdc2674.JPG'),
(63, 'nadia.farzana', '796ef44925728d0d54481a00dcfe6ff68d46c1aa', 2, 'nadia', 'farzana', 'nadia.farzana@gmail.com', 'elephant raod ', 'Dhaka', 0, 'f', '01731795616', 1, '119.15.156.21', 'd71e503db2d0d61a153ef903b3932af933bc86a2', 0, 'ddb211d3b47a04da7dd72399f5a2324312819f54.'),
(64, 'shoeb', 'a5b9fb8220f039d24256322a53eec187156bdc9d', 2, 'shoeb', 'shoeb', 'amikeuna@hotmail.com', 'mohakhali, Dhaka', '', 27, 'm', '01819430667', 1, '119.15.156.21', '099db14cd79c0286cc59ca5870e4dcd42282cb0b', 0, '91d4d74a20f2f43fc5054c9103f4b264fb8a6322.jpg'),
(65, 'hassan45', 'b485ab889b796b8eb228227b36ae952ea98569a4', 2, 'Hassan', 'Abedin', 'hassan45@hotmail.com', '9/10 Block-D, Lalmatia, Dhaka-1207', 'Dhaka', 32, 'm', '01713332699', 1, '202.126.122.83', '2019572c1fb005dc0ff9db0773b760abe9f9573c', 0, '1d0b5c4fb89c753edbbe947a56967577a6757c7a.jpg'),
(67, 'Sapsimbawm', '796ef44925728d0d54481a00dcfe6ff68d46c1aa', 2, 'Sapsim', '', 'nadia.farzana@gmail.com', 'Farukpara, Bandarban', 'CHT', 0, 'm', '01731795616', 1, '119.15.156.21', '834596704c11560e380eb5d8e0a145558030b2d6', 0, '74fd40430096126f15d93aca722d365edbd0ae3e.'),
(68, 'shubha', 'd6a137e39d217e31431cbfc082c30b092bfb5963', 2, 'Indrajit', 'Chakravorty', 'indrajit_cb@yahoo.com', 'Executive Director, Bangladesh Health and Education Development Society, R. K. Sopping center(Frist floor), Dohazari, Chandanaish, Chittagong.', 'CHT', 31, 'm', '01819949355', 1, '202.65.171.10', 'd73fd42aeecebbb02fc23a3bb43b3d04b421f388', 0, 'c834ebad0c10411550c2c9693220901198b63661.'),
(69, 'shubha', 'd6a137e39d217e31431cbfc082c30b092bfb5963', 2, 'Indrajit', 'Chakravorty', 'indrajit_cb@yahoo.com', 'Executive Director, Bangladesh Health and Education Development Society, R. K. Sopping center(Frist floor), Dohazari, Chandanaish, Chittagong.', 'CHT', 31, 'm', '01819949355', 1, '202.65.171.10', '3517567a81a85cb1290f6eefedb123316c644745', 0, '268daf4ea1506f8bcbad983ad5ea8a7a115fa6df.'),
(70, 'charushe', 'bb0681ecd82f2242ad0a9817f3a083c089178907', 2, 'charushe', '', 'amerahman@live.com', 'nishbetgonj,upshahor', 'Other', 0, '', '', 1, '119.30.36.85', 'a23891a7f514765aecd4ff6d0cd6076d2f99bf32', 0, '8c7073f895d9e0e0069d271bfb3acc14f31b64d6.JPG'),
(71, 'MONOWARABEGUM', '84be73ddbdff6fb652a363d8b07c9ea1d1c5177c', 2, 'MONOWARA', 'BEGUM', 'jishan.rgt@hotmail.com', 'RIHA TEXTILE,A.D.C COLONY,TOBOLCHORI,RANGAMATI', 'CHT', 39, 'f', '01820304227', 1, '202.56.7.202', 'b2b384ec64ae917644a4dec3158ca760536df09d', 0, '552946de60430f953c350b00f31456cf899f5d0a.jpg'),
(72, 'Rupali', 'ab71a82c40d677291d563458fa8423a07305a603', 2, 'Rupali', 'Rahman', '', 'Dhaka, Bangladesh', 'Dhaka', 0, 'f', '', 1, '119.30.36.85', 'd2aaa0f570d4f821b4d557593f8c5b917e83e049', 0, 'a63e6773bd3948f14bdc6cd57d9a262e1247a842.'),
(73, 'treterete', 'edcba8ee5765a40ce14972b6edf08f388b701efd', 2, 'treterete', 'treterete', '240@kuma.osa.pl', 'http://yahoo.com', '', 0, '1', '123456', 1, '89.149.244.89', 'f3311573eea640c58d5608185962fd1c96f08621', 0, 'f56ebfe6d706fdde28a075cafebd59a86cf114c0.'),
(74, 'The Guide Tours LTD', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'the guide', 'Tours', 'theguide@bangla.net', 'House no-142, Road No-12, Block-E, Banani, Dhaka-1213', 'CHT', 0, '', '01711696331, 01711696337, 01730045059', 1, '', '', 0, 'f21c8b9057f56fe338e03c730354efae9bfdf248.jpg'),
(75, 'ECo-Development', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', 'info@biid.org.bd', '', 'CHT', 0, 'm', '', 1, '', '', 0, 'bab318cf99b4e9969e8e0070e7b1da566f09c043.'),
(76, 'ECo-Development', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', 'info@biid.org.bd', '', 'CHT', 0, 'm', '01731375000', 1, '', '', 0, '8309203aa3ad644cb5580cb5485155779b039656.'),
(77, 'ECo-Development', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', 'info@biid.org.bd', '', 'CHT', 0, 'm', '01731375000', 1, '', '', 0, 'f93ba8393f7607ef8a4c4e554a4a318bb8446e26.'),
(78, 'Eco-Development', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', 'info@biid.org.bd', 'House no 165,Mohakhali, DOHS, Dhaka', 'CHT', 0, 'm', '', 1, '', '', 0, '947b847f5000b8fcb0e02e1a85f424d45b43baa2.'),
(81, 'Safari Plus', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'MD. AHSANUL HUQ, CEO', 'NABEGAH DORDANA', 'info@safariplus.net | safariplus@dhaka.net', 'HOUSE - 28, ROAD - 17/A, BLOCK - E, BANANI, DHAKA - 1213.', 'Dhaka', 40, 'm', '880-2-8858736. 8831695.', 1, '', '', 0, '8fd10d0ad1cc722ecbd326eaac263467e50a33d2.JPG'),
(79, 'Eco-Development', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', 'info@biid.org.bd', 'House no 165,Mohakhali, DOHS, Dhaka', 'CHT', 0, 'm', '01731375000', 1, '', '', 0, 'e2c58dfd4769e160d95bb75d9b99b208dd8f5e93.'),
(80, 'ECo-Development', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', 'info@biid.org.bd', 'House -165, Road- 23, DOHS, Mohakhali', 'CHT', 0, 'm', '', 1, '', '', 0, '23f6a3618b8406382d6048bc8b8db2a5749b36bd.'),
(82, 'sandwip', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'rezaul', 'karim', 'sleep_dwip@yahoo.om', 'reza pharmacy.jothy abashik colony road,north patenga ctg.', 'CHT', 28, 'm', '01673972269', 1, '114.130.136.7', '59f549dd28039cd66bc7aa20e5b442644bb98568', 0, 'f801401bd47433855bd7b56eb4f550248b7ed877.'),
(83, 'tamanna1981', '5e2ec3befd96a40e51eeb5141596da6510fa3a69', 2, 'tamanna', '', 'tamanna1981@yahoo.com', 'Mohakhali', 'Other', 0, 'f', '01731795616', 1, '119.15.156.21', '957f9bf37267b76672035d5858479b868ef3144d', 0, 'a4d36fe270691ea7e6701c1d426f59078de069fc.'),
(84, 'djriyad', '4336b7d85115df03ea612ab1db3d86784c0f926b', 2, 'Hasan', 'Riyad', 'riyad@bdonline.com', '156 East Kazipara', 'Dhaka', 29, 'm', '', 1, '203.190.33.218', '1d54379af4bf1d2faa1bf03b69254576a11723db', 0, 'cbb8667f2e32e5bb30be43df322e5c089a0fb0a0.'),
(85, 'thomaswos', '6b79a15ea17a631713cbc6f161f0c74493079796', 2, 'thomaswos', 'thomaswos', 'thomaswos1@gmail.com', '', '', 0, '1', '123456', 1, '188.92.74.83', 'fa5b8fea7a23dc9400f39c67e820fd361e3294a2', 0, 'fd17d8467e1b97aded4e7a7f62a5e7e2e45c502b.'),
(86, 'Farzanamanna', 'dd19123519cd7bed43cd3334d1aa7272a8408e32', 2, 'farzana', '', '', 'dhaka', 'Dhaka', 0, 'f', '', 1, '119.15.156.21', 'c2e63e433cf88abff242728fff6e00665ddec292', 0, 'f494686019740dd7eccfc5218a4d69c0cbd6c0f6.'),
(87, 'gehadhasan', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'Modhushudon ', 'Dash', 'hasangehad@yahoo.com', 'Chechuri, Dumuria, Khulna', 'Jessore', 60, 'm', '01734514123, 01711210656', 1, '', '', 0, '2c22031f72cf97eb911c9a41cb728143eef84c11.JPG'),
(88, 'rigspbks', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'Joint Venture by RIGS & PBKS', '', 'rigsinn@bdonline.com, pbks_gaibndha@yahoo.com', '', 'Dhaka', 0, '', '02-8825055, 8813496', 1, '', '', 0, ''),
(89, 'RIGS & PBKS', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'Joint Venture by RIGS & PBKS', '', 'rigsinn@bdonline.com, pbks_gaibndha@yahoo.com', '', 'Dhaka', 0, '', '02-8825055, 8813496', 1, '', '', 0, ''),
(90, 'PBKS', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'PBKS', '', 'pbks_gaibndha@yahoo.com', 'Tushighat, Gaibandha', 'Other', 0, '', '', 1, '', '', 0, ''),
(91, 'PBKS', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'PBKS', '', 'pbks_gaibndha@yahoo.com', 'Tushighat, Gaibandha', 'Other', 0, '', '', 1, '', '', 0, ''),
(92, 'PBKS', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'PBKS', '', 'pbks_gaibndha@yahoo.com', 'Tushighat, Gaibandha', 'Other', 0, '', '', 1, '', '', 0, ''),
(93, 'PBKS', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'PBKS', '', 'pbks_gaibndha@yahoo.com', 'Tushighat, Gaibandha', 'Other', 0, '', '', 1, '', '', 0, ''),
(94, 'Sharmin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, '', '', 'sharmin@biid.org.bd', '', 'Dhaka', 0, 'f', '9887654', 1, '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `sourcename`
--

CREATE TABLE IF NOT EXISTS `sourcename` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SourceName` text COLLATE utf8_unicode_ci NOT NULL,
  `LSrcId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `sourcename`
--

INSERT INTO `sourcename` (`Id`, `SourceName`, `LSrcId`) VALUES
(3, 'à¦¸à§‹à¦¨à¦¾à¦²à§€ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(4, 'à¦¸à¦¿à¦Ÿà¦¿ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à¦¿à¦ƒ', 5),
(5, 'à¦…à¦—à§à¦°à¦¨à§€ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(6, 'à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦•à§ƒà¦·à¦¿ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(7, 'à¦¨à§à¦¯à¦¾à¦¶à¦¨à¦¾à¦² à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à¦¿à¦ƒ', 5),
(8, 'à¦ªà§à¦°à¦¾à¦‡à¦® à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡', 5),
(9, 'à¦ªà§‚à¦¬à¦¾à¦²à§€ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡', 5),
(10, 'à¦‡à¦‰à¦¸à¦¿à¦¬à¦¿ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(11, 'à¦‡à¦·à§à¦Ÿà§à¦¯à¦¾à¦°à§à¦¨ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à¦¿:', 5),
(12, ' ', 5),
(18, 'à¦‡à¦¸à¦²à¦¾à¦®à§€ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦¬à¦¾à¦‚à¦²à¦¾à¦¦à§‡à¦¶ à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡', 5),
(13, 'à¦à¦¬à¦¿ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(14, 'à¦Ÿà§à¦°à¦¾à¦·à§à¦Ÿ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(15, 'à¦¯à¦®à§à¦¨à¦¾ à¦¬à§à¦¯à¦¾à¦‚à¦• à¦²à¦¿à¦®à¦¿à¦Ÿà§‡à¦¡', 5),
(16, 'à¦¶à¦¾à¦¹à¦¾à¦œà¦¾à¦²à¦¾à¦² à¦‡à¦¸à¦²à¦¾à¦®à§€ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(17, 'à¦œà¦¨à¦¤à¦¾ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5),
(19, 'à¦¬à§à¦°à§à¦¯à¦¾à¦• à¦¬à§à¦¯à¦¾à¦‚à¦• ', 5),
(20, 'à¦•à¦°à§à¦®à¦¸à¦‚à¦¸à§à¦¹à¦¾à¦¨ à¦¬à§à¦¯à¦¾à¦‚à¦•', 5);

-- --------------------------------------------------------

--
-- Table structure for table `srcdetails`
--

CREATE TABLE IF NOT EXISTS `srcdetails` (
  `SrcId` int(10) NOT NULL AUTO_INCREMENT,
  `SourceType` int(1) NOT NULL,
  `DivId` int(1) NOT NULL,
  `DistId` int(2) NOT NULL,
  `SrcName` text COLLATE utf8_unicode_ci NOT NULL,
  `SrcAddress` longtext COLLATE utf8_unicode_ci NOT NULL,
  `SrcContact` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`SrcId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1772 ;

--
-- Dumping data for table `srcdetails`
--

INSERT INTO `srcdetails` (`SrcId`, `SourceType`, `DivId`, `DistId`, `SrcName`, `SrcAddress`, `SrcContact`) VALUES
(5, 5, 1, 8, '7', '18 Dilkusha Commercial Area, Dhaka, Bangladesh\r\nPhone :88-02-956-3081,88-02-966-6584\r\nFax :88-02-956-3953, 88-02-966-9404\r\nSWIFT :NBLBBDDH Email :ho@nblbd.com ', 'Mr. x'),
(16, 5, 1, 8, '7', '22, Bangshal Road, Dhaka- 1100; Phone: 9565878', 'Mr.ABC'),
(585, 5, 1, 8, '3', 'Agargaon Br.	BKS Board Campus, Dhaka	88-02-8113170', 'abc'),
(586, 5, 1, 8, '3', 'Agla Br.Nawabgonj, Dhaka	88-02-87187', 'abc'),
(15, 5, 1, 8, '7', 'Saimon Super Market, Bandura Bazar, PO: Hasnabad, PS: Nawabgonj, Dhaka - 1321; Phone: 01819-412042', 'Mr.ABC'),
(7, 5, 1, 8, '6', 'Divisional Office\r\nPlot No-3, Block-A,\r\nSection-13, Mirpur\r\nDhaka-1216\r\nPh: 88-02-8013344\r\nFax:88-02-9005311\r\nMobile: 0173010431 \r\n', 'MR. ABC'),
(14, 5, 1, 8, '7', 'H # SW 71,R # 11,Banani, Dhaka; Phone: 8837176', 'Mr.ABC'),
(8, 5, 5, 27, '6', 'Divisional Office, \r\nCDA Avenue, Sholoshahar\r\nChittagong-4203\r\nPh:88-031-652205\r\nFax:88-031-651868\r\nMobile: 0173010433', 'MR. ABC'),
(9, 5, 3, 5, '6', 'Divisional Office\r\n16-17, KDA Commercial Area\r\nKhan A Sabur Road\r\nKhulna-9000\r\nPh:88-041-721717\r\nFax:88-041-721495\r\nMobile: 0173010037', 'MR. ABC'),
(13, 5, 1, 8, '7', ' 4, Azizullah Road, Babu Bazar, Dhaka - 1100; Phone: 7318975', 'Mr.ABC'),
(10, 5, 4, 14, '6', 'Divisional Office\r\nZinda Bazar \r\nSylhet-3100\r\nPh:88-0821-712062\r\nFax:88-0821-716607\r\nMobile: 0173010035', 'MR. ABC'),
(12, 5, 1, 8, '7', ' Minnat Plaza ( Ist Floor), Abdullahpur Bazar, Dhaka Maowa Road, Kalakandi , P.O.: Abdullahpur Bazar', 'Mr.ABC'),
(11, 5, 6, 15, '6', 'Divisional Office\r\nPolice Line Road\r\nBarisal-8200\r\nPh:88-0431-63794\r\nPh:88-0431-64697(GuestRoom)\r\nFax:88-0431-65132\r\nMobile: 0173010034', 'MR. ABC'),
(17, 5, 1, 8, '7', '214/8 Asad Market,Bazar Road Bhaluka,Mymensingh; Phone: 09022-56077 ', 'Mr.ABC'),
(18, 5, 1, 8, '7', ' 1st Floor, Safura Green, 761 Satmasjid Road, Dhanmondi R/A, Dhaka- 1205; Phone: 9123596 ', 'Mr.ABC'),
(19, 5, 1, 8, '7', '48, Dilkusha Commercial Area, Dhaka - 1000.; Phone: 880-2-7168729-31 ', 'Mr.ABC'),
(20, 5, 1, 8, '7', '3, Elephant Road, Dhaka- 1205; Phone: 8611794 ', 'Mr.ABC'),
(21, 5, 1, 8, '7', '83, Chakbazar, Al-haji Abdul Hamid Building, Faridpur; Phone: 0631-62542 ', 'Mr.ABC'),
(22, 5, 1, 8, '7', 'Taranga Complex, 19, Rajuk Avenue Dhaka- 1000.; Phone: 9566871 ', 'Mr.ABC'),
(23, 5, 1, 8, '5', ' principal Branch\r\n9-D, DilkushaC/A, Motijheel, Dhaka-1000\r\nTEL: 02-9551569,9554497,9561556,\r\n9553064,9560770 \r\nSWIFT: AGBKBDDH 001 ECP, 20/625/72 dt. 15/04/72 \r\nFAX: 02-9563658\r\ne-mail: faqrul@agranibank.org', ' '),
(24, 5, 1, 8, '5', ' Amin Court Branch\r\n62/63Motijheel Commercial Area, Dhaka-1000\r\nTEL: 02-9550967, 9551241, 9864401\r\nFAX: 9567185\r\nSWIFT: AGBKBDDH 004 ECP, 20/625/72 dt. 05/12/72 ', ' '),
(25, 5, 1, 8, '5', ' Foreign Exchange Corporate Branch\r\n1/B, Rajuk Avenue, Motijheel, Dhaka-1000\r\nTEL: 02-9552602, 9560832, 9552319\r\nFAX: 9561785\r\nSWIFT: AGBKBDDH 006 ECP, 20/625/72 dt. 12/01/79 ', 'Mr.ABC'),
(26, 5, 1, 8, '5', ' Bangabandhu Avenue Corporate Branch\r\n32, Bangabandhu Avenue\r\n\r\nPltan,Dhaka-1000, Bangladesh.\r\nTEL: 02-9553242 & 9555651 Ext.-102\r\n\r\nFAX: 9571596\r\nemail: agranibb@bangla.net\r\nSWIFT: AGBKDBBH 002 ECP, 20/625/72 dt. 19/03/73', 'Mr.ABC'),
(27, 5, 1, 8, '5', 'Ramna Corporate Branch\r\n18, Bangabandhu Avenue, Dhaka-1000\r\nTEL: 02-9568744, 9553086-88, 7160070\r\nFAX: 9553242\r\nemail: abrarem@bangla.net\r\nSWIFT: AGBKBDDH005 ECP, 20/625/72 dt. 11/02/77', 'Mr.ABC'),
(28, 5, 1, 8, '5', ' Moulvi Bazar Branch\r\n144, Mitfort Road, Dhaka-1100\r\nTEL: 02-7314426, 7313424\r\nFax: 7311245\r\nSWIFT: AGBKBDDH 003 ECP, 20/625/72 dt. 15/04/72 ', 'Mr.ABC'),
(29, 5, 1, 8, '5', ' Sadarghat Branch\r\nGreat Wall Shopping Centre(3rd floor)\r\n2/1, Chittaranjan Avenue, Sadarghat, Dhaka-1000\r\nTEL: 02-7118594, 7123349\r\nFAX: 7118594', ' '),
(30, 5, 1, 8, '5', ' Tejgaon Industril Area Branch\r\n315/A Tejgaon I/A, Dhaka-1215\r\nTEL: 02-9887858\r\nFAX: 9887426\r\nECP, 20/625/72 dt. 03/12/84', 'Mr.ABC'),
(31, 5, 1, 8, '5', 'Wasa Branch\r\n98 Kazi Nazrul Islam Avenue, Kawran Bazar, Dhaka-1215\r\nTEL: 02-9112267, 9141377\r\nFAX: 9112267\r\nSWIFT: AGBKBDDH 012 ECP, 20/625/72 dt. 15/01/85 ', 'Mr.ABC'),
(32, 5, 1, 8, '5', 'Nawabpur Road Branch\r\n243-244,Nawabpur Road, Dhaka-1100\r\nTEL: 02-9562679\r\nFAX: 9562679\r\nECP, 20/625/72 dt. 13/07/85', 'Mr.ABC'),
(33, 5, 1, 8, '5', 'B.Wapda Branch\r\nMotijheel C/A, Dhaka-1000\r\nTEL: 02-9554283, 9554157\r\nFAX: 9554157\r\nECP, 20/625/72 dt. 07/08/89', 'Mr.ABC'),
(34, 5, 1, 8, '5', 'Purana Paltan Corporate Branch\r\n56, Purana Paltan, Dhaka-1000\r\nTEL: 02-9564759, 9561049\r\nFAX: 9561049\r\nSWIFT: AGBKBDDH 034 ECP, 20/625/72 dt. 03/01/90', 'Mr.ABC'),
(35, 5, 1, 8, '5', ' Green Road Branch\r\nA.K. Complex, 19, Green Road, Dhanmondi, Dhaka-1205\r\nTEL: 02-8613679\r\nFAX: 8631372\r\nECP, 20/625/72 dt. 18/12/95', 'Mr.ABC'),
(36, 5, 1, 8, '8', ' Motijheel Branch\r\nAddress  :  Adamjee Court Annexe Building -2,119-120, Motijheel C/A, Dhaka-1000\r\nPhone  :  (02) 7175491-2, 9567225,9562982\r\nFax  :  88-02-9567223\r\nTelex  :  671543 PBLMJ BJ\r\nSWIFT  :  PRBLBDDH001\r\nEmail  :  pblmotijheel@primebank.com.bd', 'Mr.ABC'),
(37, 5, 1, 8, '8', ' Moulvi Bazar Branch\r\nAddress  :  77/4, Moulvi Bazar, Dhaka-1100\r\nPhone  :  (02) 7313407, 7311017\r\nFax  :  88-02-7318305\r\nTelex  :  671548 PBLMB BJ\r\nSWIFT  :  PRBLBDDH003\r\nEmail  :  pblmoulvi@primebank.com.bd', 'Mr.ABC'),
(38, 5, 1, 8, '8', ' IBB Dilkusha Branch\r\nAddress  :  19, Dilkusha C/A, Dhaka -1000.\r\nPhone  :  (02) 9567227, 7169071\r\nFax  :  88-02-9567228\r\nTelex  :  671560 PBLIB BJ\r\nSWIFT  :  PRBLBDDH005\r\nEmail  :  pbldilkusha@primebank.com.bd', 'Mr.ABC'),
(39, 5, 1, 8, '8', ' Mohakhali Branch\r\nAddress  :  69, Mohakhali C/A, Dhaka-1212\r\nPhone  :  (02) 9882291, 8826483\r\nFax  :  88-02-9888873\r\nTelex  :  632355 PBLMK BJ\r\nSWIFT  :  PRBLBDDH007\r\nEmail  :  pblmohakhali@primebank.com.bd', 'Mr.ABC'),
(40, 5, 1, 8, '8', 'Kawran Bazar Branch\r\nAddress  :  54, Kawran Bazar C/A, Dhaka-1215\r\nPhone  :  (02) 9145394, 9145397, 9124296-7\r\nFax  :  88-02-9129004\r\nTelex  :  671595 PBLKB BJ\r\nSWIFT  :  PRBLBDDH010\r\nEmail  :  pblkawran@primebank.com.bd', 'Mr.ABC'),
(41, 5, 1, 8, '8', ' Elephant Road Branch\r\nAddress  :  Ananta Plaza, 136, Elephant Road, Dhaka-1205\r\nPhone  :  (02) 9662776-7, 9673783\r\nFax  :  88-02-8622591\r\nTelex  :  642430 PRMER BJ\r\nSWIFT  :  PRBLBDDH011\r\nEmail  :  pblelephant@primebank.com.bd', 'Mr.ABC'),
(42, 5, 1, 8, '8', ' Mouchak Branch\r\nAddress  :  Manhattan Tower (1st Floor), 83, Siddheswari Circular Road, Malibagh, Dhaka-1217\r\nPhone  :  (02) 9338883, 9347757\r\nFax  :  88-02-9338883\r\nTelex  :  \r\nSWIFT  :  PRBLBDDH013\r\nEmail  :  pblmouchak@primebank.com.bd', 'Mr.ABC'),
(43, 5, 1, 8, '8', ' Gulshan Branch\r\nAddress  :  Plot # 01, Block # CEN(H), Road # 109, Gulshan Avenue, Dhaka-1212\r\nPhone  :  (02) 9886171, 9890898\r\nFax  :  88-02-8820276\r\nTelex  :  642447 PBLGL BJ\r\nSWIFT  :  PRBLBDDH016\r\nEmail  :  pblgulshan@primebank.com.bd', 'Mr.ABC'),
(44, 5, 1, 8, '8', ' Narayanganj Branch\r\nAddress  :  Modern Model Complex, 56, S.M. Maleh Road, Narayanganj-1400\r\nPhone  :  (02) 7616894,7630150\r\nFax  :  88-02-9715770\r\nTelex  :  633634 PBLNJ BJ\r\nSWIFT  :  PRBLBDDH012\r\nEmail  :  pblngonj@primebank.com.bd', 'Mr.ABC'),
(45, 5, 1, 8, '8', 'Bangshal Branch\r\nAddress  :  43/44 Malitola, North South Road,Bangshal, Dhaka-1100\r\nPhone  :  (02) 9561501, 7123480\r\nFax  :  88-02-9561501\r\nTelex  :  642483 PBLBB BJ\r\nSWIFT  :  \r\nEmail  :  pblbangshal@primebank.com.bd', 'Mr.ABC'),
(46, 5, 1, 8, '8', ' Gonakbari Branch\r\nAddress  :  Somsher Plaza (1st Floor), Balibhadra Bazar Bus Stand, Dhamsona, Ganakbari, Savar, Dhaka-1340\r\nPhone  :  (02) 7701378-9\r\nFax  :  88-02-7701378\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblganakbari@primebank.com.bd\r\n ', 'Mr.ABC'),
(47, 5, 1, 8, '8', ' Uttara Branch\r\nAddress  :  Siaam Tower (1st Floor), Plot # 15, Sector # 03, Dhaka Mymensingh Road, Uttara Model Town, Dhaka\r\nPhone  :  PABX : (02) 8916233, 8950341-2, Direct : (02) 8950016\r\nFax  :  (02) 8924248\r\nTelex  :  \r\nSWIFT  :  PRBLBDDH021\r\nEmail  :  pbluttar@primebank.com.bd', 'Mr.ABC'),
(48, 5, 1, 8, '7', 'Tanvir Plaza (1st Floor), Bazar Bus Stand, Gazipur; Phone: 9256548 ', 'Mr.ABC'),
(49, 5, 1, 8, '7', '97/1, Gulshan Avenue, Dhaka-1212; Phone: 880-2-9889913 ', 'Mr.ABC'),
(50, 5, 5, 27, '7', '67, Agrabad C/A, Chittagong; Phone: 031-716163-4 ', 'Mr.ABC'),
(51, 5, 5, 27, '7', ' K B Aman Ali Tower, 30, Anderkilla,chittagong; Phone: 031-2854513 ', 'Mr.ABC'),
(52, 5, 5, 30, '7', ' City Plaza ( 1st Floor) Main Road, P.O Bashurhat, Companigonj, Noakhali; Phone: 03223-56245', 'Mr.ABC'),
(53, 5, 5, 66, '7', 'D.T. Road, Bhatiary Dakshin Bazar,P.S. Sitakunda; Phone: 031-2780890 ', 'Mr.ABC'),
(54, 5, 5, 52, '7', ' 58-60, Kalasreepara,New Cinema Hall Road,B.Baria.; Phone: 0851-52600 ', 'Mr.ABC'),
(55, 5, 5, 27, '7', ' 1002 CDA Avenue, East Nasirabad, P.S. Panchlaish, Dist. Chiitagong ; Phone: 0173-0318560', 'Mr.ABC'),
(56, 5, 5, 27, '7', ' 134, New Chaktai,Kotwali, Chittagong.; Phone: 031-619035 ', 'Mr.ABC'),
(57, 5, 5, 53, '7', '116/108, SK Mansion,Comilla Road,Natun Bazar,Chandpur.; Phone: 0841-63309', 'Mr.ABC'),
(58, 5, 5, 27, '7', ' Fortune Tower,112/113Karpashgola road Chawkbazar,Chittagong; Phone: 01730303589', 'Mr.ABC'),
(59, 5, 5, 29, '7', ' Hajee Sharafat Ali Mansion,Chouddagram,Comilla.; Phone: 08020-56207-8 ', 'Mr.ABC'),
(60, 5, 5, 30, '7', ' Dalia Super Market, 1522, Karimpur Road, Chowmuhani, Noakhali; Phone: 0321-52353 ', 'Mr.ABC'),
(61, 5, 5, 29, '7', 'Rajganj,PO Box-04, Comilla; Phone: 081-65901', 'Mr.ABC'),
(62, 5, 2, 56, '7', ' Barogola Bazar, Bogra ,; Phone: 051-72540 ', 'Mr.ABC'),
(63, 5, 2, 13, '7', ' Kabir Bhaban, Thana Road, Chapainawabgonj,; Phone: 0781-61470', 'Mr.ABC'),
(64, 5, 2, 38, '7', ' Goneshtala Road (West of Mordern Cinema Hall) Dinajpur; Phone: 880-531-64744 ', 'Mr.ABC'),
(65, 5, 2, 57, '7', ' Pran Gobinda Plaza, Par Road,Gaibandha; Phone: 0541-62531', 'Mr.ABC'),
(66, 5, 2, 12, '7', ' 366,Dying Para ( Bus Stand) Sreemantapur Rajshahi Chapai Nawabgonj Highway Road, Godagari Dist â€“ Rajshahi ', 'Mr.ABC'),
(67, 5, 2, 61, '7', ' Station Road, Ishwardi, Pabna.; Phone: 880-7326-63835 ', 'Mr.ABC'),
(68, 5, 2, 58, '7', ' Golam Aftab Super MarketSadar Road, Joypurhat; Phone: 880-571-62647 ', 'Mr.ABC'),
(69, 5, 2, 49, '7', '405 Sadar Road, Municipal Area, Naogaon.; Phone: 880-741-61786 ', 'Mr.ABC'),
(70, 5, 2, 50, '7', '288,Kanaikhali,Old Bus Stand, Natore - Dhaka Road, P.O & P.S : Natore, Dist : Natore.; Phone: 0771-6 ', 'Mr.ABC'),
(71, 5, 2, 61, '7', 'Haque Super Market (1st Floor) Abdul Hamid Road, Pabna; Phone: 880-731-64499 ', 'Mr.ABC'),
(72, 5, 2, 12, '7', ' 106-109 Shaheb Bazar, Rajshahi.; Phone: 880-721-774483', 'Mr.ABC'),
(73, 5, 2, 4, '7', ' Chamber Bhaban(1st floor),D.L. Roy Road, Rangpur,; Phone: 880-521-65749', 'Mr.ABC'),
(74, 5, 3, 67, '7', ' Bhanga Bazar Main Road, P.O & P.S : Bhanga, Purasava : Bhanga, Dist : Faridpur.; Phone: 06323-56512 ', 'Mr.ABC'),
(75, 5, 3, 23, '7', ' Chowgacha Bazar, High School Road, PO & PS : Chowgacha, Dist : Jessore; Phone: 04224-56466', 'Mr.ABC'),
(76, 5, 3, 23, '7', '11-12, Garikhana Main Road, Jessore.; Phone: 0421-73684 ', 'Mr.ABC'),
(77, 5, 3, 5, '7', ' KDA Commercial Area, BHBFC Bhaban (Ground Floor) 15-16, Khan A Sabur Road, Khulna.; Phone: 041-73186 ', 'Mr.ABC'),
(78, 5, 3, 5, '7', ' 2, Sir Iqbal Road, Khulna.; Phone: 041-721757 ', 'Mr.ABC'),
(79, 5, 3, 42, '7', '18, Nowab Sirajuddoula Road,Razzak Super Market,Kustia; Phone: 071-61844', 'Mr.ABC'),
(80, 5, 3, 43, '7', ' 32-33, Old College Road Suttanpur Bazar, Satkhira.; Phone: 0471-63427 ', 'Mr.ABC'),
(81, 5, 3, 68, '7', ' Mollah New Super Market, 1216, Sadar Road,Shibchar Bazar, P.S-Shibchar, Dist-Madaripur.; Phone: 0662 ', 'Mr.ABC'),
(82, 5, 4, 14, '7', ' PO & PS - Beanibazar, Sylhet. ; Phone: 880-8223-88343 ', 'Mr.ABC'),
(83, 5, 4, 14, '7', ' Al-Hera Shopping City (1st floor) PO & PS : Bishwanath, Dist : Sylhet.; Phone: 08224-56024', 'Mr.ABC'),
(84, 5, 4, 14, '7', ' 78/1, Ranaping Square,Golapgonj,Chowmuhani,Golapgonj, Dist- Sylhet; Phone: 08227-56220', 'Mr.ABC'),
(85, 5, 4, 45, '7', 'Al-Hera Shopping City (1st floor),Kalibari Road,Habigonj. ; Phone: 0831-61411', 'Mr.ABC'),
(86, 5, 4, 14, '7', 'Al Ferdous Shopping Complex (1st Floor),Post Office-Sylhet, P.S-Kotowali, Dist-Sylhet; Phone: 0821-8', 'Mr.ABC'),
(87, 5, 4, 46, '7', ' Haji Cherag Ali Shopping Center, 190 , Moulovibaza Road, P.O. & P.S. Kulaura, DIst. Moulovibazar; Ph ', 'Mr.ABC'),
(88, 5, 4, 44, '7', ' Chand Ali Shopping Centre Jagannathpur, Dist- Sunamgonj,; Phone: 0171-9201836', 'Mr.ABC'),
(89, 5, 4, 46, '7', '95 Court Road,Moulvibazar. ; Phone: : 880-861-52454 ', 'Mr.ABC'),
(90, 5, 4, 14, '7', ' Shibgonj Bazar, Sylhet-3100,; Phone: 880-821-760525 ', 'Mr.ABC'),
(91, 5, 4, 46, '7', '187, Moulvibazar Road,Sreemongal,Moulvibazar; Phone: 880-8626-778 ', 'Mr.ABC'),
(92, 5, 4, 14, '7', ' Sylhet Sunamgonj Road, Sylhet; Phone: 880-821-712955 ', 'Mr.ABC'),
(93, 5, 4, 44, '7', ' Khaledabad Bhaban, Station Road, P.O., P.S & Pourashava- Sunumgonj; Phone: 0871-61550', 'Mr.ABC'),
(94, 5, 6, 15, '7', '100, Sadar Road, Barisal -8200; Phone: 0431-64166 Mobile : 01713330616 ', 'Mr.ABC'),
(95, 5, 6, 16, '7', ' K. Jahan Shopping Complex 677, Sadar Road, Bhola.; Phone: 0491-61667', 'Mr.ABC'),
(96, 5, 6, 16, '7', 'Jinnahgar Union Parishid, Sadar Road, P.S : Char Fassion, Dist : Bhola,; Phone: 04923-74103 ', 'Mr.ABC'),
(97, 5, 6, 22, '7', '354, Fariapatty, Jhalakathi.; Phone: 0498-62795 ', 'Mr.ABC'),
(98, 5, 6, 15, '7', ' P.O. & P.S. Gournadi, Dist. Barisal; Phone: 0173-0318562 ', 'Mr.ABC'),
(99, 5, 1, 8, '5', ' Hotel Sheraton Branch\r\n1, Mintoo Road, dhaka-1000\r\nTEL : 02-9575159, 9667953\r\nFAX: 9348753\r\nECP, 20/625/72 dt. 23/05/01', 'Mr.ABC'),
(100, 5, 1, 8, '5', ' Banani Branch\r\n26, Kamal Ataturk Avenue, Banani, Dhaka-1213\r\nTEL: 02-8816279\r\nFAX: 8816279\r\nECP, 20/625/72 dt. 10/01/05', 'Mr.ABC'),
(101, 5, 1, 8, '5', ' Bangabandhu Road Branch\r\n32, Bangabandhu Road, Narayangonj-1400\r\nTEL: 02-7630173, 7630090, 7630165\r\nFAX: 7630090\r\nECP, 20/625/72 dt. 12/04/77', 'Mr.ABC'),
(102, 5, 1, 10, '5', ' Court Road Branch\r\n52/1 Court Road, Narayangonj-1400\r\nTEl : 02-7531930, 7631808\r\nFAX: 7631808\r\nSWIFT: AGBKBDDH 010 ECP, 20/625/72 dt. 15/04/72', 'Mr.ABC'),
(103, 5, 3, 67, '5', ' Faridpur (Main) Branch\r\nFaridpur-7800\r\nTEl : 0631-61972, 63137, 63134\r\nFAX: 62508\r\nECP, 20/625/72 dt. 12/04/77', 'Mr.ABC'),
(104, 5, 5, 27, '5', ' Laldighi East Corporate Branch\r\n1, Laldighi East, Chittagong-4000\r\nTEL: 031-616754, 630805, 611373, 630803-7\r\nFAX: 610133\r\nSWIFT: AGBKBDDH 017 ECP, 20/625/72 dt. 15/04/72', 'Mr.ABC'),
(105, 5, 5, 27, '5', ' Agrabad Corporate Branch\r\nJahan Building-2, 24, Agrabad C/A, Chittagong-4100\r\nTEL: 031-810413, 716370\r\nFAX: 710152\r\nECP, 20/625/72 dt. 23/06/77', 'Mr.ABC'),
(106, 5, 5, 27, '5', ' Commercial Area Corporate Branch\r\n28, Syeda Court Agrabad C/A, Chittagong-4100\r\nTEL: 031-711739, 811220, 810375\r\nFAX: 716225\r\nSWIFT: AGBKBDDH 015 ECP, 20/625/72 dt. 15/04/72', 'Mr.ABC'),
(107, 5, 5, 27, '5', ' Asadgonj Branch\r\nIdris Building, Haji Amir Ali, Chow. Road,\r\nAsadgonj, Chittagong-4000\r\nTEL: 031-637728, 631083\r\nFAX: 618507\r\nECP, 20/625/72 dt. 05/12/72', 'Mr.ABC'),
(108, 5, 5, 27, '5', ' Bay Shoping Centre Branch\r\nCEPZ Area, Chittagong-4100\r\nTEL: 0310740926, 8000421\r\nFAX: 740926\r\nECP, 20/625/72 dt. 30/01/93', 'Mr.ABC'),
(109, 5, 5, 18, '5', ' Cox''s Bazar Branch\r\nCox''s Bazar-4800\r\nTEL/FAX: 0341-63259\r\nECP, 20/625/72 dt. 11/02/77', 'Mr.ABC'),
(110, 5, 5, 27, '5', ' New Market Branch\r\n886/904, H.S. Shurawardy Road, Chittagong-4000\r\nTEL : 031-611525, 635561\r\nFAX: 635561\r\nECP, 20/625/72 dt. 10/01/01', 'Mr.ABC'),
(111, 5, 4, 14, '5', ' Laldighirpar Branch\r\nLaldighirpar, Sylhet-3100\r\nTEL : 0821-717038, 716177\r\nFAX: 710303\r\nSWIFT: ABKBDDH 021 ECP, 20/625/72 dt. 15/04/72', 'Mr.ABC'),
(112, 5, 5, 29, '5', ' Rajgonj Branch\r\nRajgonj, Comilla-3500\r\nTEL : 081-76022\r\nFAX: 76022\r\nECP, 20/625/72 dt. 04/06/79', 'Mr.ABC'),
(113, 5, 5, 30, '5', ' Chowmuhani Branch\r\nD.B. Road, Chowmuhani, Noakhali-3821\r\nTEL : 0321-51867, FAX: 52057\r\nECP, 20/625/72 dt. 12/04/77', 'Mr.ABC'),
(114, 5, 3, 5, '5', ' Clay Road Branch\r\nClay Road, Khulna-9100\r\nTEL: 041-724024, 723831\r\nFAX: 720552\r\nECP, 20/625/72 dt. 15/04/72', 'Mr.ABC'),
(115, 5, 3, 5, '5', ' Sir Iqbal Road Corporate Branch\r\n15 Sir Iqbal Road, Khulna-9100\r\nTEL: 041-722949, 731280\r\nFAX: 731280\r\nSWIFT: AGBKBDDH 023 ECP, 20/625/72 dt. 11/02/77', 'Mr.ABC'),
(116, 5, 3, 23, '5', 'Jessore Branch\r\nJess Tower ,Jessore-7400\r\nTEL: 0421-66516, 66175\r\nFAX: 66523\r\nECP, 20/625/72 dt. 11/02/77', 'Mr.ABC'),
(117, 5, 3, 42, '5', 'Bara Bazar Branch\r\nKeyam Mansion (1st Floor), 14 N.S. Road Bara Bazar, Kushtia-7000\r\nTEL :071-61866, 62336\r\nFAX: 61866\r\nECP, 20/625/72 dt. 12/04/77', 'Mr.ABC'),
(118, 5, 6, 15, '5', 'Chawk Bazar Branch\r\n2/1, Chawk Bazar, Barisal-8200\r\nTEL : 0431-53522, 55156\r\nFAX: 53522\r\nECP, 20/625/72 dt. 12/04/77', 'Mr.ABC'),
(119, 5, 2, 12, '5', 'Shaheb Bazar Branch\r\nBoalia, Rajshahi-6100\r\nTEL: 0721-776063, 772393, 774208\r\nFAX: 770642\r\nSWIFT: AGBKBDDH 027 ECP, 20/625/72 dt. 15/04/72', 'Mr.ABC'),
(120, 5, 2, 56, '5', 'Thana Road Branch\r\n1585, Thana Road, Bogra-5800\r\nTEL : 051-66564, 65012\r\nFAX: 65052\r\nECP, 20/625/72 dt. 23/07/76', 'Mr.ABC'),
(121, 5, 2, 4, '5', 'Rangpur Main Branch\r\nCentral Road, Rangpur-5400\r\nTEL: 0521-65437, 62393\r\nFAX: 62393\r\nECP, 20/625/72 dt. 19/03/72', 'Mr.ABC'),
(122, 5, 2, 38, '5', ' Maldahpatty Branch\r\nDinajpur-5200\r\nTEL: 0531-63102, 63306\r\nFAX: 65680\r\nECP, 20/625/72 dt. 11/02/77', 'Mr.ABC'),
(123, 5, 2, 38, '5', ' Hakimpur Branch\r\nP.O: Bangla Hili, P.S & Poura Shava: Hakimpur\r\nTEL : 05329-75351\r\nFAX: 05329-75344(ON req)\r\nECP, 20/625/72 dt. 18/06/06', 'Mr.ABC'),
(124, 5, 1, 20, '5', 'Gazipur Branch\r\nGazipur-1700, AGRANIBANK\r\nTEL: 02-925-2202\r\nFAX: 925-2013\r\nECP, 20/625/72 dt. 25/06/98', 'Mr.ABC'),
(125, 5, 1, 8, '8', ' Foreign Exchange Branch\r\nAddress  :  Al-Haj Mansion, 82,Motijheel C/A, Dhaka -1000.\r\nPhone  :  (02) 9551682, 9564976, Dhaka Club Booth: (02) 8627138\r\nFax  :  88-02-9553078\r\nTelex  :  \r\nSWIFT  :  PRBLBDDH019\r\nEmail  :  pblforex@primebank.com.bd', 'Mr.ABC'),
(126, 5, 1, 8, '8', 'Satmasjid Road Branch\r\nAddress  :  House # 99, Road # 11/A, Dhanmondi R/A, Dhaka-1209\r\nPhone  :  (02) 9122374,8124258\r\nFax  :  (02) 8121652\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblsatmasjid@primebank.com.bd', 'Mr.ABC'),
(127, 5, 1, 8, '8', ' New Eskaton Branch\r\nAddress  :  133, New Eskaton Road, Dhaka - 1000\r\nPhone  :  (02) 9354044, 9354738\r\nFax  :  88-02-9354826\r\nTelex  :  632189 PBNEB BJ\r\nSWIFT  :  \r\nEmail  :  pbleskaton@primebank.com.bd\r\n ', 'Mr.ABC'),
(128, 5, 1, 32, '8', ' Madhabdi Branch\r\nAddress  :  Plot # 17, Madhabdi Bazar, Narsingdi-1604\r\nPhone  :  (06251) 682, 683\r\nFax  :  88-06257-683\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblmadhabdi@primebank.com.bd', 'Mr.ABC'),
(129, 5, 1, 8, '8', 'Banani Branch\r\nAddress  :  House # 62, Block # E, Kemal Ataturk Avenue, Banani, Dhaka-1212\r\nPhone  :  (02) 8815754, 9889868\r\nFax  :  88-02-8853616\r\nTelex  :  \r\nSWIFT  :  PRBLBDDH020\r\nEmail  :  pblbanani@primebank.com.bd', 'Mr.ABC'),
(130, 5, 1, 8, '8', 'IBB Mirpur Branch\r\nAddress  :  Mamoni Tower, 1244, East Monipur, Begum Rokeya Sarani, Mirpur, Dhaka-1216\r\nPhone  :  (02) 8057681-2,8058371\r\nFax  :  88-02-8075441\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblibbmirpur@primebank.com.bd', 'Mr.ABC'),
(131, 5, 1, 8, '8', ' Pragati Sarani Branch\r\nAddress  :  Facilities Tower, Kha-199/2, Maddhya Badda, Dhaka\r\nPhone  :  (02) 8860685, 8860689\r\nFax  :  88-02-8860685\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblpragati@primebank.com.bd', 'Mr.ABC'),
(132, 5, 1, 10, '8', 'Shimrail Branch\r\nAddress  :  Hazi A Rahman Super Market & Shopping Tower (1st Floor), Holding # 96, Shimrail Morr, Chittagong Road Chowrastha, P.O. Shanarpar, P.S. Siddirgonj, Narayangonj\r\nPhone  :  (02) 7607013\r\nFax  :  (02) 7691671\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblshimrail@primebank.com.bd', 'Mr.ABC'),
(133, 5, 1, 8, '8', ' Asad Gate Branch\r\nAddress  :  2/6, Sir Sayed Road, Ward # 42, Mohammadpur(Mirpur Road), Dhaka\r\nPhone  :  (02) 9144646,9125400\r\nFax  :  (02) 9125400\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblasadgate@primebank.com.bd', 'Mr.ABC'),
(134, 5, 1, 20, '8', 'Tongi Branch\r\nAddress  :  Sena Kalyan Commercial Complex (1st Floor), Plot # 9, Block #F, Tongi, Gazipur\r\nPhone  :  (02) 9813835, 9813874\r\nFax  :  (02) 9813835\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbltongi@primebank.com.bd', 'Mr.ABC'),
(135, 5, 1, 8, '8', 'Panthapath Branch\r\nAddress  :  Firoz Tower, 152/3-B, Green Road, Panthapath, Dhaka-1205\r\nPhone  :  (02) 9142879, 8128100\r\nFax  :  \r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblpanthapath@primebank.com.bd', 'Mr.ABC'),
(136, 5, 1, 8, '8', 'Dhanmondi Branch\r\nAddress  :  Momtaz Plaza (1st floor), House No # 7, Road No # 4, Dhanmondi R/A, Dhaka\r\nPhone  :  (02) 8622304, 9662704\r\nFax  :  (02) 9662705\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbldhanmondi@primebank.com.bd', 'Mr.ABC'),
(137, 5, 1, 8, '8', ' SBC Tower  Branch\r\nAddress  :  Sadharan Bima Tower (Ground Floor) 37/A, Dilkusha C/A Dhaka\r\nPhone  :  (02) 9561221, 9559943\r\nFax  :  88-02-9564189\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblsbc@primebank.com.bd', 'Mr.ABC'),
(138, 5, 1, 20, '8', 'Jaydevpur Chowrasta  Branch\r\nAddress  :  Shapla Mansion (1st Floor) Joydevpur Chowrasta, P.O. Chandana Dhaka-Tangail Road, Gazipur\r\nPhone  :  (02) 9264142, 9264103, 9264135\r\nFax  :  88-02-9264097\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbljoydevpur@primebank.com.bd', 'Mr.ABC'),
(139, 5, 1, 8, '8', ' Mirpur-1 Branch\r\nAddress  :  Rabiul Plaza (1st Floor)Plot # Shee-1/Kha, Section -1 Mirpur, Dhaka-1216\r\nPhone  :  (02) 8034126\r\nFax  :  (02) 8034591\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblmirpur-1@primebank.com.bd', 'Mr.ABC'),
(140, 5, 1, 37, '8', ' Tangail  Branch\r\nAddress  :  Word No: 6 Holding No: 414-417 Main Road P.S + P.O: Tangail Dist: Tangail\r\nPhone  :  PABX : (0921) 61248, 61271, Direct : (0921) 61330\r\nFax  :  (0921) 61322\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbltangail@primebank.com.bd', 'Mr.ABC'),
(141, 5, 1, 8, '8', '29. Ashulia Branch\r\nAddress  :  Sherif Mension (1st floor) Diakhali,Jamgora Bazar,Ashulia, Dhaka\r\nPhone  :  (02) 7788290\r\nFax  :  (02) 7788291\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblasulia@primebank.com.bd', 'Mr.ABC'),
(142, 5, 1, 8, '8', ' Bijoy Nagar  Branch\r\nAddress  :  Akram Tower (1st floor) 15/5, Bijoy Narar(Sayed Nazrul Islam Saroni) Dhaka-1000\r\nPhone  :  (02) 9335762, 9335732, 9334123\r\nFax  :  88-02-9332639\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblbijoy@primebank.com.bd', 'Mr.ABC'),
(143, 5, 1, 8, '8', ' Ring Road  Branch\r\nAddress  :  Baitul Aman Tower(1st Floor) Holding No: 840-841 Uttar Adabor, Dhaka\r\nPhone  :  PABX : (02) 8158866, Direct : (02) 9129093\r\nFax  :  (02) 8117010\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblringroad@primebank.com.bd\r\n ', 'Mr.ABC'),
(144, 5, 1, 8, '8', ' Pallabi  Branch\r\nAddress  :  Sataras Dream(1st Floor) Holding No: 1/11 & 1/12 Word No: 7 Pallabi, Mirpur, Dhaka\r\nPhone  :  PABX : (02) 9000559, 9001913, Direct : (02) 9013629\r\nFax  :  (02) 9001883\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblpallabi@primebank.com.bd', 'Mr.ABC'),
(145, 5, 1, 8, '8', ' Bashundhara Branch\r\nAddress  :  Baitul Aman Tower(1st Floor) Boshundhara Project Block-B Plot: 236 P.S-Cantonment, Dhaka\r\nPhone  :  PABX : (02) 8849962, 8845213, Direct : (02) 8845215\r\nFax  :  (02) 8845214\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblbasundhara@primebank.com.bd', 'Mr.ABC'),
(146, 5, 1, 8, '8', ' Joypara  Branch\r\nAddress  :  Azahar Ali Mozahar Ali Shopping Complex (1st floor) Joypara, Lotakhola Dohar, Dhaka.\r\nPhone  :  \r\nFax  :  \r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbljoypara@primebank.com.bd', 'Mr.ABC'),
(147, 5, 1, 10, '8', ' Adamjee EPZ Branch\r\nAddress  :  Adamjee EPZ Holding # 4 Siddirganj, Narayanganj\r\nPhone  :  (02) 7692024-5\r\nFax  :  (02) 7692027\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbladamjee@primebank.com.bd', 'Mr.ABC'),
(148, 5, 1, 8, '8', ' Gareb-E-Newaz Avenue Branch\r\nAddress  :  Gareb-E-Newaz Branch Holding # 1, Gareb-E-Newaz Avenue Sector # 11, Uttara R/A, Dhaka\r\nPhone  :  0173-00-34863, 01730-312515\r\nFax  :  (02) 8931687\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblgarib@primebank.com.bd', 'Mr.ABC'),
(149, 5, 5, 27, '8', ' Khatungonj Branch\r\nAddress  :  142, Chand Mia Lane, Khatungonj, Chittagong-4000\r\nPhone  :  (031) 623212-14, 627297\r\nFax  :  88-031-610848\r\nTelex  :  633109 PBLKC BJ\r\nSWIFT  :  PRBLBDDH002\r\nEmail  :  pblkhatunganj@primebank.com.bd', 'Mr.ABC'),
(150, 5, 5, 27, '8', 'Agrabad Branch\r\nAddress 	: 	Chittagong Chamber House, 38 Agrabad C/A, Chittagong-4100\r\nPhone 	: 	(031) 727018, 716724-5\r\nFax 	: 	88-031-718971\r\nTelex 	: 	633028 PBLAG BJ\r\nSWIFT 	: 	PRBLBDDH015\r\nEmail 	: 	pblagrabad@primebank.com.bd', 'Mr.ABC'),
(151, 5, 5, 27, '8', 'Jubilee Road Branch\r\nAddress 	: 	Pedrollo Plaza, 5, Jubilee Road, Chittagong -4000\r\nPhone 	: 	(031) 613939, 614649\r\nFax 	: 	88-031-614649\r\nTelex 	: 	633028 PBLRJ BJ\r\nSWIFT 	: 	PRBLBDDH017\r\nEmail 	: 	pbljubilee@primebank.com.bd', 'Mr.ABC'),
(152, 5, 5, 27, '8', 'IBB O. R. Nizam Road Branch\r\nAddress 	: 	O.R. Nizam Road, Hazrat Garibullah City Corporation Bhavan, 739/804 CDA Avenue, Bagmoniram, Chittagong\r\nPhone 	: 	(031) 639855, 841434\r\nFax 	: 	88-031-841434\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblornizam@primebank.com.bd', 'Mr.ABC'),
(153, 5, 5, 27, '8', 'IBB Pahartali Branch\r\nAddress 	: 	B S Plaza, Plot # 305/1390, Abdul Ali Hat Mouza-Sorai Para, Alanker Morr P.S. Pahartali, Chittagong\r\nPhone 	: 	(031) 753143, 753144\r\nFax 	: 	(031) - 610848\r\nTelex 	: 	633109 PHLKC BJ\r\nSWIFT 	: 	\r\nEmail 	: 	pblpahartali@primebank.com.bd\r\n	 ', 'Mr.ABC'),
(154, 5, 5, 27, '8', 'Fatickchari Branch\r\nAddress 	: 	Haji Hossain Plaza (1st Floor), College Road, Bibirhat, Dhurang Union, Fatickchari, Chittagong\r\nPhone 	: 	(031) 637001, 630389\r\nFax 	: 	(03022) 56006\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblfatickchari@primebank.com.bd', 'Mr.ABC'),
(155, 5, 5, 27, '8', 'Laldighi East Branch\r\nAddress 	: 	8, Laldighi East, Chittagong\r\nPhone 	: 	(031) 2850771, 2850773\r\nFax 	: 	(031) 2850772\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pbllaldighieast@primebank.com.bd', 'Mr.ABC'),
(156, 5, 5, 27, '8', 'Hathazari  Branch\r\nAddress 	: 	N. Zahur Shopping Center (1st Floor) Kachari Road, Hathazari, Chittagong\r\nPhone 	: 	(031) 2601524, 2601525\r\nFax 	: 	88-031-2601526\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblhathazari@primebank.com.bd', 'Mr.ABC'),
(157, 5, 5, 18, '8', 'Cox''s Bazar  Branch\r\nAddress 	: 	Hajera Shopping Center (1st Floor) Ward # 2, Holding # 256, Main Road Cox''s Bazar\r\nPhone 	: 	(0341) 51083, 51085\r\nFax 	: 	88-0341-51084\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblcox@primebank.com.bd', 'Mr.ABC'),
(158, 5, 5, 34, '8', 'Feni  Branch\r\nAddress 	: 	Kazi Centre,Holding No: 106 S.S.K,Road,Ward No: 10, P.S + P.O : Feni Dist: Feni\r\nPhone 	: 	PABX : (0331) 63091, 63093, Direct : (0331) 63092\r\nFax 	: 	(0331) 63092\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblfeni@primebank.com.bd', 'Mr.ABC'),
(159, 5, 5, 29, '8', 'Comilla  Branch\r\nAddress 	: 	Holding No: 10/8 Ward#12 Moholla: Chatpatty(Gangagonj) Pawrashava:Comilla, P.S: Kotowali Dist: Comilla\r\nPhone 	: 	PABX : (081) 72611, 72612,Direct : (081) 72610\r\nFax 	: 	(081) 72646\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblcomilla@primebank.com.bd', 'Mr.ABC'),
(160, 5, 5, 27, '8', 'Raojan  Branch\r\nAddress 	: 	Fazal Tower (1st Floor) Raojan Bus Stand, Mader Mohal Chittagong\r\nPhone 	: 	PABX : (030265) 6214, Direct : (030265) 6215\r\nFax 	: 	(030265) 6215\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblraozan@primebank.com.bd', 'Mr.ABC'),
(161, 5, 5, 27, '8', 'Prabartak More Branch\r\nAddress 	: 	12/12 O.R. Nizam Road, Prabartak More, Panchlish, Chittagong\r\nPhone 	: 	PABX : (031) 2553593, Direct : (031) 2553591-2\r\nFax 	: 	(031) 2553594\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblprabartak@primebank.com.bd\r\n	 ', 'Mr.ABC'),
(162, 5, 5, 27, '8', 'Banshkhali Branch\r\nAddress 	: 	G.S. Plaza (1st floor), Chittagong-Banshkhali Highway, Banshkhali Pawrashava, P.S. Banshkhali, Chittagong\r\nPhone 	: 	\r\nFax 	: 	\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblbanshkhali@primebank.com.bd', 'Mr.ABC'),
(163, 5, 5, 53, '8', 'Hajigonj Branch\r\nAddress 	: 	Ananda Complex, Holding # 191, Hajiganj Bazar, Hajiganj,Chandpur\r\nPhone 	: 	(08424) 75110 PABX\r\nFax 	: 	(08424) 75110\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblhajiganj@primebank.com.bd', 'Mr.ABC'),
(164, 5, 5, 30, '8', 'Chaumuhani Branch\r\nAddress 	: 	Holding # 180-182 (1st floor); Feni Road, Chowmuhani; Begumganj; Noakhali.\r\nPhone 	: 	(0321) 54096 PABX\r\nFax 	: 	(0321) 56096\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblchaumuhani@primebank.com.bd', 'Mr.ABC'),
(165, 5, 5, 27, '8', 'Oxygen More Branch\r\nAddress 	: 	405 Sekander Center, Chittagong Cantonment, Oxygen More, Chittagong\r\nPhone 	: 	04476802243, 04476802245\r\nFax 	: 	\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	', 'Mr.ABC'),
(166, 5, 5, 29, '8', 'Chauddagram Branch\r\nAddress 	: 	Abdul Goni Shopping Complex (1st floor), Chowddgram Bazar, Comilla\r\nPhone 	: 	(08020) 56362\r\nFax 	: 	\r\nTelex 	: 	\r\nSWIFT 	: 	\r\nEmail 	: 	pblchauddagram@primebank.com.bd', 'Mr.ABC'),
(167, 5, 6, 15, '8', ' Barisal Branch\r\nAddress  :  37, Hemayet Uddin Road, Barisal - 8200\r\nPhone  :  (0431) 64011,64012\r\nFax  :  88-0431-63712\r\nTelex  :  671601 PBLBL BJ\r\nSWIFT  :  PRBLBDDH008\r\nEmail  :  pblbarisal@primebank.com.bd', 'Mr.ABC'),
(168, 5, 3, 5, '8', ' Khulna Branch\r\nAddress  :  7, Old Jessore Road, Khulna -9100\r\nPhone  :  (041) 720071, 725100\r\nFax  :  88-041-731195\r\nTelex  :  627266 PBLKN BJ\r\nSWIFT  :  PRBLBDDH004\r\nEmail  :  pblkhulna@primebank.com.bd', 'Mr.ABC'),
(169, 5, 3, 23, '8', 'Jessore Branch\r\nAddress  :  47, Netaji Subhas Chandra Road, Jessore town, Jessore-7400\r\nPhone  :  (0421) 73622-3\r\nFax  :  88-0421-73624\r\nTelex  :  \r\nSWIFT  :  PRBLBDDH018\r\nEmail  :  pbljessore@primebank.com.bd', 'Mr.ABC'),
(170, 5, 2, 12, '8', 'Rajshahi Branch\r\nAddress  :  138/144, Shaheb Bazar, Rajshahi-6100\r\nPhone  :  (0721) 773980-1, 771874\r\nFax  :  88-0721-773980\r\nTelex  :  671597 PBLRJ BJ\r\nSWIFT  :  PRBLBDDH009\r\nEmail  :  pblrajshahi@primebank.com.bd', 'Mr.ABC'),
(171, 5, 2, 56, '8', 'Bogra Branch\r\nAddress  :  331/364, Rangpur Road, Borogola,Bogra-5800\r\nPhone  :  (051) 73203, 61142\r\nFax  :  88-051-61142\r\nTelex  :  \r\nSWIFT  :  PRBLBDDH022\r\nEmail  :  pblbogra@primebank.com.bd', 'Mr.ABC'),
(172, 5, 2, 49, '8', 'Naogaon  Branch\r\nAddress  :  Jagannath Bhaban (2nd & 3rd Floor) Ward # 4, Holding # 320, Main Road Bridge-er-More, Naogaon\r\nPhone  :  (0741) 62150, 62151\r\nFax  :  88-0741-62152\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblnaogaon@primebank.com.bd', 'Mr.ABC'),
(173, 5, 2, 4, '8', 'Rangpur  Branch\r\nAddress  :  Shah Amanat Ali Shopping Complex Station Road, Zahaj Company More Rangpur\r\nPhone  :  PABX : (0521) 64119, Direct : (0521) 64120\r\nFax  :  (0521) 64118\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblrangpur@primebank.com.bd', 'Mr.ABC'),
(174, 5, 2, 13, '8', 'Chapai Nawabganj Branch\r\nAddress  :  Holding No.29( First Floor) Islampur, Daudpur Road, Bara Indira Moor, Chapai Nawabganj\r\nPhone  :  (0781) 51125, (0781) 51126\r\nFax  :  (0781) 51128\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblchapai@primebank.com.bd', 'Mr.ABC'),
(175, 5, 2, 38, '8', ' Dinajpur Branch\r\nAddress  :  Mazeda Plaza( 1st Floor) 518/473 Ganashtala, Jail Road, Dinajpur\r\nPhone  :  PABX : (0531) 51289, Direct : (0531) 51291\r\nFax  :  (0531) 51296\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbldinazpur@primebank.com.bd', 'Mr.ABC'),
(176, 5, 2, 50, '8', 'Natore Branch\r\nAddress  :  Holding # 1052 (1st floor), Ward # 4, Dhaka-Rajshahi Highway, Pawrashava: Natotre, P.S: Natore, Dist: Natore\r\nPhone  :  \r\nFax  :  \r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblnatore@primebank.com.bd', 'Mr.ABC'),
(177, 5, 2, 50, '8', ' Ishwardi Branch\r\nAddress  :  Holding # 1335/982 (1st floor), Union Committee # 07, Maholla: Puraton Bazar, Pawrashava: Ishwardi, P.S: Natore, Dist: Natore\r\nPhone  :  \r\nFax  :  \r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblishwardi@primebank.com.bd', 'Mr.ABC'),
(178, 5, 2, 61, '8', 'Pabna Branch\r\nAddress  :  423/1, Sonapotti Road, Pabna\r\nPhone  :  \r\nFax  :  \r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  ', 'Mr.ABC'),
(179, 5, 4, 14, '8', 'Sylhet Branch\r\nAddress  :  Laldighirpar, Sylhet-3100\r\nPhone  :  (0821) 721127, 710208\r\nFax  :  88-0821-710673\r\nTelex  :  633241 PRIME BJ\r\nSWIFT  :  PRBLBDDH006\r\nEmail  :  pblsylhet@primebank.com.bd', 'Mr.ABC'),
(180, 5, 4, 14, '8', 'IBB Amberkhana Branch\r\nAddress  :  Nabiba Complex, Amberkhana Airport Road, Sylhet-3100\r\nPhone  :  (0821) 717337, 717332\r\nFax  :  (0821)-717337\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblamber@primebank.com.bd', 'Mr.ABC'),
(181, 5, 4, 46, '8', ' Court Road Branch\r\nAddress  :  Court Road, Moulvi Bazar -3200\r\nPhone  :  (0861) 53877,54940\r\nFax  :  88-0861-53878\r\nTelex  :  642193 PBLMB BJ\r\nSWIFT  :  PRBLBDDH014\r\nEmail  :  pblcourtroad@primebank.com.bd\r\n ', 'Mr.ABC'),
(182, 5, 4, 14, '8', 'Tajpur Branch\r\nAddress  :  Maya View Super Market (1st Floor), P.O. Tajpur, P.S. Osmaninagar, Upozilla - Balaganj, Sylhet\r\nPhone  :  (08242) 56610, 56611, 56612\r\nFax  :  (08242) 56612\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pbltajpur@primebank.com.bd', 'Mr.ABC'),
(183, 5, 4, 14, '8', ' Upashahar Branch\r\nAddress  :  Alif Center (1st Floor - Front Portion), Subhanighat, Upashahar, Sylhet\r\nPhone  :  (0821) 811366, 723524\r\nFax  :  (0821) 710094\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblupashahar@primebank.com.bd', 'Mr.ABC'),
(184, 5, 4, 14, '8', ' Beanibazar Branch\r\nAddress  :  Zaman Plaza (1st Floor), P.O. & P.S. Beanibazar, Sylhet\r\nPhone  :  (08223) 88645\r\nFax  :  (03799) 286454\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblbeanibazar@primebank.com.bd', 'Mr.ABC'),
(185, 5, 4, 14, '8', ' Bishwanath Branch\r\nAddress  :  Al-Baruk Shopping Center (1st Floor), Bishwanath Bazar, Bishwanath, Sylhet\r\nPhone  :  01714-073330\r\nFax  :  (08224) 56004\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblbis@primebank.com.bd', 'Mr.ABC'),
(186, 5, 4, 46, '8', 'Sreemangal Branch\r\nAddress  :  Saptadinga Complex (1st Floor) Ward # 9, Holding No # 145 Moulvibazar Road, Sreemangal, Moulvibazar\r\nPhone  :  (08626) 71181, 71183\r\nFax  :  88-08626-71182\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblsreemangal@primebank.com.bd\r\n  ', 'Mr.ABC'),
(187, 5, 4, 14, '8', '. Subid Bazar Branch\r\nAddress  :  Corner View (1st floor, west side) Plot No: 488(SA),2155(RS) Thana+District: Sylhet\r\nPhone  :  PABX : (0821) 2830941, Direct : (0821) 2830942\r\nFax  :  (0821) 2830942\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblsubid@primebank.com.bd', 'Mr.ABC'),
(188, 5, 4, 46, '8', '. Barelekha Branch Branch\r\nAddress  :  Hazi Abdul Ali Trade Center 842, Barelekha Pawrashava Barelekha, Moulvibazar\r\nPhone  :  PABX : (08622) 56519, Direct : (08622) 56520\r\nFax  :  (08622) 56522\r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblbaralekha@primebank.com.bd', 'Mr.ABC'),
(189, 5, 4, 45, '8', '.Habigonj Branch\r\nAddress  :  Holding # 3794 (1st floor), Ward # 4, Commercial Area, Pawrashava: Habiganj P.S: Sadar, Dist: Habiganj\r\nPhone  :  \r\nFax  :  \r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  pblhabiganj@primebank.com.bd', 'Mr.ABC'),
(190, 5, 4, 45, '8', ' Nabigonj Branch\r\nAddress  :  Anwara Bipan (1st Floor) Holding # 322, Ward # 3, Osmani Road P.S.-Nabigonj, Hobigonj\r\nPhone  :  \r\nFax  :  \r\nTelex  :  \r\nSWIFT  :  \r\nEmail  :  ', 'Mr.ABC'),
(924, 5, 1, 8, '9', 'Aziz Super Market\r\nShahbag Avenue\r\nDhaka-1205\r\nBangladesh 	880 2 8626289 880 2 9663697\r\n	shahbagh@pubalibankbd.com ', 'abc'),
(891, 5, 1, 8, '9', '65, B.B. Avenue\r\nDhaka-1000\r\n\r\n	880 2 9550600 880 2 9555406\r\n	bbavenue@pubalibankbd.com ', 'abc'),
(892, 5, 1, 8, '9', '	Sena Kallyan Bhaban\r\n195, Motijheel Comm. Area\r\nDhaka-1000\r\nBangladesh 	880 7163366 880 2 9550635/110\r\n	motijheel@pubalibankbd.com ', 'abc'),
(893, 5, 1, 8, '9', 'Jalalabad Bhaban\r\n22, Karwan Bazar\r\nDhaka-1215\r\nBangladesh 	880 2 8114080\r\n	kawranbazar@pubalibankbd.com ', 'abc'),
(894, 5, 1, 8, '9', '8, D.I.T. Extension Road\r\nLal Bhaban\r\nDhaka-1000\r\nBangladesh 	880 2 9555565\r\n	dhkstd@pubalibankbd.com ', 'abc'),
(895, 5, 1, 8, '9', '24, Motijheel Comm. Area\r\nDhaka-1000\r\nBangladesh\r\n	880 2 9561858 880 2 9550952\r\n	fex@pubalibankbd.com ', 'abc'),
(896, 5, 1, 8, '9', '26, Dilkusha Commercial Area\r\nDhaka-1000\r\nBangladesh\r\n	880 2 9557323 880 2 9552449 880 2 9557323\r\n	principal@pubalibankbd.com ', 'abc'),
(897, 5, 1, 8, '9', '99, Mohakhali Comm. Area\r\nDhaka-1212\r\nBangladesh\r\n	880 2 8811044\r\n	mohakhali@pubalibankbd.com ', 'abc'),
(898, 5, 1, 8, '9', 'Cenema Hall Road\r\nKaligonj Bazar\r\nP.O. - Kaligonj\r\nDist. - Gazipur 	880 2 9257285\r\n	kaligonjgazi@pubalibankbd.com ', 'abc'),
(899, 5, 1, 8, '9', 'Tongi\r\nMill Gate\r\nP.O. - Monno Nagar\r\nDist. - Gazipur 	880 2 9800387\r\n	tongi@pubalibankbd.com ', 'abc'),
(900, 5, 1, 8, '9', '2/2, Block-A\r\nMirpur Road\r\nMohammadpur\r\nDhaka-1207 	880 2 9117823\r\n	mohammadpur@pubalibankbd.com ', 'abc'),
(901, 5, 1, 8, '9', 'Dhaka City Corporation\r\nNorth Super Market\r\nGulshan-2\r\nDhaka-1212 	880 2 8820442\r\n	gulshanmt@pubalibankbd.com ', 'abc'),
(902, 5, 1, 8, '9', 'Kashimpur\r\nP.O. - Kashimpur\r\nDist. - Gazipur\r\nBangladesh 	9298473\r\n	kashimpur@pubalibankbd.com ', 'abc'),
(903, 5, 1, 8, '9', 'Chandana\r\nP.O. - Chandana\r\nDist. - Gazipur\r\nBangladesh 	880 2 9252218\r\n	joydebpur@pubalibankbd.com ', 'abc'),
(904, 5, 1, 8, '9', '	Singair\r\nP.O. - Singair\r\nDist. - Manikgonj\r\nBangladesh 	0651 71010\r\n	singair@pubalibankbd.com ', 'abc'),
(905, 5, 1, 8, '9', '	Shahid Rafique Sharak\r\nManikgonj\r\nP.O. - Manikgonj\r\nDist. - Manikgonj 	880 0651 623\r\n	manikgonj@pubalibankbd.com ', 'abc'),
(906, 5, 1, 8, '9', '	83, Kazi Nazrul Islam Avenue\r\nTejgaon\r\nP.O. - Tejkuni Para\r\nDhaka-1215 	880 2 9110863\r\n	farmgate@pubalibankbd.com ', 'abc'),
(907, 5, 1, 8, '9', 'Shaheed Tajuddin Sarani\r\n109, Tejgaon Industrial Area\r\nTejgaon\r\nDhaka-1215 	8853266\r\n	tejgaon@pubalibankbd.com ', 'abc'),
(908, 5, 1, 8, '9', '	Block D-50, Savar Bazar\r\nP.O. - Savar\r\nDist. - Dhaka\r\nBangladesh 	7743879\r\n	savar@pubalibankbd.com ', 'abc'),
(909, 5, 1, 8, '9', 'House# 2\r\nRoad# 2, Sector-1\r\nUttara Model Town\r\nDhaka-1230 	880 2 8914512\r\n	intairport@pubalibankbd.com ', 'abc'),
(910, 5, 1, 8, '9', '59/C, Asad Avenue\r\nMohammadpur\r\nDhaka-1207\r\nBangladesh 	880 2 9110567\r\n	asadave@pubalibankbd.com ', 'abc'),
(911, 5, 1, 8, '9', 'Main Road # 3\r\nSection-11\r\nPollabi\r\nDhaka-1216 	880 2 9000048\r\n	mirpur@pubalibankbd.com ', 'abc'),
(912, 5, 1, 8, '9', '31, South Kafrul (Rim Complex)\r\nDhaka-1206\r\nBangladesh\r\n	880 2 9872114\r\n	kafrul@pubalibankbd.com ', 'abc'),
(913, 5, 1, 8, '9', 'Main Road No. 2\r\nMirpur Section-2\r\nSony Cinema Hall Bhaban\r\nDhaka-1216 	880 2 8031984\r\n	chiriakhana@pubalibankbd.com ', 'abc'),
(914, 5, 1, 8, '9', 'H 86/87, New Airport Road\r\nBanani\r\nDhaka - 1212\r\nBangladesh 	880 2 8816289\r\n	banani@pubalibankbd.com ', 'abc'),
(915, 5, 1, 8, '9', '	Begum Rokeya Sharani\r\n766/1, Shewrapara\r\nDhaka-1216\r\nBangladesh 	8053069\r\n	shewrapara@pubalibankbd.com ', 'abc'),
(916, 5, 1, 8, '9', '13/A, Dhanmondi\r\nHouse # 46\r\nDhaka\r\nBangladesh 	880 2 8118214\r\n	satmasjid@pubalibankbd.com', 'abc'),
(917, 5, 1, 8, '9', '107, Kazi Nazrul Islam Avenue\r\nSonargaon Hotel\r\nDhaka-1215\r\nBangladesh 	880 2 8120387 8111641-5 Ext. 4902\r\n	sonargaonhotel@pubalibankbd.com ', 'abc'),
(918, 5, 1, 8, '9', 'Khamarbari\r\nFarmgate\r\nTejgoan\r\nDhaka - 1215 	880-2-9114637\r\n	agricom@pubalibankbd.com ', 'abc'),
(919, 5, 1, 8, '9', '	Daulatpur\r\nP.O. - Daulatpur\r\nDist. - Manikgonj\r\nBangladesh 	880 2 651 432 8\r\n	daulatpurmanik@pubalibankbd.com ', 'abc'),
(920, 5, 1, 8, '9', '3, Mirpur Road\r\nDhaka-1205\r\nBangladesh\r\n	880 2 8627343 880 2 8625422\r\n	newmarket@pubalibankbd.com ', 'abc'),
(921, 5, 1, 8, '9', '69/1, New Circular Road\r\nMalibagh\r\nDhaka-1217\r\nBangladesh 	880 2 9319975\r\n	malibagh@pubalibankbd.com ', 'abc'),
(922, 5, 1, 8, '9', 'Kamalapur Railway Station\r\nDhaka-1000\r\nBangladesh\r\n	880 2 9332459\r\n	railway@pubalibankbd.com ', 'abc'),
(923, 5, 1, 8, '9', '1/2, Central Bashaboo\r\nDhaka-1214\r\nBangladesh\r\n	880 2 9332952\r\n	basabo@pubalibankbd.com ', 'abc'),
(237, 5, 1, 8, '15', 'Dholaikhal Branch\r\n119/B/1 New, Distillary Road, Sutrapur, Dhaka\r\nTel: 7452064-5', 'Branch Manager Md. Abdullah Vice President'),
(238, 5, 1, 8, '15', 'Shantinagar Branch\r\n41/B, Chamelibag, Shantinagar, Dhaka\r\nTel: 8355179, 9358194, 9358157', 'Branch Manager Md. Belal Hossain Vice President'),
(239, 5, 1, 8, '15', 'Gulshan Branch\r\nLand View Commercial Center, 28, Gulshan North C/A, Gulshan Circle-2, Gulshan, Dhaka\r\nTel: 8852540, 8861281', 'Branch Manager Nasim Ali Akhand Senior Vice President'),
(240, 5, 1, 8, '15', 'Dhanmondi Branch\r\nHouse # 17, Road # 6, Dhanmondi R/A, Dhaka\r\nTel: 8613920, 8626044, 9676553 ', 'Branch Manager Md. Mofazzal Hossain Senior Vice President'),
(241, 5, 1, 8, '15', 'Nayabazar IB Branch\r\n10/3, Malitola, North South Road, Dhaka\r\nTel: 9553977, 9556527\r\n', 'Branch Manager Khorshed Ahmed Nayeem Senior Vice President'),
(242, 5, 1, 8, '15', 'Konabari Branch\r\nBSCIC Industrial Area, Konabari, Gazipur\r\nTel: 9297182, 9297183\r\n', 'Branch Manager Md. Shahid Ullah Assistant Vice President'),
(243, 5, 1, 8, '15', 'Ashulia Branch\r\n1159, Nigar Plaza & Hakim Plaza, Jamghara, Ashulia, Dhaka\r\nTel: 7788493, 7788437\r\n', 'Branch Manager Sayed Sakir Uddin Md. Munir Vice President '),
(244, 5, 1, 8, '15', 'Banani Branch\r\nTower Hamlet (2nd floor), 16, Kemal Ataturk Avenue, Banani C/A, Dhaka-1213\r\nTel: 8836631, 8836632', 'Branch Manager Md. Mahbub Alam Vice President'),
(245, 5, 1, 10, '15', 'Motijheel Branch\r\nSurma Tower, 59/2, Purana Paltan, Dhaka-1000\r\nTel: 9554474, 9551606\r\n', 'Branch Manager Md. Anwar Hossain Senior Vice President'),
(246, 5, 1, 8, '15', 'Chistia Market Branch\r\nChistia Market, 393/B, Elephant Road (2nd Floor), Dhanmondi, Dhaka\r\nTel: 9673742, 9670135.\r\n', 'Branch Manager Anwar Hakim Senior Assistant Vice President'),
(247, 5, 1, 8, '15', 'Foreign Exchange Branch\r\nChini Shilpa Bhaban, (1st & 2nd floor) 3, Dilkusha C/A, Dhaka-1000\r\nTel: 9571365, 9564258\r\n', 'Branch Manager Md. Habibur Rahman Executive Vice President'),
(248, 5, 1, 8, '15', 'Sonargaon Road Branch\r\nNational Plaza, 109, Bir Uttam CR Datta Road, Sonargaon Road, Dhaka\r\nTel: 9670655, 9677050\r\n', 'Branch Manager Engr. S.M. Anisuzzaman Senior Assistant Vice President'),
(249, 5, 1, 8, '15', 'Baligaon Bazar Branch\r\nAziz Plaza, Baligaon Bazar, Arial Baligaon, Tongibari, Munshigonj\r\nTel: 0691-74078\r\n', 'Branch Manager Md. Moazzem Hossain First Assistant Vice President'),
(250, 5, 1, 8, '15', ' \r\nNarayanganj Branch\r\nHolding No-Old-137, New-207, B.B. Road, Chashara, Narayanganj\r\nTel: 7635166, 7630900\r\n', 'Branch Manager Mohammed Shaharior Islam Assistant Vice President'),
(251, 5, 1, 8, '15', 'Mawna Branch\r\n172, Mawna Sorasta, Sripur Paursava, Gazipur\r\nTel: 06825-51336, 52200\r\n', 'Branch Manager  Md. Shamsur Rahman Majumder Vice President'),
(252, 5, 1, 8, '15', 'Aganagar Branch\r\nHaji Anowar Hossain Complex (1st & 2nd floor), Shahid Delwar Hossain Road, Aganagar, Keranigonj, Dhaka\r\nTel: 7762295-8\r\n', 'Branch Manager S.M. Mofizur Rahman Assistant Vice President '),
(253, 5, 1, 8, '15', 'Dilkusha Branch\r\n33, Dilkusha C/A, Dhaka\r\nTel: 9565608, 9551419, 9555795\r\n', 'Branch Manager M. Shamsul Arefin Executive Vice President'),
(254, 5, 1, 8, '15', 'Rayerbagh Branch\r\n61296 Janatabagh, Rayerbagh, Dhaka\r\n', 'Branch Manager Md. Majibur Rahman Assistant Vice President '),
(255, 5, 1, 8, '15', 'Gazipur Chowrasta Branch\r\nHolding No-1428 (1st floor), Chandana Chowrasta, Joydevpur, Gazipur\r\n', 'Branch Manager Mohammad Nurul Huda First Assistant Vice President'),
(256, 5, 1, 8, '15', 'Savar Branch\r\nHolding No.-A-40, Savar Bazar Road, Savar, Dhaka\r\n', 'Branch Manager Md. Golam Kibria First Assistant Vice President'),
(257, 5, 1, 8, '15', 'Malibagh Branch\r\n67, Khilgaon Chowdhury Para, D.I.T Road, Dhaka-1219\r\nTel: 01714170822\r\n', 'Branch Manager Moin Uddin Ahmed Senior Vice President'),
(258, 5, 1, 8, '15', 'Mirpur Branch\r\n203/A, 203/1, Senpara Parbata (1st & 2nd floor), Mirpur-10, Dhaka-1216\r\nTel: 8051931-3\r\n', 'Branch Manager M.A. Wadud Assistant Vice President'),
(259, 5, 1, 8, '15', 'Mohakhali Branch\r\nIsmail Mansion, 32, Mohakhali C/A, Dhaka\r\nTel: 9887269, 9899455, 9889273-4\r\n', 'Branch Manager M. Shamsul Huq Senior Executive Vice President'),
(260, 5, 1, 8, '15', 'Moulvi Bazar Branch\r\nMostakim Mansion, 77/3, Moulvi Bazar, Dhaka\r\nTel: 77315026, 7315974-5\r\n', 'Branch Manager Khandaker Zia Hassan Vice President'),
(261, 5, 1, 8, '15', 'Uttara Branch\r\nSingapur Plaza, 17 Mymensingh Road, Sector-3, Uttara, Dhaka-1230\r\nTel: 8933085, 8933059\r\n', 'Branch Manager Md. Mostafizur Rahman Vice President'),
(262, 5, 1, 1, '15', 'Madaripur SME Center\r\nHolding No.676, Puran Bazar, New Market Complex, Madaripur\r\n', 'SME In-charge A.H.M. Momenur Rahman Senior Executive Officer'),
(263, 5, 1, 8, '15', 'Motijheel SME Center\r\n2, DIT Avenue (Extension) Ground & 1st Floor, Motijheel C/A, Dhaka-1000\r\n', 'SME In-charge A.H.M. Monjur Morshed Senior Assistant Vice President'),
(264, 5, 1, 11, '15', 'Munshigonj SME Center\r\nJ.H. City Center (1st Floor), 223 Jubilee Road, Munshigonj\r\n', 'SME In-charge Md. Moazzem Hossain First Assistant Vice President'),
(265, 5, 5, 27, '15', 'Anderkilla Branch\r\nBashar Chamber, Holding No-479/510, Andorkilla, Kotwaly, Chittagong\r\nTel: 031617524-5\r\n', 'Branch Manager Md. Shahid Ullah Senior Assistant Vice President'),
(266, 5, 5, 27, '15', 'Jubilee Road IB Branch\r\nModina Tower, 57 Jubilee Road, Kotwali, Chittagong\r\nTel: 031616266, 031632486\r\n', 'Branch Manager Mohammad Azam Senior Assistant Vice President'),
(267, 5, 5, 66, '15', 'Bhatiary Branch Newaz Market, Bhatiyari Uttar Bazar, Sitakunda, Chittagong', 'Branch Manager Md. Yasin Siddiqui'),
(268, 5, 5, 27, '15', 'Khatungonj Branch\r\n236, Nurul Absar Market, Khatungonj, Chittagong\r\nTel: 031625454, 031843410\r\n', 'Branch Manager Manzurul Ahsan Chowdhury Senior Vice President'),
(269, 5, 5, 27, '15', 'Kadamtoli Branch\r\nKhakeque Mansion, 1167, D.T. Road, Kadamtoli, Chittagong\r\nTel: 0312514179\r\n', 'Branch Manager Abdul Hamid Chowdhury Assistant Vice President'),
(270, 5, 5, 27, '15', 'Agrabad Branch\r\n76/77, Agrabad C/A, Chittagong\r\nTel: 031-727727, 2523272, 710071, 2511611, 2529611\r\n', 'Branch Manager Md. Shahnewaz Sarker Executive Vice President'),
(271, 5, 5, 27, '15', 'Bahaddarhat Branch\r\n1068/69/70 Old, Arakan Road, Bahaddarhat Area, Chadgaon, Chittagong\r\nTel: 0312551851-2\r\n', 'Branch Manager Md. Shahidul Islam Senior Assistant Vice President'),
(272, 5, 5, 30, '15', 'Bashurhat Branch Basurhat Bazar, Companigonj, Noakhali', ' Branch Manager Md. Shahnewaz Sarker'),
(273, 5, 5, 27, '15', 'Azadi Bazar Branch\r\nNazir Market, Fotikchhori, Chittagong\r\nTel: 04436140600\r\n', 'Branch Manager Mohd. Osman Gani Siddique Junior Assistant Vice President'),
(274, 5, 5, 34, '15', 'Feni Branch\r\nS.S.K. Road (J.B. Road), Feni Sadar, Feni\r\nTel: 033162437, 033162435\r\n', 'Branch Manager Kazi Sayed Mahmud Tareq Senior Assistant Vice President'),
(275, 5, 2, 4, '15', 'Rangpur Branch\r\nHolding No-75/76, Station Road, Kotwali, Rangpur\r\nTel: 0521-53773, 0521-53844\r\n', 'Branch Manager Md. Benozir Ahmed First Assistant Vice President'),
(276, 5, 2, 39, '15', 'Thakurgaon Branch\r\nMasud Heigths (2nd floor), Shahid Mohammad Ali Road, Thakurgaon-5100\r\nTel: 056152585\r\n', 'Branch Manager Md. Abul Basher Murshed Assistant Vice President'),
(277, 5, 2, 38, '15', 'Dinajpur Branch 562/533 & 563/534, Nimtola, Dinajpur', 'Branch Manager Md. Ayub Ali'),
(278, 5, 2, 63, '15', 'Sirajganj Branch\r\nHossain Plaza, 973,974,975 SS Road, Sirajgonj-6700\r\nTel: 075164377-78\r\n', 'Branch Manager Abu Rushd Md. Zubair Senior Assistant Vice President'),
(279, 5, 2, 12, '15', 'Rajshahi Branch\r\n88, Shaheb Bazar, Zero Point, Rampur, Boalia, Rajshahi\r\nTel: 0721812569-70\r\n', 'Branch Manager Md. Abrar Hossain Khan Executive Vice President'),
(280, 5, 2, 56, '15', 'Bogra Branch\r\n898 (New), Kabi Nazrul Islam Sarak, Borogola, Bogra\r\nTel: 05169834, 05169835\r\n', 'Branch Manager Md. Ghulam Mustafa Senior Vice President '),
(281, 5, 2, 49, '15', 'Mohadevpur Branch\r\nCharmatha, Mohadevpur, Naogaon\r\nTel: 0742675137\r\n', 'Branch Manager Md. Moniruzzaman Junior Assistant Vice President '),
(282, 5, 2, 49, '15', 'Naogaon Branch\r\n247, Sadar Road, Naogaon\r\nTel: 074161840\r\n', 'Branch Manager Md. Fazle Elahi Chowdhury Vice President '),
(283, 5, 2, 69, '15', 'Kushtia Branch\r\n21-22, NS Road, MH Bhaban, Roxy More, Kushtia\r\nTel: 07173729\r\n', 'Branch Manager Md. Bellal Hossain First Assistant Vice President'),
(284, 5, 2, 13, '15', 'Chapainawabgonj SME Center\r\n12/13, Zhilim Road (1st Floor), Boro Indera, Chapainawabgonj\r\n', 'SME In-charge Md. Altafur Rahman Senior Executive Officer'),
(285, 5, 4, 14, '15', 'Beani Bazar Branch\r\nCity Centre (1st floor), South Beani Bazar, Sylhet\r\nTel: 03799288022\r\n', 'Branch Manager Md. Nabil Ahmed First Assistant Vice President '),
(286, 5, 4, 14, '15', 'Sylhet Branch\r\nShahir Plaza, 7647, Zinda Bazar, Kotwali, Sylhet\r\nTel: 0821725409, 0821725239\r\n ', 'Branch Manager Chowdhury Reza Shahzaman Mahmud Senior Assistant Vice President'),
(287, 5, 4, 14, '15', 'Goala Bazar Branch\r\nNew Plaza, Goala Bazar, Osmaninagar, Balagonj, Sylhet\r\nTel: 03799187352-3\r\n', 'Branch Manager Md. Harunoor Rashid Senior Assistant Vice President');
INSERT INTO `srcdetails` (`SrcId`, `SourceType`, `DivId`, `DistId`, `SrcName`, `SrcAddress`, `SrcContact`) VALUES
(288, 5, 5, 29, '15', 'Comilla Branch\r\nTrical Tower, Ground floor, 434/581 South Thakurpara, Laksham Road, Comilla\r\nTel: 081-69235, 68007\r\n', 'Branch Manager Md. Abul Bashar Mazumder Assistant Vice President'),
(289, 5, 5, 29, '15', 'Laksam Branch\r\n967, A.B. Plaza, Choul Bazar, Laksam, Comilla\r\nTel: 0803251305\r\n', 'Branch Manager Md. Nurul Islam Khan Assistant Vice President'),
(290, 5, 6, 15, '15', 'Barisal SME Center\r\nNasir Complex, Holding No.105, Sadar Road, Barisal\r\n', 'SME In-charge Mr. Md. Alamgir Hossain Junior Assistant Vice President'),
(292, 5, 1, 8, '13', 'Bandura Govt. Super Market (1st floor), Hasnabad, Nawabgonj, Dhaka\r\nTel: (038946) 84014, 01199814923\r\nE-mail: bndrmg@abbank.com.bd', 'abc'),
(293, 5, 1, 33, '13', 'Bhairab Bazar\r\n248(W) Tin Potty, Bhairab Bazar, Bhairab, Kishoregonj\r\nTel: (09424) 71340, 71351, 71528\r\nFax: (09424) 71351\r\nE-mail: bhbzmg@abbank.com.bd\r\n', 'abc'),
(294, 5, 1, 20, '13', 'Board Bazar\r\nUnion: Gacha, PO: National University, PS: Gazipur Sadar, Gazipur\r\nTel: 9291800, 9291801\r\nFax: 9291802\r\nE-mail: bdbzmg@abbank.com.bd', 'abc'),
(295, 5, 1, 20, '13', 'Chandra\r\nAlhaj Khabiruddin Super Market (1st floor), Kaliakoir Bazar,\r\nPoura Shava, Kaliakair, Gazipur\r\nTel: (06822) 51448, 51466\r\nMobile: 01713033735\r\nE-mail: cndrmg@abbank.com.bd\r\n', 'abc'),
(296, 5, 1, 8, '13', '\r\nPlot: 45 (new) 286/B (old), Road: 16 (new) 27 (old), Dhanmondi R/A, Dhaka 1209\r\nTel: 8117861, 9146489\r\nFax: 8115609\r\nE-mail: dmnbmg@abbank.com.bd', 'abc'),
(297, 5, 1, 8, '13', 'Ventura Avenue (1st & 2nd floor), Plot No. CWN(C)-8, Road No. 34, Gulshan Model Town, Dhaka 1212\r\nTel: 9887169, 9884365\r\nFax: 9882696\r\nE-mail: gulbmg@abbank.com.bd', 'abc'),
(298, 5, 1, 8, '13', '40, Imamganj, Dhaka\r\nTel: 7321594\r\nFax: 7314111\r\nE-mail: imgjmg@abbank.com.bd', 'abc'),
(299, 5, 1, 8, '13', '38-39, Islampur, Dhaka\r\nTel: 7392456, 7396060, 7390536\r\nE-mail: islpmg@abbank.com.bd', 'abc'),
(300, 5, 1, 8, '13', 'Islami Banking Branch\r\n82, Kakrail, Ramna, Dhaka\r\nTel: 8332235, 37, 38\r\nFax: 8332236\r\nE-mail: ibbmg@abbank.com.bd', 'abc'),
(301, 5, 1, 8, '13', 'Hazi Karim Market, Purba Aganagar, Gudara Ghat Road, Keranigonj, Dhaka\r\nTel:  7772234, 7771805\r\nFax: 7771805\r\nE-mail: jinjmg@abbank.com.bd', 'abc'),
(302, 5, 1, 8, '13', 'Joypara\r\nDohar, Dhaka\r\nTel: 06223-56164, 06223 -56165\r\nE-mail: joypmg@abbank.com.bd', 'abc'),
(303, 5, 1, 8, '13', 'Kakrail\r\n81, VIP Road, Dhaka 1000\r\nTel: 9339036, 8315462, 9351177\r\nFax: 8311324\r\nE-mail: krlbmg@abbank.com.bd', 'abc'),
(304, 5, 1, 8, '13', 'Karwan Bazar\r\nBSEC Bhaban\r\n102 Kazi Nazrul Islam Avenue, Dhaka 1215\r\nTel: 8117598-9, 8112253, 8112251\r\nE-mail: kwrnmg@abbank.com.bd', 'abc'),
(305, 5, 1, 32, '13', 'Parkashipur, Madhabdi Bazar\r\nNarsingdi\r\nTel: 0625756113, 9446113\r\nFax: 0625756736, 9446736\r\nE-mail: mdbdmg@abbank.com.bd', 'abc'),
(306, 5, 1, 8, '13', '5/A, 5/B, Darus Salam Main Road (1st fl)\r\nSection 1, Mirpur, Dhaka\r\nTel: 9013693, 9006525\r\nFax: 9006525\r\nE-mail: mirbmg@abbank.com.bd', 'abc'),
(307, 5, 1, 8, '13', 'Motijheel\r\nBSB Building, 08, DIT Avenue, Dhaka\r\nTel: 9563011-5, 9556077, 9555586\r\nFax: 9556077\r\nE-mail: motimg@abbank.com.bd', 'abc'),
(308, 5, 1, 8, '13', 'Pacific Centre (1st Floor), 14 Mohakhali C/A Dhaka 1212\r\nTel: 8821537-8\r\nFax: 8811963\r\nE-mail: mohamg@abbank.com.bd', 'abc'),
(309, 5, 1, 28, '13', '52 Dr. Bipin Sen Road, Choto Bazar, Kotowali, Mymensingh\r\nTel: (091) 61455, 53025\r\nE-mail: mysgmg@abbank.com.bd', 'abc'),
(310, 5, 1, 10, '13', '109 B.B. Road Narayangonj\r\nTel: 7640124, 7634707\r\nFax: 7632187\r\nE-mail: nrgjmg@abbank.com.bd', 'abc'),
(311, 5, 1, 8, '13', '198-202, Nawabpur Road (Nawabpur Tower)\r\nNawabpur, Dhaka 1100\r\nTel: 9566005, 9551511\r\nFax: 7120832\r\nE-mail: nwbpmg@abbank.com.bd', 'abc'),
(312, 5, 1, 8, '13', 'New Elephant Road\r\nNovera Square\r\nHouse 05, Road 02\r\nDhanmondi, Dhaka 1205\r\nTel 8616137, 9674002, 8613967\r\nFax: 8616128\r\nE-mail: nerbmg@abbank.com.bd', 'abc'),
(313, 5, 1, 8, '13', '9/1 North South Road (Bangshal), Dhaka 1100\r\nTel: 9562817, 9565956, 7163110\r\nFax: 9562817\r\nE-mail: nsrbmg@abbank.com.bd', 'abc'),
(314, 5, 1, 10, '13', 'Al-haj, Afsar Karim Bhaban\r\nDN Road, Pagla, Narayanganj\r\nTel: 7682008, 7682009\r\nFax: 7682008\r\nE-mail: paglmg@abbank.com.bd', 'abc'),
(315, 5, 1, 8, '13', 'Principal\r\n30-31, Dilkusha C/A, Dhaka\r\nTel: 9560312-6, 9560887-8\r\nE-mail: pbbrmg@abbank.com.bd', 'abc'),
(316, 5, 1, 8, '13', 'N.R. Tower, 72 Progoti Sharani\r\nBlock: J, Baridhara, Dhaka\r\nTel: 8836329, 8836330\r\nFax: 8836121\r\nE-mail: progmg@abbank.com.bd', 'abc'),
(317, 5, 1, 8, '13', '923, Shewrapara Rokeya Sharani\r\nMirpur, Dhaka\r\nTel: 9014290, 9012607\r\nFax: 9012607\r\nE-mail: rkysmg@abbank.com.bd', 'abc'),
(318, 5, 1, 70, '13', 'Palash Bari, Baipal, Savar, Dhaka\r\nE-mail: savrmg@abbank.com.bd', 'abc'),
(319, 5, 1, 37, '13', '702 Sabur Khan Tower, Kalibari Road, Tangail Sadar, Tangail\r\nE-mail: tangmg@abbank.com.bd', 'abc'),
(320, 5, 1, 8, '13', 'House 11, Road 14D, Sector 4\r\nUttara, Dhaka\r\nTel: 8918758, 8922253, 8919865\r\nFax: 8921566\r\nE-mail: uttrmg@abbank.com.bd', 'abc'),
(321, 5, 5, 27, '13', 'BCIC Sadan\r\n26, Agrabad C/A, Chittagong\r\nP.O. Box: 92\r\nTel: (031) 713381-83\r\nFax: (031) 713384 / 86\r\nSWIFT: ABBLBDDHA101\r\nE-mail: agrmg@abbank.com.bd', 'abc'),
(322, 5, 5, 27, '13', 'K.M.C. Tower (1st Floor)\r\n133, Anderkilla, Chittagong\r\nTel: (031) 613158, 617242, 2854306, 2854307\r\nFax: (031) 613158\r\nE-mail: andkmg@abbank.com.bd', 'abc'),
(323, 5, 5, 27, '13', '4543, Bahaddarhat, Medina Hotel (1st floor), Chandgaon, Chittagong\r\nTel: (031) 650676, 650689, 657070\r\nFax: (031) 650676\r\nEmail: bdhtmg@abbank.com.bd', 'abc'),
(324, 5, 5, 27, '13', 'TCCA Complex, Gomdandi (East), Boalkhali, Chittagong\r\nTel: (30) 3256075, 01199762823\r\nE-mail: blklmg@abbank.com.bd', 'abc'),
(326, 5, 5, 52, '13', '1090/5321, Court Road\r\nBrahmanbaria\r\nTel: (0851) 59065, 58452, 59743\r\nFax: (54018) 0851\r\nE-mail: bhnbmg@abbank.com.bd', 'abc'),
(327, 5, 5, 27, '13', 'BMA Bhaban (Ground Floor), 1367 CDA Avenue\r\nEast Nasirabad, Chittagong.\r\nTel: (031) 651048, 654368\r\nFax: (031) 651048\r\nE-mail: cdamg@ababnk.com.bd', 'abc'),
(328, 5, 5, 27, '13', 'Moti Tower, 67/68 College Road, Chawkbazar, Chittagong\r\nTel: (031) 618350, 618805\r\nFax: (031) 618350\r\nE-mail: cwkbmg@abbank.com.bd', 'abc'),
(329, 5, 5, 53, '13', '123/115 Kalibari Pouro New Market, Chandpur Sadar, Chandpur\r\nTel: (0841) 66151, (0841) 66153\r\nFax: (0841) 66152\r\nEmail: chansbmg@abbank.com.bd', 'abc'),
(330, 5, 5, 30, '13', 'Holding # 886, Feni Road, Chaumuhani, Begumganj, Noakhali\r\nTel: (0321) 51099\r\nE-mail: cmhnmg@abbank.com.bd', 'abc'),
(331, 5, 5, 29, '13', 'Mogholtooly Super Market (1st floor), Mogholtooly Road, Comilla\r\nTel: (081) 68773, 65473\r\nFax: (081) 65473-101\r\nE-mail: comlmg@abbank.com.bd', 'abc'),
(332, 5, 5, 18, '13', 'Digonta Complex (New Market), Bazar Ghata, Cox''s Bazar\r\nTel: (0341) 64265\r\nFax: (0341) 64502\r\nE-mail: cobzmg@abbank.com.bd', 'abc'),
(333, 5, 5, 27, '13', 'Bay Shopping Centre, P.O. EPZ, South Halishahar, P.S. Bandar, Chittagong\r\nTel: (031) 741150, 741151, 741152, 740604\r\nFax: 741150\r\nE-mail: epzmg@abbank.com.bd', 'abc'),
(334, 5, 5, 34, '13', 'Haque Plaza (1st floor)\r\n193, SSK Road,\r\nFeni\r\nTel: (0331) 63098-99\r\nCell: 01190002030, 01813214775\r\nE-mail: fenimg@abbank.com.bd', 'abc'),
(335, 5, 5, 27, '13', 'Hajee Siddique Market (1st floor), Hathazari Bus Stand, Hathazari, Chittagong\r\nTel: (031) 2601340, 2601532, 01819324716\r\nE-mail: hthzmg@abbank.com.bd', 'abc'),
(336, 5, 5, 27, '13', '175, Jubilee Road, Enayet Bazar\r\nChittagong\r\nTel: (031) 613362, 623316\r\nFax: (031) 613362\r\nE-mail: jubrmg@abbank.com.bd', 'abc'),
(337, 5, 5, 27, '13', '395, Khatunganj, Chittagong\r\nTel: (031) 611035-6, 630423\r\nFax: (031) 611176\r\nE-mail: ktgmg@abbank.com.bd', 'abc'),
(338, 5, 5, 27, '13', 'Khulshi House, Bungalow No. 2\r\nB-2, Road No. 1, P.S.: Khulshi\r\nChittagong\r\nTel: 2551649, 2551657, 01199704478\r\nFax: 2551649\r\nE-mail: kulsmg@abbank.com.bd', 'abc'),
(339, 5, 5, 27, '13', '"Mostafa City", Amirabad, Lohagara, Chittagong\r\nTel: (03034) 56047\r\nE-mail: lohamg@abbank.com.bd', 'abc'),
(340, 5, 5, 27, '13', 'Burischar, Kaptai Road\r\nHathazari, Chittagong\r\nTel: (031) 670628, 670999\r\nE-mail: nmhbmg@abbank.com.bd', 'abc'),
(341, 5, 5, 27, '13', 'Khayez Shopping Center (2nd Floor), Patherrhat, Noyapara, Chittagong\r\nTel: (031) 2572716\r\nFax: (031) 2572717\r\nEmail: pathmg@abbank.com.bd', 'abc'),
(342, 5, 5, 27, '13', '5, Port Connecting Road, Block G, Barapole, Halishahar, Chittagong\r\nTel: (031) 727321, 727844\r\nFax: (031) 2519339\r\nE-mail: pcrmg@abbank.com.bd', 'abc'),
(343, 5, 5, 66, '13', 'Sitakunda\r\nAziz Shopping Complex\r\nMohadevpur, Chittagong\r\nTel: (03028) 56007\r\nE-mail: sitamg@abbank.com.bd', 'abc'),
(344, 5, 5, 27, '13', '86 Station Road, Nupur Market, Chittagong\r\nTel: (031) 615029, 613376, 616665, 611030 (PABX)\r\nFax: (031) 615029\r\nE-mail: strmg@abbank.com.bd', 'abc'),
(345, 5, 5, 18, '13', 'Teknaf Main Road\r\nTeknaf, Cox''s Bazar\r\nTel: (03426) 75090, 75180, 01819-836560\r\nE-mail: tknfmg@abbank.com.bd', 'abc'),
(346, 5, 5, 27, '13', 'Abdur Rahim Tower (1st Floor)\r\nHold # 972/1043, D.T. Road\r\nWard # 098, A. K. Khan Gate\r\nNorth Pahartoli, Chittagong\r\nTel: (031) 751616\r\nE-mail: prtlmg@abbank.com.bd', 'abc'),
(347, 5, 3, 23, '13', '607 Benapole, Local Bus Stand, Benapole, Jessore\r\nTel: (04228) 75664, 01711274665\r\nEmail: bnplmg@abbank.com.bd', 'abc'),
(348, 5, 3, 23, '13', '38 M. K. Road, Jessore\r\nTel: (0421) 61072, 66013\r\nFax: (0421) 68623\r\nE-mail: jesrmg@abbank.com.bd', 'abc'),
(349, 5, 3, 5, '13', 'Upazilla - Jhikargacha\r\nHaji Afsaruddin Market, Jhikargacha\r\nTel: (04225) 71255\r\nE-mail: jkgamg@abbank.com.bd', 'abc'),
(350, 5, 3, 5, '13', 'Mollick Shopping Complex Limited, 99 Khan A Sabur Road, Khulna\r\nTel: (041) 720311, 723062, 724090\r\nMobile: 01199-660075\r\nFax: (041) 720311\r\nE-mail: khlnmg@abbank.com.bd', 'abc'),
(351, 5, 3, 42, '13', '12-14 Nawab Serajuddowla Road, Boro Bazar, Kushtia\r\nTel: (071) 61980, 53020, 01711959664\r\nE-mail: kshtmg@abbank.com.bd', 'abc'),
(352, 5, 3, 43, '13', '884/810, Abul Kashem Road\r\nSatkhira\r\nTel: (0471) 63277, 62215\r\nE-mail: stkrmg@abbank.com.bd', 'abc'),
(353, 5, 2, 56, '13', '324, Kazi Nazrul Islam Sarak\r\nJhawtala, Bogra.\r\nTel: (051) 66786, 66621\r\nFax: (051) 66786\r\nE-mail: bgramg@abbank.com.bd', 'abc'),
(354, 5, 2, 13, '13', '16 Godagari Road\r\nChapai Nawabganj\r\nTel: (0781) 55726\r\nE-mail: cnbjmg@abbank.com.bd', 'abc'),
(355, 5, 2, 49, '13', 'Mozaffer Hossain Marketing Complex\r\nMain Road, Naogaon.\r\nTel: (0741) 63030, 63060\r\nFax: (0741) 63030\r\nE-mail: naogmg@abbank.com.bd', 'abc'),
(356, 5, 2, 63, '13', 'Friends Plaza (1st Floor), S S Road, Ward 1, Sirajganj\r\nTel: (0751)64749, (0751)64717\r\nEmail: sirasbmg@abbank.com.bd', 'abc'),
(357, 5, 2, 12, '13', '102-103 Shaheb Bazar, Rajshahi\r\nTel: (0721) 773261, 774283\r\nE-mail: rjshmg@abbank.com.bd', 'abc'),
(358, 5, 4, 14, '13', 'Rongdhonu Biponi Bitan, 1st Floor, Central Bus Terminal Road, Verthokhola, Sylhet\r\nTel: (0821) 717075, 714374\r\nFax: (0821) 714374\r\nE-mail: brkdmg@abbank.com.bd', 'abc'),
(359, 5, 4, 44, '13', 'Madaris Mansion, Bagbari, Chattak, Sunamganj\r\nTel: (08723) 56057, 56118\r\nMobile : 01196-000052\r\nE-mail: chtkmg@abbank.com.bd', 'abc'),
(360, 5, 4, 14, '13', 'Raj Manjil, Dargahgate, Sylhet\r\nTel: 0821-715736, 717006, 715174\r\nFax: 0821-715174\r\nMobile: 01199823503 (Branch), 01711844601 (Manager)\r\nSWIFT: ABBLBDDHA111\r\nE-mail: dagtmg@abbank.com.bd', 'abc'),
(361, 5, 4, 14, '13', 'Biswa Road, Shahjalal Uposhohor Point, Sylhet 3100\r\nTel: (0821) 725042, 815085\r\nFax: (0821) 725042\r\nE-mail: gdntmg@abbank.com.bd', 'abc'),
(362, 5, 4, 14, '13', 'Surma Tower, Plot: 6006(old), 27640(new), Ward No: 13, V.I.P. Road, Taltala, P.S. Kotwali, Sylhet City Corporation, Sylhet\r\nTel: (0821) 714052, 714054\r\nFax: 714053\r\nE-mail: mdbnmg@abbank.com.bd', 'abc'),
(363, 5, 4, 46, '13', 'Shamsher Nagar Road, Choumuhana, Moulvibazar\r\nTel: (0861) 53152, 52880\r\nFax: (0861) 53152\r\nE-mail: mlbzmg@abbank.com.bd', 'abc'),
(364, 5, 4, 46, '13', 'Aziz Super Market, Moulvibazar Road, Sreemangal, Moulvibazar\r\nTel: (08626) 71322, (08626) 71718\r\nE-mail: srmlmg@abbank.com.bd', 'abc'),
(365, 5, 4, 14, '13', 'Haji Keramat Ali Super Market, Kadamtala, Tajpur, Sylhet\r\nTel: (08242) 56575, (037991) 88036\r\nMobile: 01715072919, 01199602909\r\nE-mail: tjprmg@abbank.com.bd', 'abc'),
(366, 5, 6, 15, '13', 'Monsur Mansion, 101 Sadar Road, Barisal\r\nTel: (0431) 63562, 2173186\r\nFax: (0431) 63562\r\nE-mail: brslmg@abbank.com.bd', 'abc'),
(367, 5, 12, 71, '13', '91-92, Central Road\r\nKotowali, Rangpur\r\nTel: (0521) 62557, 65206\r\nFax: (0521)62557\r\nE-mail: rngpmg@abbank.com.bd', 'abc'),
(368, 5, 12, 72, '13', '24, Nur Plaza (1st & 2nd floor), Ward 12, Shaheed Dr. Zikrul Haque Road, Saidpur, Nilphamari\r\nTel: (05526) 72422, 72031\r\nFax: (05526) 72422\r\nMobile: 01199-062967\r\nE-mail: sadpmg@abbank.com.bd', 'abc'),
(369, 5, 12, 73, '13', '189 Zabed Super Market\r\nBahadur Bazar, Dinajpur\r\nTel: (0531) 62030, 62031\r\nFax: (0531) 62031\r\nE-mail: dinamg@abbank.com.bd', 'abc'),
(370, 5, 1, 8, '10', ' BANGSHAL BRANCH\r\n32/3, Malitola Road\r\nNorth South Road, Dhaka -1000\r\nPhone  :  +88-02-9562520,\r\n9558112, 9564177\r\nMobile  :  01713-017589', ' '),
(371, 5, 1, 10, '10', 'BHULTA BRANCH\r\nGausia Market (1st Floor), Bhulta\r\nRupganj, Narayanganj.\r\nPhone  :  +88-02-06725, 87046\r\nMobile  :  0189-249830, 01711-809720', ' '),
(372, 5, 1, 8, '10', 'BIJAYNAGAR BRANCH\r\nAl Razi Complex (1st Floor)\r\n166/167, Shahid Sayed Nazrul Islam Sharani\r\nWard No- 36, Thana- Paltan\r\nDhaka City Corporation, Dhaka.\r\nPhone  :  +88-02-7121822\r\nPabx  :  +88-02- 7126361\r\nMobile  :  01714-167429\r\n01811-449170\r\nFax  :  +88-02-7121822', ' '),
(373, 5, 1, 8, '10', 'BANANI BRANCH\r\nSharif Plaza (1st & 2nd Floor)\r\n39, Kamal Ataturk Avenue Banani\r\nP.S- Gulshan, Dhaka.\r\nPhone  :  +88-02-9891674\r\n9893166, 9890437\r\nMobile  :  01730-326199\r\n01819-814146\r\nFax  :  +88-02-9891877', ' '),
(374, 5, 1, 8, '10', ' BASHUNDHARA BRANCH\r\nHouse No. 186 (Ground & 1st Floor)\r\nBlock-B, Bashundhara Main Road\r\nBashundhara R/A, Dhaka\r\nPhone  :  +88-02-8401735 \r\n      +88-02-8401734\r\nMobile  :  01730-001211\r\n01811-481287', ' '),
(375, 5, 1, 10, '10', 'CHASHARA BRANCH\r\nBadhan Community Centre (1st Floor)\r\n231/5, B. B. Road\r\nChashara, Narayangonj.\r\nPhone  :  +88-02-7643991-2\r\nMobile  :  01730-076140\r\n01817-032567', ' '),
(376, 5, 1, 8, '10', 'CORPORATE BRANCH[AD]\r\nPlot- CWS-(A)-1, Road No- 34\r\nGulshan Avenue, Dhaka-1212\r\nPhone  :  +88-02-8852500\r\nMobile  :  01730-318848', ' '),
(377, 5, 1, 8, '10', 'DHANMONDI BRANCH\r\nNahar Green Summit (1st Floor)\r\nPlot # 305 (Old), 43 (New)\r\nRoad # 27 (Old), 16 (New)\r\nDhanmondi R/A, Dhaka\r\nPhone  :  +88-02-9123343\r\nPabx  :  9130638, 9130765, 9121483\r\nMobile  :  01678-013205', ' '),
(378, 5, 1, 8, '10', '. DONIA BRANCH\r\n1067, Nayapara (1st & 2nd floor)\r\nUnion- Shampur, P.S- Shampur, Dhaka.\r\nPhone  :  +88-02-7550151\r\n+88-02-7550152\r\nMobile  :  01817-032572', ' '),
(379, 5, 1, 8, '10', ' ELEPHANT ROAD BRANCH[AD]\r\n25, Elephant Rd., Dhaka-1207\r\nPhone  :  +88-02-9667370, 8621283, 9664622, 8615947\r\nPabx  :  +88-02-8615947, 8621283\r\nMobile  :  01199-803374\r\nFax  :  +88-02-9664622', ' '),
(380, 5, 1, 2, '10', 'FARIDPUR BRANCH\r\n85, Mujib Sarkar, Faridpur\r\nPhone  :  +88-0631-64927, 63355\r\nMobile  :  01711-883740\r\nFax  :  +88-0631-63355', ' '),
(381, 5, 1, 8, '10', ' FOREIGN EXCHANGE BRANCH\r\n20, Dilkusha C/A Dhaka-1000\r\nPhone  :  +88-02-9563965,\r\n9563966, 9564030\r\nMobile  :  01713-034312\r\nFax  :  +88-02-9564030', ' '),
(382, 5, 1, 20, '10', 'GAZIPUR CHOWRASHTA BRANCH\r\nUnisay Tower (1st floor)\r\nMymensingh Road,\r\nUnion- Bason, P.O - Chandana\r\nDist- Gazipur.\r\nPhone  :  +88-02-9263951,\r\n+88-02-9263953-54\r\nMobile  :  01817-032564', ' '),
(383, 5, 1, 8, '10', 'GULSHAN BRANCH[AD]\r\nCONCORD I.K. Tower (1st Floor),\r\nPlot No. CEN (A)-2, North Avenue,\r\nGulshan-2, Dhaka-1212\r\nPhone  :  +88-02-8824198, 8824564, 9895500\r\nMobile  :  01711-888358\r\nFax  :  +880-02-8824564', ' '),
(384, 5, 1, 7, '10', 'GOPALGONJ BRANCH[New]\r\n127, College Road, Chowronggi\r\nWard No- 4, Gopalgonj Paurasava\r\nDist- Gopalgonj.\r\nPhone  :  +88-02-6682250\r\nMobile  :  01714-167441', ' '),
(385, 5, 1, 8, '10', ' HASNABAD BRANCH\r\nP.O: Hasnabad Thana Nawabgonj\r\nDhaka-1321\r\nPhone  :  +88-038946-84013\r\nMobile  :  01711-881050', 'abc'),
(386, 5, 1, 8, '10', 'ISLAMPUR BRANCH\r\nLion Tower (2nd Floor),\r\n108, Islampur Road,\r\nPS- Kotwali, Dist- Dhaka\r\nPhone  :  +88-02-7392308, 7392661\r\nMobile  :  01711-809732\r\nFax  :  +88-02-7392308, 7392661', ' '),
(387, 5, 1, 8, '10', 'KAWRAN BAZAR BRANCH\r\n11, Kawran Bazar , Titas Gas Bhaban Kawran Bazar, Dhaka\r\nPhone  :  +88-02-8115757, 9141572\r\nMobile  :  01711-883738\r\nFax  :  +88-02- 9140581', ' '),
(388, 5, 1, 10, '10', 'KANCHAN BRANCH\r\nMaula Super Market (1st floor)\r\nKanchan Bazar, Rupgonj Narayangonj.\r\nMobile  :  01811-456752\r\n01811-456757', ' '),
(389, 5, 1, 32, '10', 'MADHABDEE BRANCH\r\nUnion-Madhabdee, P.O-Madhabdee\r\nPS & Dist.Narsingdi\r\nPhone  :  +88-06257-56405\r\nMobile  :  01711-809731', 'abc'),
(390, 5, 1, 11, '10', ' MIRPUR BRANCH\r\nHouse# 1, Road# 6, Block# A\r\nSection# 6, Mirpur, Dhaka\r\nPhone  :  +88-02-8011755, 8015810\r\nMobile  :  01711-881049\r\nFax  :  +88-02-8015810', ' '),
(391, 5, 1, 8, '10', 'MOHAKHALI BRANCH\r\nMedona Tower 28, Mohakhali C/A, Dhaka\r\nPhone  :  +88-02-8813027, 9884883, 9884885\r\nMobile  :  01711-881052', ' '),
(392, 5, 1, 8, '10', ' MOHAMMADPUR BRANCH\r\n14/21, Block -A, Asad Avenue\r\nMohammedpur, Dhaka.\r\nPhone  :  +88-02-9118517, 8114661, 9124325, 9133351,\r\nMobile  :  01711-881048\r\nFax  :  +88-02-9124325', ' '),
(393, 5, 1, 8, '10', 'MOULVIBAZAR BRANCH[AD]\r\n4/1, and 5, Moulvibazar Road. Gulbadan House, Dhaka-1100\r\nPhone  :  +88-02-7311407, 7311939, 7311807\r\nMobile  :  01711-881047\r\nFax  :  +88-02-7311407', ' '),
(394, 5, 1, 28, '10', 'MYMENSINGH BRANCH\r\n17, Chota Bazar, Mymensingh -2200\r\nPhone  :  +88-091-64345, 64346\r\nMobile  :  01711-881064\r\nFax  :  +88-091-64345', ' '),
(395, 5, 1, 20, '10', 'MAWNA BRANCH\r\nAbdus Shahid Super View\r\nMawna Chowrasta, Shreepur Road\r\nUnion- Telihati, Upazilla- Shreepur\r\nDist- Gazipur.\r\nPhone  :  06825-52905, 06825-52904\r\nMobile  :  01714-167406\r\n01811-449179', ' '),
(396, 5, 1, 10, '10', 'NARAYANGONJ BRANCH\r\n10,S.M Maleh Road\r\nTanbazar, Narayangonj-1400\r\nPhone  :  +88-02-7646628, 7641262\r\nMobile  :  01730-076131\r\nFax  :  +88-02-7611262', ' '),
(397, 5, 1, 32, '10', 'NARSINGDI BRANCH\r\nNarsingdi Bazar, Narsingdi-1600\r\nPhone  :  +88-0621-63272, 62673\r\nMobile  :  01711-809730', ' '),
(398, 5, 1, 8, '10', 'NAWABPUR BRANCH[AD]\r\nHasina Yeasin Market\r\n168, Nawabpur,(1st flr), Dhaka-1000\r\nPhone  :  +88-02-9566746, 7121083, 7166489\r\nMobile  :  01711-809723\r\nFax  :  +88-02-9566746', ' '),
(399, 5, 1, 8, '10', 'NAYABAZAR BRANCH\r\n9, Bashabari Lane(1st Floor)\r\nNayabazar, Dhaka\r\nPhone  :  +88-02-7393379, 7396082, 7393123\r\nMobile  :  01711-888359\r\nFax  :  +88-02-7393123', ' '),
(400, 5, 1, 8, '10', ' NEW ESKATON BRANCH\r\nWaqf Bhaban (1st Floor)\r\n4, New Eskaton Road, Dhaka.\r\nMobile  :  01730-318847', ' '),
(401, 5, 1, 8, '10', 'NORTH BROOK HALL ROAD BRANCH\r\n54, North Brook Hall Road\r\nBangla Bazar(1st floor), Dhaka\r\nMobile  :  01711-883739\r\nPhone  :  +88-02-7117030, 7122154, 7125064\r\nFax  :  +88-02-7122154', ' '),
(402, 5, 1, 70, '10', 'NABINAGAR BRANCH\r\nHazi Nizam Plaza (1st Floor)\r\nVill- Dendabar, P.O- Savar Cantonment\r\nP.S- Ashulia, Upazilla- Savar\r\nDistrict- Dhaka.\r\nPhone  :  ++88-02-7792365, 7792366-7\r\nMobile  :  01730-329716\r\n01811-418836', ' '),
(403, 5, 1, 10, '10', ' PAGLABAZAR BRANCH\r\nD.N. Road, Paglabazar\r\nPS-Fatullah, Narayangonj\r\nPhone  :  +88-02-7682234\r\n+88-02-7681266\r\nMobile  :  01711-881045', ' '),
(404, 5, 1, 8, '10', ' PRINCIPAL BRANCH[AD]\r\n58, Motijheel C/A, Dhaka-1000\r\nPhone  :  +88-02-9555799,\r\n9561054,9559744\r\nPabx  :  +88-02-9550836,\r\n9550833,9568547-48\r\nMobile  :  01711-888360\r\nFax  :  +88-02-9568548', ' '),
(405, 5, 1, 70, '10', 'SAVAR BRANCH\r\nSugandha Super Market\r\nSavar Bus Stand\r\nWard No- 3, Savar Pourashava\r\nUpazilla- Savar, District- Dhaka.\r\nMobile  :  01730-318845\r\n01811-414282', '  '),
(406, 5, 1, 8, '10', 'SHANTINAGAR BRANCH\r\nâ€œMadina Hightsâ€ (Ground & 1st Floor)\r\n32, New Circular Road,\r\nSiddeswari, Ramna,\r\nWard # 53, Dhaka City Corporation,\r\nDhaka\r\nPhone  :  +88-02-8312887, 8352054,\r\nMobile  :  01711-883764\r\nFax  :  +88-02-8312887', ' '),
(407, 5, 1, 2, '10', 'SATOIRE BAZAR SME/KRISHI\r\nBRANCH\r\nSatoire Bazar, Word No- 09\r\nP.S- Boalmaari, Dist- Faridpur.\r\nMobile  :  01730-705199\r\n01811-449178', ' '),
(408, 5, 1, 8, '10', 'SONARGAON JANAPATH BRANCH\r\nHouse No- 10, Sonargaon Janapath\r\nSector- 11, Ward No- 01\r\nUttara Model Town, Thana- Uttara\r\nDhaka City Corporation, Dhaka.\r\nPhone  :  +88-02-8991584\r\nMobile  :  01714-167428', ' '),
(409, 5, 1, 37, '10', 'TANGAIL BRANCH\r\n1722-1729 Masjid Road (Ist Floor), Tangail\r\nPhone  :  +88-0921-54327, 54307\r\nMobile  :  01711-881051', ' '),
(410, 5, 1, 20, '10', 'TONGI BRANCH\r\n8, Charagali Market\r\nShajahan Mansion, Tongi\r\nGazipur.\r\nPhone  :  +88-02-9802332, 9815799\r\nMobile  :  01711-881046', ' '),
(411, 5, 1, 8, '10', 'TEJGAON BRANCH\r\nRahmanâ€™s Regnum Centre\r\n191/B, Tejgaon 1/A\r\nTejgaon Gulshan Link Road\r\nWard No- 37, Thana- Tejgaon\r\nDHaka City Corporation, Dhaka.\r\nMobile  :  01730-705198', ' '),
(412, 5, 1, 8, '10', ' UTTARA BRANCH\r\nRazuk Cosmos Shopping Complex (1st Floor),\r\nPlot # 71, Sector # 7 (Azampur)\r\nUttara C/A, Dhaka\r\nPhone  :  +88-02-8956979\r\nPabx  :  +88-02-8920450, 8953813\r\nMobile  :  01713-068098\r\n0167-8013204', ' '),
(413, 5, 1, 8, '10', 'ZINZIRA BRANCH\r\nTinpatty (1st Floor), Zinjira Bazar\r\nZinjira, Dhaka-1310\r\nPhone  :  +88-02-7772208\r\n7770757\r\nMobile  :  01711-883757', ' '),
(414, 5, 5, 27, '10', 'Zonal Office:\r\nRifles Club Shopping Complex (1st fl.)\r\nNandan Kanon\r\nJubilee Road, Chittagong 4000\r\nPhone  :  +88-031-610497, 616264', ' '),
(415, 5, 5, 27, '10', 'AGRABAD BRANCH\r\nKashfia Plaza (1st Floor)\r\n923/A, Sheikh Mujib Road\r\nAgrabad C/A. Chittagong-PC. 4000\r\nPhone  :  +88-031-710706, 716020, 711054, 725997\r\nPABX  :  +88-031-711053-5\r\nMobile  :  01711-804129, 0171-725136\r\nFax  :  +88-031-711054', ' '),
(416, 5, 5, 27, '10', 'ANDERKILLA BRANCH\r\n504, Anderkilla (Imam Mansion) Ctg.\r\nPhone  :  +88-031-614639, 612162\r\nMobile  :  01711-881053\r\nFax  :  +88-031-614639, 2853778', ' '),
(417, 5, 5, 27, '10', 'BAHADDARHAT BRANCH\r\nRahmania Shopping Complex (1st Flr) 63/A, Chandgaon, Chittagong\r\nPhone  :  +88-031-652370, 2551185\r\nMobile  :  01711-883742', ' '),
(418, 5, 5, 52, '10', 'BRAHMANBARIA BRANCH\r\n1090/128 Court Road, Brahmanbaria\r\nPhone  :  +88-0851-57650, 57688\r\nMobile  :  01711-809733', ' '),
(419, 5, 5, 53, '10', 'CHANDPUR BRANCH\r\n37/37, Comilla Road\r\nPaul Bazar, Chandpur\r\nPhone  :  +88-0841-63483, 67348\r\nMobile  :  01711-888361', ' '),
(420, 5, 5, 27, '10', 'CHAWKBAZAR BRANCH\r\n371, Kapashgola Road,\r\nChowkbazar,Ctg-4000\r\nPhone  :  +88-031-653074\r\nMobile  :  01711-881054', ' '),
(421, 5, 5, 18, '10', 'CHOKORIA BRANCH\r\nSamabaya Market (1st floor)\r\nP.O.: Chiringa\r\nChokoria Pourashava\r\nUpa Zilla: Chokoria\r\nDist: Cox''s Bazar\r\nPhone  :  03422-56274,\r\n0443-4493932\r\nMobile  :  01713-068099', ' '),
(422, 5, 5, 30, '10', 'CHOWMUHANI BRANCH\r\n50-266, Kalitola Rd., Haji Seraj Mkt.\r\nChowmuhani, Noakhali\r\nPhone  :  +88-0321-52206, 52111\r\nMobile  :  01711-883741', ' '),
(423, 5, 5, 29, '10', 'COMILLA BRANCH\r\n125/117, Raigonj (1stFlr.)\r\nChatipatty, Comilla-3500\r\nPhone  :  +88-081-65776, 76447\r\nMobile  :  01711-809726', ' '),
(424, 5, 5, 18, '10', ' COX''S BAZAR BRANCH\r\nP.O. Box. No 10 Main Road, Barabazr Cox''s Bazar-3829\r\nPhone  :  +88-0341-64398, 64092\r\nMobile  :  01711-888356', ' '),
(425, 5, 5, 27, '10', 'DHOHAZARI BRANCH\r\nAl Haj Shamsuddin Super Market.\r\n(1stflr), stn. Rd. Dohazari\r\nChandanaish, Chittagong\r\nPhone  :  +88-031-635022\r\nMobile  :  01711-888357', ' '),
(426, 5, 5, 27, '10', 'DAMPARA BRANCH\r\nHolding No. 115/134\r\nM. M. Ali Road\r\nWASA More, Dampara, Chittagong.\r\nMobile  :  01730-705200\r\n01811-456760', ' '),
(427, 5, 5, 18, '10', 'EIDGAON BRANCH\r\nEidgaon Main Road (Near Bus Stand)\r\nUnion- Eidgaon\r\nUpazilla & District- Coxâ€™s Bazar.\r\nMobile  :  01730-318849\r\n01811-418837', ' '),
(428, 5, 5, 27, '10', 'FATICKCHARI BRANCH\r\nM.K. Shopping Complex,\r\nCollege Road, Bibirhat,\r\nUnion, Durang, UpaZilla Fatikchari, Dist- Chittagong\r\nPhone  :  +88-031-630389/120, 637001\r\nMobile  :  01711-883746', ' '),
(429, 5, 5, 34, '10', 'FENI BRANCH\r\n21, Stn. Road, Shaheed Hossain Uddin Bipani, Bitan(1st Floor), Feni\r\nPhone  :  +88-0331-74296, 61567\r\nMobile  :  01711-881065', ' '),
(430, 5, 5, 27, '10', 'GOHIRA BRANCH\r\nP.O.: Gohira\r\nPourashava: Raozan\r\nUpa Zilla: Raozan\r\nDist: Chittagong\r\nPhone  :  +88-03026-56189, 03026-56190\r\nMobile  :  01713-068097, 04434493930', ' '),
(431, 5, 5, 27, '10', 'HATHAZARI BRANCH\r\nSA Shopping Complex ( 1st floor)\r\nVill- Fatika, Union- Hathazari Sadar\r\nP.S- Hathazari, Chittagong.\r\nPhone  :  +88-031-2601834\r\nMobile  :  01730-329715\r\nFax  :  +88-031-2601835', ' '),
(432, 5, 5, 27, '10', 'JUBILEE ROAD BRANCH\r\nRifle Club Shooting Complex\r\nNandankanan, Jubilee Rd. Ctg-4000\r\nPhone  :  +88-031-638179, 636024, 624104\r\nPABX  :  +88-031-611049, 630189\r\nMobile  :  01711-804130, 01711-761053\r\nFax  :  +88-031-610497', ' '),
(433, 5, 5, 27, '10', 'KADAMTALI BRANCH[AD]\r\nBaitush Sharaf Market (1st Floor)\r\nKadamtali, Ctg-4000\r\nPhone  :  +88-031-721978, 725939, 727270, 726240\r\nMobile  :  01711-881056\r\nFax  :  +88-031-725939', ' '),
(434, 5, 5, 27, '10', ' KAMAL BAZAR BRANCH\r\nKabir Tower (1st Floor)\r\nKamal Bazar, Kalurghat Road\r\nPL No. (B.S) 18240, 18241\r\nRS Kh No. 10350, 10353\r\nU.L: Mohora\r\nP.S.: Chandgaon\r\nDist: Chittagong\r\nPhone  :  +88-031- 2571196, 2571271\r\nMobile  :  01711-809725', ' '),
(435, 5, 5, 27, '10', ' KHATUNGONJ BRANCH\r\n601, Ramjoy Mohajan lane\r\nKhantungonj, Ctg-4000\r\nPhone  :  +88-031-613777, 610786, 613774, 637029, 637027\r\nPABX  :  +88-031-611015-6\r\nMobile  :  01711-804132\r\nFax  :  +88-031-610786', ' '),
(436, 5, 5, 27, '10', ' LAKSHMIPUR BRANCH\r\n63, Bancha Nagar\r\nMasjid Road, Lakshimpur\r\nPhone  :  +88-0381-55443\r\nMobile  :  01711-883747', ' '),
(437, 5, 5, 27, '10', 'LOHAGARA BRANCH\r\nLiakat Hossain Market (1st Floor)\r\nPS- Lohagara, Chittagong\r\nPhone  :  +88-03034-56011\r\nMobile  :  01199-703298', ' '),
(438, 5, 5, 27, '10', 'MADUNAGHAT BRANCH\r\nMadnughat, P.O Nur Ali Bari\r\nP.S- Hathazari, Chittagong-4337\r\nPhone  :  +88-031-670375\r\nMobile  :  01711-883744', ' '),
(439, 5, 5, 30, '10', ' MAIZDEE COURT BRANCH\r\n1175-1176, Maizdee Court Main Rd. Noakhali\r\nPhone  :  +88-0321-61176, 61236\r\nMobile  :  01711-883748', ' '),
(440, 5, 5, 27, '10', ' MURADPUR BRANCH\r\nChittagong Shopping Complex\r\n112-129 Nasiradad Mohalla\r\n(1st Flr.), Muradpur, Ctg\r\nPhone  :  +88-031-651375, 651376\r\nMobile  :  01711-881055', ' '),
(441, 5, 5, 27, '10', 'NAZIRHAT BRANCH\r\nNazirhat (Hossain Market)\r\nP.O- Nazirhat, P.S â€“Fatickchari, Ctg.\r\nPhone  :  +88-031-637003/ 635033-115\r\nMobile  :  01711-883745', '  '),
(442, 5, 5, 27, '10', 'NOAPARA BRANCH\r\nPatherhat, Vill-Noapara\r\nP.S-Rawzan, Chittagong-4346\r\nPhone  :  +88-031-2571215\r\nMobile  :  01711-883743', 'abc'),
(443, 5, 5, 27, '10', ' O.R.NIZAM ROAD BRANCH\r\n562/A. O.R.Nizam Road\r\nCentral Shopping Center, Ctg\r\nPhone  :  +88-031-636195, 625890\r\nMobile  :  01711-881060', 'abc'),
(444, 5, 5, 27, '10', ' PAHARTALI BRANCH\r\n3830/B, Shourav Bitan\r\nD.T. Road, Pahartali, Chittagong.\r\nMobile  :  01730-318846\r\n01811-415703', ' '),
(445, 5, 5, 27, '10', 'PORT BRANCH\r\nChittagong Port, 200, Strand Rd.\r\nSamad Supar Mkt., No. 3, Jetty Gate Dabolmuring, Ctg\r\nPhone  :  +88-031-711051, 711052\r\nMobile  :  01711-809729\r\nFax  :  +88-031-711051', ' '),
(446, 5, 5, 27, '10', ' RANGUNIA BRANCH\r\nHajee Faiz Market (1st floor),\r\nChaumuhani,\r\nVill- Syed Bari,\r\nP.O- Morium Nagar,\r\nP.S- Rangunia, Chittagong\r\nMobile  :  01819-814109\r\nMobile  :  01730-329718', ' '),
(447, 5, 5, 27, '10', 'RAOZAN SME/KRISHI BRANCH[New]\r\nG.T. Shopping Complex\r\nMaushighata, Ward No- 08\r\nPaurashava & Upazilla- Raozan\r\nDist- Chittagong.\r\nMobile  :  01714-167409', 'abc'),
(448, 5, 5, 27, '10', 'STATION ROAD BRANCH\r\nHajee Abul Hossain mrkt (1st flr.)\r\n113, Stn Rd., Katwali, Chittagong\r\nPhone  :  +88-031-624145, 634152\r\nMobile  :  01711-881057', 'abc'),
(449, 5, 2, 56, '10', 'BOGRA BRANCH\r\n221, Jhawtola, Pashari Mansion\r\nBogra- 5800\r\nPhone  :  +88-051-65467, 63630, 69527\r\nMobile  :  01711-881066', 'abc'),
(450, 5, 2, 13, '10', ' CHAPAINAWABGONJ BRANCH\r\n4-5, Gudagari Rd, Chapainawabgonj.\r\nPhone  :  +88-0781-55283, 56497\r\nMobile  :  01711-436595\r\nFax  :  +88-0781-56497', 'abc'),
(451, 5, 12, 73, '10', ' DINAJPUR BRANCH\r\nMaldahpalty, Dinajpur-5200\r\nPhone  :  +88-0531-63266, 63327, 64042\r\nMobile  :  01711-436596', 'abc'),
(452, 5, 2, 49, '10', 'NAOGAON BRANCH\r\n379, Tula Patty (1st flr)\r\nNaogaon-6500\r\nPhone  :  +88-0741-62988, 62861\r\nMobile  :  01711-809728\r\nFax  :  +88-0741-62988', 'abc'),
(453, 5, 2, 50, '10', 'NATORE BRANCH\r\nUnion- Harishapur\r\nPatuapara, Natore\r\nPhone  :  +88-0771-66771, 66913\r\nMobile  :  01711-809721', 'abc'),
(454, 5, 2, 61, '10', ' PABNA BRANCH\r\nAl-Monsur Super Market (Ist Floor), 407, Abdul Hamid Road, Pabna\r\nPhone  :  +88-0731-65417, 66331\r\nMobile  :  01711-883756', 'abc'),
(455, 5, 2, 12, '10', 'RAJSHAHI BRANCH \r\n70/71, Miah Para (1st Flr.)\r\nShaheb Bazar, Natore Maha Sarak\r\nRajshahi â€“6100\r\nPhone  :  +88-0721-771386, 773367, 812357\r\nMobile  :  01711-883755\r\nFax  :  88-0721-771386', 'abc'),
(456, 5, 12, 71, '10', 'RANGPUR BRANCH\r\nShahid Shopping Complex Jahaj Company More, Municipal holding No. 11013, Rangpur\r\nPhone  :  +88-0521-62851,63730\r\nMobile  :  01711-881061\r\nFax  :  +88-0521-62851', 'abc'),
(457, 5, 2, 63, '10', 'SERAJGONJ BRANCH\r\n720, S.S.Road\r\nP.O Serajgonj, Dist-Serajgonj\r\nPhone  :  +88-0751-62393, 64169\r\nMobile  :  01711-888362\r\nFax  :  +88-0751-62393', 'abc'),
(458, 5, 3, 54, '10', 'CHUADANGA BRANCH\r\n147, Barobazar, Chuadanga\r\nPhone  :  +88-0761-62515\r\nMobile  :  01711-883763', 'abc'),
(459, 5, 3, 23, '10', 'JESSORE BRANCH\r\n36, M.K Road, Jessore\r\nPhone  :  +88-0421-66606, 66061, 73542\r\nMobile  :  01711-883758\r\nFax  :  +88-042173542', 'abc'),
(460, 5, 3, 26, '10', 'JHENAIDAH BRANCH\r\n129, Shere Bangla Road, Jhenaidah\r\nPhone  :  +88-0451-62725\r\nMobile  :  01711-883760', 'abc'),
(461, 5, 3, 5, '10', 'KHAN JAHAN ALI ROAD BRANCH\r\nHaji Hanif Complex (1st Floor),\r\nHolding No- 12 & 13\r\nKhan Jahan Ali Road, Khulna\r\nPhone  :  +88-041-732224\r\nMobile  :  01711-883762', 'abc'),
(462, 5, 3, 5, '10', ' KHULNA BRANCH\r\nHotel Park Building\r\n48, K.D Ghosh Road, Khulna-9000\r\nPhone  :  +88-041-720502, 720522, 733676\r\nMobile  :  01711-881063\r\nFax  :  +88-041-720502', 'abc'),
(463, 5, 3, 42, '10', 'KUSHTIA BRANCH\r\n4, Bar Waritala Road, Kushtia\r\nPhone  :  +88-071-61991, 62533\r\nMobile  :  01711-881058', 'abc'),
(464, 5, 3, 23, '10', ' NOAPARA BAZAR BRANCH JESSORE\r\nNoapara Bazar\r\nP.S Avoynagor, Jessore.\r\nPhone  :  +88-04222-7189\r\nMobile  :  01711-883761', 'abc'),
(465, 5, 6, 15, '10', 'BARISAL BRANCH\r\n87-88, Hamayet Uddin Road\r\nBarisal\r\nPhone  :  +88-0431-57650, 57688, 64289\r\nMobile  :  01711-336457\r\nFax  :  +880-0431-53989', 'abc'),
(466, 5, 4, 14, '10', 'AMBORKHANA BRANCH\r\nAirport Road, Amborkhana, Sylhet\r\nPhone  :  +88-0821-718181, 712631\r\nMobile  :  01711-883751', 'abc'),
(467, 5, 4, 46, '10', ' BAROLEKHA BRANCH\r\nMOULVIBAZAR\r\nP.O& P.S Barolekha\r\nDist. Moulvibazar\r\nPhone  :  +88-08622-56140, 03797800032\r\nMobile  :  01711-883759', 'abc'),
(468, 5, 4, 14, '10', 'BEANIBAZAR BRANCH\r\nShahab Mension, Main Road,\r\nBeanibazar, Sylhet-3170\r\nPhone  :  +88-08223-88338\r\nMobile  :  01711-883750', 'abc'),
(469, 5, 4, 14, '10', ' BISWANATH BRANCH\r\nAl-Burak Shopping Center,\r\nBiswanath Bazar, Vill, P.O. P.s. Biswanath, Dist. Sylhet\r\nPhone  :  +88-038911-82063, 82059\r\nMobile  :  01711883749', 'abc'),
(470, 5, 4, 14, '10', 'GOALABAZAR BRANCH\r\nP.O Goalabazar\r\nP.S Balagonj, Sylhet\r\nPhone  :  +88-03799-187015\r\nMobile  :  01711-883752', 'abc'),
(471, 5, 4, 14, '10', 'LAMABAZAR BRANCH\r\nAli Complex\r\n14, Chayatoru, Lama Bazar, Sylhet.\r\nMobile  :  01811-415698', 'abc'),
(472, 5, 4, 46, '10', 'MOULVIBAZAR BRANCH\r\nCentral Road, Chowmohona\r\nMoulvibazar-3200\r\nPhone  :  +88-0861-52766\r\nMobile  :  01711-881059', 'abc'),
(473, 5, 4, 45, '10', 'NABIGONJ BRANCH\r\nP.O &P.S- Nabigonij, Dist-Hobigonj\r\nPhone  :  +88-038927-88105\r\nMobile  :  01711-883754', 'abc'),
(474, 5, 4, 14, '13', 'SHERPUR BRANCH\r\nUnion-Sadipur\r\nP.O. Aurangapur,\r\nP.S- Osmani Nagar (New),\r\nDist.- Sylhet.\r\nPhone  :  +88-08222-89515\r\nMobile  :  01711-922479', 'abc'),
(475, 5, 4, 14, '10', 'SHERPUR BRANCH\r\nUnion-Sadipur\r\nP.O. Aurangapur,\r\nP.S- Osmani Nagar (New),\r\nDist.- Sylhet.\r\nPhone  :  +88-08222-89515\r\nMobile  :  01711-922479', 'abc'),
(476, 5, 4, 14, '10', 'SHIBGONJ BRANCH\r\nUnion-TuItikar, Sadar Thana â€“ Sylhet, Dist- Sylhet\r\nPhone  :  +88-0821-760300\r\nMobile  :  01711-883753', 'abc'),
(477, 5, 4, 14, '10', 'SHIBGONJ BRANCH\r\nUnion-TuItikar, Sadar Thana â€“ Sylhet, Dist- Sylhet\r\nPhone  :  +88-0821-760300\r\nMobile  :  01711-883753', 'abc'),
(478, 5, 4, 14, '10', 'SYLHET BRANCH[AD]\r\nLaldighirpar, Sylhet-3100\r\nPhone  :  +88-0821-715070, 713541, 713519\r\nMobile  :  01711-809727\r\nFax  :  +88-0821-715212', 'abc'),
(479, 5, 4, 14, '10', 'SHAHJALAL UPASHAHAR BRANCH\r\n\r\nRose View Complex (2nd Floor), Mouza- Sadipur\r\nPlot # 597, 598 Block- D, Shahjalal Upashahar\r\nThana- Kotually, Sylhet City Corporation\r\nSylhet\r\nPhone  :  +88-0821-2833298-99\r\nMobile  :  01819412620\r\nFax  :  +88-0821-721139', 'abc'),
(480, 5, 4, 14, '10', 'ZINDABAZAR BRANCH\r\n1683/A, Zindabazar, Sylhet\r\nPhone  :  +88-0821-714527, 723567\r\nMobile  :  01711-881062', 'abc'),
(481, 5, 1, 8, '11', 'Banani Branch, Dhaka\r\nHouse- 78, Block-D Road-11, Banani, Dhaka\r\nPhone: 02 9862669, 9862572, and 9860476\r\nFax: 02 9862903\r\nEmail: banani@ebl-bd.com', 'abc'),
(482, 5, 1, 8, '11', 'Banasree\r\nHolding No. -10, Block -C, Main Road, Banasree, Rampura, Dhaka\r\nPhone: 04476651951-3\r\nEmail: banasree@ebl-bd.com', 'abc'),
(483, 5, 1, 8, '11', 'Bashundhara Branch\r\nPlot: 15, Block A\r\nBashundhara R/A\r\nDhaka â€“ 1219\r\nPhone: 02 884539-2\r\nFax: 02 8845390\r\nEmail: bashundhara@ebl-bd.com', 'abc'),
(484, 5, 1, 20, '11', 'Board Bazar Branch\r\nOmar Ali Plaza, House 1, Block C, Board Bazar, Gazipur.\r\nPhone: 02 9293895-6\r\nFax: 02 9293897\r\nEmail: boardbazar@ebl-bd.com', 'abc'),
(485, 5, 1, 8, '11', 'Chawk Mughultuly Branch\r\n150 Chawk Mughultuly\r\n(1st Floor), Dhaka\r\nPhone: 02-7314364, 7314369\r\nFax: 02-7314369\r\nEmail: chawkmughultuly@ebl-bd.com', 'abc'),
(486, 5, 1, 10, '11', 'Dhanmondi Branch\r\nHouse 21, Road: 8\r\nDhanmondi R/A\r\nDhaka.\r\nPhone: 02-9126141, 9146235, 9114145\r\nFax: 02-9114145\r\nEmail: dhanmondi@ebl-bd.com', 'abc'),
(487, 5, 1, 8, '11', 'English Road Branch\r\n68 North South Road\r\n(Shahid Sayed Nazrul Islam Sharani)\r\nDhaka\r\nPhone: 02-7125269, 7116019\r\nFax: 02-7122413\r\nEmail: englishroad@ebl-bd.com', 'abc'),
(488, 5, 1, 8, '11', 'Gulshan Branch\r\nConcord Richmond, 68 Gulshan Avenue, Plot 8A, Block CES (F) Gulshan 1, Dhaka.\r\nPhone: 02 9897703, 9897594, 8827254, 8827101-2\r\nFax: 02-9882316\r\nEmail: gulshan@ebl-bd.com', 'abc'),
(489, 5, 1, 8, '11', 'Keraniganj Branch\r\nJahanara Plaza, Bondh Dakpara, Jinjira, Keraniganj, Dhaka\r\nPhone: 02 7762236-7\r\nFax: 02 7762238\r\nEmail: keraniganj@ebl-bd.com', 'abc'),
(490, 5, 1, 8, '11', 'Mirpur Branch\r\nPlot: 14, Main Road: 3\r\nBlock: A, Section: 11\r\nMirupr, Dhaka\r\nPhone: 02-9008115, 9010478\r\nFax: 02-9010478\r\nEmail: mirpur@ebl-bd.com', 'abc'),
(491, 5, 1, 8, '11', 'Moghbazar Branch\r\nShafi Complex, 1/A West Moghbazar, New Circular Road, Ramna, Dhaka\r\nPhone: 02 9361756, 9360115\r\nFax: 02 9348570\r\nEmail: moghbazar@ebl-bd.com', 'abc'),
(492, 5, 1, 8, '11', 'Motijheel Branch\r\n88 Motijheel C/A, Dhaka\r\nPhone: 02-9559655, 9565073-4\r\nFax: 02-9565074\r\nEmail: motijheel@ebl-bd.com', 'abc'),
(493, 5, 1, 10, '11', 'Narayangonj Branch\r\nIslam Plaza, 64 BB Road, Narayangonj\r\nPhone: 02 9752512, 9752514\r\nFax: 02 9752883\r\nEmail: narayangonj@ebl-bd.com', 'abc'),
(494, 5, 1, 8, '11', 'Principal Branch\r\n10 Dilkusha C/A\r\nJiban Bima Bahaban\r\nDhaka\r\nPhone: 02-9565696, 9558392, 9571262\r\nFax: 02- 7160747\r\nEmail: principal@ebl-bd.com', 'abc'),
(495, 5, 1, 8, '11', 'Sat Masjid Road\r\n48 Sat Masjid Road, Dhanmondi R/A, Dhaka\r\nPhone: 9144604, 9144603\r\nEmail: satmasjid@ebl-bd.com', 'abc'),
(496, 5, 1, 70, '11', 'Savar\r\nE/3, Tala Bagh, Thana Road, Savar, Dhaka\r\nPhone: 7744757-8\r\nFax: 7744759\r\nEmail: savar@ebl-bd.com', 'abc'),
(497, 5, 1, 8, '11', 'Shantinagar Branch\r\nShan Tower\r\n(1st Floor) 24/1 chamelibagh\r\nShantinagar, Dhaka\r\nPhone: 02-9346406, 9344110\r\nFax: 02-9346406\r\nEmail: shantinagar@ebl-bd.com', 'abc'),
(498, 5, 1, 8, '11', 'Shyamoli Brach\r\nPlot-16-A/5, Ring Road\r\nBlock â€“f, Mohammadpur Housing Estate\r\nDhaka\r\nPhone: 02-8116015, 9132497', 'abc'),
(499, 5, 1, 8, '11', 'Sonargaon Road Branch\r\n14 Biponon C/A\r\nRahat Tower (1st Floor)\r\nSonargaon Link Road\r\nWest Bangle Motor\r\nDhaka\r\nPhone: 02-8613225, 8619866, 8629160\r\nFax: 02-8613229\r\nEmail: sonargaonroad@ebl-bd.com', 'abc'),
(500, 5, 1, 8, '11', 'Uttara Branch\r\nPlot: 1A, Road: 4\r\nSector: 4, Uttara Model Town\r\nDhaka\r\nPhone: 02-8915136, 8919051, 8918859\r\nFax: 02-8918859\r\nEmail: uttara@ebl-bd.com', 'abc'),
(501, 5, 5, 27, '11', 'Agrabad Branch\r\n33 Agrabad C/A\r\nChittagong\r\nPhone: 031-720755-9\r\nFax: 031-710262\r\nEmail: agarbad@ebl-bd.com', 'abc'),
(502, 5, 5, 27, '11', 'Chandgaon Branch\r\nHouse: 16, Road: 01\r\nBlock: A\r\nChittagong: 4000\r\nPhone: 031 2571204\r\nEmail: chandgaon@ebl-bd.com', 'abc'),
(503, 5, 5, 30, '11', 'Choumuhoni\r\nKIRON IMPERIAL (1st & 2nd Floor), 221 Karimpur Road, Choumuhani, Police Station: Begumganj, Dist: Noakhali\r\nPhone: 0321-56497, 0321-56495, 0321-52182\r\nEmail: choumuhoni@ebl-bd.com', 'abc'),
(504, 5, 5, 18, '11', 'Cox''s Bazar Branch\r\n10, Hotel Motel Zone, Kolatali Road, Cox''s Bazar\r\nPhone: 0341-51295-7\r\nEmail: coxsbazar@ebl-bd.com', 'abc'),
(505, 5, 5, 27, '11', '  \r\nJubilee Road Branch\r\nMannan Bhaban\r\n(Ground Floor)\r\n156 Nur Ahmed Sarak\r\nJubilee Road, Chittagong\r\nPhone: 031-8252433\r\nFax: 031-615594\r\nEmail: jubileeroad@ebl-bd.com', 'abc'),
(506, 5, 5, 27, '11', 'Khatunganj Branch\r\nBadsha Market, 173 Khatunganj, Chittagong\r\nPhone: 031 621316, 630229, 635153\r\nFax: 031-638743\r\nEmail: khatungonj@ebl-bd.com', 'abc'),
(507, 5, 5, 27, '11', 'O.R. Nizam Road Branch\r\nAvenue Center\r\n787 CDA Avenue\r\nChittagong\r\nPhone: 031-617082, 617083\r\nFax: 031-617083\r\nEmail: ornizamroad@ebl-bd.com', 'abc'),
(508, 5, 5, 27, '11', 'Panchlaish Branch\r\n14, Panchlaish Residential Area, Ground Floor, Chittagong\r\nPhone: 031 2552691\r\nFax: 031 2552692\r\nEmail: panchlaish@ebl-bd.com', 'abc'),
(509, 5, 5, 27, '11', '  \r\nRaozan Branch\r\nBharetoshowri Market\r\nKaptai Road\r\nRaozan\r\nChittagong: 4346\r\nPhone: 031 2571207\r\nFax: 031 2571206\r\nEmail: raozan@ebl-bd.com', 'abc'),
(510, 5, 5, 27, '11', 'Sirajuddowla Road\r\n94 Sirajuddowla Road, Chandanpura, Chittagong\r\nPhone: 031-2865261,031-2865263-4\r\nEmail: sirajuddowla@ebl-bd.com', 'abc'),
(511, 5, 5, 27, '11', '  \r\nStation Road Branch\r\nAsian S.R. Hotel\r\n291, Station Road,\r\nchittagong\r\nPhone: 031-621898, 620519, 636986\r\nFax: 031-620519\r\nEmail: stationroad@ebl-bd.com', 'abc'),
(512, 5, 4, 14, '11', 'Bishwanath Branch\r\nKhurshid Ali Shopping Complex, Notun Bazar, Bishwanath, Sylhet 3100\r\nPhone: 08224 56005\r\nFax: 08224 56006\r\nEmail: bishwanath@ebl-bd.com', 'abc'),
(513, 5, 4, 14, '11', 'Chouhatta Branch\r\nFiroz Center, 891/KA\r\nChouhatta\r\nSylhet\r\nPhone: 0821-723242, 717545\r\nFax: 0821-717545\r\nEmail: chouhatta@ebl-bd.com', 'abc'),
(514, 5, 4, 46, '11', 'Moulvi Bazar Branch\r\n26 Sylhet Trunk Road\r\n(1st floor)\r\nMoulvi Bazar\r\nPhone: 0861-52034, 52226\r\nFax: 0861-52226\r\nEmail: moulvibazar@ebl-bd.com', 'abc'),
(515, 5, 4, 14, '11', 'Upashahar Branch\r\nGas Bhaban, Mehedi Bagh, Sylhet\r\nPhone: 0821 719573\r\nFax: 0821 719584\r\nEmail: upashahar@ebl-bd.com', 'abc'),
(516, 5, 2, 56, '11', 'Bogra Branch\r\n1020/1092, Satani Mega Centre.\r\nSherpur Road.\r\nBogra-5800.\r\nPhone: 051-73887, 73898\r\nFax: 051-73898\r\nEmail: bogra@ebl-bd.com', 'abc'),
(517, 5, 2, 12, '11', 'Rajshahi Branch\r\nDoinik Barta Complex (Ground Floor), Alupotti, Natore Road , Rajshahi-6000\r\nPhone: 0721-772372, 772356\r\nFax: 0721-772356\r\nEmail: rajshahi@ebl-bd.com', 'abc'),
(518, 5, 3, 23, '11', 'Jessore Branch\r\n25/A R.N. Road\r\n(1st floor), Jessore\r\nPhone: 0421-64533, 0421-68843\r\nFax: 0421-68843\r\nEmail: jessore@ebl-bd.com', 'abc'),
(519, 5, 3, 5, '11', 'Khulna Branch\r\nTaymun Center & Properties\r\n181 Khan-A-Sabur Road\r\nShibBari Mour, Khulna\r\nPhone: 041-723506, 721069, 720041-2\r\nFax: 041-721740\r\nEmail: khulna@ebl-bd.com', 'abc'),
(520, 5, 1, 8, '16', 'Ashkona Branch, Dhaka\r\nCity Port, 398, Ashkona Bazar Road (haji Camp), Dhaka\r\nPhone: Direct: 8956762, 01715-499229\r\nFax: 8956762\r\nsblashkona@shahjalalbank.com.bd', 'Mr. Md. Nure Alam Bhuiyan Assistant Vice President'),
(523, 5, 1, 70, '16', 'Baipail (Dhaka EPZ) Branch\r\nSwapneel Tower, Baipail, Ashulia, Dhaka EPZ, Savar, Dhaka\r\nPhone: 7790517, 7788292\r\nFax: 88-02-7790517\r\nsblbaipail@shahjalalbank.com.bd', 'Mr. Khondoker Shah-Noor Islam Jr. Assistant Vice President'),
(524, 5, 1, 8, '16', 'Banani Branch\r\nFaruq Rupayan Tower (2nd Flr), 32, Kemal Ataturk Avenur, Banani, Dhaka â€“ 1212\r\nPhone: 8822801, 8828740\r\nFax: 88-02-8826005\r\nsblbanani@shahjalalbank.com.bd', 'Mr. Md. Altaf Hossain Bhuiyan Vice President'),
(525, 5, 1, 8, '16', 'Bangshal Branch\r\n215/1, Bangshal, Dhaka-1100\r\nPhone: 02-9552922, 7172901, 7112622\r\nFax: 02-7172910\r\nsblbangshal@shahjalalbank.com.bd', 'Mr. Shahabuddin Executive Vice President'),
(526, 5, 1, 37, '16', 'Barachowna Branch\r\nBarachowna Bazar PS:Shakhipur Dist.: Tangail\r\nsblbarachowna@shahjalalbank.com.bd', 'Mr. Abdul Karim Meer Sr. Executive Officer'),
(527, 5, 1, 8, '16', 'Baruakhali Branch, Dhaka\r\nBaruakhali High School Market (1st Floor), P.S.: Nababganj, P.O.: Baruakhali, Dhaka\r\nPhone: 03894552598, 01712271777\r\nFax: 03894552598\r\nsblbaruakhali@shahjalalbank.com.bd', 'Mohammad Anisur Rahman JAVP'),
(528, 5, 1, 28, '16', 'Bhaluka SME/Agri Branch\r\nMasud Market, Holding No. 58, Bhaluka, Mymensingh\r\nPhone: 880 902256175\r\nsblbhaluka@shahjalalbank.com.bd', 'Mr. Mohammad Abdullah Al Mamun Jr. Assistant Vice President'),
(529, 5, 1, 8, '16', 'Bijoy Nogar Branch\r\nMTC Ally''s Center, 40, Bijoy Nogar, Dhaka-1000\r\nPhone: 9335771, 9344867\r\nFax: 88-02-9344867\r\nsblbijoy@shahjalalbank.com.bd', 'Mr. Md. Asadul Islam Khan Sr. Assistant Vice President'),
(530, 5, 1, 8, '16', 'College Gate Branch\r\nUnion Center (1st floor), 1/5, Mohammadpur Housing Estate, Mirpur Road, Dhaka\r\nPhone: Direct: 9136197, PABX:9136291,8150232\r\nFax: 9136197\r\nsblcollegegate@shahjalalbank.com.bd', 'Mr. Shamsul Arifin Ferdose Assistant Vice President'),
(531, 5, 1, 8, '16', 'Dhaka Main Branch\r\n58 Dilkusha C/A, Dhaka-1000\r\nPhone: 02-9570795-8, 9570805\r\nFax: 02-9556011\r\nsblmain@shahjalalbank.com.bd', 'Mr. Md. Shafiul Azam Sr. Executive Vice President'),
(532, 5, 1, 8, '16', 'Dhanmondi Branch\r\nMomtaz Plaza (1st Floor), House â€“ 07, Road â€“ 04, Dhanmondi R/A, Dhaka â€“ 1205\r\nPhone: 9665766, 9665767, 8620592, 8621624\r\nFax: 02-9665768\r\nsbldhan@shahjalalbank.com.bd', 'Mr. Md. Shahjahan Shiraj Sr. Executive Vice President'),
(533, 5, 1, 8, '16', 'Eskaton Branch\r\nEskaton Fantasia (2nd Floor), Holding No. 122 & 123, New Eskaton, Dhaka\r\nPhone: 9355681\r\nFax: 9355672\r\nsbleskaton@shahjalalbank.com.bd\r\n', 'Mr. Md. Aslamul Hoq Vice President'),
(534, 5, 1, 2, '16', 'Faridpur Branch\r\n110, Thana Road (2nd & 3rd Floor), Faridpur\r\nPhone: 0631-67156, PABX: 0631-67155\r\nFax: 0631-67154\r\nsblfaridpur@shahjalalbank.com.bd', 'Mr. AHM Mostofa Kamal First Assistant Vice President'),
(535, 5, 1, 8, '16', 'Foreign Exchange Branch\r\nModern Mansion (1st floor), 53 Motijheel C/A, Dhaka-1000\r\nPhone: 02-7160332-3, 7160330\r\nFax: 02-7160331\r\nsblfex@shahjalalbank.com.bd', 'Mr. Abdul Aziz Executive Vice President'),
(536, 5, 1, 8, '16', 'Gulshan Branch\r\n40/5, North Avenue, Gulshan-2, Dhaka-1212\r\nPhone: 02-9890520-1, 9893454, 9890322\r\nFax: 02-9893008\r\nsblgul@shahjalalbank.com.bd', 'Mr. Md. Motaleb Hossain Senior Vice President'),
(537, 5, 1, 8, '16', 'Gulshan South Avenue\r\nUday Sanz, Plot No. SE (A),2/B Gulshan South Avenue, Gulshan-1, Dhaka\r\nPhone: +8802-8819029 PABX: 8827427\r\nsblgsa@shahjalalbank.com.bd', 'Mr. Mustaque Ahmed Executive Vice President'),
(538, 5, 1, 20, '16', 'Joydevpur Chowrasta Branch\r\nKhaleque Complex (1st floor), Joydevpur Chowrasta, Gazipur\r\nPhone: 02-9262393-4\r\nFax: 02-9292393\r\nsbljcb@shahjalalbank.com.bd', 'Mr. Md. Masum Basunia First Assistant Vice President'),
(539, 5, 1, 8, '16', 'Joypara Branch\r\nMonowara Mansion (1st Floor), Joypara, Dohar, Dhaka\r\nPhone: 0389-4680014\r\nFax: 0389-4680014\r\nsbljoypara@shahjalalbank.com.bd', 'Mr. Mizanur Rahman First Assistant Vice President'),
(540, 5, 1, 8, '16', 'Kawran Bazar Branch\r\nT K Bhaban, 13 Kazi Nazrul Islam Avenue, Kawran Bazar, Dhaka\r\nPhone: 02-9114044 , 9122396\r\nFax: 02-9126604\r\nsblkawran@shahjalalbank.com.bd', 'Mr. Syed Showket Rana Executive Vice President'),
(541, 5, 1, 8, '16', 'Keranigonj Branch\r\nMa Plaza (1st Floor), Shohid Nogar, Karanigonj, Dhaka\r\nPhone: 7762291, 7762293-4\r\nFax: 88-02-7762292\r\nsblkerani@shahjalalbank.com.bd\r\n', 'Mr. Muhammad Amir Hossain Sarker Assistant Vice President'),
(542, 5, 1, 32, '16', 'Madhabdi Branch, Norsingdi\r\nJalpotti Road, Vill-Choto Madhabdi,Pauroshava & P.S.- Madhabdi,Dist: Norsingdi\r\nPhone: Direct: 9446017, PABX: 9446166\r\nFax: 9446167\r\nsblmadhabdi@shahjalalbank.com.bd', 'Md. Mizanur Rahman Sr. Assistant Vice President'),
(543, 5, 1, 20, '16', 'Mawna Branch\r\nN.S. Bhaban (1st Floor), Mawna Chowrasta, Sreepur, Gazipur\r\nPhone: PABX: 06825-52906, Direct: 06825-52907\r\nFax: 06825-52908\r\nsblmawna@shahjalalbank.com.bd', 'Mr. Md. Nazmul Haque Senior Executive Officer'),
(544, 5, 1, 8, '16', 'Mirpur Branch\r\n230, Senpara Parbata, Mirpur-10, Dhaka\r\nPhone: 9012962-3, 9012045\r\nFax: 88-02-9012857\r\nsblmirpur@shahjalalbank.com.bd', 'Mr. Md. Khalid Hussain Vice President'),
(545, 5, 1, 8, '16', 'Mitford Branch\r\n173-174, Mitford Road, Dhaka-1100\r\nPhone: 02-7315533 , 7313788\r\nFax: 02-7315534\r\nsblmford@shahjalalbank.com.bd', 'Mr. Mahmud Hussain Sr. Vice President'),
(546, 5, 1, 8, '16', 'Motijheel Branch\r\nKarim Chamber, 99, Motijheel C/A, Dhaka â€“ 1000\r\nPhone: 9563156, 9562763, 9564029\r\nFax: 88-02-9564029\r\nsblmjheel@shahjalalbank.com.bd', 'Mr. S. M. Jahangir Hussain Executive Vice President'),
(547, 5, 1, 28, '16', 'Mymensingh Branch\r\nNoor Fatema Tower (1st Floor), 25, Swadeshi Bazar, Mymensingh\r\nPhone: 091-64397\r\nFax: 091-62370\r\nsblmymensingh@shahjalalbank.com.bd', 'Mr. Mohammad Rubel Alam Khan Assistant Vice Persident'),
(548, 5, 1, 10, '16', 'Narayanganj Branch\r\nOsman Tower, 56/1, S.M. Maleh Road, Narayangonj\r\nPhone: 7635172\r\nFax: 88-02-7635173\r\nsblngonj@shahjalalbank.com.bd', 'Mr. S. M. Rashedul Karim Sr. Assistant Vice President'),
(549, 5, 1, 8, '16', 'Panthapath Branch\r\nENA Tower, Di-Olie (1st floor), 57/3, 57/4, Lake Circus Road, Kolabagan, Dhanmondi, Dhaka-1212\r\nPhone: Direct: 9137723, PABX:9125754,9133746\r\nFax: 9133745\r\nsblpanthapath@shahjalalbank.com.bd', 'Mr. Md. Abdur Rahim Vice President'),
(550, 5, 1, 70, '16', 'Savar Branch\r\nBismillah Super Market, 71/1 and 72/1, Bazar Road, Savar, Dhaka\r\nPhone: 7742894-5\r\nFax: 88-02-7742893\r\nsblsavar@shahjalalbank.com.bd\r\n', 'Mr. Mohammad Towfiqul Islam Sr. Assistant Vice President'),
(551, 5, 1, 20, '16', 'Shafipur Branch\r\nA-62 Haji Osman Market, Shafipur Bazar, Kaliakair, Gazipur\r\nPhone: 06822-51864, 06822-51865, 06822-51866\r\nFax: 06822-51867\r\nsblshafipur@shahjalalbank.com.b', 'Mr. Md. Arif Uddin Jr. Assistant Vice President'),
(552, 5, 1, 8, '16', 'Shatmasjid Road Branch\r\nKhuda Buksh Foundation (1st Flr.), Road No. 11/A, House No. 99, Dhanmondi, Dhaka â€“ 1209\r\nPhone: 9129848, 9127931, 9137780\r\nFax: 88-02-9129848\r\nsblsmr@shahjalalbank.com.bd', 'Mrs. Midhat Ara Sr. Vice President'),
(553, 5, 1, 37, '16', 'Tangail Branch\r\nNirala Complex (2nd & 3rd Floor), Par Dihgulia, Tangail\r\nsbltangail@shahjalalbank.com.bd\r\n', 'Mr. Md. Abdul Khaleque Assistant Vice President'),
(554, 5, 1, 20, '16', 'Tongi Agri/SME Branch\r\nRupali Plaza, Holding No. 24, Anarkoli Road, Tongi Bazar, Tongi, Gazipur\r\nPhone: 98173913, PABX: 9817391-2\r\nFax: 98173914\r\nsbltongi@shahjalalbank.com.bd', 'Md. Arifur Rahman First Assistant Vice President'),
(555, 5, 1, 8, '16', 'Uttara Branch\r\nAnwer Complex, House # 12, Road # 14/C, Sector # 4, Uttara Model Town, Dhaka-1230.\r\nPhone: 02-8932084,8923586\r\nFax: 02-8923586\r\nsbluttara@shahjalalbank.com.bd', 'Mr. A.K.M. Rabiul Islam Fisrt Assistant Vice President');
INSERT INTO `srcdetails` (`SrcId`, `SourceType`, `DivId`, `DistId`, `SrcName`, `SrcAddress`, `SrcContact`) VALUES
(556, 5, 1, 8, '16', 'Vatara Branch\r\n311, Progoti Sarani, Nayanogor, Baridhara, Badda, Dhaka\r\nPhone: 88-02-8412672, 88-02-8412649\r\nFax: 88-02-8840188\r\nsblbhatara@shahjalalbank.com.bd', 'Mr. M. Imam Hossain Gazi Sr. Assistant Vice President'),
(557, 5, 5, 27, '16', 'Agrabad Branch\r\n104, Agrabad C/A, Chittagong\r\nPhone: 031-728294 , 813052-3\r\nFax: 031-716960\r\nsblagra@shahjalalbank.com.bd', 'Mr. Md. Nasir Uddin Executive Vice President'),
(558, 5, 5, 52, '16', 'Ashugonj Branch\r\nDoctor Plaza, 1st Floor, Kachari Road, Ashuganj, Brahman Baria\r\nPhone: 01714-097500\r\nsblashugonj@shahjalalbank.com.bd', 'Mr. Mohammed Ramjan Ali First Assistant Vice President'),
(559, 5, 5, 27, '16', 'Bandartila Branch\r\nZalal Plaza (2nd Floor), 311 Bondor Tila, Soilor''s Clolony, Chittagong\r\nPhone: Direct: 031-741174, PABX: 031-741214, 031-741203\r\nFax: 031-741195\r\nsblbandartila@shahjalalbank.com.bd', 'Mr. Md. Nawshad Abbas Sr. Assistant Vice President'),
(560, 5, 5, 52, '16', 'Bramonbaria Branch\r\nCity Center Shopping Complex (3rd Floor), 1072 Court Road, Bramonbaria\r\nsblbbaria@shahjalalbank.com.bd', 'Mr. Md. Abdur Rob Sr. Assistant Vice President'),
(561, 5, 5, 27, '16', 'Chawkbazar Branch\r\n2 Chawkbazar, Kapashgola Road, Chittagong\r\nPhone: 01711-393124\r\nsblchawkbazar@shahjalalbank.com.bd', 'Mr. Rashed Sarwar Vice President'),
(562, 5, 5, 30, '16', 'Chowmuhani Branch\r\nAli Bhaban (2nd & 3rd Floor), 1523 Karimpur Road, Chowmuhani, Begumganj, Noakhali\r\nsblchowmuhani@shahjalalbank.com.bd', 'Mr. Md. Jashim Uddin Executive Officer'),
(563, 5, 5, 29, '16', 'Comilla Branch\r\nSalahuddin Complex(1st & 2nd Floor), Monohorpur, Chowmuhoni, Laksam Road, Comilla\r\nPhone: Direct: 081-61655, PABX: 081-61645\r\nFax: 081-61645\r\nsblcomilla@shahjalalbank.com.bd', 'Mr. Mokammel Hossain First Assistant Vice President'),
(564, 5, 5, 18, '16', 'Cox''s Bazar Branch\r\nA. B. Super Market (1st Floor), 145 Laldighirpar, Cox''s Bazar\r\nPhone: 01819-805238\r\nsblcox''sbazar@shahjalalbank.com.bd ', 'Mr. Mohammad Ehsan FAVP'),
(565, 5, 5, 27, '16', 'Jubilee Road Branch\r\nHaque Tower (1st floor), 610/11 Jubilee Road, Chittagong\r\nPhone: 031-2853151-2\r\nFax: 031-2853153\r\nsbljubilee@shahjalalbank.com.bd', 'Mr. A. N. M. Jahangir Executive Vice President'),
(566, 5, 5, 27, '16', 'Khatunganj Branch\r\n94-95, Khatunganj, Chittagong\r\nPhone: 031-637256 , 637275\r\nFax: 031-637281\r\nsblkhatun@shahjalalbank.com.bd', 'Mr. Md. Habibul Islam Sr. Vice President'),
(567, 5, 5, 27, '16', 'Muradpur Branch\r\n85, Muradpur, Chittagong\r\nPhone: 031-2552589-91\r\nFax: 031-2552592\r\nsblmuradpur@shahjalalbank.com.bd', 'Mr. Md. Masudul Hoque Jr. Assistant Vice President'),
(568, 5, 5, 27, '16', 'Nazirhat Branch\r\nB. A. Center (1st floor), Nazirhat, Fatikchhari, Chittagong\r\nPhone: 01819-649438\r\nsblnazirhat@shahjalalbank.com.bd', 'Mr. Mohammad Hannan Jr. Assistant Vice President'),
(569, 5, 5, 27, '16', 'Ramgonj Branch\r\n85 Islam Plaza (1st floor), Sonapur Bazar, Ramgonj, Laksmipur\r\nPhone: 0382-475405, 0382-475079\r\nFax: 0382-475072\r\nsblramgonj@shahjalalbank.com.bd', 'Mr. Md. Bellal Hossain Senior Executive Officer'),
(570, 5, 4, 14, '16', 'Beanibazar Branch\r\nCity Centre Bhaban 1st floor, Beanibazar Market, Beanibazar, Sylhet\r\nPhone: 03799-287242\r\nFax: 08223-87870\r\nsblbeani@shahjalalbank.com.bd', 'Mr. Mohammad Modabbir Ahmed Junior Assistant Vice President'),
(571, 5, 4, 14, '16', 'Dargah Gate Branch\r\n297 Amberkhana, Dargah Gate, Airport Road, Sylhet\r\nPhone: 0821-814222\r\nFax: 0821-814277\r\nsbldargah@shahjalalbank.com.bd', 'Mr. Md. Khurshid Alam First Assistant Vice President'),
(572, 5, 4, 14, '16', 'Goalabazar Branch\r\nAfjal Mansion(1st Floor), JL No: 78, Goala Bazar, P.O.: Goala Bazar, P.S.: Osmani Nagor, Sylhet\r\nPhone: Direct: 08242-56307, PABX: 08242-56304\r\nFax: 08242-56238\r\nsblgoalabazar@shahjalalbank.com.bd', 'Wohiduz Zaman Chowdhury Senior Executive Officer'),
(573, 5, 4, 46, '16', 'Moulvibazar Branch\r\n286/300 Ahmed Mansion (1st floor), Saifur Rahman Road, Moulvibazar-3200\r\nPhone: 0861-62874-6\r\nsblmoulvi@shahjalalbank.com.bd', 'Mr. Selimuzzaman Chowdhury First Assistant Vice President'),
(574, 5, 4, 14, '16', 'Sylhet Branch\r\nAl-Falah Tower (1st floor), Dhupadighir Purbopar, Kotowali, Sylhet\r\nPhone: 0821-725115\r\nFax: 0821-725225\r\nsblsylhet@shahjalalbank.com.bd', 'Mr. Md. Tufael Yakub Vice President'),
(575, 5, 3, 23, '16', 'Jessore Branch\r\nSadhinata Bhaban (1st Floor) Holding no: 91, M.K. Road. Kotawaly, Jessore\r\nPhone: 0421-64641\r\nsbljessore@shahjalalbank.com.bd', 'Mr. Md. Nazrul Islam Vice President'),
(576, 5, 3, 26, '16', 'Kaligonj Branch\r\nMunsur Plaza (1st floor), 162 Madhugonj Bazar, Kaligonj, Jhenaidah\r\nPhone: 0452356677, 01915-903109\r\nFax: 0452356678\r\nsblkaligonj@shahjalalbank.com.bd', 'Mr. ABM Ahasanul Kabir SEO'),
(577, 5, 3, 5, '16', 'Khulna Branch\r\n72 KDA Avenue, Khulna\r\nPhone: 041-2830458-60\r\nFax: 041-2830457\r\nsblkhulna@shahjalalbank.com.bd\r\n', 'Mr. Mohammad Anas Assistant Vice President'),
(578, 5, 2, 56, '16', 'Bogra Branch\r\nNurul Haque Tower(1st Floor), 357/395, Boro Gola Mor, Bogra\r\nPhone: Direct: 051-67206, PABX: 051-67646, 67656\r\nFax: 051-67205\r\nsblbogra@shahjalalbank.com.bd', 'Mr. Md. Nurul Amin Sarker Assistant Vice President'),
(579, 5, 12, 73, '16', 'Dinajpur Branch\r\nHolding No. 887/848, Gonesh Tola, Kotoali, Dinajpur\r\nsbldinajpur@shahjalalbank.com.bd', 'Mr. Md. Shoronul Islam Jr. Assistant Vice President'),
(580, 5, 2, 49, '16', 'Naogaon Branch\r\nHolding# 3366 (1st Floor), Naogaon Main Road,Chawkdev, Woard no.: 3, , Naogaon\r\nPhone: Direct: 0741-61496\r\nFax: 0741-61496\r\nsblnaogaon@shahjalalbank.com.bd', 'Md. Golam Mostafa Assistant Vice President'),
(581, 5, 2, 12, '16', 'Rajshahi Branch\r\nHabib Plaza (1st Floor), Holding # 111 Shaheb Bazar, Zero Point, Rajshahi\r\nPhone: 0721-772401\r\nFax: 0721-772427\r\nsblrajshahi@shahjalalbank.com.bd', 'Mr. Md. Abdulla Al Mahmud Siddiqui Sr. Assistant Vice President'),
(582, 5, 12, 71, '16', 'Rangpur Branch\r\nM.H. Rashid Shopping Complex (2nd & 3rd Floor), 88 Station Road, Rangpur\r\nPhone: 052163012\r\nsblrangpur@shahjalalbank.com.bd', 'Mr. Md. Abu Sayeed First Assistant Vice President'),
(583, 5, 12, 72, '16', 'Saidpur Branch\r\nSaidpur Plaza(1st Floor), Sere Bangla Road Saidpur, Nilphamari\r\nPhone: 0552673025\r\nFax: 0552673026\r\nsblsaidpur@shahjalalbank.com.bd', 'Mr. G.M. Kamrul Hasan Junior Assistant Vice President'),
(584, 5, 6, 17, '16', 'Khepupara Branch\r\n116(Ground Floor), Oil Mill Road,Khepupara, Kolapara,Patuakhali\r\nPhone: Direct: 04425-56507, PABX: 04425-56506\r\nFax: 04425-56508\r\nsblkhepupara@shahjalalbank.com.bd', 'Mr. Abdur Razzak Matubber JAVP'),
(587, 5, 1, 8, '3', 'Agrani Balika Biddalaya br.	Lalbag, Dhaka	88-02-8616400', 'abc'),
(588, 5, 1, 8, '3', 'Aminbazar br.	Savar, Dhaka	88-02-9001546', 'abc'),
(589, 5, 1, 8, '3', 'Armanitola br.	Armanitola, Dhaka, Dhaka	88-02-7392284', 'abc'),
(590, 5, 1, 8, '3', 'Ati Bazar br.	Keranigonj, Dhaka	M-01714-013190', 'abc'),
(591, 5, 1, 8, '3', 'Awlad Hossain Market br.78,New Airport Road Tejgaon, Dhaka, 88-02-9111827', 'abc'),
(592, 5, 1, 8, '3', 'B.B. Ave. Corp.br.	Banga Bandu Ave., Dhaka	88-02-9550284,9666546	', 'abc'),
(593, 5, 1, 8, '3', 'B.Wapda Corp br.	Motijheel, Dhaka, Dhaka	88-02-9558920,9552683', 'abc'),
(594, 5, 1, 8, '3', 'Babu Bazar br.	6/7,Akmal Khan Road, Dhaka	88-02-7392086', 'abc'),
(595, 5, 1, 8, '3', 'Badda br.	198/Badda, Gulshan, Dhaka	88-02-9897221', 'abc'),
(596, 5, 1, 8, '3', 'Baitul Mukarram br	Baitul Mukarram, Dhaka, Dhaka	88-02-9555893,9561022', 'abc'),
(597, 5, 1, 8, '3', 'Banani Bazar br.	17-A,Banani,Dhaka, Dhaka	88-02-9894372,	01713-436173	', 'abc'),
(598, 5, 1, 8, '3', 'Banani br.	95-H/Banani,Dhaka, Dhaka	88-02-9895450', 'abc'),
(599, 5, 1, 8, '3', 'Banga Bhaban br.Motijheel, Dhaka, 	88-02-9563863', 'abc'),
(600, 5, 1, 8, '3', 'Bangabandu Jatio Stadium br.	Dhaka, 	88-02-9554983', 'abc'),
(601, 5, 1, 8, '3', 'Baridhara br.	Rd-12,Baridhara,Dhaka, 	88-02-8849188', 'abc'),
(602, 5, 1, 8, '3', 'Bashaboo br.	65,East Bashaboo, Dhaka, 88-02-7219936', 'abc'),
(603, 5, 1, 8, '3', 'Bawani Nagar br. Latif Bawany Jute mills Compound,Demra, Dhaka	88-02-7400037', 'abc'),
(605, 5, 1, 8, '3', 'Bazme Qaderia Complex br.	10/A,Nilkhate Road,Dhaka	88-02-8625115', 'abc'),
(606, 5, 1, 8, '3', 'Begum Rokeya Sarani br.	East Monipur, Mirpur, Dhaka	88-02-9000274', 'abc'),
(607, 5, 1, 8, '3', 'BISE Br.	BISE Building Dhaka, Dhaka	88-02-8627061', 'abc'),
(608, 5, 1, 8, '3', 'BMEB Br.	Bakshibazar,Dhaka, Dhaka	88-02-8627825', 'abc'),
(609, 5, 1, 8, '3', 'BUET Br. BUET Campus Dhaka, Dhaka	88-02-8625487', 'abc'),
(610, 5, 1, 8, '3', 'Chowk Bazar br.	Lalbagh, Dhaka., Dhaka	88-02-7311121,7318249', 'abc'),
(611, 5, 1, 8, '3', 'College Gate br.	Mohammadpur,Dhaka,88-02-9112631', 'abc'),
(612, 5, 1, 8, '3', 'Custom House br.	Kurmitola, Dhaka, 88-02-8911693,8954919', 'abc'),
(613, 5, 1, 8, '3', 'Dayagonj br.	78/2,Dayagonj road,Ps:Sutrapur, Dhaka	88-02-7116068', 'abc'),
(614, 5, 1, 8, '3', 'Dhaka Airport br.	Tejgaon,Dhaka, 88-02-9113403', 'abc'),
(615, 5, 1, 8, '3', 'Dhaka Cant.Corp br.	Cantonment, Dhaka, 88-02-9899975,9860068', 'abc'),
(616, 5, 1, 8, '3', 'Dhaka EPZ br.	Po: Ganakbari, Savar, Dhaka	88-02-7701015', 'abc'),
(617, 5, 1, 8, '3', 'Dhaka Registration Complex	Tejgaon Ind.Area, Dhaka	88-02-8827286,	01713-037079	', 'abc'),
(618, 5, 1, 8, '3', 'Dhaka University br.	University Campus.39,Kazi Nazrul Islam Av., Dhaka	88-02-8627982,8627091', 'abc'),
(619, 5, 1, 8, '3', 'Dhamrai br.	Dhamrai, Dhaka	88-06222-71107', 'abc'),
(620, 5, 1, 8, '3', 'Dhanmondi br.	9,Dhanmondi, Dhaka, Dhaka	88-02-8628723,9661801', 'abc'),
(621, 5, 1, 8, '3', 'Dilkusha Corporate br.	Dilkusha,Dhaka, Dhaka	88-02-9563697,9551668	', 'abc'),
(622, 5, 1, 8, '3', 'District Council Hall br.	D.C Building, Dhaka	88-02-7111236', 'abc'),
(623, 5, 1, 8, '3', 'Distrilary Road br.	Gendaria Dhaka, Dhaka	88-02-7410670', 'abc'),
(624, 5, 1, 8, '3', 'Fakirapool br.	Fakirapool, Dhaka, 88-02-7100556	', 'abc'),
(625, 5, 1, 8, '3', 'Farashgonj br.	Farashgonj, Shutrapur, Dhaka	88-02-7211831', 'abc'),
(626, 5, 1, 8, '3', 'Farmgate br.	Firmgate, Dhaka, 	88-02-9112420,9129868', 'abc'),
(627, 5, 1, 8, '3', 'Froeign Exchange Corp	Dilkusha,Dhaka, Dhaka	88-02-9564014,9552180', 'abc'),
(628, 5, 1, 8, '3', 'Gana Bhaban br.	Sher-E-Banglanagar, Dhaka	88-02-9117350', 'abc'),
(629, 5, 1, 8, '3', 'Goran br.	Sabujbag, Dhaka,88-02-7211831', 'abc'),
(630, 5, 1, 8, '3', 'Green Road br.	Green road, Dhaka, 88-02-9116404', 'abc'),
(631, 5, 1, 8, '3', 'Gulshan br.	48.Gulshan,Dhaka, 88-02-8812659,9892722', 'abc'),
(759, 5, 5, 27, '3', 'Reazuddin bazar	Reazuddin Siddique Road, Chittagong	031-612777	01712-989695	sblreazuddin@gmail.com', 'abc'),
(633, 5, 1, 8, '3', 'Hazaribag br.	29/B, Hazaribag, Dhaka, 88-02-8616823', 'abc'),
(634, 5, 1, 8, '3', 'Hazrat Shahjalal(R) Int. Airport br	Uttara Dhaka,88-02-8953591	01713-035178	', 'abc'),
(635, 5, 1, 8, '3', 'Hotel Sheraton br.	Sheraton Hotel,Minto Road Dhaka, 88-02-9341343,8330155	88-02-9350510	', 'abc'),
(636, 5, 1, 8, '3', 'Ibrahimpur br.	Dhaka Cantonment, Dhaka	88-02-9871192,8712502', 'abc'),
(637, 5, 1, 8, '3', 'Iswar Chandra Street br.	Kotwali, Dhaka, 88-02-7390319', 'abc'),
(638, 5, 1, 8, '3', 'Jatio Sangsad Bhaban	Sher-e-Bangla Nagar, Dhaka	88-02-9113019', 'abc'),
(639, 5, 1, 8, '3', 'Jatrabari br.	Jatrabari, Dhaka, 88-02-7518947', 'abc'),
(640, 5, 1, 8, '3', 'Jhikatola br.	Jhikatola, ndi, Dhaka	88-02-8626354', 'abc'),
(641, 5, 1, 8, '3', 'Joypara br.	Th: Dohar, Dhaka	88-06223-88074', 'abc'),
(642, 5, 1, 8, '3', 'Kakrail br.	Kakrail, Ramna, Dhaka	88-02-9330348', 'abc'),
(643, 5, 1, 8, '3', 'Kalakopa br.	Kalakopa, Nawabgonj, Dhaka	88-02-89019', 'abc'),
(644, 5, 1, 8, '3', 'Kalampur Br.	Kalampurbazar, Dahmrai, Dhaka	M-01712-070299', 'abc'),
(645, 5, 1, 8, '3', 'Kalatia br.	Kalatia,Keranigonj, Dhaka	88-011865863', 'abc'),
(646, 5, 1, 8, '3', 'Kallayanpur br.	Mirpur, Dhaka, 	88-02-9000438', 'abc'),
(647, 5, 1, 8, '3', 'Kamalapur Railway Station(ICD) br.	Kamalapur Railway Station,Dhaka,	88-02-8312403', 'abc'),
(648, 5, 1, 8, '3', 'Kawran Bazar br, Kawran Bazar,Dhaka, 	88-02-8189171,9110891	', 'abc'),
(649, 5, 1, 8, '3', 'Khilgaon br.	1414/1-A,Khilgaon,Ps:Sabujbag, Dhaka	88-02-7212682', 'abc'),
(650, 5, 1, 8, '3', 'Krishibazar br.	Mohamadpur, Dhaka, 88-02-9111841,8143056', 'abc'),
(651, 5, 1, 8, '3', 'Laxmi Bazar br.	City Corporation Bdg., Dhaka	88-02-7123130', 'abc'),
(652, 5, 1, 8, '3', 'Malibagh br.	12,Outer Circular road,Dhaka-1217, Dhaka	88-02-9332270', 'abc'),
(653, 5, 1, 8, '3', 'Manik Mia Avenue br.	21,Indira Road,dhaka,88-02-9112272', 'abc'),
(654, 5, 1, 8, '3', 'Mirpur cantonment.	Mirpur,Dhaka, 88-02-9002071', 'abc'),
(655, 5, 1, 8, '3', 'Mirpur Industrial area	Rd-3,Sec-7,Mirpur, Dhaka	88-02-9000399,9001360', 'abc'),
(656, 5, 1, 8, '3', 'Mirpur Section-1 br.	Darus Salam Road,Mirpur,Dhaka, 88-02-8014618', 'abc'),
(657, 5, 1, 8, '3', 'Mirpur Section-12 br.	69,Mirpur Section-12, Dhaka	88-02-9002826', 'abc'),
(658, 5, 1, 8, '3', 'Mitford Road br.	37/1/3, Mitford, Dhaka,88-02-7318950', 'abc'),
(659, 5, 1, 8, '3', 'Mohakhali br.	73,Mohakhali Dhaka, 88-02-9898957,8820899', 'abc'),
(660, 5, 1, 8, '3', 'Mohammadpur Bazar br.	16/10,16/11 Azamroad, Dhaka	88-02-9112217', 'abc'),
(661, 5, 1, 8, '3', 'Mokimkatara br.	7, Mukimkatra, Dhaka, 88-02-7314261', 'abc'),
(662, 5, 1, 8, '3', 'Nagar Bhaban br.Nagar Bhaban Phulbaria, Dhaka, 88-02-9563513', 'abc'),
(663, 5, 1, 8, '3', 'Nawabgonj br.	Po & Th:Nawabgonj, Dhaka	88-06225-89031', 'abc'),
(664, 5, 1, 8, '3', 'Nawabpur Road br.	206,nawabpur Road, Dhaka	88-02-9556740', 'abc'),
(665, 5, 1, 8, '3', 'Naya Bazar br.	10,Basha bari lane, Dhaka	88-02-7393194', 'abc'),
(666, 5, 1, 8, '3', 'Nayarhat br.	Monnu Jutex Complex,Po & Th:Dhamrai, Dhaka	88-02-7792196', 'abc'),
(667, 5, 1, 8, '3', 'Nazimuddin Road br.	62,Naximuddin Road, Dhaka	88-02-7300032', 'abc'),
(668, 5, 1, 8, '3', 'Nazira Bazar br.	1/Kazi Alauddin Road, Dhaka	88-02-7557151', 'abc'),
(669, 5, 1, 8, '3', 'NCTB br.69-70,Motijheel C/A,Dhaka-1000, Dhaka	88-02-9566693', 'abc'),
(670, 5, 1, 8, '3', 'Neval Head Quarters br.	neval Head Quarter Complex,Dhaka,88-02-9860548,8822741-45/	', 'abc'),
(671, 5, 1, 8, '3', 'New Market br.	New Market, Dhaka, 88-02-8626313,8626331	', 'abc'),
(672, 5, 1, 8, '3', 'North South Road br.	North-South Road, Dhaka	88-02-9562989', 'abc'),
(673, 5, 1, 8, '3', 'Palamgonj br	Th:Dohar, Dhaka	06223-88193', 'abc'),
(674, 5, 1, 8, '3', 'PATC br.Savar Dhaka,	88-02-7743013', 'abc'),
(675, 5, 1, 8, '3', 'Postagola br.	A/2,Eastern Housing, Dhaka	88-02-7410946', 'abc'),
(676, 5, 1, 8, '3', 'Prime Ministers Office	Tejgaon,Dhaka, Dhaka	88-02-9116043,9136900-19', 'abc'),
(677, 5, 1, 8, '3', 'Rajuk Bhaban br.Rajuk Bhaban, Dhaka	88-02-9553396', 'abc'),
(678, 5, 1, 8, '3', 'Ramna Corporate br.	Ramna,Dhaka, 88-02-8615456	88-02-8618421	', 'abc'),
(679, 5, 1, 8, '3', 'Rampura br.	Ps:Gulshan Dhaka-17, 88-02-9331323', 'abc'),
(680, 5, 1, 8, '3', 'Rasulpur Bazar br.	Po:Abdullahpur,Th:Keranigonj, Dhaka	M-01714-013189', 'abc'),
(681, 5, 1, 8, '3', 'Ruhitpur br.	Th:keranigonj, Dhaka	88-011862361', 'abc'),
(682, 5, 1, 8, '3', 'Sadarghat Corp br.	Sadarghat,Dhaka,88-02-7110778,7121926', 'abc'),
(683, 5, 1, 8, '3', 'Saidabad Bus Terminal br.	Saidabad Dhaka,88-02-7515510', 'abc'),
(684, 5, 1, 8, '3', 'Sat Masjid Road br.	5,Sat Masjid Road,Mohammadpur, Dhaka	88-02-9118960', 'abc'),
(685, 5, 1, 8, '3', 'Savar br.	Savar,Dhaka,88-02-7710732', 'abc'),
(686, 5, 1, 8, '3', 'Savar Cantt.br.	cantonment Road,Ps:Savar, Dhaka	88-02-7791607', 'abc'),
(687, 5, 1, 8, '3', 'Segun Bagicha br.	PWD Building Dhaka, 88-02-9357851', 'abc'),
(688, 5, 1, 8, '3', 'Shahjahanpur br.	968/2,North Shahjanpur, Dhaka	88-02-9358002', 'abc'),
(689, 5, 1, 8, '3', 'Shilpa Bhaban Corp br.	Dilkusha,Dhaka, 88-02-9559377,9561252', 'abc'),
(690, 5, 1, 8, '3', 'Sonargaon Road br.	36,Sonargaon Road, Dhaka	88-02-8626269', 'abc'),
(691, 5, 1, 8, '3', 'Supreme Court Br.	Supreme CourtBuilding, Dhaka	88-02-7171332,9561729	', 'abc'),
(692, 5, 1, 8, '3', 'Tejgaon Industrial Area	34-34/A, Tejgaon, Dhaka	88-02-9114409,9120828', 'abc'),
(693, 5, 1, 8, '3', 'Urdu Road br.	1,Urdu Road,Dhaka, 88-02-7311975', 'abc'),
(694, 5, 1, 8, '3', 'Uttar Khan br.	Uttara Dhaka,88-02-8923098', 'abc'),
(695, 5, 1, 8, '3', 'Uttara Model Town br.	Sec.-4,Rd.-7,Uttara Model town,Dhaka, 88-02-8914639,8951211', 'abc'),
(696, 5, 1, 8, '3', 'Viqarun-nesa-noon School br.	1/A,New Baily Road dhaka,88-02-9332222', 'abc'),
(697, 5, 1, 8, '3', 'Wage Earners corp br.	62,Dilkusha,Dhaka,88-02-9552080,9552050	88-02-9556054	', 'abc'),
(698, 5, 1, 8, '3', 'Wari br.	94,Ranking Street, Dhaka	88-02-7111768', 'abc'),
(699, 5, 5, 27, '3', 'Agrabad Corporate br.	Sheik Mujib Road, Chittagong	88-031-724446,716360,	88-031-721314', 'abc'),
(700, 5, 5, 27, '3', 'Amin Jute Mills br.	Chittagong, 88-031-682083', 'abc'),
(701, 5, 5, 27, '3', 'Anwara br.	Po & Th: Anoara, Chittagong	88-031-630206 Ext. 3', 'abc'),
(702, 5, 5, 27, '3', 'Asadgong br.	Asadgong Road, Chittagong	88-031-611607', 'abc'),
(703, 5, 5, 27, '3', 'Bahaddarhat br.	Chittagong,88-031-670684', 'abc'),
(704, 5, 5, 27, '3', 'Banskhali	Paitya, Chittagong	031-630501 ext-16', 'abc'),
(705, 5, 5, 27, '3', 'Banur Bazar,Sitakunda, Chittagong	031-2780290		sblbanurbazar@yahoo.com', 'abc'),
(706, 5, 1, 8, '3', 'Bhatiary	Bhatiary BMA, Sitakunda, Chittagong	031-278040-4	01730095527', 'abc'),
(707, 5, 5, 27, '3', 'BIDC Steel Plant	Steel Mills Area Ctg., Chittagong	031-740932', 'abc'),
(708, 5, 5, 27, '3', 'Boalkhali br.	Po & Th: Boalkhali, Chittagong', 'abc'),
(709, 5, 5, 27, '3', 'CDA Market	Pahartoli, Chittagong	031-751910	01818-816465', 'abc'),
(710, 5, 5, 27, '3', 'CDA R/A	Road#1,CDA R/A, Chittagong	031-715546	01715-376221', 'abc'),
(711, 5, 5, 27, '3', 'Chakbazar br.	Chittagong, 88-031-611247', 'abc'),
(712, 5, 5, 27, '3', 'Chaktai br.	Chittagong, 88-031-620675', 'abc'),
(713, 5, 5, 27, '3', 'Chandnaish br.	Po & Th: Chandnaish, Chittagong	88-031-637148 Ext. 30', 'abc'),
(714, 5, 5, 27, '3', 'Chittagong Cantt. br.	Chittagong, 88-013-682187', 'abc'),
(715, 5, 5, 27, '3', 'Chittagong Medical College br.	Chittagong,88-031-653495', 'abc'),
(716, 5, 5, 27, '3', 'Court Hill br.	Chittagong,88-031-611491', 'abc'),
(717, 5, 5, 27, '3', 'Ctg. Urea Fertilizer Limited	Urea Fertilizer fac.,Karnafully, Chittagong	031-622301-4,	01730-095528', 'abc'),
(718, 5, 5, 27, '3', 'CUET	CUET,Rangunia, Chittagong	031-714920-22	01730095529', 'abc'),
(719, 5, 5, 27, '3', 'Custom House	Custom House,Bandar, Chittagong	031-721517,723831,	01819-331775', 'abc'),
(720, 5, 5, 27, '3', 'Dohazari br.	Po: Dohazari, Chittagong	88-031-620136 Ext. 23', 'abc'),
(721, 5, 5, 27, '3', 'Fatikchari br.	Chittagong,88-031-630389 Ext. 8', 'abc'),
(722, 5, 5, 27, '3', 'Halishahar Housing Estate	Block#H,Halishahar, Chittagong	88-031-712496	01730-303452', 'abc'),
(723, 5, 5, 27, '3', 'Jamalkhan Sarak br.	Chittagong, 88-031-615490', 'abc'),
(724, 5, 5, 27, '3', 'Kagatiahat br.	Po: Kagatia, Th: Raozan, Chittagong	M-01819-316162', 'abc'),
(725, 5, 5, 27, '3', 'Kalibari	44,New Kalibari,Kotwali, Chittagong	031-637360	01191-260685	sblkalibari@gmail', 'abc'),
(726, 5, 5, 27, '3', 'Kalumunshir hat br.	Chittagong, 88-031-637156,620129 	', 'abc'),
(727, 5, 5, 27, '3', 'Kalurghat Ind. Estt. br.	Chittagong, 88-031-670342', 'abc'),
(728, 5, 5, 27, '3', 'Khanbahadur Bazar br.	Th: Banskhali, Chittagong	88-031-635066 Ext. 6	', 'abc'),
(729, 5, 5, 27, '3', 'Khatungonj br.	Khatungonj, Chittagong	88-031-618299', 'abc'),
(730, 5, 5, 27, '3', 'Korbanigonj br.	Th: Kotoli, Chittagong	88-031-611580', 'abc'),
(731, 5, 5, 27, '3', 'Laldighi Corp. br.	Chittagong, 88-031-634692,637242', 'abc'),
(732, 5, 5, 27, '3', 'Lohagara br.	Po & Th: Lohagara, Chittagong	88-031-630720 Ext. 57', 'abc'),
(733, 5, 5, 27, '3', 'Majirghat	Strand Road,Majirghat, Chittagong	031-724470	01817-401494', 'abc'),
(734, 5, 5, 27, '3', 'Mariam Nagar	Mariam Nagar,Rangunia, Chittagong, 01714-082320', 'abc'),
(735, 5, 5, 27, '3', 'Marine Academy	Marine Academy, Karnafully, Chittagong	031-2514161	01730095530', 'abc'),
(736, 5, 5, 27, '3', 'Mirsarai	Mirsari, Chittagong	03024-56009	01817713825	sblmirsarai@gmail.com', 'abc'),
(737, 5, 5, 27, '3', 'Mithagoli	Mithagoli,Dewanhat, Chittagong	031-716176', 'abc'),
(738, 5, 5, 27, '3', 'Mohd. Takirhat br.	Po: Fatehpur, Th: Fatikchari, Chittagong	01714-085267', 'abc'),
(739, 5, 5, 27, '3', 'Mouluvibazar br.	Th: Chandanish, Chittagong', 'abc'),
(740, 5, 5, 27, '3', 'N.A.Chowdhury Road br.	Chittagong, 88-031-618943', 'abc'),
(741, 5, 5, 27, '3', 'Nazirhat br.	Chittagong,	01819-316017', 'abc'),
(742, 5, 5, 27, '3', 'New Market	New Market,Kotwali, Chittagong	031-634527', 'abc'),
(743, 5, 5, 27, '3', 'Nizampur	Nizampur,Mirsarai, Chittagong		01714-082226,01190-164454	', 'abc'),
(744, 5, 5, 27, '3', 'Pahartoli Main Road	Pahartoli, Chittagong	031-751838	01818-092206', 'abc'),
(745, 5, 5, 27, '3', 'Panchlish br.	Po: Panchlish Th: Kotoli, Chittagong	88-031-654418', 'abc'),
(746, 5, 5, 27, '3', 'Patiya br.	Pamra Area, Chittagong	88-031-384', 'abc'),
(760, 5, 5, 27, '3', 'Roazarhat	Roazarhat,Rangunia, Chittagong		01714-082225', 'abc'),
(754, 5, 5, 27, '3', 'Port	Bandar Bhaban, Chittagong	031-712999		sblportctg@gmail.com', 'abc'),
(755, 5, 5, 27, '3', 'Building	Railway Building,Kotwali, Chittagong	031-2863150,	01710-983133', 'abc'),
(756, 5, 5, 27, '3', 'Rangunia	Rangunia Upazilla, Chittagong	03025-56022	01816-900466	sblrangunia@gmail.com', 'abc'),
(757, 5, 5, 27, '3', 'Rawshanhat	Th: Chandnaish, Chittagong', 'abc'),
(758, 5, 5, 27, '3', 'Rawzan br.	Po & Th:Rawzan, Chittagong	88-031-637522,630970 ', 'abc'),
(761, 5, 5, 27, '3', 'Rustomhat	Po: Rustomhat, Th: Satkania, Chittagong, 01714-085255', 'abc'),
(762, 5, 5, 27, '3', 'Sadarghat	Sadarghat Road, Kotwali, Chittagong	031-637886	01819-640540	sblsadarghat@gmail.com', 'abc'),
(763, 5, 5, 27, '3', 'Sandwip	Upazill Complex Sandip, Chittagong		01714-082227,01199-704143	sblsandwip@gmail.com', 'abc'),
(764, 5, 5, 27, '3', 'Sarkerhat br.	Chittagong, 011-762134', 'abc'),
(765, 5, 5, 27, '3', 'Satkania br.	Po & Th: Satkania, Chittagong	88-031-630717 Ext. 321', 'abc'),
(766, 5, 5, 27, '3', 'Shah Amanat(R.) Int. Air Port.	Potenga, Chittagong,01713-108897', 'abc'),
(767, 5, 5, 27, '3', 'Sirajuddowla Sarak	Chittagong, 88-031-614799', 'abc'),
(768, 5, 5, 27, '3', 'Sitakunda	Sitakunda, Chittagong	03028-56115	01715-606546	sblsitakunda@gmail.com', 'abc'),
(769, 5, 5, 27, '3', 'Terribazar br.	Chittagong,88-031-632719', 'abc'),
(770, 5, 5, 27, '3', 'Wage Earners	Dhaniala Para,Doublemooring, Chittagong	031-714291,713405,713408	sbwesctg2@gmail.com', 'abc'),
(771, 5, 4, 14, '3', 'Amjad Ali Road br.	Po & Th: Sylhet, 88-0821-717702', 'abc'),
(772, 5, 4, 14, '3', 'Bairagir Bazar br.	Po: Bairagir Bazar, Th: Beanibazar, Sylhet	88-08223-88140', 'abc'),
(773, 5, 4, 14, '3', 'Balagonj br.	Po & Th: Balagonj, Sylhet	88-0822-89048', 'abc'),
(774, 5, 4, 14, '3', 'Beani Bazar br.	Po & Th: Beani Bazar, Sylhet	88-0821-88428', 'abc'),
(775, 5, 4, 14, '3', 'Bishwanath br.	Po & Th: Bishwanath, Sylhet	88-08224-88161', 'abc'),
(776, 5, 4, 14, '3', 'Charkhai br.	Po: Charkhai, Th: Beanibazar, Sylhet	01714-013251', 'abc'),
(777, 5, 4, 14, '3', 'Companigonj br.	Po & Th: Comopanigonj, Sylhet	01714-013252', 'abc'),
(778, 5, 4, 14, '3', 'Court Building br.	Po & Th: Sylhet, Sylhet	88-0821-716902', 'abc'),
(779, 5, 4, 14, '3', 'Dakkhin Fenchugonj br.	Po: Dakkhin Fenchugonj, Sylhet	88-08226-88084', 'abc'),
(780, 5, 4, 14, '3', 'Dargagate Corp. br.88-0821-717330,716109,813	', 'abc'),
(781, 5, 4, 14, '3', 'Dhaka Dakkhin br.	Po: Dhaka Dakkhin, Th: Golapgonj, Sylhet	88-08227-87211', 'abc'),
(782, 5, 4, 14, '3', 'Fenchugonj br.	Po & Th: Fenchugonj, Sylhet	88-08226-88139', 'abc'),
(783, 5, 4, 14, '3', 'Fenchugonj Fertilizer Factory br.	Po & Th: Fenchugonj, Sylhet	01714-013257', 'abc'),
(784, 5, 4, 14, '3', 'Goainghat br.	Po & Th: Goainghat, Sylhet	88-0821-713932 Ext.10', 'abc'),
(785, 5, 4, 14, '3', 'Golapgonj br.	Po & Th: Golapgonj, Sylhet	88-08227-88133', 'abc'),
(786, 5, 4, 14, '3', 'Jaintapur br.	Po & Th: Jaintapur, Sylhet	88-08229-88019', 'abc'),
(787, 5, 4, 14, '3', 'Kajalhaor br.	Po & Th: Sylhet, Sylhet	88-0821-713814', 'abc'),
(788, 5, 4, 14, '3', 'Kamalbazar br.	Po: Kamalbazar, Th: Kotowali, Sylhet, 01714-013253', 'abc'),
(789, 5, 4, 14, '3', 'Kanaighat br.	Po & Th: Kanaighat, Sylhet	88-0821-713762 Ext. 17', 'abc'),
(790, 5, 4, 14, '3', 'Khadimnagar Bazar br.	, Sylhet	88-0821-2870449', 'abc'),
(791, 5, 4, 14, '3', 'Mahajan Patty br.	po & Th: Sylhet, Sylhet	88-0821-717490', 'abc'),
(792, 5, 4, 14, '3', 'Osmani Biman Bandar br.	Sylhet Sadar, Sylhet	01714-013256', 'abc'),
(793, 5, 4, 14, '3', 'Pirer Bazar br.	Po: Dashghar, Th: Bishwanath, Sylhet	01714-013254', 'abc'),
(794, 5, 4, 14, '3', 'Shahjalal Bigayan-o-Projukti Bishwabiddalaya br.	Po: Akhalia, Th: Kotowali, Sylhet	88-0821-713147', 'abc'),
(795, 5, 4, 14, '3', 'Station Road br.	Po & Th: Sylhet, Sylhet	88-0821-716953', 'abc'),
(796, 5, 4, 14, '3', 'Sylhet Cantonment br.	Po: Khadimong, Sylhet	88-0821-760438', 'abc'),
(797, 5, 4, 14, '3', 'Sylhet City Corporation br.	Po & Th: Sylhet, Sylhet	88-0821-715480', 'abc'),
(798, 5, 4, 14, '3', 'Sylhet Corp. br.	 Sylhet	88-0821-716849,719768', 'abc'),
(799, 5, 4, 14, '3', 'Tajpur br.	Po: Tajpur, Th: Balagonj, Sylhet	88-08222-88130', 'abc'),
(800, 5, 4, 14, '3', 'Tikarpara br.	Po: Kawdia, Th: Beanibazar, Sylhet	01714-013255', 'abc'),
(801, 5, 4, 14, '3', 'Tillagorh br.	Po: Tillagorh, Th: Kotowali, Sylhet	88-0821-760431', 'abc'),
(802, 5, 4, 14, '3', 'Zakigonj br.	Po & Th: Zakigonj, Sylhet	88-08232-56024', 'abc'),
(803, 5, 6, 15, '3', 'Agoiljhara br	Agoiljhara, Barisal	04323-56103', 'abc'),
(804, 5, 6, 15, '3', 'Aratder Patty br., Barisal	88-01332-56319', 'abc'),
(805, 5, 6, 15, '3', 'Bakergonj br.	Po & Th: Bakerhgonj, Barisal	88-0431-74012', 'abc'),
(806, 5, 6, 15, '3', 'Banaripara br.	, Barisal	88-04332-56243', 'abc'),
(807, 5, 6, 15, '3', 'Barishal Cadet College br.	Po: Rahmatpur, Barisal	88-0431-54772', 'abc'),
(808, 5, 6, 15, '3', 'Barishal Corporate br.	Barishal, 	88-0431-52152,55150,55180	', 'abc'),
(809, 5, 6, 15, '3', 'C & B Road br.	C & B Road, Barishal, 88-0431-53757', 'abc'),
(810, 5, 6, 15, '3', 'Chakhar br.	, Barisal	01714-087113', 'abc'),
(811, 5, 6, 15, '3', 'Charamuddi br.	Th: Bakergonj, Barisal	88-0431-89002', 'abc'),
(812, 5, 6, 15, '3', 'Chawk Bazar br.	Barishal, 	88-0431-52536', 'abc'),
(813, 5, 6, 15, '3', 'College Road br.	Th:Begumgonj, Barisal	88-0431-53363', 'abc'),
(814, 5, 6, 15, '3', 'Dhamura br.	Th: Thirpur, Barisal	88-04329-8015', 'abc'),
(815, 5, 6, 15, '3', 'Goila br.	Th: Agoiljhara, Barisal	88-04323-56110', 'abc'),
(816, 5, 6, 15, '3', 'Gouronadi br.	Po & Th: Gouronadi, Barisal	88-04322-56113', 'abc'),
(817, 5, 6, 15, '3', 'Guthia br.	Po: Guthia, Th: Thirpur, Barisal	88-04329-8008', 'abc'),
(818, 5, 6, 15, '3', 'Halta Bandar br.	Po & Th: Bakergonj, Barisal	88-0431-8034', 'abc'),
(819, 5, 6, 15, '3', 'Hizla br.	Po & Th: Hizla, Barisal	88-0431-71124-26', 'abc'),
(820, 5, 6, 15, '3', 'Kamarkhali br.	Po: Darail, Bakergonj, Barisal	88-0431-89020', 'abc'),
(821, 5, 6, 15, '3', 'Khanpura br.	Po: Rahmatpur, Th: Babugonj, Barisal	88-0431-73029', 'abc'),
(822, 5, 6, 15, '3', 'Medakul br.	Po: Hakal, Gouranadi, Barisal	0661-56117', 'abc'),
(823, 5, 6, 15, '3', 'Mehendigonj br.	Po: Paterhat, Barisal	01711-219041', 'abc'),
(824, 5, 6, 15, '3', 'Muladi br.	Po & Th: Muladi, Barisal	88-0431-75211', 'abc'),
(825, 5, 6, 15, '3', 'Nalchira bandar br.	Th: Gouranadi, Barisal	88-04322-8002', 'abc'),
(826, 5, 6, 15, '3', 'Neamoti Bandar br.	Th: Bakergonj, Barisal	88-04328-8014', 'abc'),
(827, 5, 6, 15, '3', 'Paisharhat br.	Th: Agoiljhara, Barisal	01711-514663', 'abc'),
(828, 5, 6, 15, '3', 'Sagardi br.	Barishal,88-0431-52098', 'abc'),
(829, 5, 6, 15, '3', 'Shaheberhat br.	Po: Shaheberhat, Barisal	01711-219660', 'abc'),
(830, 5, 6, 15, '3', 'Torkey Bander br.	Th: Gouranadi, Barisal	88-04322-56138', 'abc'),
(831, 5, 6, 15, '3', 'Uzirpur Bandar br.	Po & Th: Uzirpur, Barisal	88-0431-71136-37 Ext 8', 'abc'),
(832, 5, 2, 12, '3', 'Bagha br.	Rajshahi,	88-0721-773121 Ext. 21', 'abc'),
(833, 5, 2, 12, '3', 'Bhabanigonj br.	Bagmara, Rajshahi	88-0721-773123 Ext. 2', 'abc'),
(834, 5, 2, 12, '3', 'Charghat br.	Rajshahi, 88-0721-773115 Ext. 35	', 'abc'),
(835, 5, 2, 12, '3', 'Dugapur br.	Rajshahi, 	88-0721-773138 Ext. 4', 'abc'),
(836, 5, 2, 12, '3', 'Godagari	Rajshahi, 88-07225-56017', 'abc'),
(837, 5, 2, 12, '3', 'Greater Road br.	Greater Road, Rajshahi	88-0721-773429', 'abc'),
(838, 5, 2, 12, '3', 'Mahanpur	Rajshahi,	88-0721-773104 Ext. 4', 'abc'),
(839, 5, 2, 12, '3', 'Monigram	Bogha, Rajshahi	01714-049203', 'abc'),
(840, 5, 2, 12, '3', 'Motihar br.	Kazla, Rajshahi	88-0721-750253', 'abc'),
(841, 5, 2, 12, '3', 'Mundumala Hat br.	Tanor, Rajshahi	01714-049322', 'abc'),
(842, 5, 2, 12, '3', 'Paba br.	Rajshahi, 88-0721-761196', 'abc'),
(843, 5, 2, 12, '3', 'Police Academy br.	Sarda, Rajshahi	88-0721-773115 Ext. 11', 'abc'),
(844, 5, 2, 12, '3', 'Puthia br.	Rajshahi, 	88-07228-56112', 'abc'),
(845, 5, 2, 12, '3', 'Rajshahi Cadet College Brnch	Rajshahi, 88-0721-773115 Ext. 11', 'abc'),
(846, 5, 2, 12, '3', 'Rajshahi Corp. Br.88-0721-772358,773330,773	', 'abc'),
(847, 5, 2, 12, '3', 'Rajshahi Court Building Br.	, Rajshahi	88-0721-773459, 770659', 'abc'),
(848, 5, 2, 12, '3', 'Rajshahi Medical College br.	Rajshahi,88-0721-773225', 'abc'),
(849, 5, 2, 12, '3', 'Rajshahi Railway Complex br.	Rajshahi,88-0721-761132', 'abc'),
(850, 5, 3, 5, '3', 'Baniakhali bazar br.	Th:Damuria, Khulna	M-01713-201653', 'abc'),
(851, 5, 3, 5, '3', 'Batiaghata br.	Po & Th:Batiaghata, Khulna	88-041-760142 Ext.43', 'abc'),
(852, 5, 3, 5, '3', 'Boyra br.	Boyra, Khulna	88-041-762296', 'abc'),
(853, 5, 3, 5, '3', 'Cable Shilpa br., Khulna	041-785814', 'abc'),
(854, 5, 3, 5, '3', 'Chalna Bazar br.	Po:Chalna Bazar, Khulna	88-041-760162 Ext.63', 'abc'),
(855, 5, 3, 5, '3', 'Custom House br.	Khalishpur, Khulna	88-041-761112', 'abc'),
(856, 5, 3, 5, '3', 'Daulatpur br.	Po & Th: Daulatpur, Khulna	88-041-762257,760876	88-041-760549', 'abc'),
(857, 5, 3, 5, '3', 'Daulatpur College Road	BL College Campus, Khulna	88-041-762946', 'abc'),
(858, 5, 3, 5, '3', 'Digholia br.	Po & Th:Digholia, Khulna	88-041-761315', 'abc'),
(859, 5, 3, 5, '3', 'Dumuria br.	Po & Th:Dumuria, Khulna	88-041-760140 Ext.41', 'abc'),
(860, 5, 3, 5, '3', 'Fulbarigate br.	Po: Fulbari, Khulna	88-041-774831', 'abc'),
(861, 5, 3, 5, '3', 'Kazdia br.	Po:Kazdia Th:Rupsha, Khulna	88-041-760010-11', 'abc'),
(862, 5, 3, 5, '3', 'KDA New Market br.	237-243, Newmarket, Khulna	88-041-731109', 'abc'),
(863, 5, 3, 5, '3', 'Khslishpur br.	Po & Th: Daulatpur, Khulna	88-041-762380', 'abc'),
(864, 5, 3, 5, '3', 'Khulna Corp. br.	Khulna,041-813294,725435,722437', 'abc'),
(865, 5, 3, 5, '3', 'Khulna Shipyard br.	Shipard Road, Khulna	88-041-720451', 'abc'),
(866, 5, 3, 5, '3', 'Koyra br.	Po & Th:Koyra, Khulna	88-041-760098', 'abc'),
(867, 5, 3, 5, '3', 'Paikgacha br.	Po & Th:Paikgacha, Khulna	88-04027-305', 'abc'),
(868, 5, 3, 5, '3', 'Phultala br.	Po & Th: Phultala, Khulna	88-041-785014', 'abc'),
(869, 5, 3, 5, '3', 'Shahpur br.	Th:Damuria, Khulna	88-041-761400', 'abc'),
(870, 5, 3, 5, '3', 'Sir Iqbal Road br.	Sir Iqbal Road, Khulna	88-041-721063', 'abc'),
(871, 5, 3, 5, '3', 'South Central Road br.	Rupsha Market, Khulna	88-041-720793', 'abc'),
(872, 5, 3, 5, '3', 'Terokhada br.	Po & Th:Terokhada, Khulna	88-041-760020-21', 'abc'),
(873, 5, 12, 71, '3', 'Badargonj	Badargonj, Rangpur	88-05222-298', 'abc'),
(874, 5, 12, 71, '3', 'Chatrahat, Rangpur	01714-039799', 'abc'),
(875, 5, 12, 71, '3', 'Dhap br.	Rongpur Sadar, Rangpur	88-0521-62190', 'abc'),
(876, 5, 12, 71, '3', 'Gangachara, Rangpur	88-0521-63029,63080 ext.8', 'abc'),
(877, 5, 12, 71, '3', 'Haragacha, Rangpur	88-0521-63589', 'abc'),
(878, 5, 12, 71, '3', 'Jaygirhat, Rangpur	01714-039791', 'abc'),
(879, 5, 12, 71, '3', 'Kacharibazar	Rongpur sadar, Rangpur	88-0521-62355', 'abc'),
(880, 5, 12, 71, '3', 'Kawnia, Rangpur	88-0521-63039,63066 ext.1', 'abc'),
(881, 5, 12, 71, '3', 'Khalashpir, Rangpur	01714-049388', 'abc'),
(882, 5, 12, 71, '3', 'Laldighi hat br.	Radhanagar, Rangpur	01714-039792', 'abc'),
(883, 5, 12, 71, '3', 'Mahigonj, Rangpur	88-0521-62533', 'abc'),
(884, 5, 12, 71, '3', 'Mithapukur, Rangpur	88-05225-87025', 'abc'),
(885, 5, 12, 71, '3', 'Pirgacha, Rangpur	88-0521-63096,63061 ext.9', 'abc'),
(886, 5, 12, 71, '3', 'Pirganj Br	, Rangpur	88-0521-63069,63084 Ext.1', 'abc'),
(887, 5, 12, 71, '3', 'Rangpur Bazar br.	Rangpur, 88-0521-62958', 'abc'),
(888, 5, 12, 71, '3', 'Rangpur Cantt.	Rongpur Sadar,88-0521-62618', 'abc'),
(889, 5, 12, 71, '3', 'Rangpur Corp.Br	Rangpur,88-0521-62335, 62170', 'abc'),
(890, 5, 12, 71, '3', 'Taragonj, Rangpur	88-0521-63059,63082 ext.2', 'abc'),
(925, 5, 1, 8, '9', 'Mirpur Road\r\nScience Lab. Campus\r\nDhaka-1205\r\nBangladesh 	880 2 8617961 880 2 9660625\r\n	labroad@pubalibankbd.com ', 'abc'),
(926, 5, 1, 8, '9', '1, R.K. Mission Road\r\nDhaka - 1203\r\nBangladesh\r\n	880 2 9553893\r\n	rkmission@pubalibankbd.com ', 'abc'),
(927, 5, 1, 8, '9', 'V.I.P. Road\r\n28/A, Nayapaltan\r\nDhaka-1000\r\nBangladesh 	880 2 8318486, 9342416 880 2 8318486\r\n	nayapaltan@pubalibankbd.com ', 'abc'),
(928, 5, 1, 8, '9', 'Khadiza Plaza\r\n307, Elephant Road\r\nDhaka-1205\r\nBangladesh 	880 2 8626357\r\n	elephantrd@pubalibankbd.com ', 'abc'),
(929, 5, 1, 8, '9', 'D.I.T. Road\r\n335, West Rampura\r\nDhaka\r\nBangladesh 	880-2-7281098\r\n	rampura@pubalibankbd.com ', 'abc'),
(930, 5, 1, 8, '9', '13, New Eskaton Road\r\nDhaka-1000\r\nBangladesh\r\n	880 2 9331117\r\n	moghbazar@pubalibankbd.com ', 'abc'),
(931, 5, 1, 8, '9', 'Sohrawardi Road\r\nDhaka-1205\r\nBangladesh\r\n	880 2 8626987\r\n	shishupark@pubalibankbd.com ', 'abc'),
(932, 5, 1, 8, '9', '17, Kakrail Road\r\nDhaka-1000\r\nBangladesh\r\n	880 2 9335116\r\n	shantinagar@pubalibankbd.com ', 'abc'),
(933, 5, 1, 8, '9', '302/A, Khilgaon\r\nTilpapara\r\nDhaka\r\nBangladesh 	880 2 7211328\r\n	goranbazar@pubalibankbd.com ', 'abc'),
(934, 5, 1, 8, '9', '25, Paribag\r\nSonargaon Road\r\nHatirpool\r\nDhaka-1000 	880 2 9665689\r\n	sonargaon@pubalibankbd.com ', 'abc'),
(935, 5, 1, 8, '9', 'Inner Circular Road\r\nFakirapool\r\nDhaka-1000\r\nBangladesh 	880 2 417994\r\n	fakirapool@pubalibankbd.com ', 'abc'),
(936, 5, 1, 8, '9', '23, Joykali Mandir Road\r\nDhaka-1203\r\nBangladesh\r\n	880 7111873 880 2 9557605\r\n	osmani@pubalibankbd.com ', 'abc'),
(937, 5, 1, 8, '9', '21, Md. Habibullah Road\r\n(Hazi Abdur Rashid Lane)\r\nNayabazar\r\nDhaka-1100 	880 2 7312535\r\n	nayabazar@pubalibankbd.com ', 'abc'),
(938, 5, 1, 8, '9', '	6, Court House Street\r\nDhaka - 1100\r\nBangladesh\r\n	880 2 7114183\r\n	barlibdhk@pubalibankbd.com ', 'abc'),
(939, 5, 1, 8, '9', '116/117, Reboti Mohan Das Road\r\nDhaka - 1100\r\nBangladesh\r\n	880 2 7110751\r\n	sutrapur@pubalibankbd.com ', 'abc'),
(940, 5, 1, 8, '9', '116/117, Reboti Mohan Das Road\r\nDhaka - 1100\r\nBangladesh\r\n	880 2 7110751\r\n	sutrapur@pubalibankbd.com ', 'abc'),
(941, 5, 1, 8, '9', '51/12, Johnson Road\r\nDhaka - 1100\r\nBangladesh\r\n	880 2 7114343\r\n	johnson@pubalibankbd.com ', 'abc'),
(942, 5, 1, 8, '9', '17, Akmal Khan Road\r\nBabubazar\r\nDhaka-1100\r\nBangladesh 	880 2 7390955\r\n	babubazar@pubalibankbd.com ', 'abc'),
(943, 5, 1, 8, '9', 'B.D.R. Campus Gate No.1\r\nPeelkhana\r\nDhaka-1211\r\nBangladesh 	880 2 8610737\r\n	peelkhana@pubalibankbd.com ', 'abc'),
(944, 5, 1, 8, '9', '70/1/A, Begum Bazar\r\nDhaka\r\nBangladesh\r\n	880 2 7314835\r\n	begumbazar@pubalibankbd.com ', 'abc'),
(945, 5, 1, 8, '9', '70/1/A, Begum Bazar\r\nDhaka\r\nBangladesh\r\n	880 2 7314835\r\n	begumbazar@pubalibankbd.com ', 'abc'),
(946, 5, 1, 8, '9', '125, Nawabpur Road\r\nNawabpur\r\nDhaka-1100\r\nBangladesh 	880 2 7117912\r\n	nawabpur@pubalibankbd.com ', 'abc'),
(947, 5, 1, 8, '9', '260, Bangshal Road\r\nBangshal\r\nDhaka-1100\r\nBangladesh 	880 2 9562333\r\n	bangshal@pubalibankbd.com ', 'abc'),
(948, 5, 1, 8, '9', '138, Khan Market\r\nChawk Moghaltolly\r\nDhaka\r\nBangladesh 	880 2 7316071\r\n	moghaltully@pubalibankbd.com ', 'abc'),
(949, 5, 1, 8, '9', '	3, Ahsanullah Road\r\nIslampur\r\nDhaka\r\nBangladesh 	880 2 7392291\r\n	islampur@pubalibankbd.com ', 'abc'),
(950, 5, 1, 8, '9', '7, Chittaranjan Avenue\r\nSadarghat\r\nDhaka\r\nBangladesh 	880 2 230939, 243095 880 2 7123095\r\n	sadarghat@pubalibankbd.com ', 'abc'),
(951, 5, 1, 8, '9', '186, Chawk Bazar\r\nDhaka-1211\r\nBangladesh\r\n	880 2 7318418, 7313393 880 2 7318414\r\n	chawkbazar@pubalibankbd.com ', 'abc'),
(952, 5, 1, 8, '9', '	Vill. - Pathankanda\r\nP.O. - Bardhanpara\r\nDist. - Dhaka\r\nBangladesh 	880 11 868972\r\n	komorgonj@pubalibankbd.com ', 'abc'),
(953, 5, 1, 8, '9', '81-B/1, Hossainy Dalan Road\r\nLalbagh\r\nDhaka\r\nBangladesh 	880 2 7300178\r\n	nazimuddin@pubalibankbd.com ', 'abc'),
(954, 5, 1, 8, '9', '22/1/23, Roy Ishwar Chandra Shil\r\nBahadur Street\r\nDhaka-1211\r\nBangladesh 	880 2 7316608\r\n	imamgonj@pubalibankbd.com ', 'abc'),
(955, 5, 1, 8, '9', '2, Bangabandhu Road\r\nNarayangonj Sadar\r\nDist. - Narayangonj\r\nBangladesh 	7630112 880 9711393\r\n	ngonj@pubalibankbd.com ', 'abc'),
(956, 5, 1, 8, '9', '98, Dholairpar, Dhaka\r\n\r\nDist. - Dhaka\r\nBangladesh 	880 7451579\r\n	dholaipar@pubalibankbd.com ', 'abc'),
(957, 5, 1, 8, '9', 'A.C. Dhar Road, Kalirbazar\r\nNarayangonj Sadar\r\nDist. - Narayangonj\r\nBangladesh 	880 9711355 880 9716017\r\n	kalirbazar@pubalibankbd.com ', 'abc'),
(958, 5, 1, 8, '9', 'Palash Bazar\r\nP.O. - Palash\r\nDist. - Narsingdi\r\nBangladesh 	880 6254 261\r\n	palash@pubalibankbd.com ', 'abc'),
(959, 5, 1, 32, '9', 'C & B Road, Hamid Mension\r\nNarsingdi Sadar\r\nP.O. - Narsingdi\r\nDist. - Narsingdi 	880 621 2426\r\n	narsingdi@pubalibankbd.com ', 'abc'),
(960, 5, 1, 10, '9', '	S.M. Maleh Road\r\nTanbazar\r\nDist. - Narayangonj\r\nBangladesh 	7630391\r\n	tanbazarngonj@pubalibankbd.com ', 'abc'),
(961, 5, 1, 32, '9', 'Ghorashal Bazar\r\nP.O. - Ghorashal\r\nDist. - Narsingdi\r\nBangladesh 	880 6254 298 880 9345550 Ext. 104\r\n	ghorashal@pubalibankbd.com ', 'abc'),
(962, 5, 1, 11, '9', 'Vill. - Gazaria\r\nP.O. - Gazaria\r\nDist. - Munshiganj\r\nBangladesh 	880 17826709\r\n	gazaria@pubalibankbd.com ', 'abc'),
(963, 5, 1, 32, '9', '	Charsindur Bazar, Pakragonj\r\nP.O. - Charsindur Bazar\r\nDist. - Narsingdi\r\nBangladesh 	880 11 862642\r\n	charsindur@pubalibankbd.com ', 'abc'),
(964, 5, 1, 10, '9', '	College Road, Araihazar\r\nP.O. - Araihazar\r\nDist. - Narayangonj\r\nBangladesh 	01711-827709\r\n	araihazar@pubalibankbd.com ', 'abc'),
(965, 5, 1, 11, '9', '	Katakhali Bazar Road\r\nP.O. - Katakhali\r\nDist. - Munshiganj\r\nBangladesh 	880 691 2283\r\n	katakhali@pubalibankbd.com ', 'abc'),
(966, 5, 1, 32, '9', '209 Bank Road\r\nP.O. - Madhabdi\r\nDist. - Narsingdi\r\nBangladesh 	\r\n	madhabdi@pubalibankbd.com ', 'abc'),
(967, 5, 1, 8, '9', 'Dhalagaon Bazar\r\nP.O. - Rampal\r\nDist. - Munshigonj\r\nBangladesh 	880 691 3080\r\n	dhalagaon@pubalibankbd.com ', 'abc'),
(968, 5, 1, 11, '9', '	Sadar Road\r\nP.O. - Munshigonj\r\nDist. - Munshigonj\r\nBangladesh 	880 691 3159\r\n	munshiganj@pubalibankbd.com ', 'abc'),
(969, 5, 1, 11, '9', 'Benodpur, Munshigonj Sadar\r\nP.O. - Rekabi Bazar\r\nDist. - Munshigonj\r\nBangladesh 	880 691 3362\r\n	nurpur@pubalibankbd.com ', 'abc'),
(970, 5, 1, 11, '9', 'Naopara Bazar\r\nP.O. - Naopara\r\nDist. - Munshigonj\r\nBangladesh 	\r\n	noapara@pubalibankbd.com ', 'abc'),
(971, 5, 1, 10, '9', '	Kalibari Bazar\r\nP.O. - Duptara\r\nDist. - Narayangonj\r\nBangladesh 	\r\n	duptara@pubalibankbd.com ', 'abc'),
(972, 5, 1, 11, '9', '	Bhaberchar\r\nP.O. - Bhaberchar\r\nDist. - Munshigonj\r\nBangladesh 	880 692 88021\r\n	bhaberchar@pubalibankbd.com ', 'abc'),
(973, 5, 1, 2, '9', 'Mayra Patty, Sk.Mujib Sarak\r\nP.O. - Faridpur Sadar\r\nDist. - Faridpur\r\nBangladesh 	880 631 63439\r\n	faridpur@pubalibankbd.com ', 'abc'),
(974, 5, 1, 3, '9', 'College Road\r\nP.O. - Rajbari Sadar\r\nDist. - Rajbari\r\nBangladesh 	880 641 5411\r\n	rajbari@pubalibankbd.com ', 'abc'),
(975, 5, 1, 1, '9', '	Main Road\r\nPuran Bazar\r\nP.O. - Madaripur\r\nDist. - Madaripur 	880 661 55584\r\n	madaripur@pubalibankbd.com ', 'abc'),
(976, 5, 1, 7, '9', '	97, Theatre Road\r\nP.O. - Gopalgonj\r\nDist. - Gopalgonj\r\nBangladesh 	880 0423 55507\r\n	gopalgonj@pubalibankbd.com ', 'abc'),
(977, 5, 1, 6, '9', 'Shariatpur Sadar Road\r\nP.O. - Sariatpur\r\nDist. - Shariatpur\r\nBangladesh 	880 601 55627\r\n	shariatpur@pubalibankbd.com ', 'abc'),
(978, 5, 1, 28, '9', 'Agri-Varsity Campus\r\nP.O. - Agri University\r\nDist. - Mymensingh\r\nBangladesh 	880 91 54595\r\n	agriunicampus@pubalibankbd.com ', 'abc'),
(979, 5, 1, 28, '9', '35, Durgabari Road\r\nP.O. - Mymensingh Sadar\r\nDist. - Mymensingh\r\nBangladesh 	880 91 54547\r\n	mymensingh@pubalibankbd.com ', 'abc'),
(980, 5, 1, 37, '9', 'Mosjeed Road\r\nP.O. - Tangail Sadar\r\nDist. - Tangail\r\nBangladesh 	880 921 53109\r\n	tangail@pubalibankbd.com ', 'abc'),
(981, 5, 1, 33, '9', 'Misty Patty\r\nP.O. - Bhairab Bazar\r\nDist. - Kishoregonj\r\nBangladesh 	880 9431 545\r\n	bhairab@pubalibankbd.com ', 'abc'),
(982, 5, 1, 41, '9', 'Medical Road\r\nP.O. - Jamalpur Sadar\r\nDist. - Jamalpur\r\nBangladesh 	880 981 3149\r\n	jamalpur@pubalibankbd.com ', 'abc'),
(983, 5, 1, 31, '9', 'Chhoto Bazar\r\nP.O. - Netrokona Sadar\r\nDist. - Netrokona\r\nBangladesh 	880 951 524\r\n	netrakona@pubalibankbd.com ', 'abc'),
(984, 5, 1, 33, '9', 'Bara Bazar\r\nIshakhan Road\r\nP.O. - Kishoregonj Sadar\r\nDist. - Kishoregonj 	880 941 55513\r\n	kishoregonj@pubalibankbd.com ', 'abc'),
(985, 5, 1, 31, '9', '	PS. Head Quarter\r\nP.O. - Madan\r\nDist. - Netrokona\r\nBangladesh 	\r\n	madan@pubalibankbd.com ', 'abc'),
(986, 5, 1, 37, '9', 'P.O. - Pakutia\r\nDist. - Tangail\r\nBangladesh\r\n	\r\n	pakutia@pubalibankbd.com ', 'abc'),
(987, 5, 1, 28, '9', '	P.O. - Mymensing Sadar\r\nDist. - Mymensing\r\n\r\n	880 91 54750\r\n	charpara@pubalibankbd.com ', 'abc'),
(988, 5, 1, 28, '9', 'Main Road\r\nBarahisya Bazar\r\nP.O. - Muktagachha\r\nDist. - Mymensingh 	880 91 09028/315 880 91 52189/315 880 91 54762/3\r\n	muktagacha@pubalibankbd.com ', 'abc'),
(989, 5, 1, 28, '9', 'Katgola Bazar\r\nP.O. - Mymensingh Sadar\r\nDist. - Mymensingh\r\nBangladesh 	880 91 54012\r\n	taltalabazar@pubalibankbd.com ', 'abc'),
(990, 5, 1, 37, '9', 'Konabari Bazar Road\r\nP.O. - Gopalpur\r\nDist. - Tangail\r\nBangladesh 	880 921 53074/13\r\n	gopalpur@pubalibankbd.com ', 'abc'),
(991, 5, 1, 47, '9', 'Road No.1\r\nSajbarkhila\r\nP.O. - Sherpur Sadar\r\nDist. - Sherpur 	880 931 371\r\n	sherpur@pubalibankbd.com ', 'abc'),
(992, 5, 1, 28, '9', '2/ Kha Ramesh Sen Road\r\nSwadeshi Bazar\r\nDist. - Mymensingh\r\nBangladesh 	880 91 54286\r\n	shawdeshi@pubalibankbd.com ', 'abc'),
(993, 5, 1, 41, '9', 'Municipal Market\r\nAramnagar Bazar\r\nP.O. - Sarishabari Sadar\r\nDist. - Jamalpur 	880 981 3072/23\r\n	sarishabari@pubalibankbd.com ', 'abc'),
(994, 5, 1, 41, '9', 'Bakultala Road\r\nJamalpur Sadar\r\nP.O. - Jamalpur\r\nDist. - Jamalpur 	880 981 3482\r\n	bakultala@pubalibankbd.com ', 'abc'),
(995, 5, 1, 28, '9', 'Darirampur\r\nP.O. - Trishal\r\nDist. - Mymensingh\r\nBangladesh 	880 91 54599/17 880 91 52183/17\r\n	darirampur@pubalibankbd.com ', 'abc'),
(996, 5, 1, 33, '9', 'P.O. - Kamalpur\r\nDist. - Kishoregonj\r\nBangladesh\r\n	880 9431 632\r\n	kamalpur@pubalibankbd.com ', 'abc'),
(997, 5, 1, 37, '9', 'Karatia\r\nP.O. - Tangail Sadar\r\nDist. - Tangail\r\nBangladesh 	\r\n	karatia@pubalibankbd.com ', 'abc'),
(998, 5, 1, 37, '9', 'Registry Para\r\nTangail Sadar\r\nP.O. - Tangail\r\nDist. - Tangail 	880 921 53297\r\n	zstangail@pubalibankbd.com ', 'abc'),
(999, 5, 1, 37, '9', 'Pathrail Bazar\r\nP.O. - Pathrail\r\nDist. - Tangail\r\nBangladesh 	\r\n	pathrail@pubalibankbd.com ', 'abc'),
(1000, 5, 1, 37, '9', 'Zilla Sadar Road\r\nP.O. - Tangail Sadar\r\nDist. - Tangail\r\n	880-921-53209\r\n	akurtakur@pubalibankbd.com ', 'abc'),
(1001, 5, 1, 2, '9', 'Bhanga\r\nDist. - Faridpur\r\n\r\n	\r\n	bhanga@pubalibankbd.com ', 'abc'),
(1002, 5, 1, 8, '9', 'Ashulia, Dhaka\r\nDist.-Dhaka\r\n\r\n	880 7788174\r\n	ashulia@pubalibankbd.com ', 'abc'),
(1003, 5, 1, 8, '9', 'Ga-95/2,Progati Sarani\r\nMiddle Budda, Dhaka-1212\r\nDist. - Dhaka\r\n	8816289\r\n	progatisharani@pubalibankbd.com ', 'abc'),
(1004, 5, 1, 8, '9', 'Panthapath, Dhaka\r\nDist. - Dhaka\r\n\r\n	8114229\r\n	panthapath@pubalibankbd.com ', 'abc'),
(1005, 5, 1, 8, '9', 'House # 7 (1st floor) , Road # 7/D,Sector# 9\r\nUttara Residential Area\r\nP.O.-Uttara\r\n	8933825\r\n	uttaramt@pubalibankbd.com ', 'abc'),
(1006, 5, 1, 8, '9', 'Union - Ati Bazar\r\nUpzilla - Karanigonj\r\n\r\n	7760277\r\n	atibazar@pubalibankbd.com ', 'abc'),
(1007, 5, 1, 8, '9', 'Ka-96/D, Kuril, Bishwa Road (1st Floor)\r\nP.O. - Khilkhat,\r\nP.S.-Badda,\r\n	\r\n	kuril@pubalibankbd.com ', 'abc'),
(1008, 5, 1, 10, '9', 'Kutubali,Road No-2,Fatullah Road\r\nP.O - Sadar\r\nDist. - Narayangonj\r\nBangladesh 	01937404321\r\n	shibu@pubalibankbd.com ', 'abc'),
(1009, 5, 1, 8, '9', 'House No - ga-37/1,Pragati sharani\r\nWard No. Nill Block - J,Jamalpur Tower\r\nDist. - Dhaka\r\nBangladesh 	01937404319\r\n	baridhara@pubalibankbd.com ', 'abc'),
(1010, 5, 1, 8, '9', 'House No - 2 , Block - C, Main Road,\r\nWard No. 22, Banasree\r\nDist. - Dhaka\r\nBangladesh 	01937404320\r\n	banasree@pubalibankbd.com ', 'abc'),
(1011, 5, 1, 41, '9', 'Ubion- Nandina Bazar\r\nP.O - Nandina Bazar\r\nDist. - Jamalpur\r\nBangladesh 	01937404327\r\n	nandina@pubalibankbd.com ', 'abc'),
(1012, 5, 1, 8, '9', 'Dania\r\nDhaka\r\nDist. - Dhaka\r\nBangladesh 	01929913029\r\n	dania@pubalibankbd.com ', 'abc'),
(1013, 5, 1, 2, '9', '	Kanaipur\r\nFaridpur\r\n 	01552477320\r\n	KANAIPUR@PUBALIBANKBD.COM ', 'abc'),
(1014, 5, 1, 3, '9', 'Pangsha\r\nRajbari\r\n\r\n 	01716608505\r\n	PANGSHA@PUBALIBANKBD.COM ', 'abc'),
(1015, 5, 1, 6, '9', 'Naria\r\nShariatpur\r\n\r\n 	01929913029\r\n	NARIA@PUBALIBANKBD.COM ', 'abc'),
(1016, 5, 5, 27, '9', 'Laldighi East\r\nP.O. - Anderkilla\r\nDist. - Chittagong\r\nBangladesh 	880 31 611235\r\n	laldighi@pubalibankbd.com ', 'abc'),
(1017, 5, 5, 27, '9', 'Nasirabad Industrial Area\r\nP.O. - Ctg. Polytech. Institute\r\nDist. - Chittagong\r\nBangladesh 	880 31 682610\r\n	indarea@pubalibankbd.com ', 'abc'),
(1018, 5, 5, 27, '9', 'C.D.A. Building\r\nP.O. - GPO Chittagong\r\nDist. - Chittagong\r\nBangladesh 	880 31 611381, 634710\r\n	cda@pubalibankbd.com ', 'abc'),
(1019, 5, 5, 27, '9', 'Chittagong College Road\r\nP.O. - Chittagong\r\nDist. - Chittagong\r\nBangladesh 	880 31 615274\r\n	collegeroad@pubalibankbd.com', 'abc'),
(1020, 5, 5, 27, '9', '	Kulgaon\r\nP.O. - Jalalabad\r\nDist. - Chittagong\r\nBangladesh 	880 31 682659\r\n	kulgaon@pubalibankbd.com ', 'abc'),
(1021, 5, 5, 27, '9', '6, Ramjoy Mohajan Lane\r\nKhatungonj\r\nP.O. - Lamabazar\r\nDist. - Chittagong 	880 31 611201\r\n	khatunganj@pubalibankbd.com ', 'abc'),
(1022, 5, 5, 27, '9', 'Bahadderhat\r\nP.O. - Chandgaon\r\nDist. - Chittagong\r\nBangladesh 	880 31 650579\r\n	bahadderhat@pubalibankbd.com ', 'abc'),
(1023, 5, 5, 27, '9', '	Hathazari\r\nP.O - Hathazari\r\nDist. - Chittagong\r\nBangladesh 	880 31 620126 14\r\n	hathazari@pubalibankbd.com', 'abc'),
(1024, 5, 5, 19, '9', '	Reserve Bazar\r\nP.O. - Reserve Bazar\r\nDist. - Rangamati Hill\r\nBangladesh 	880 351 62223\r\n	rangamati@pubalibankbd.com ', 'abc'),
(1025, 5, 5, 27, '9', 'Rangunia\r\nP.O. - Rangunia\r\nDist. - Chittagong\r\nBangladesh 	880 31 637078\r\n	rangunia@pubalibankbd.com ', 'abc'),
(1026, 5, 5, 27, '9', '210, New Chaktai\r\nP.O. - Chaktai\r\nDist. - Chittagong\r\nBangladesh 	880 31 611100\r\n	chaktai@pubalibankbd.com ', 'abc'),
(1027, 5, 5, 27, '9', 'Chikandandi\r\nP.O. Fathabad\r\nDist. - Chittagong\r\nBangladesh 	880 31 682342\r\n	amanbazar@pubalibankbd.com ', 'abc'),
(1028, 5, 5, 27, '9', '30, Reboti Mohan Lane\r\nDampara\r\nDist. - Chittagong\r\nBangladesh 	880 31 617616\r\n	mehedibagh@pubalibankbd.com ', 'abc'),
(1029, 5, 5, 27, '9', 'P.O. - Thandachari\r\nVia. - Raozan\r\nDist. - Chittagong\r\nBangladesh 	018-314339\r\n	ranirhat@pubalibankbd.com ', 'abc'),
(1030, 5, 5, 27, '9', '37, Rajapur Lane\r\nAnderkilla\r\nP.O. - Anderkilla\r\nDist. - Chittagong 	880 31 613802\r\n	anderkilla@pubalibankbd.com ', 'abc'),
(1031, 5, 5, 27, '9', '27, Bundle Road\r\nPatherghata\r\nDist. - Chittagong\r\nBangladesh 	880 31 611415\r\n	patharghata@pubalibankbd.com ', 'abc'),
(1032, 5, 5, 27, '9', '70, Terri Bazar\r\nP.O. - Anderkilla\r\nDist. - Chittagong\r\nBangladesh 	880 31 611513\r\n	terribazar@pubalibankbd.com ', 'abc'),
(1033, 5, 5, 27, '9', '	Khagrachari Bazar\r\nP.O - Khagrachari\r\nDist. - Khagrachari Hill\r\nBangladesh 	880 371 838\r\n	khagrachari@pubalibankbd.com ', 'abc'),
(1034, 5, 5, 27, '9', 'P.O. - Nazirhat\r\nDist. - Chittagong\r\nBangladesh\r\n	880 31 635033 23\r\n	nazirhat@pubalibankbd.com ', 'abc'),
(1035, 5, 5, 27, '9', 'P.O. - Bibirhat\r\nDist. - Chittagong\r\nBangladesh\r\n	\r\n	bibirhat@pubalibankbd.com ', 'abc'),
(1036, 5, 5, 27, '9', 'P.O. - Nanupur\r\nDist. - Chittagong\r\nBangladesh\r\n	880 31 637156 880 31 630262\r\n	nanupur@pubalibankbd.com ', 'abc'),
(1037, 5, 5, 27, '9', 'P.O. - Azadibazar\r\nDist. - Chittagong\r\nBangladesh\r\n	880 31 637166\r\n	dharmapur@pubalibankbd.com ', 'abc'),
(1038, 5, 5, 27, '9', 'Madhunaghat\r\nP.O. - Noor Ali Bari\r\nDist. - Chittagong\r\nBangladesh 	880 31 670588\r\n	modunaghat@pubalibankbd.com ', 'abc'),
(1039, 5, 5, 27, '9', 'Ashraf Ali Road\r\nP.O. - Kotwali\r\nDist. - Chittagong\r\nBangladesh 	880 31 610807\r\n	ashrafali@pubalibankbd.com ', 'abc'),
(1040, 5, 5, 27, '9', 'Laldighi West\r\nKotwali\r\nDist. - Chittagong\r\nBangladesh 	880 31 623719\r\n	oldchurch@pubalibankbd.com ', 'abc'),
(1041, 5, 5, 27, '9', 'Korbanigonj\r\nP.O. - Lamabazar\r\nDist. - Chittagong\r\nBangladesh 	880 31 611280\r\n	korbanigonj@pubalibankbd.com ', 'abc'),
(1042, 5, 5, 27, '9', '37, Hasmatullah Musaf Lane\r\nChawkbazar\r\nDist. - Chittagong\r\nBangladesh 	880 31 618109\r\n	chawkbazarctg@pubalibankbd.com ', 'abc'),
(1043, 5, 5, 18, '9', 'Main Road\r\nDist. - Cox''s Bazar\r\nBangladesh\r\n	880 341 3419\r\n	coxsbazar@pubalibankbd.com ', 'abc'),
(1044, 5, 5, 27, '9', 'Strand Road\r\nP.O. - Bandar\r\nDist. - Chittagong\r\nBangladesh 	880 31 724760\r\n	portctg@pubalibankbd.com ', 'abc'),
(1045, 5, 5, 27, '9', 'P.O - Satkania\r\nDist. - Chittagong\r\nBangladesh\r\n	880 31 03036/214 880 31 630717/214\r\n	satkania@pubalibankbd.com ', 'abc'),
(1046, 5, 5, 27, '9', '99, Agrabad Comm. Area\r\nDist. - Chittagong\r\nBangladesh\r\n	880 31 716388, 716409,8802-716388\r\n	agrabad@pubalibankbd.com ', 'abc'),
(1047, 5, 5, 18, '9', 'P.O. - Gorakghata Bazar\r\nDist. - Cox''s Bazar\r\nBangladesh\r\n	880 3424 283\r\n	moiscal@pubalibankbd.com ', 'abc'),
(1048, 5, 5, 27, '9', 'Sadarghat Road\r\nDist. - Chittagong\r\nBangladesh\r\n	880 31 613256\r\n	sadarghatctg@pubalibankbd.com ', 'abc');
INSERT INTO `srcdetails` (`SrcId`, `SourceType`, `DivId`, `DistId`, `SrcName`, `SrcAddress`, `SrcContact`) VALUES
(1049, 5, 5, 27, '9', 'D.T. Road, Pahartali\r\nP.O. - Pahartali\r\nDist. - Chittagong\r\nBangladesh 	880 31 751540\r\n	pahartali@pubalibankbd.com ', 'abc'),
(1050, 5, 5, 27, '9', 'Patiya\r\nP.O. - Patiya\r\nDist. - Chittagong\r\nBangladesh 	880 31 630718 218\r\n	patiya@pubalibankbd.com ', 'abc'),
(1051, 5, 5, 27, '9', 'Mohsin Market\r\nR.S. Road\r\nDist. - Chittagong\r\nBangladesh 	880 31 618588\r\n	reazuddin@pubalibankbd.com ', 'abc'),
(1052, 5, 5, 27, '9', 'D.T. Road\r\nP.O. - Mithachara Bazar\r\nDist. - Chittagong\r\nBangladesh 	\r\n	mithachara@pubalibankbd.com ', 'abc'),
(1053, 5, 5, 18, '9', 'Arkan Road\r\nP.O. - Ukhiya\r\nDist. - Cox''s Bazar\r\nBangladesh 	880 3427 228\r\n	ukhiya@pubalibankbd.com ', 'abc'),
(1054, 5, 5, 27, '9', '	South Jaldi\r\nP.O. - Jaldi\r\nDist. - Chittagong\r\nBangladesh 	880 31 630865 9 880 31 630501 9\r\n	banskhali@pubalibankbd.com ', 'abc'),
(1055, 5, 5, 27, '9', 'P.O. - Anwara\r\nDist. - Chittagong\r\nBangladesh\r\n	880 630964 25\r\n	anowara@pubalibankbd.com ', 'abc'),
(1056, 5, 5, 27, '9', 'Rahmatpur\r\nP.O. - Sandwip\r\nDist. - Chittagong\r\nBangladesh 	880 620143/321\r\n	sandwip@pubalibankbd.com ', 'abc'),
(1057, 5, 5, 27, '9', '	D.T. Road, Kadamtali\r\nDist. - Chittagong\r\nBangladesh\r\n	880 31 723693\r\n	kadamtalictg@pubalibankbd.com ', 'abc'),
(1058, 5, 5, 27, '9', 'CEPZ Gate\r\nPatenga Road\r\nP.O. - CEPZ Gate\r\nDist. - Chittagong 	880 31 740972\r\n	sailorscolony@pubalibankbd.com', 'abc'),
(1059, 5, 5, 27, '9', 'Shantirhat\r\nP.O. - Patiga\r\nDist. - Chittagong\r\nBangladesh 	\r\n	shantirhat@pubalibankbd.com ', 'abc'),
(1060, 5, 5, 27, '9', '	Eastern Refinery Gate, Patenga\r\nP.O. - North Potenga\r\nDist. - Chittagong\r\nBangladesh 	880 31 741480\r\n	hadipara@pubalibankbd.com ', 'abc'),
(1061, 5, 5, 27, '9', '1403, SK. Mujib Road\r\nDewanhat\r\nDist. - Chittagong\r\nBangladesh 	880 31 716389\r\n	dewanhat@pubalibankbd.com ', 'abc'),
(1062, 5, 5, 27, '9', 'Dhaka Trunk Road\r\nP.O. - Baratakia Bazar\r\nDist. - Chittagong\r\nBangladesh 	\r\n	baratakia@pubalibankbd.com ', 'abc'),
(1063, 5, 5, 21, '9', 'Banderban Bazar\r\nP.O. - Bandarban\r\nDist. - Banderban Hill\r\nBangladesh 	880 361 323\r\n	bandarban@pubalibankbd.com ', 'abc'),
(1064, 5, 5, 27, '9', 'Chandanaish\r\nP.O. - East Zoara\r\nDist. - Chittagong\r\nBangladesh 	880 31 637148 3\r\n	chandanish@pubalibankbd.com ', 'abc'),
(1065, 5, 5, 27, '9', 'Padua\r\nP.O. - Padua\r\nDist. - Chittagong\r\nBangladesh 	\r\n	padua@pubalibankbd.com ', 'abc'),
(1066, 5, 5, 27, '9', 'Mait Bhanga (Siberhat)\r\nP.O. - Mait Bhanga (Siberhat)\r\nDist. - Chittagong\r\nBangladesh 	\r\n	shiberhat@pubalibankbd.com ', 'abc'),
(1067, 5, 5, 52, '9', 'Ashugonj Station Road\r\nP.O. - Ashugonj\r\nDist. - Brahmanbaria\r\nBangladesh 	880 8528 215\r\n	ashugonj@pubalibankbd.com ', 'abc'),
(1068, 5, 5, 29, '9', 'Kandirpar\r\nP.O. - Comilla\r\nDist. - Comilla\r\nBangladesh 	880 81 76903 880 81 76086\r\n	comilla@pubalibankbd.com ', 'abc'),
(1069, 5, 5, 29, '9', 'Daulatgonj Bazar\r\nP.O. - Laksham\r\nDist. - Comilla\r\nBangladesh 	880 8032 421\r\n	daulatgonj@pubalibankbd.com ', 'abc'),
(1070, 5, 5, 53, '9', 'Main Road\r\nHajigonj Bazar\r\nP.O. - Hajigonj\r\nDist. - Chandpur 	880 8424 320\r\n	hajigonj@pubalibankbd.com ', 'abc'),
(1071, 5, 5, 29, '9', 'College Road\r\nP.O. - Comilla\r\nDist. - Comilla\r\nBangladesh 	880 81 76874\r\n	victoria@pubalibankbd.com ', 'abc'),
(1072, 5, 5, 53, '9', 'J.M. Sengupta Road\r\nP.O. - Natunbazar\r\nDist. - Chandpur\r\nBangladesh 	880 841 3260\r\n	natunbazar@pubalibankbd.com ', 'abc'),
(1073, 5, 5, 52, '9', 'T.A. Road\r\nBranhman Baria Sadar\r\nP.O. - Branhmanbaria\r\nDist. - Brahmanbaria 	880 851 52108\r\n	bbaria@pubalibankbd.com ', 'abc'),
(1074, 5, 5, 53, '9', 'Kaumi Madrasha Bhaban\r\nP.O. - Motlab Bazar\r\nDist. - Chandpur\r\nBangladesh 	880 841 4207\r\n	matlab@pubalibankbd.com ', 'abc'),
(1075, 5, 5, 29, '9', 'P.O. - Cheora\r\nDist. - Comilla\r\nBangladesh\r\n	880 81 8151 28\r\n	cheora@pubalibankbd.com ', 'abc'),
(1076, 5, 5, 29, '9', 'Balghar\r\nP.O. - Meahbazar\r\nDist. - Comilla\r\nBangladesh 	\r\n	meahbazar@pubalibankbd.com ', 'abc'),
(1077, 5, 5, 29, '9', 'Chittagong Trunk Road\r\nP.O. - Comilla\r\nDist. - Comilla\r\nBangladesh 	880 81 76986\r\n	chawkbazarcomilla@pubalibankbd.com ', 'abc'),
(1078, 5, 5, 29, '9', 'P.O. - Dollai Nawabpur\r\nDist. - Comilla\r\nBangladesh\r\n	\r\n	dollai@pubalibankbd.com ', 'abc'),
(1079, 5, 5, 53, '9', 'P.O. - Gridakalandia\r\nDist. - Chandpur\r\nBangladesh\r\n	\r\n	grida@pubalibankbd.com ', 'abc'),
(1080, 5, 5, 53, '9', 'Rampura Bazar\r\nP.O. - Rampura Bazar\r\nDist. - Chandpur\r\nBangladesh 	\r\n	rampur@pubalibankbd.com ', 'abc'),
(1081, 5, 5, 29, '9', 'Zilla Parishad Premises\r\nP.O. - Comilla Sadar\r\nDist. - Comilla\r\nBangladesh 	880 81 65326\r\n	zillaparishad@pubalibankbd.com ', 'abc'),
(1082, 5, 5, 27, '9', 'Bangodda\r\nP.O. - Nangalkot\r\nDist. - Comilla\r\nBangladesh 	\r\n	bangodda@pubalibankbd.com ', 'abc'),
(1083, 5, 5, 53, '9', 'P.O.- Nayergaon\r\nDist. - Chandpur\r\nBangladesh\r\n	\r\n	nayergaon@pubalibankbd.com ', 'abc'),
(1084, 5, 5, 53, '9', 'P.O. - Ashrafpur\r\nDist. - Chandpur\r\nBangladesh\r\n	\r\n	ashrafpur@pubalibankbd.com ', 'abc'),
(1085, 5, 5, 29, '9', 'P.O. - Doulkhar Bazar\r\nDist. - Comilla\r\nBangladesh\r\n	\r\n	doulkhar@pubalibankbd.com ', 'abc'),
(1086, 5, 5, 29, '9', 'P.O. - Paduar Bazar\r\nDist. - Comilla\r\nBangladesh\r\n	\r\n	paduarbazar@pubalibankbd.com ', 'abc'),
(1087, 5, 5, 30, '9', 'Main Road\r\nP.O. - Maijdi Court\r\nDist. - Noakhali\r\nBangladesh 	880 321 5366\r\n	mcourt@pubalibankbd.com ', 'abc'),
(1088, 5, 5, 34, '9', 'Trunk Road\r\nP.O. - Feni\r\nDist. - Feni\r\nBangladesh 	880 331 73432\r\n	feni@pubalibankbd.com ', 'abc'),
(1089, 5, 5, 30, '9', '84 Gopai Ram Sanker\r\nNoakhali Sadar\r\nDist. - Noakhali\r\nBangladesh 	880 321 5551\r\n	datterhat@pubalibankbd.com ', 'abc'),
(1090, 5, 5, 30, '9', 'D.B. Road\r\nP.O. - Chowumuhani\r\nDist. - Noakhali\r\nBangladesh 	880 321 4005\r\n	chowmuhani@pubalibankbd.com ', 'abc'),
(1091, 5, 5, 27, '9', 'Chawk Bazar\r\nP.O. - Laxmipur\r\nDist. - Laxmipur\r\nBangladesh 	880 381 55319\r\n	laxmipur@pubalibankbd.com ', 'abc'),
(1092, 5, 5, 30, '9', 'Char Ishwar\r\nP.O. - Afazia Bazar\r\nDist. - Noakhali\r\nBangladesh 	\r\n	afaziabazar@pubalibankbd.com ', 'abc'),
(1093, 5, 5, 48, '9', 'East Keroa\r\nP.O. - Ludua Bhuiayan Bari\r\nDist. - Laxmipur\r\nBangladesh 	\r\n	mirerhat@pubalibankbd.com ', 'abc'),
(1094, 5, 5, 34, '9', 'Patuari Plaza\r\nP.O. - Chhagalnaiya\r\nDist. - Feni\r\nBangladesh 	\r\n	chhagalniya@pubalibankbd.com ', 'abc'),
(1095, 5, 5, 34, '9', '	Main Road\r\nP.O. - Sonagazi\r\nDist. - Feni\r\nBangladesh 	\r\n	sonagazi@pubalibankbd.com ', 'abc'),
(1096, 5, 5, 34, '9', '	Khaddar Patty Road\r\nAlam Market\r\nP.O. - Feni Sadar\r\nDist. - Feni 	880 331 74102\r\n	fenibazar@pubalibankbd.com ', 'abc'),
(1097, 5, 5, 30, '9', '	P.O. - Basurhat\r\nDist. - Noakhali\r\nBangladesh\r\n	\r\n	basurhat@pubalibankbd.com ', 'abc'),
(1098, 5, 5, 34, '9', '	Horipur\r\nP.O. - Pathanagar\r\nDist. - Feni\r\nBangladesh 	\r\n	banglabazar@pubalibankbd.com ', 'abc'),
(1099, 5, 5, 30, '9', 'Year Pur\r\nP.O. - Samir Munshihat\r\nDist. - Noakhali\r\nBangladesh 	\r\n	smhat@pubalibankbd.com ', 'abc'),
(1100, 5, 5, 34, '9', 'Bogadana\r\nP.O. - Kazirhat\r\nDist. - Feni\r\nBangladesh 	\r\n	kazirhat@pubalibankbd.com ', 'abc'),
(1101, 5, 5, 29, '9', 'P.O. - Gouripur\r\nDist. - Comilla\r\nBangladesh\r\n	\r\n	gouripur@pubalibankbd.com ', 'abc'),
(1102, 5, 5, 27, '9', '34, Fakirhat\r\nP.O.- Raozan\r\nDist.-Chittagong\r\n	01917704702\r\n	raozan@pubalibankbd.com ', 'abc'),
(1103, 5, 5, 48, '9', 'Noor Plaza\r\nP.O.-Ramgonj\r\nP.S.-Ramgonj\r\nDist.-Laxmipur 	03824-75274\r\n	ramgonj@pubalibankbd.com ', 'abc'),
(1104, 5, 5, 27, '9', 'Amirabad\r\nP.O. Lohagara\r\nLohagara, Chittagong\r\nDist. - Chittagong 	\r\n	lohagara@pubalibankbd.com ', 'abc'),
(1105, 5, 5, 29, '9', 'Saudia Super Market (1st Floor)\r\n290, Daudkandi Bazar Sarak\r\nUpzilla - Daudkandi\r\nP.O. -Daudkandi 	\r\n	daudkandi@pubalibankbd.com ', 'abc'),
(1106, 5, 5, 27, '9', 'Khair Super Market Chuddagram Bazar (1st Floor)\r\nDhaka Chittagong Moha Sarak\r\nUpzilla -Chuddagram\r\nP.O. - Chuddagram 	\r\n	chauddagram@pubalibankbd.com ', 'abc'),
(1107, 5, 5, 27, '9', '1636, P.C. Road Natun Bazar (1st Floor)\r\nBishwa Road Mor\r\nMadhyam Rampur\r\nUpzilla - Halishahor 	\r\n	halishahar@pubalibankbd.com ', 'abc'),
(1108, 5, 5, 27, '9', '903, Ashek Ahmed Super Market (1st Floor)\r\nUpzilla - Chokaria\r\nP.O. - Chokaria\r\nMunicipality - Chokaria 	\r\n	chokoria@pubalibankbd.com ', 'abc'),
(1109, 5, 5, 27, '9', '253/254 Dagon Bhuiyan (1st Floor)\r\nUpzilla - Dagon Bhuiyan\r\nP.O. - Dagon Bhuiyan\r\nMunicipality - Dagon Bhuiyan 	\r\n	dagon@pubalibankbd.com ', 'abc'),
(1110, 5, 5, 27, '9', '272,273 Denayetpur (1st Floor)\r\nUpzilla - Raipur\r\nP.O. - Raipur\r\nMunicipality - Raipur 	\r\n	raipur@pubalibankbd.com ', 'abc'),
(1111, 5, 5, 27, '9', 'Mannan shopping Complex 1st Floor\r\nKenarihat,Satkania\r\nDist. - Chittagong\r\nBangladesh 	01937404324\r\n	keranihat@pubalibankbd.com ', 'abc'),
(1112, 5, 5, 53, '9', 'Pouroshava -Chhanger Char,Upzilla- Matlab North\r\nP.O - Chhanger Char\r\nDist. - Chandpur\r\nBangladesh 	01937404328\r\n	chengarchar@pubalibankbd.com ', 'abc'),
(1113, 5, 5, 34, '9', '	Union & Upzilla - Fulgazi\r\nP.O - Fulgazi\r\nDist. - Feni\r\nBangladesh 	01937404333\r\n	fulgazi@pubalibankbd.com ', 'abc'),
(1114, 5, 5, 29, '9', 'Maisan Market,Comilla Cantonment\r\nP.O. - Comilla Cantonment\r\nDist. - Comilla\r\nBangladesh 	01937404322\r\n	mynamoti@pubalibankbd.com ', 'abc'),
(1115, 5, 5, 29, '9', '	Pourashava - Debidwar\r\nP.O. - Debidwar\r\nDist. - Comilla\r\nBangladesh 	01937404323\r\n	debidwar@pubalibankbd.com ', 'abc'),
(1116, 5, 5, 29, '9', '	Pourashava - Debidwar\r\nP.O. - Debidwar\r\nDist. - Comilla\r\nBangladesh 	01937404323\r\n	debidwar@pubalibankbd.com ', 'abc'),
(1117, 5, 5, 30, '9', 'Thanarhat Bazar,sonaimuri\r\nP.O -Thanarhat\r\nDist. - Noakhali\r\nBangladesh 	01937404325\r\n	thanarhat@pubalibankbd.com ', 'abc'),
(1118, 5, 5, 29, '9', 'Akhaura\r\nComilla\r\nDist. - Comilla\r\nBangladesh 	01816448613,01917- 704780\r\n	', 'abc'),
(1119, 5, 5, 53, '9', '	Chandpur\r\n\r\nDist- Chandpur\r\nBangladesh 	\r\n	KACHUA@pubalibankbd.com ', 'abc'),
(1120, 5, 5, 27, '9', '	Sitakunda SME Branch\r\nSitakunda\r\nP.O. - Sitakunda\r\nDist. - Chittagong 	\r\n	sitakunda@pubalibankbd.com ', 'abc'),
(1121, 5, 2, 63, '9', 'S.S. Road\r\nSirajgonj Sadar\r\nP.O. - Sirajgonj\r\nDist. - Sirajgonj 	880 751 72354\r\n	sirajgonj@pubalibankbd.com', 'abc'),
(1122, 5, 2, 61, '9', 'Station Road\r\nIshurdi Bazar\r\nIshurdi\r\nDist. - Pabna 	880 732 436\r\n	ishurdi@pubalibankbd.com ', 'abc'),
(1123, 5, 2, 49, '9', '	Main Road\r\nP.O. - Naogaon Sadar\r\nDist. - Naogaon\r\nBangladesh 	880 741 52108 880 741 52152\r\n	naogaon@pubalibankbd.com ', 'abc'),
(1124, 5, 2, 58, '9', 'Thana Road\r\nP.O. - Jaipurhat\r\nDist. - Jaipurhat\r\nBangladesh 	880 571 412 880 571 325\r\n	jaipurhat@pubalibankbd.com ', 'abc'),
(1125, 5, 2, 56, '9', '	Kabi Nazrul Islam Road\r\nBogra Sadar\r\nP.O. - Bogra\r\nDist. - Bogra 	880 51 6194\r\n	bogra@pubalibankbd.com ', 'abc'),
(1126, 5, 2, 56, '9', 'Sadar Road\r\nSantahar\r\nP.O. - Santaher\r\nDist. - Bogra 	880 741 55303\r\n	santahar@pubalibankbd.com ', 'abc'),
(1127, 5, 2, 12, '9', 'Natore Road\r\nShaheb Bazar\r\nP.O. - Ghoramara\r\nDist. - Rajshahi 	880 721 2681 880 721 774102\r\n	rajshahi@pubalibankbd.com ', 'abc'),
(1128, 5, 2, 61, '9', 'A. Hamid Road\r\nP.O. - Pabna\r\nDist. - Pabna\r\nBangladesh 	880 731 6185\r\n	pabna@pubalibankbd.com ', 'abc'),
(1129, 5, 2, 58, '9', '	College Road\r\nJamalgonj Bazar\r\nDist. - Jaipurhat\r\nBangladesh 	880 571 936\r\n	jamalgonjht@pubalibankbd.com ', 'abc'),
(1130, 5, 2, 61, '9', 'P.O. - Ataikula\r\nDist. - Pabna\r\nBangladesh\r\n	\r\n	ataikula@pubalibankbd.com ', 'abc'),
(1131, 5, 2, 13, '9', 'Chapai Nawabgonj\r\nP.O. - Nawabgonj\r\nDist. - Nawabgonj\r\nBangladesh 	880 781 55431\r\n	chapaingonj@pubalibankbd.com ', 'abc'),
(1132, 5, 2, 50, '9', 'Shankar Gobindachy Road(Nikabazar)\r\nNatore Sadar\r\nP.O. - Natore\r\nDist. - Natore 	880 771 6815\r\n	natore@pubalibankbd.com ', 'abc'),
(1133, 5, 2, 63, '9', 'Chand Super Market\r\nTarash College Compound\r\nP.O. - Tarash\r\nDist. - Sirajgonj 	880 751 7528/56220\r\n	tarash@pubalibankbd.com ', 'abc'),
(1134, 5, 2, 50, '9', 'Kaligonj Bazar\r\nP.O. - Kaligonj\r\nDist. - Natore\r\nBangladesh 	\r\n	kushumbi@pubalibankbd.com ', 'abc'),
(1135, 5, 2, 12, '9', 'Station Road, Boalia\r\nP.O. - Ghoramara\r\nDist. - Rajshahi\r\nBangladesh 	8627343\r\n	rajnewmarket@pubalibankbd.com ', 'abc'),
(1136, 5, 2, 12, '9', 'Chawktola\r\nP.O. - Moharajpur\r\nDist. - Nawabgonj\r\nBangladesh 	\r\n	moharajpur@pubalibankbd.com ', 'abc'),
(1137, 5, 2, 61, '9', 'Tebunia Bazar\r\nP.O. - Tebunia\r\nPabna Sadar\r\nDist. - Pabna 	880 731 6175\r\n	maligacha@pubalibankbd.com ', 'abc'),
(1138, 5, 2, 63, '9', 'Gopalpur Bottola Bazar\r\nP.O. - Betil\r\nDist. - Sirajgonj\r\nBangladesh 	880 751 73891\r\n	khamargram@pubalibankbd.com ', 'abc'),
(1139, 5, 2, 12, '9', 'Station Road\r\nBISIC Silk Factory Compound\r\nP.O. - Ghoramara\r\nDist. - Rajshahi 	880 721 774957\r\n	sericulture@pubalibankbd.com ', 'abc'),
(1140, 5, 2, 49, '9', 'Mohadevpur\r\nP.O. - Mohadevpur\r\nDist. - Naogaon\r\nBangladesh 	\r\n	mohadebpur@pubalibankbd.com ', 'abc'),
(1141, 5, 2, 61, '9', 'Mridha Super Market\r\nBania Patty\r\nP.O. - Pabna Sadar\r\nDist. - Pabna 	880 731 65841\r\n	salgaria@pubalibankbd.com ', 'abc'),
(1142, 5, 2, 12, '9', 'Rajshahi-Natore Biswa Road\r\nKatakhali\r\nP.O. - Shyampur\r\nDist. - Rajshahi 	880 721 750571 ', 'abc'),
(1143, 5, 2, 56, '9', 'Satmatha, New Market\r\nP.O. - Bogra Sadar\r\nDist. - Bogra\r\nBangladesh 	880 51 6123\r\n	satmatha@pubalibankbd.com ', 'abc'),
(1144, 5, 2, 56, '9', 'Murail Bazar\r\nP.O. - Adamdighi\r\nDist. - Bogra\r\nBangladesh 	01917704757\r\n	murail@pubalibankbd.com ', 'abc'),
(1145, 5, 3, 5, '9', '92, Sir Iqbal Road\r\nKhulna Sadar\r\nP.O. - Khulna\r\nDist. - Khulna 	880 41 24589 880 41 722583\r\n	khulna@pubalibankbd.com', 'abc'),
(1146, 5, 3, 42, '9', '28/27, N.S. Road\r\nChamber Bldg., Kushtia Sadar\r\nP.O. - Kushtia\r\nDist. - Kushtia 	880 71 53475\r\n	kushtia@pubalibankbd.com ', 'abc'),
(1147, 5, 3, 5, '9', 'Khan-A.Sabur Road\r\nP.O. - Sonali Jute Mill\r\nDist. - Khulna\r\nBangladesh 	880 41 774359\r\n	mirerdanga@pubalibankbd.com ', 'abc'),
(1148, 5, 3, 42, '9', 'Kustia Pragpur Road\r\nP.O. - Bheramara\r\nDist. - Kushtia\r\nBangladesh 	880 7022 315\r\n	bheramara@pubalibankbd.com ', 'abc'),
(1149, 5, 3, 23, '9', '	Mistrikhana Rd. (Eden Market)\r\nJessore Sadar\r\nP.O. - Jessore\r\nDist. - Jessore 	880 421 73940 880 421 5272\r\n	jessore@pubalibankbd.com ', 'abc'),
(1150, 5, 3, 36, '9', 'Madrasha Road\r\nP.O. - Mongla\r\nDist. - Bagerhat\r\nBangladesh 	880 4658 503\r\n	mongla@pubalibankbd.com ', 'abc'),
(1151, 5, 3, 5, '9', '7, K.D.A. Comm. Area\r\nKhulna Sadar\r\nP.O. - Khulna\r\nDist. - Khulna 	880 41 720437\r\n	ujr@pubalibankbd.com ', 'abc'),
(1152, 5, 3, 5, '9', 'P.O. - Batiaghata\r\nDist. - Khulna\r\nBangladesh\r\n	\r\n	batiaghata@pubalibankbd.com ', 'abc'),
(1153, 5, 3, 26, '9', '181, Magura Road\r\nJhenidah Sadar\r\nP.O. - Jhenidah\r\nDist. - Jhenaidah 	880 451 2437\r\n	jhenaidah@pubalibankbd.com ', 'abc'),
(1154, 5, 3, 36, '9', 'Main Road\r\nP.O. - Bagerhat\r\nDist. - Bagerhat\r\nBangladesh 	880 401 2496\r\n	bagerhat@pubalibankbd.com ', 'abc'),
(1155, 5, 3, 54, '9', 'Ferryghat Road\r\nBara Bazar\r\nP.O. - Chuadanga\r\nDist. - Chuadanga 	880 761 2521\r\n	chuadanga@pubalibankbd.com ', 'abc'),
(1156, 5, 3, 43, '9', '	Satkhira Sadar\r\nBara Bazar Road\r\nP.O. - Satkhira\r\nDist. - Satkhira 	880 471 3493\r\n	satkhira@pubalibankbd.com ', 'abc'),
(1157, 5, 3, 64, '9', 'Narail-Jessore Road\r\nNarail Sadar\r\nP.O. - Narail\r\nDist. - Narail 	880 481 561\r\n	narail@pubalibankbd.com', 'abc'),
(1158, 5, 3, 40, '9', 'Main Road\r\nMeherpur Sadar\r\nP.O. - Meherpur\r\nDist. - Meherpur 	880 791 481\r\n	meherpur@pubalibankbd.com ', 'abc'),
(1159, 5, 3, 55, '9', 'Syed Ator Ali Road\r\nMagura Sadar\r\nP.O. - Magura\r\nDist. - Magura 	880 611 2520\r\n	magura@pubalibankbd.com ', 'abc'),
(1160, 5, 3, 54, '9', 'Saratgonj Bazar\r\nP.O. - Saratgonj\r\nDist. - Chuadanga\r\nBangladesh 	\r\n	saratgonj@pubalibankbd.com ', 'abc'),
(1161, 5, 3, 5, '9', '30, BIDC Road\r\nP.O. - Khalishpur\r\nDist. - Khulna\r\nBangladesh 	880 41 760637\r\n	khalishpur@pubalibankbd.com ', 'abc'),
(1162, 5, 3, 5, '9', '	Khan - A - Sabur Road\r\nP.O. - Daulatpur\r\nDist. - Khulna\r\nBangladesh 	880 41 762832\r\n	daulatpurkln@pubalibankbd.com ', 'abc'),
(1163, 5, 3, 54, '9', 'P.O. - Alukdia\r\nDist. - Chuadanga\r\nBangladesh\r\n	880 761 2860\r\n	alukdia@pubalibankbd.com ', 'abc'),
(1164, 5, 3, 5, '9', 'P.O. - Kayer Bazar\r\nDist. - Khulna\r\nBangladesh\r\n	\r\n	kayerbazar@pubalibankbd.com ', 'abc'),
(1165, 5, 3, 5, '9', 'Sher - E - Bangla Road\r\nSonadanga\r\nP.O. - Khulna\r\nDist. - Khulna 	880 41 720771\r\n	shaikhpara@pubalibankbd.com ', 'abc'),
(1166, 5, 3, 23, '9', 'Khulna-Jessore Rd.\r\nP.O. - Noapara\r\nDist. - Jessore\r\nBangladesh 	880 4222 415\r\n	noaparajsr@pubalibankbd.com ', 'abc'),
(1167, 5, 3, 23, '9', 'Hera Supper Market\r\nP.O.-Benapole\r\nP.S. - Benapole\r\nDist.-Jessore 	04228-76140\r\n	benapole@pubalibankbd.com ', 'abc'),
(1168, 5, 3, 23, '9', 'Sonali Complex\r\nPS AND Upazilla : Sharsha\r\n\r\nDist: Jessore 	\r\n	navaron@pubalibankbd.com ', 'abc'),
(1169, 5, 6, 24, '9', 'Club Road (C.B Road)\r\nP.O. - Pirojpur Sadar\r\nDist. - Pirojpur\r\nBangladesh 	880 461 316\r\n	pirojpur@pubalibankbd.com ', 'abc'),
(1170, 5, 6, 15, '9', '18, K.B. Hemayetuddin Road\r\nP.O. - Barisal Sadar\r\nDist. - Barisal\r\nBangladesh 	880 431 52383, 54229 880 431 56863\r\n	barisal@pubalibankbd.com ', 'abc'),
(1171, 5, 6, 17, '9', '	Natun Bazar\r\nSadar Road\r\nP.O. - Patuakhali\r\nDist. - Patuakhali 	880 441 62482\r\n	patuakhali@pubalibankbd.com ', 'abc'),
(1172, 5, 6, 22, '9', '	Thana Road\r\nP.O - Rajapur\r\nDist. - Jhalukhati\r\nBangladesh 	\r\n	rajapur@pubalibankbd.com', 'abc'),
(1173, 5, 6, 24, '9', 'Sadar Road, Nazipur\r\nP.O. - Nazirpur\r\nDist. - Pirojpur\r\nBangladesh 	\r\n	nazirpur@pubalibankbd.com ', 'abc'),
(1174, 5, 6, 15, '9', 'Khunna Gobindopur\r\nUpzila Bhaban, Hizla\r\nP.O. - Barjalia\r\nDist. - Barisal 	\r\n	hizla@pubalibankbd.com ', 'abc'),
(1175, 5, 6, 17, '9', 'Kalaiya Bandar\r\nP.O. - Kalaiya Bandar\r\nDist. - Patuakhali\r\nBangladesh 	880 441 4422 319\r\n	kalaiya@pubalibankbd.com ', 'abc'),
(1176, 5, 6, 25, '9', 'Thana Road\r\nP.O. - Babugonj\r\nDist. - Barguna\r\nBangladesh 	880-886-281\r\n	bamna@pubalibankbd.com ', 'abc'),
(1177, 5, 6, 22, '9', 'Mosjid Road\r\nKathalia Bandar\r\nP.O. - Kathalia\r\nDist. - Jhalukhati 	880 496 221 09\r\n	', 'abc'),
(1178, 5, 6, 16, '9', 'Mahajan Patty\r\nSadar Road\r\nP.O. - Bhola\r\nDist. - Bhola 	880 491 55555\r\n	bhola@pubalibankbd.com ', 'abc'),
(1179, 5, 6, 15, '9', 'Babugonj High School Road\r\nP.O. - Babugonj\r\nDist. - Barisal\r\nBangladesh 	\r\n	babugonj@pubalibankbd.com ', 'abc'),
(1180, 5, 6, 25, '9', '	Bazar Road\r\nP.O. - Barguna\r\nDist. - Barguna\r\nBangladesh 	880 446 350\r\n	barguna@pubalibankbd.com ', 'abc'),
(1181, 5, 6, 15, '9', 'Madhabpasha Bazar\r\nP.O. - Madhabpasha\r\nDist. - Barisal\r\nBangladesh 	\r\n	madabpasha@pubalibankbd.com ', 'abc'),
(1182, 5, 6, 24, '9', '	Sarsina\r\nP.O. - Darus Sunnat\r\nDist. - Pirojpur\r\nBangladesh 	880 0461 286 16 ', 'abc'),
(1183, 5, 6, 22, '9', 'Sattyasram Road (Station Road)\r\nHalima Boarding Complex\r\nP.O. - Jhalakati\r\nDist. - Jhalakati 	880 496 3379\r\n	jhalakati@pubalibankbd.com ', 'abc'),
(1184, 5, 6, 15, '9', 'Patarhat Bandar\r\nP.O. - Mehendigonj\r\nDist. - Barisal\r\nBangladesh 	\r\n	mehendigonj@pubalibankbd.com ', 'abc'),
(1185, 5, 6, 15, '9', 'Bazar Road\r\nP.O. - Barisal Sadar\r\nDist. - Barisal\r\nBangladesh 	880 431 53108\r\n	bazarroad@pubalibankbd.com ', 'abc'),
(1186, 5, 6, 15, '9', '140/1 Sadar Road\r\nBarisal Sadar\r\nDist. - Barishal\r\nBangladesh 	880 431 52646\r\n	shahidminar@pubalibankbd.com ', 'abc'),
(1187, 5, 6, 15, '9', '167, Hospital Road\r\nBarisal Sadar\r\nP.O. - Barisal Sadar\r\nDist. - Barisal 	880 431 53425\r\n	hospitalrd@pubalibankbd.com ', 'abc'),
(1188, 5, 6, 24, '9', 'Vill. Kawrikhara\r\nStation Road, Merhat\r\nP.O. - Kawrikhara\r\nDist. - Pirojpur 	\r\n	mearhat@pubalibankbd.com ', 'abc'),
(1189, 5, 6, 22, '9', '11, Station Road,Upzilla - Nalcity\r\nPourashava - Nalcity\r\nDist. - Jhalakati\r\nBangladesh 	01937404326\r\n	nalcity@pubalibankbd.com ', 'abc'),
(1190, 5, 6, 24, '9', 'Mothbaria\r\nPirojpur\r\n\r\nPirojpur 	01917704764\r\n	MATBARIA@PUBALIBANKBD.COM ', 'abc'),
(1191, 5, 4, 44, '9', 'Station Road\r\nSunamgonj Sadar\r\nP.O. - Sunamgonj\r\nBangladesh 	880 871 55320\r\n	Sunamgonj@pubalibankbd.com ', 'abc'),
(1192, 5, 4, 14, '9', 'Bandar Bazar\r\nP.O. - Sylhet\r\nDist. - Sylhet\r\nBangladesh 	880 821 714029\r\n	sylhet@pubalibankbd.com ', 'abc'),
(1193, 5, 4, 44, '9', 'Noarai\r\nP.O. - Chhatak Cement Factory\r\nDist. - Sunamgonj\r\nBangladesh 	880 8227 ext. 225-169 880 8723 ext.225-169\r\n	chhatak@pubalibankbd.com ', 'abc'),
(1194, 5, 4, 14, '9', 'Dak-Bangla Road\r\nP.O. - Zakigonj\r\nDist. - Sylhet\r\nBangladesh 	880 821 713843-5\r\n	zakigonj@pubalibankbd.com ', 'abc'),
(1195, 5, 4, 14, '9', 'Tajpur Kadamtali\r\nP.O. - Tajpur\r\nDist. - Sylhet\r\nBangladesh 	880 8222 88051\r\n	tajpur@pubalibankbd.com ', 'abc'),
(1196, 5, 4, 14, '9', 'Biswanath Bazar\r\nP.O. - Biswanath\r\nDist. - Sylhet\r\nBangladesh 	880 8224 88090\r\n	biswanath@pubalibankbd.com ', 'abc'),
(1197, 5, 4, 14, '9', 'Beani Bazar Main Road\r\nP.O. - Beani Bazar\r\nDist. - Sylhet\r\nBangladesh 	880 8223 88181\r\n	bbazar@pubalibankbd.com', 'abc'),
(1198, 5, 4, 44, '9', 'Banik Super Market\r\nP.O. - Jagannathpur\r\nDist. - Sunamgonj\r\nBangladesh 	880 8727 88122\r\n	jagannathpur@pubalibankbd.com ', 'abc'),
(1199, 5, 4, 14, '9', 'Fenchugonj Bazar Road\r\nP.O. - Fenchugonj\r\nDist. - Sylhet\r\nBangladesh 	880 8226 88029\r\n	fenchugonj@pubalibankbd.com ', 'abc'),
(1200, 5, 4, 14, '9', 'Gowainghat\r\nP.O. - Gowainghat\r\nDist. - Sylhet\r\nBangladesh 	\r\n	gowainghat@pubalibankbd.com ', 'abc'),
(1201, 5, 4, 44, '9', 'Gobindagonj Natun Bazar\r\nP.O. - Gobindagonj\r\nDist. - Sunamgonj\r\nBangladesh 	\r\n	gobindagonj@pubalibankbd.com ', 'abc'),
(1202, 5, 4, 14, '9', 'Dhaka-Sylhet Road\r\nP.O. - Goalabazar\r\n(Bishwa Road)\r\nDist. - Sylhet 	880 8222 87025\r\n	gowalabazar@pubalibankbd.com ', 'abc'),
(1203, 5, 4, 14, '9', 'Ambarkhana, Dargagate\r\nP.O. - Sylhet\r\nDist. - Sylhet\r\nBangladesh 	880 821 714208, 710649 880 821 714208\r\n	dargagate@pubalibankbd.com ', 'abc'),
(1204, 5, 4, 14, '9', 'Dakshinbag, Mokambazar\r\nP.O. - South Bhadeshwar\r\nDist. - Sylhet\r\nBangladesh 	880 821 719899-11\r\n	mokambazar@pubalibankbd.com ', 'abc'),
(1205, 5, 4, 14, '9', 'Kalijuri\r\nP.O. - Budhbari Bazar\r\nDist. - Sylhet\r\nBangladesh 	880 8227 85213\r\n	budhbari@pubalibankbd.com ', 'abc'),
(1206, 5, 4, 14, '9', 'P.O. - Dorbost\r\nDist. - Sylhet\r\nBangladesh\r\n	\r\n	dorbost@pubalibankbd.com ', 'abc'),
(1207, 5, 4, 14, '9', 'Kaligonj Bazar\r\nP.O. - Ichhamoti\r\nDist. - Sylhet\r\nBangladesh 	06823-51032\r\n	kaligonjsyl@pubalibankbd.com ', 'abc'),
(1208, 5, 4, 44, '9', 'P.O. - Sachna bazar\r\nDist. - Sunamgonj\r\nBangladesh\r\n	\r\n	jamalgonj@pubalibankbd.com ', 'abc'),
(1209, 5, 4, 14, '9', 'Ashirgonj Bazar\r\nP.O. - Ashirgonj Bazar\r\nDist. - Sylhet\r\nBangladesh 	\r\n	asirgonj@pubalibankbd.com ', 'abc'),
(1210, 5, 4, 14, '9', 'Moulvibazar Road\r\nSouth Surma\r\nDist. - Sylhet\r\nBangladesh 	880 821 716105\r\n	baraikandi@pubalibankbd.com ', 'abc'),
(1211, 5, 4, 44, '9', 'P.O. - Pagla Bazar\r\nDist. - Sunamgonj\r\nBangladesh\r\n	\r\n	paglabazar@pubalibankbd.com ', 'abc'),
(1212, 5, 4, 14, '9', 'Kalighat Road\r\nP.O. - Sylhet Sadar\r\nDist. - Sylhet\r\nBangladesh 	880 821 714660\r\n	kalighat@pubalibankbd.com ', 'abc'),
(1213, 5, 4, 14, '9', 'Zindabazar Road\r\nSylhet Sadar\r\nDist. - Sylhet\r\nBangladesh 	880 821 718554\r\n	mcollege@pubalibankbd.com ', 'abc'),
(1214, 5, 4, 14, '9', 'P.O. - Chandarpur\r\nDist. - Sylhet\r\nBangladesh\r\n	\r\n	chandarpur@pubalibankbd.com ', 'abc'),
(1215, 5, 4, 14, '9', 'Fathepur\r\nP.O. - Mirgonj Bazar\r\nDist. - Sylhet\r\nBangladesh 	\r\n	mirgonj@pubalibankbd.com ', 'abc'),
(1216, 5, 4, 14, '9', 'Majgaon\r\nP.O. - Singerkatch Bazar\r\nDist. - Sylhet\r\nBangladesh 	\r\n	singerkatch@pubalibankbd.com ', 'abc'),
(1217, 5, 4, 14, '9', 'Pathantula\r\nP.O. - Sylhet Sadar\r\nDist. - Sylhet\r\nBangladesh 	880 821 716575\r\n	pathantula@pubalibankbd.com ', 'abc'),
(1218, 5, 4, 44, '9', 'Derai Bazar\r\nP.O. - Derai\r\nDist. - Sunamgonj\r\nBangladesh 	\r\n	derai@pubalibankbd.com ', 'abc'),
(1219, 5, 4, 44, '9', 'P.O. - Rasulgonj\r\nDist. - Sunamgonj\r\nBangladesh\r\n	\r\n	rasulgonj@pubalibankbd.com ', 'abc'),
(1220, 5, 4, 44, '9', 'Jauwa Bazar\r\nDist. - Sunamgonj\r\nBangladesh\r\n	\r\n	jauwa@pubalibankbd.com ', 'abc'),
(1221, 5, 4, 44, '9', 'P.O. - Sreeramishi\r\nDist. - Sunamgonj\r\nBangladesh\r\n	\r\n	sreeramshi@pubalibankbd.com ', 'abc'),
(1222, 5, 4, 14, '9', 'Daspaika Bazar\r\nP.O. - Daulatpur\r\nDist. - Sylhet\r\nBangladesh 	\r\n	daspaika@pubalibankbd.com', 'abc'),
(1223, 5, 4, 14, '9', '	Dargah Mahalla\r\n(South Dargah Road)\r\nDist. - Sylhet\r\nBangladesh 	880 821 717301\r\n	stdsylhet@pubalibankbd.com ', 'abc'),
(1224, 5, 4, 14, '9', 'Airport Road\r\nP.O. - Sylhet Sadar\r\nDist. - Sylhet\r\nBangladesh 	880 821 721498\r\n	chowkidekhi@pubalibankbd.com ', 'abc'),
(1225, 5, 4, 14, '9', 'Jokigonj Road\r\nP.O. - Golapgonj\r\nDist. - Sylhet\r\nBangladesh 	880 8227 88208\r\n	golapgonj@pubalibankbd.com ', 'abc'),
(1226, 5, 4, 14, '9', 'Kadamtali Point\r\nP.O. - Kadamtali\r\nDist. - Sylhet\r\nBangladesh 	880 821 713107\r\n	kadamtalisyl@pubalibankbd.com ', 'abc'),
(1227, 5, 4, 14, '9', 'Turukkhola\r\nSouth Surma\r\nP.O. - Renga Daudpur\r\nDist. - Sylhet 	\r\n	chowbazar@pubalibankbd.com ', 'abc'),
(1228, 5, 4, 14, '9', 'Shahi Eidgah Road\r\nP.O. - Sylhet Sadar\r\nDist. - Sylhet\r\nSylhet-3100 	880 821 718299\r\n	shahieidgah@pubalibankbd.com ', 'abc'),
(1229, 5, 4, 14, '9', 'Shahjalal Upashahar Road\r\nSylhet Sadar\r\nDist. - Sylhet\r\nBangladesh 	880 821 710921\r\n	shahjalalup@pubalibankbd.com ', 'abc'),
(1230, 5, 4, 45, '9', 'Post Office Road\r\nP.O. - Habigonj\r\nDist. - Habigonj\r\nBangladesh 	880 831 2337\r\n	habigonj@pubalibankbd.com ', 'abc'),
(1231, 5, 4, 46, '9', '	College Road\r\nP.O. - Sreemongal\r\nDist. - Moulvibazar\r\nBangladesh 	880 8626 501\r\n	sreemongal@pubalibankbd.com', 'abc'),
(1232, 5, 4, 45, '9', 'Chunarughat\r\nDist. - Habigonj\r\nBangladesh\r\n	880 831 3349/3\r\n	chunarughat@pubalibankbd.com ', 'abc'),
(1233, 5, 4, 45, '9', '	P.O. - Baniachong\r\nNorth East\r\nDist. - Habigonj\r\nBangladesh 	880 831 3346/4\r\n	baniachong@pubalibankbd.com ', 'abc'),
(1234, 5, 4, 46, '9', 'P.O. - Baralekha\r\nDist. - Moulvibazar\r\nBangladesh\r\n	\r\n	baralekha@pubalibankbd.com ', 'abc'),
(1235, 5, 4, 45, '9', 'P.O. - Nabigonj\r\nDist. - Habigonj\r\nBangladesh\r\n	880 831 3383/8\r\n	nabigonj@pubalibankbd.com ', 'abc'),
(1236, 5, 4, 46, '9', 'P.O. - Shamshernagar\r\nDist. - Moulvibazar\r\nBangladesh\r\n	880 861 53012/17\r\n	shamshernagar@pubalibankbd.com ', 'abc'),
(1237, 5, 4, 46, '9', 'P.O. - Kazaldhara\r\nDist. - Moulvibazar\r\nBangladesh\r\n	\r\n	brahmanbazar@pubalibankbd.com ', 'abc'),
(1238, 5, 4, 45, '9', 'P.O. - Madhabpur\r\nDist. - Habigonj\r\nBangladesh\r\n	880 8327 8330\r\n	madhabpur@pubalibankbd.com ', 'abc'),
(1239, 5, 4, 46, '9', 'P.O. - Keramotnagar\r\nDist. - Moulvibazar\r\nBangladesh\r\n	880 861 53012/12\r\n	kamolgonj@pubalibankbd.com', 'abc'),
(1240, 5, 4, 46, '9', 'P.O. - Juri\r\nDist. - Moulvibazar\r\nDist. - Moulvibazar\r\nBangladesh 	880 861 53080/34\r\n	juri@pubalibankbd.com ', 'abc'),
(1241, 5, 4, 46, '9', 'P.O. - Moulvibazar\r\nDist. - Moulvibazar\r\nBangladesh\r\n	880 861 52270\r\n	wapdagate@pubalibankbd.com ', 'abc'),
(1242, 5, 4, 45, '9', 'P.O. - Syedpur Bazar\r\nDist. - Habigonj\r\nBangladesh\r\n	\r\n	syedpurbazar@pubalibankbd.com', 'abc'),
(1243, 5, 4, 45, '9', 'P.O. - Dharmaghar\r\nP.S. - Madhobpur\r\nDist. - Hobigonj\r\nBangladesh 	\r\n	dharmaghar@pubalibankbd.com ', 'abc'),
(1244, 5, 4, 46, '9', 'Adampur Bazar\r\nP.O. - Adampur\r\nDist. - Moulvibazar\r\nBangladesh 	\r\n	adampur@pubalibankbd.com ', 'abc'),
(1245, 5, 4, 46, '9', 'Moulvibazar Sadar\r\nCentral Road\r\nP.O. - Moulvibazar\r\nDist. - Moulvibazar 	880 861 52208\r\n	moulvibazar@pubalibankbd.com ', 'abc'),
(1246, 5, 4, 45, '9', 'Ashampara Bazar\r\nP.O. - Gazipur\r\nDist. - Habigonj\r\nBangladesh 	\r\n	gazipur@pubalibankbd.com ', 'abc'),
(1247, 5, 4, 46, '9', 'Dakshinbagh\r\nP.O. - Dakshinbagh\r\nDist. - Moulvibazar\r\nBangladesh 	880 861 53080/43\r\n	dakshinbagh@pubalibankbd.com ', 'abc'),
(1248, 5, 4, 45, '9', 'P.O.- Chunarughat\r\nP.S.- Sayestagonj\r\nDist. - Habigonj\r\nBangladesh 	880 831 3387/24\r\n	shaistagonj@pubalibankbd.com ', 'abc'),
(1249, 5, 4, 45, '9', 'P.O. - Habigonj\r\nDist. - Habigonj\r\nBangladesh\r\n	880 831 2542\r\n	tmr@pubalibankbd.com ', 'abc'),
(1250, 5, 4, 45, '9', 'P.O. - Deopara\r\nDist. - Habigonj\r\nBangladesh\r\n	\r\n	gajnaipur@pubalibankbd.com ', 'abc'),
(1251, 5, 4, 45, '9', 'Sutang Bazar\r\nP.O. - Suraboy\r\nDist. - Habigonj\r\nBangladesh 	\r\n	sutang@pubalibankbd.com ', 'abc'),
(1252, 5, 4, 45, '9', 'Habigonj(Court Station Road)\r\nBar Library Bhaban\r\nP.O. - Habigonj\r\nDist. - Habigonj 	880 831 2585\r\n	barlibhobi@pubalibankbd.com ', 'abc'),
(1253, 5, 4, 45, '9', 'Guningonj Bazar\r\nP.O. - Jatrapasha\r\nSouth West Baniachong\r\nDist. - Habigonj 	\r\n	guningonj@pubalibankbd.com ', 'abc'),
(1254, 5, 4, 45, '9', 'P.O. - Ajmirigonj\r\nDist. - Habigonj\r\nBangladesh\r\n	\r\n	ajmirigonj@pubalibankbd.com ', 'abc'),
(1255, 5, 4, 46, '9', 'P.O. - Moulvibazar\r\nDist. - Moulvibazar\r\nBangladesh\r\n	880 861 52209\r\n	chowmuhana@pubalibankbd.com ', 'abc'),
(1256, 5, 4, 14, '9', 'Upzilla- Beani Bazar\r\nDist. - Sylhet\r\n\r\n	08223-82146\r\n	baroigram@pubalibankbd.com ', 'abc'),
(1257, 5, 4, 46, '9', 'Sherpur Bazar, Moulovibazar\r\nDist. -Moulovibazar\r\n\r\n	\r\n	sherpurbazar@pubalibankbd.com ', 'abc'),
(1258, 5, 4, 46, '9', 'P.O.- Barkaton\r\nP.S.-Moulovibazar\r\nDist.-Moulovibazar\r\n	\r\n	rabirbazar@pubalibankbd.com ', 'abc'),
(1259, 5, 4, 14, '9', 'Upazilla : Kanaighat\r\nUnion : Gachhbari Bazar\r\nP.O.-Gachhbari Bazar\r\nDist. -Sylhet 	\r\n	gachhbari@pubalibankbd.com ', 'abc'),
(1260, 5, 4, 14, '9', 'Union - Tengra Bazar\r\nUpzilla - Rajnagar\r\n\r\n	01917-704810\r\n	tengrabazar@pubalibankbd.com ', 'abc'),
(1261, 5, 4, 14, '9', 'Union - Barhal\r\nUpzilla - Zakirgong\r\nDist. - Sylhet\r\nBangladesh 	01937404329\r\n	shahgali@pubalibankbd.com ', 'abc'),
(1262, 5, 4, 14, '9', 'Union - Dhaka Dakshin\r\nP.O - Jalalpur,Mouza Sabdalpur\r\nDist. - Sylhet\r\nBangladesh 	01937404330\r\n	dhkdakshin@pubalibankbd.com ', 'abc'),
(1263, 5, 4, 14, '9', 'Union - Jalalpur\r\nUpzilla - South Surma\r\nDist. - Sylhet\r\nBangladesh 	01937404331\r\n	jalalpur@pubalibankbd.com ', 'abc'),
(1264, 5, 4, 46, '9', '	Union - Mostafapur\r\nP.O. - Moulavibazar\r\nDist. - Moulavibazar\r\nBangladesh 	01937404332\r\n	jogidahar@pubalibankbd.com ', 'abc'),
(1265, 5, 4, 14, '9', 'Lala Bazar\r\nSylhet\r\nDist. - Sylhet\r\nBangladesh 	01912706710\r\n	LALABAZAR@PUBALIBANKBD.COM ', 'abc'),
(1266, 5, 4, 14, '9', 'Shah Paran Gate\r\nSylhet\r\nDist. - Sylhet\r\nBangladesh 	01715643607\r\n	SHAHPORAN@PUBALIBANKBD.COM ', 'abc'),
(1267, 5, 4, 45, '9', 'Putijuri branch\r\n\r\nDIST:Habigonj\r\nBangladesh 	\r\n	putijuri@pubalibankbd.com ', 'abc'),
(1268, 5, 12, 72, '9', '	Boro Mosjid Road\r\nP.O. - Nilphamari Sadar\r\nDist. - Nilphamari\r\nBangladesh 	880 551 409\r\n	nilphamari@pubalibankbd.com ', 'abc'),
(1269, 5, 12, 71, '9', 'Street No.1\r\nCentral Road\r\nP.O. - Rangpur Sadar\r\nDist. - Rangpur 	880 521 62246\r\n	rangpur@pubalibankbd.com ', 'abc'),
(1270, 5, 12, 73, '9', 'Maldhapatty\r\nP.O. - Dinajpur Sadar\r\nDist. - Dinajpur\r\nBangladesh 	880 531 65137\r\n	dinajpur@pubalibankbd.com ', 'abc'),
(1271, 5, 12, 72, '9', 'Shaheed Dr. Zikrul Hoque Road\r\nP.O. - Saidpur\r\nDist. - Nilphamari\r\nBangladesh 	880 552 2167\r\n	saidpur@pubalibankbd.com ', 'abc'),
(1272, 5, 12, 74, '9', 'Chandrakhana (Upazilla complex)\r\nP.O. - Fulbari\r\nDist. - Kurigram\r\nBangladesh 	\r\n	fulbari@pubalibankbd.com ', 'abc'),
(1273, 5, 12, 73, '9', 'Abdul Jabbar Road, Natun Bazar\r\nP.O. - Parbatipur\r\nDist. - Dinajpur\r\nBangladesh 	880 5334 240\r\n	parbotipur@pubalibankbd.com ', 'abc'),
(1274, 5, 12, 74, '9', 'Ghospara\r\nP.O. - Kurigram\r\nDist. - Kurigram\r\nBangladesh 	880 581 475\r\n	kurigram@pubalibankbd.com ', 'abc'),
(1275, 5, 12, 76, '9', 'Banga Bandhu Sarak\r\nThakurgaon Town\r\nP.O. - Thakurgaon Sadar\r\nDist. - Thakurgaon 	880 561 52065\r\n	thakurgaon@pubalibankbd.com ', 'abc'),
(1276, 5, 12, 71, '9', 'Shapla Chattar\r\nP.O. - Rangpur Sadar\r\nDist. - Rangpur\r\nBangladesh 	880 521 62572\r\n	shaplachattar@pubalibankbd.com ', 'abc'),
(1277, 5, 12, 76, '9', 'Thakurgaon Road (Bazar)\r\nP.O. - Thakurgaon Road\r\nDist. - Thakurgaon\r\nBangladesh 	880 561 53617\r\n	thakurgaonrd@pubalibankbd.com ', 'abc'),
(1278, 5, 12, 75, '9', 'Vill. - Uttar Ghanashayam\r\nP.O. - Tushbhander\r\nDist. - Lalmonirhat\r\nBangladesh 	\r\n	tushbhander@pubalibankbd.com ', 'abc'),
(1279, 5, 12, 73, '9', 'P.O. - Fulbari\r\nDist. - Dinajpur\r\nBangladesh\r\n	\r\n	fulbaridij@pubalibankbd.com ', 'abc'),
(1280, 5, 12, 71, '9', 'Barna Sajya Bhaban\r\nP.O. - Rangpur Sadar\r\nDist. - Rangpur\r\nBangladesh 	880 521 64894\r\n	stationroad@pubalibankbd.com ', 'abc'),
(1281, 5, 1, 8, '17', 'Electricity Bhaban,\r\n1, Abdul Ghani Road Dhaka.  \r\n Phone : 9557963', 'abc'),
(1282, 5, 1, 8, '17', '32, North South Road Siddique Bazar Dhaka-1000. Phone : 9558731', 'abc'),
(1283, 5, 1, 8, '17', '	\r\n\r\n186, Motijheel Inner Circular Road Dhaka-1000. Phone : 7100204, 7100277', 'abc'),
(1284, 5, 1, 8, '17', '	\r\n\r\n48-50, Captain Bazar P.O. Wari Dhaka-1000. Phone : 7122518', 'abc'),
(1285, 5, 1, 8, '17', '	\r\n\r\nFulbaria, P.S. Ramna,  Dhaka-1000.\r\nPhone : 9557319', 'abc'),
(1286, 5, 1, 8, '17', '42 / 4, Hatkhola Road Dhaka-1200. \r\nPhone : 9569420', 'abc'),
(1287, 5, 1, 8, '17', '38, Banga Bandhu Avenue Dhaka-1000. Phone : 9556106', 'abc'),
(1288, 5, 1, 8, '17', '	\r\n\r\n22, Purana Paltan (HBFC) Dhaka-1000. Phone : 9562531, 9555990', 'abc'),
(1289, 5, 1, 8, '17', '16, B.C.C. Road Wari Dhaka-1203. \r\nPhone : 7116725', 'abc'),
(1290, 5, 1, 8, '17', 'WAPDA Bhaban, Motijheel, C/A Dhaka-1000.  \r\nPhone : 9552294', 'abc'),
(1291, 5, 1, 8, '17', 'Dhaka Medical College Hospital Dhaka-1000 Phone : 503350', 'abc'),
(1292, 5, 1, 8, '17', '69/1, Purana Paltan Line V.I.P Road Dhaka-1000 Phone : 9333822', 'abc'),
(1293, 5, 1, 8, '17', '3, Kamalapur Bazar Road Dhaka-1217 Phone : 9333417', 'abc'),
(1294, 5, 1, 8, '17', '34/35, DIT Industrial Area Postagola Dhaka Phone : 7410871', 'abc'),
(1295, 5, 1, 8, '17', '73/A, LalMohan Shah Street Dalikhal, Po-Sadarghat Dhaka Phone : 7116101', 'abc'),
(1296, 5, 1, 8, '17', '59/1, Tipu Sultan Road Dhaka\r\nPhone : 7120630', 'abc'),
(1297, 5, 1, 8, '17', '54/1, Karimullaharbagh, Postaghola Dhaka-1204 Phone : 7411112', 'abc'),
(1298, 5, 1, 8, '17', 'Mugdapara\r\n	\r\n\r\nPo-Bashaboo, Dhaka-1214\r\nPhone : 9332108', 'abc'),
(1299, 5, 1, 8, '17', 'Shampur, Dhaka Phone : 240964', 'abc'),
(1300, 5, 1, 8, '17', 'Sarulia, Demra Dhaka Phone : 7400061', 'abc'),
(1301, 5, 1, 8, '17', 'Matuail, P.S- Shympur, Dist. Dhaka, \r\nTel: 7512820-23 Ext 8302-3 ', 'abc'),
(1302, 5, 1, 8, '17', '1/A, D.I.T Eztansion Road Dhaka-1000 Phone : 409103', 'abc'),
(1303, 5, 1, 8, '17', 'Abul Hasnat Road   \r\n		\r\n\r\n17, S.C.C. Road Dhaka.  Phone : 7314857', 'abc'),
(1304, 5, 1, 8, '17', 'Armanitola  \r\n	\r\n\r\n10/11, Sayed Hasan Ali Lane  \r\n Dhaka-1100. Phone : 241903, 239701', 'abc'),
(1305, 5, 1, 8, '17', '11, Champatali Lane Chowk Bazar Dhaka-1211. Phone : 7317464', 'abc'),
(1306, 5, 1, 8, '17', '200/201, water wax road Chowk Bazar, Dhaka-1211. Phone : 7313954', 'abc'),
(1307, 5, 1, 8, '17', '	\r\n\r\n42, Janson road Dhaka\r\n Phone : 7120935', 'abc'),
(1308, 5, 1, 8, '17', '	\r\n\r\n47, B,K, Das Road Farashgong Dhaka-1100. Phone : 7119317', 'abc'),
(1309, 5, 1, 8, '17', 'Gandaria 		110, Destelari Road Dhaka-1204\r\nPhone : 7410061', 'abc'),
(1310, 5, 1, 8, '17', '	74-75 Islampur Road Dhaka-1100\r\n Phone : 236612', 'abc'),
(1311, 5, 1, 8, '17', '	IWTA 		Tarminal Building Sadarghat Dhaka\r\nPhone : 7113197', 'abc'),
(1312, 5, 1, 8, '17', '6, LaxmiBazar Dhaka Phone : 7115017', 'abc'),
(1313, 5, 1, 8, '17', '162, Mitford Road Dhaka\r\nPhone : 7316126', 'abc'),
(1314, 5, 1, 8, '17', '48, Mokimkatra Dhaka Phone : 7313501', 'abc'),
(1315, 5, 1, 8, '17', '49-51 Nowabgong Road,\r\nDhaka-1211\r\nPhone : 508740', 'abc'),
(1316, 5, 1, 8, '17', '	4, Nazim uddin Road Lalbag Dhaka \r\nPhone : 246403', 'abc'),
(1317, 5, 1, 8, '17', '93, water wax Road Posta Dhaka-1211', 'abc'),
(1318, 5, 1, 8, '17', 'Sadarghat 		13, Loyal street, Patuatuli, Dhaka', 'abc'),
(1319, 5, 1, 8, '17', '3/10 Jansan Road Victoria Park Dhaka Phone : 7117108', 'abc'),
(1320, 5, 1, 8, '17', 'Zinzira Bazar Karanigonj Dhaka-1310 Phone : 235821', 'abc'),
(1321, 5, 1, 8, '17', 'Urdu Road 	Hazi Abdul Malek mansion Lalbag Dhaka Phone : 7315711', 'abc'),
(1322, 5, 1, 8, '17', '99, sukrabad Mirpur Road Dhaka-1207 Phone : 9115731', 'abc'),
(1323, 5, 1, 8, '17', 'Dhaka College gate\r\n	\r\n\r\n30, Mirpur Road Dhanmondi\r\nDhaka-1205 Phone : 508204', 'abc'),
(1324, 5, 1, 8, '17', 'Green Super Market Green Road\r\nDhaka-1207 Phone : 9113064', 'abc'),
(1325, 5, 1, 8, '17', '	\r\n\r\nGonosastha kendra\r\n	\r\n\r\nP.O.-Mirzanagar, Upazilla-Savar Dhaka-1350', 'abc'),
(1326, 5, 1, 9, '17', 'PO-Manikgonj, Upozilla-Manikgonj Manikgonj-1800', 'abc'),
(1327, 5, 1, 8, '17', '391-393 New Market Dhaka-1105', 'abc'),
(1328, 5, 1, 8, '17', '	\r\n\r\nKahinur Spinig Mills PO-Nayarhat Upazilla-Savar Dhaka-1350', 'abc'),
(1329, 5, 1, 8, '17', '	\r\n\r\nRajfulbaria, Thana- Savar Dhaka-1347', 'abc'),
(1330, 5, 1, 8, '17', 'Sherabangla Road, Rayer Bazar Dhaka', 'abc'),
(1331, 5, 1, 8, '17', '27/1, Shyamoli Dhaka-1207', 'abc'),
(1332, 5, 1, 9, '17', 'PO-Golidanga Upozilla- Singgal Zilla-Manikgonj-1820', 'abc'),
(1333, 5, 1, 8, '17', 'University Grant commission Bhaban Agargaon, Sher-e-Bangla Nagar\r\nDhaka-1207', 'abc'),
(1334, 5, 1, 8, '17', 'Dhaka university Dhaka-1000\r\nPhone : 506217, 509286', 'abc'),
(1335, 5, 1, 8, '17', '22/6, Dhakeswari Road Palashi Dhaka-1211 Phone : 500822', 'abc'),
(1336, 5, 1, 8, '17', 'Mirpur Section-1 Dhaka-1216\r\nPhone : 9002943', 'abc'),
(1337, 5, 1, 8, '17', '	\r\n\r\nMirpur Section-10 Dhaka-1216\r\n Phone : 9002815', 'abc'),
(1338, 5, 1, 8, '17', '	\r\n\r\n218, Begum Rokeya Sarani West kafrul Dhaka-1207 Phone : 9135744', 'abc'),
(1339, 5, 1, 8, '17', '58, New Eskatin Road Bangla Motor Dhaka-1000 Phone : 9333619', 'abc'),
(1340, 5, 1, 8, '17', 'H-80/1, New Airport Road (2th floor) Chairmanbari Banani Dhaka-1213,\r\nPhone : 604554', 'abc'),
(1341, 5, 1, 8, '17', '	\r\n\r\nBadda, Dhaka-1212  \r\nTel: 8816678 ', 'abc'),
(1342, 5, 1, 8, '17', 'Habib super Market\r\n50, South Gulshan Dhaka-1230\r\nPhone : 601007', 'abc'),
(1343, 5, 1, 8, '17', 'Dhakshin Khan, Uttara Dhaka-1230 Phone : 891445', 'abc'),
(1344, 5, 1, 8, '17', '	\r\n\r\n63/A, Baro Mogbazar Dhaka-1200\r\nPhone : 404871', 'abc'),
(1345, 5, 1, 8, '17', '	\r\n\r\nPoally Biddutayan Board Sadar Dapttar Joarsahara, Khilkhet Dhaka.\r\nPhone : 8911224', 'abc'),
(1346, 5, 1, 8, '17', '	\r\n\r\n64/B, Khilgaon Dhaka-1219\r\n Phone : 9330528', 'abc'),
(1347, 5, 1, 8, '17', '	\r\n\r\n1 no Hazipara DIT road, Rampura Dhaka-1219', 'abc'),
(1348, 5, 1, 8, '17', '95 Siddesari Road Golden Plaza\r\n Dhaka-1217 Phone : 415584', 'abc'),
(1349, 5, 1, 8, '17', '	\r\n\r\n7/I Tajgaon Industrial Area Dhaka-1208 Phone : 8121651', 'abc'),
(1350, 5, 1, 20, '17', '	\r\n\r\nBangladesh Open University Gazipur-1705 Phone : 9801941', 'abc'),
(1351, 5, 1, 20, '17', '	\r\n\r\nPO-BOF, Dist.- Gazipur\r\n Post Code â€“1703 Phone : 52214', 'abc'),
(1352, 5, 1, 20, '17', 'PO & Thana- Kaliakoir Zilla- Gazipur Phone : 52252-13', 'abc'),
(1353, 5, 1, 20, '17', '	\r\n\r\nMouchak Scout Camp Kaliakoir  \r\nGazipur-1751 Phone : 9002815', 'abc'),
(1354, 5, 1, 20, '17', 'PO-Munno Nagar Tongi, Gazipur-1710 Phone : 9801091', 'abc'),
(1355, 5, 5, 27, '17', '106, Khatunganj \r\nPO. Lama Bazar \r\nChittagong-4000. \r\nPhone : 631491, 637647.', 'abc'),
(1356, 5, 5, 27, '17', '1, Ashraf Ali Road, Marium Market, Thana. Kotuali \r\nChittagong-4000. \r\nPhone : 621140.', 'abc'),
(1357, 5, 5, 27, '17', '	Panchlaish,(Hat Hazari Road )\r\nPO-Amin Jute Mills, Chittagong-4211. \r\nPhone : 683507 ', 'abc'),
(1358, 5, 5, 27, '17', '	PO. Jalalabad \r\nThana. Panchlaish \r\nChittagong-4294. \r\nPhone : 683682', 'abc'),
(1359, 5, 5, 27, '17', '	Hat Hazari Road \r\nBangladesh Oxigen \r\nPO. Bayzid Bostami \r\nChittagong-3210. \r\nPhone : 683592. ', 'abc'),
(1360, 5, 5, 27, '17', 'PO.Bayzid Bostami \r\nChittagong-4210. \r\nPhone : 683655. ', 'abc'),
(1361, 5, 5, 27, '17', '	62/263, New Chaktali \r\nPost Box No. 410 \r\nChittagong- 4000. \r\nPhone : 622323. ', 'abc'),
(1362, 5, 5, 27, '17', 'Hat hazari Road \r\nPO. Fatehiabad \r\nThana. Hat Hazari \r\nChittagong-4335. \r\nPhone : 683556. ', 'abc'),
(1363, 5, 5, 27, '17', '	PO. Chittagong University \r\nThana. Hat Hazari \r\nChittagong-4331. \r\nCell : 01713107091.', 'abc'),
(1364, 5, 5, 27, '17', 'PO. Fatickchari \r\nChittagong-4350. \r\nCell : 01713107095. ', 'abc'),
(1365, 5, 5, 27, '17', '	800, Feringee Bazar(1st flr.),Bridge Ghat, \r\nChittagong-4000. \r\nPhone : 630330.', 'abc'),
(1366, 5, 5, 27, '17', '	PO. Rahimpur \r\nThana : Hat Hazari \r\nChittagong-4336.\r\nCell: 01713107092 ', 'abc'),
(1367, 5, 5, 27, '17', 'PO. Gohira \r\nThana. Roujan \r\nChittagong-4343. \r\nCell: 01713107093 ', 'abc'),
(1368, 5, 5, 27, '17', '	PO.& Thana. Hat Hazari \r\nChittagong- 4330. \r\nCell: 01713107098 ', 'abc'),
(1369, 5, 5, 27, '17', '	GPO Box No. 01, 7/A, H.S. Sohrawardy Road(1st flr.)\r\nDosh Building \r\nChittagong-4000. \r\nPhone : 619101. ', 'abc'),
(1370, 5, 5, 27, '17', 'Baklia (Korbaniganj) 	61, Korbaniganj \r\nPost Box No. 573 \r\nChittagong- 4000. \r\nPhone : 630993. ', 'abc'),
(1371, 5, 5, 27, '17', '	PO. Nazir Hat \r\nThana. Hat Hazari \r\nChittagong-4353. \r\nCell: 01713107096 ', 'abc'),
(1372, 5, 5, 27, '17', '38, CDA New Market \r\nPost Box No.671 \r\nChittagong-4000. \r\nPhone : 630446, 634904.', 'abc'),
(1373, 5, 5, 27, '17', '	Azim Plaza, 45, Sadraghat Road, PO. Kotuali \r\nPost Box No. 443 \r\nChittagong-4000. \r\nPhone : 618617.', 'abc'),
(1374, 5, 5, 27, '17', '	Sarkerhat 		PO. Mazapur \r\nThana : Hat Hazari \r\nChittagong-4334. \r\nCell: 01713107097', 'abc'),
(1375, 5, 5, 27, '17', '	94/10, Sayed Ahmed Chow. \r\nTerry Bazar \r\nChittagong-4000. \r\nPhone : 638959', 'abc'),
(1376, 5, 5, 27, '17', 'Kathaltali 		PO. Rangamati, HPO \r\nThana. Kotuali \r\nRangamati-4500. \r\nPhone : (0351)63183. ', 'abc'),
(1377, 5, 5, 51, '17', '	PO.+ Thana. Khagrachari \r\nDist. Khagrachari Hill Tracts. \r\nPhone: (0371) 61813 ', 'abc'),
(1378, 5, 5, 27, '17', 'Tiger pass Road \r\nAmbagan,\r\nThana- Double Muring \r\nChittagong-4000 \r\nPhone : 614555.', 'abc'),
(1379, 5, 5, 27, '17', '	PO-North Kattali, Colonel hat, \r\nPhahartali \r\nChittagong-4202 \r\nPhone : 751522.', 'abc'),
(1380, 5, 5, 27, '17', '	PO-C.U.F.L, \r\nAnwara (Bandar), Karnafuli\r\nChittagong \r\nPhone : 622301-4/7751', 'abc'),
(1381, 5, 5, 27, '17', '	227/B, Dewan Hat \r\nSk. Mujib Road, \r\nThana-Double Muring \r\nChittagong-4000 \r\nPhone : 716223.', 'abc'),
(1382, 5, 5, 27, '17', '	Dry Dock PO-Bandar, \r\nThana-Bandar \r\nChittagong-4205 \r\nPhone : 2500849.', 'abc'),
(1383, 5, 5, 27, '17', '	PO-Export Processing Zone, \r\nThana-Bandar \r\nChittagong-4223. \r\nPhone : 740980. ', 'abc'),
(1384, 5, 5, 27, '17', ' Kadamtali 		PO- Baitul Saraf Market, \r\nThana-Double Muring \r\nChittagong-4204 \r\nPhone : 710279.  ', 'abc'),
(1385, 5, 5, 27, '17', '	PO+Thana-Pahartali \r\nChittagong-4202 \r\nPhone : 751339 ', 'abc'),
(1386, 5, 5, 27, '17', ' Salimpur 		PO-Zafrabad, \r\nThana- Sitacunda \r\nChittagong-4317 \r\nPhone : 751644 ', 'abc'),
(1387, 5, 5, 27, '17', '100, Strand Road,Kulsuma Building \r\nPost Box No. 475, Double Muring PO- Bangla Bazar \r\nChittagong-4000. \r\nphone : 712495.', 'abc'),
(1388, 5, 5, 27, '17', '	PO-Barabkunda \r\nThana-Sitacunda \r\nChittagong-4312 \r\nPhone : (03028) 56108 ', 'abc'),
(1389, 5, 5, 27, '17', '	PO-Kumira \r\nThana-Sitacunda \r\nChittagong-4314. \r\nPhone : 724101-2. ', 'abc'),
(1390, 5, 5, 27, '17', '	\r\n\r\nPO- Kererhat, Thana-Mireswarai \r\nChittagong-4327.\r\nCell: 01713107090 ', 'abc'),
(1391, 5, 5, 27, '17', '	PO-Kamar Ali, Thana- Mireswarai \r\nChittagong-4205.\r\nCell: 01713107088 ', 'abc'),
(1392, 5, 5, 27, '17', '	Post+Thana- Mirsarai \r\nChittagong-4320.\r\nPhone : (03024) 56017 ', 'abc'),
(1393, 5, 5, 27, '17', '	PO+Thana-Sitakunda \r\nChittagong-4310 \r\nPhone : (03028) 56112 ', 'abc'),
(1394, 5, 5, 27, '17', '	PO- Saherkhali, \r\nThana- Mireswarai \r\nChittagong-4320.\r\nCell: 01713107087 ', 'abc'),
(1395, 5, 5, 27, '17', '	PO- Zorargonj, \r\nThana- Mireswarai \r\nChittagong-4324 \r\nCell: 01713107089', 'abc'),
(1396, 5, 5, 27, '17', '	City Corporation Building \r\nChittagong-4370 \r\nPhone : 612686 \r\nCell: 01554312028', 'abc'),
(1397, 5, 5, 27, '17', '	PO-Dohazari \r\nChittagong-4370. \r\nPhone : 635022/03. \r\nCell: 01712845246', 'a'),
(1398, 5, 5, 27, '17', '	234, Jubilee road \r\nTaj Machinaris Market (2nd Floor) \r\nPost Box No- 689 \r\nChittagong-4000 \r\nPhone : 614516 \r\nCell: 01711362043', 'abc'),
(1399, 5, 5, 27, '17', 'PO- Mohara, Thana-Chandgaon \r\nChittagong-4212. \r\nPhone : 670574 \r\nCell: 01820280913', 'abc'),
(1400, 5, 5, 27, '17', '	120, Nur Ahmed road \r\nKazir Dewri \r\nChittagong-4000. \r\nPhone : 618309 \r\nCell: 01815635055', 'abc'),
(1401, 5, 5, 27, '17', '	943, O. R. Nizim Road \r\nThana- Phanchlaish \r\nChittagong-4000 \r\nPhone : 654363 \r\nCell: 01712913980', 'abc'),
(1402, 5, 5, 27, '17', '	Mimi Super Market \r\n1/B Bayazid Bostami Road \r\nChittagong-4210 \r\nPhone : 654902 \r\nCell: 01811808014 ', 'abc'),
(1403, 5, 5, 27, '17', '	85, Muradpur \r\nSiraj Shoping Complex (2nd Floor) \r\nPO- Chowk Bazar \r\nChittagong \r\nPhone : 652870\r\nCell: 018125027781 ', 'abc'),
(1404, 5, 5, 27, '17', '	85, Muradpur \r\nSiraj Shoping Complex (2nd Floor) \r\nPO- Chowk Bazar \r\nChittagong \r\nPhone : 652870\r\nCell: 018125027781 ', 'abc'),
(1405, 5, 5, 27, '17', '	Sk. Farid Market, Chawk Bazar  \r\nMuradpur \r\nChittagong-4000. \r\nPhone : 654118 \r\nCell: 01554317470 ', 'abc'),
(1406, 5, 5, 27, '17', '	PO- Patiya \r\nChittagong-4370 \r\nPhone : (03035) 56238  \r\nCell: 01816808436 ', 'abc'),
(1407, 5, 5, 27, '17', 'PO- NT Mardrasha \r\nChittagong-4360. \r\nCell: 01713107088, 01817753446', 'abc'),
(1408, 5, 5, 27, '17', '184/29, Reazuddin Siddique Road, Reazuddin Bazar \r\nPO Box No. 351 \r\nChittagong-4000. \r\nPhone : 613424 \r\nCell: 01819394798 ', 'abc'),
(1409, 5, 5, 27, '17', '	WASA Building \r\nCDA Avenue Dampara \r\nPost Box No-1029 \r\nChittagong-4000 \r\nPhone : 613073 \r\nCell: 01554328455 ', 'abc'),
(1410, 5, 5, 19, '17', '	PO- Kaptai, \r\nThana-Chandragona \r\nZilla- Rangamati \r\nPost code-4530 \r\nPhone : 03529/298\r\nCell: 01817737830 ', 'abc'),
(1411, 5, 4, 14, '17', 'P.S.-Beani Bazar \r\nDist- Sylhet \r\nPost code- 3170 \r\nPhone- 03799288532\r\nCell: 01714205804', 'abc'),
(1412, 5, 4, 14, '17', '	Post- Badeshwar \r\nP. S.- Golapganj \r\nDist- Sylhet \r\nPost code- 3162 \r\nCell- 01720146655', 'abc'),
(1413, 5, 4, 14, '17', '	Post-Biswanath \r\nDist- Sylhet \r\nPost code- 3130 \r\nPhone- 03891182401\r\nCell: 01716272988', 'abc'),
(1414, 5, 4, 14, '17', 'Post- Nijburunga \r\nP. S.- Balaganj \r\nDist- Sylhet \r\nPost code-3124 \r\nCell- 01711922424', 'abc'),
(1415, 5, 4, 14, '17', 'Chamber Building  \r\n  	Post- Sylhet \r\nP.S. Sylhet Sadar \r\nDist- Sylhet \r\nPost code- 3100 \r\nPhone- 0821 716979 \r\nCell: 01818824375', 'abc'),
(1416, 5, 4, 14, '17', 'Dhakadakshin\r\n  	 	P.S.- Golapganj \r\nDist- Sylhet \r\nPost code- 3161 \r\nPhone- 03799 587210 \r\nCell: 01710880731', 'abc'),
(1417, 5, 4, 14, '17', '	Post- Fenchugang \r\nP.S. - Fenchugang \r\nDist- Sylhet \r\nPost code- 3116 \r\nPhone- 03799088202\r\nCell: 01733865313', 'abc'),
(1418, 5, 4, 14, '17', '	Gongadia Kazirbazar\r\n  	 	P.S.-Beani Bazar \r\nDist- Sylhet \r\nPost code- 3170 \r\nPhone- 03799287593\r\nCell: 01912857988', 'abc'),
(1419, 5, 4, 14, '17', 'Post- Golapganj \r\nP.S. Golapganj \r\nDist- Sylhet \r\nPost code- 3160 \r\nPhone- 0822756473\r\nCell: 01711195475', 'abc'),
(1420, 5, 4, 14, '17', '	Kalibari Bazar\r\n  		Post- Bahadurpur \r\nDist- Sylhet \r\nPost code- 3170 \r\nTel: 03976000523\r\nCell: 01715002998', 'abc'),
(1421, 5, 4, 14, '17', 'P.S. -Kanaighat \r\nDist- Sylhet \r\nPost code- 3180 \r\nPhone- 0823356022 \r\nCell: 01712891704', 'abc'),
(1422, 5, 4, 14, '17', '	Shahjalal Upo Shahar\r\n  	Post- Sylhet \r\nP. S.- Sylhet Sadar \r\nDist- Sylhet \r\nPost code-3100 \r\nPhone- 0821 716195 \r\nCell: 01199511928', 'abc'),
(1423, 5, 4, 14, '17', '	Kazitula\r\n  	Post- Sylhet \r\nP.S. Sylhet Sadar \r\nDist- Sylhet \r\nPost code- 3100 \r\nPhone- 0821 718227 \r\nCell: 01913185204', 'abc'),
(1424, 5, 4, 14, '17', 'Kumargaon\r\n  	Post- Akhalia \r\nP.S.-Sylhet \r\nDist- Sylhet \r\nPost code- 3100 \r\nPhone- 0821 714258\r\nCell: 01733735836', 'abc'),
(1425, 5, 4, 14, '17', '	Saadipur\r\n  	Post- Begompur \r\nP.S.-Balaganj \r\nDist- Sylhet \r\nPost code-3112 \r\nCell: 01711922423', 'abc'),
(1426, 5, 4, 14, '17', '	Sheikhghat   	Post- Sylhet \r\nP.S. Sylhet Sadar \r\nDist- Sylhet \r\nPost code- 3100 \r\nPhone- 0821 717598 \r\nCell: 01711968123', 'abc'),
(1427, 5, 4, 14, '17', '	Sherpur natun Bazar   	Post- Aowrangapur \r\nP. S.- Balaganj \r\nDist- Sylhet \r\nPost code- 2100 \r\nPhone- 03796800023\r\nCell: 01717547883', 'abc'),
(1428, 5, 4, 14, '17', '	Station Road 	Post- Sylhet \r\nP. S.- Sylhet Sadar \r\nDist- Sylhet \r\nPost code-3100 \r\nPhone- 0821 716195 \r\nCell: 01711184989', 'abc'),
(1429, 5, 4, 14, '17', '	Post- Tajpur \r\nP.S- Balaganj \r\nDist- Sylhet \r\nPost code- 3140 \r\nPhone- 03799188273 \r\nCell: 01911513498', 'abc'),
(1430, 5, 4, 14, '17', '	Post- Companyganj \r\nP.S.-Companyganj \r\nDist- Sylhet \r\nPost code-3140 \r\nPhone-0822556011 \r\nCell: 017918924445', 'abc'),
(1431, 5, 4, 14, '17', 'Post- Zakiganj \r\nP.S.Zakiganj \r\nDist- Sylhet \r\nPost code- 3190 \r\nPhone- 0823256027 \r\nCell: 01714914037', 'abc');
INSERT INTO `srcdetails` (`SrcId`, `SourceType`, `DivId`, `DistId`, `SrcName`, `SrcAddress`, `SrcContact`) VALUES
(1432, 5, 4, 14, '17', 'West Amura\r\n  	Post- Amnia Bazar \r\nP.S.- Golapganj \r\nDist- Sylhet \r\nPost code-3160 \r\nCell - 01711922426', 'abc'),
(1433, 5, 2, 12, '17', 'PO  : Arani\r\nP.S. : Bagha\r\nDist. : Rajshahi\r\nPost Code : 6281\r\nCell : 01730009618', 'abc'),
(1434, 5, 2, 12, '17', '	\r\n\r\nPO : Baneswar\r\nP.S : Puthia\r\nDist.: Rajshahi\r\nPost Code : 6260\r\nCell : 01730009631', 'abc'),
(1435, 5, 2, 12, '17', '	\r\n\r\nPO : Basudevpur\r\nP.S : Godagari\r\nDist.: Rajshahi\r\nPost Code : 6300\r\nCell : 01730009620', 'abc'),
(1436, 5, 2, 12, '17', 'PO : Bhawaniganj\r\nP.S : Baghmara\r\nDist.: Rajshahi\r\nPost Code : 6250\r\nTele : 07222 65008 ', 'abc'),
(1437, 5, 2, 12, '17', 'PO : Birkutsha\r\nP.S : Baghmara\r\nDist.: Rajshahi\r\nPost Code: 6250\r\nCell : 01730009621', 'abc'),
(1438, 5, 2, 12, '17', '	\r\n\r\nPO:  Malsira\r\nP.S:  Tanore\r\nDist.: Rajshahi\r\nPost Code : 6234\r\nCell : 01730009622', 'abc'),
(1439, 5, 2, 12, '17', '	\r\n\r\nPO:  Dawkandi\r\nP.S:  Durgapur\r\nDist.: Rajshahi\r\nPost Code : 6240', 'abc'),
(1440, 5, 2, 12, '17', 'PO  : Durgapur \r\nP.S.:  Durgapur\r\nDist.: Rajshahi\r\nPost Code: 6240\r\nTele : 07224 56005 Cell: 01716004292 ', 'abc'),
(1441, 5, 2, 12, '17', 'PO  : Ghoramara\r\nP.S. : Boalia\r\nDist. : Rajshahi\r\nPost Code : 6100\r\nTele : 774228 Cell: 01717796601 ', 'abc'),
(1442, 5, 2, 12, '17', 'PO &P.S- Godagari\r\nDist.: Rajshahi\r\nPost Code : 6290\r\nTele : 07225 56026 Cell: 01723800325', 'abc'),
(1443, 5, 2, 12, '17', '	PO:  Halidagachi\r\nP.S:  Charghat\r\nDist.: Rajshahi\r\nPost Code : 6271\r\nCell : 01730009625 ', 'abc'),
(1444, 5, 2, 12, '17', '	\r\n\r\nHaragram\r\n	\r\n 	\r\n\r\nPO : Rajshahi Court\r\nP.S : Rajpara\r\nDist.: Rajshahi\r\nPost Code : 6201\r\nTele: 0721 774172\r\nCell : 01712681536 ', 'abc'),
(1445, 5, 2, 12, '17', 'Harian\r\n 	\r\n\r\nPO : Shayampur\r\nP.S : Motihar\r\nDist.: Rajshahi\r\nPost Code : 6212', 'abc'),
(1446, 5, 2, 12, '17', 'Hetemkhan\r\n	\r\n	\r\n\r\nPO:  Rajshahi\r\nP.S:  Boalia\r\nDist.: Rajshahi\r\nPost Code : 6000\r\nTele: 0721 774225, Cell: 01725537717 ', 'abc'),
(1447, 5, 2, 12, '17', '	PO : Hatgangopara\r\nP.S : Baghmara\r\nDist.: Rajshahi\r\nPost Code: 6250\r\nCell : 01730009624', 'abc'),
(1448, 5, 2, 12, '17', '	Kadirganj 	\r\n	PO  : Rajshahi\r\nP.S. : Boalia\r\nDist. : Rajshahi\r\nPost Code : 6000\r\nTele : 0721 774256, Cell: 01199379775', 'abc'),
(1449, 5, 2, 12, '17', 'Luxmipur 	\r\nPO : Rajshahi\r\nP.S : Rajpara\r\nDist.: Rajshahi\r\nPost Code : 6000\r\nTele : 774175, Cell: 01712632165 ', 'abc'),
(1450, 5, 2, 12, '17', 'Kakon Hat (Lalitnagar) 	\r\nPO : Narayanpur\r\nP.S : Godagari\r\nDist.: Rajshahi\r\nCell : 01730009626', 'abc'),
(1451, 5, 2, 12, '17', 'PO : Kharda Mohanpur\r\nP.S : Mohanpur\r\nDist.: Rajshahi\r\nPost Code: 6220\r\nTele: 07226-56006, Cell: 01715209986 ', 'abc'),
(1452, 5, 2, 12, '17', '	Mohanganj 	\r\n	PO : Aliabad\r\nP.S : Baghmara\r\nDist.: Rajshahi\r\nPost Code : 6251\r\nCell : 01730009627 ', 'abc'),
(1453, 5, 2, 12, '17', 'Nawdapara 	\r\nPO : Sopura\r\nP.S.: Poba\r\nDist.: Rajshahi\r\nPost Code: 6203\r\nTele: 0721 761025,Cell: 01715324327 ', 'abc'),
(1454, 5, 2, 12, '17', 'PO:  Premtali\r\nP.S:  Godagari\r\nDist.: Rajshahi\r\nPost Code : 6291\r\nCell : 01730009628', 'abc'),
(1455, 5, 2, 12, '17', '	PO & P.S- Puthia \r\nDist.: Rajshahi\r\nPost Code: 6260\r\nTele : 07228 56216  ', 'abc'),
(1456, 5, 2, 12, '17', 'PO:  Rajabarihat\r\nP.S:  Godagari\r\nDist.: Rajshahi\r\nPost Code : 6201\r\nCell : 01730009629', 'abc'),
(1457, 5, 2, 12, '17', 'Rani Bazar 	\r\nPO  : Ghoramara \r\nP.S.:  Boalia\r\nDist.: Rajshahi\r\nPost Code: 6100\r\nTele : 0721 774156', 'abc'),
(1458, 5, 2, 12, '17', 'PO  : Sitlai\r\nP.S. : Poba\r\nDist. : Rajshahi\r\nPost Code : 6000', 'abc'),
(1459, 5, 2, 12, '17', '	PO : Taherpur\r\nP.S : Baghmara\r\nDist.: Rajshahi\r\nPost Code : 6251\r\nCell : 01730009619', 'abc'),
(1460, 5, 3, 5, '17', 'Alam Nagar\r\n	 	\r\n\r\nP.O. - Town Khalispur\r\nP.S. - Khalispur\r\nDist - Khulna\r\nPostal Code - 9000\r\nTele : 761545\r\nCell: 01710850330  ', 'abc'),
(1461, 5, 3, 5, '17', 'Khulna Engineering & Technology University\r\n		\r\n\r\nP.O. - B.I.T.\r\nP.S. - Daulatpur\r\nDist - Khulna\r\nPostal Code - 9103\r\nTele : 774820\r\nCell: 01715334289', 'abc'),
(1462, 5, 3, 5, '17', 'BSCIC Industrial Estate\r\n		\r\n\r\nP.O. - Shiromoni\r\nP.S. - Fultola\r\nDist - Khulna \r\nPostal Code - 9204\r\nTele : 785554\r\nCell: 01715143588', 'abc'),
(1463, 5, 3, 5, '17', 'P.O.+ P.S. - Daulatpur\r\nDist. - Khulna.\r\nPostal Code - 9202\r\nTele : 761550\r\nCell: 01716032520', 'abc'),
(1464, 5, 3, 5, '17', 'Gollamari 	Sher-e-Bangla Road\r\nP.O. + P.S. - Khulna\r\nDist. - Khulna.\r\nPostal Code - 9100\r\nTele : 723294\r\nCell: 01741182457', 'abc'),
(1465, 5, 3, 5, '17', ' Haji Mohsin Road\r\n	 	\r\n\r\n98, Haji Mohsin Road\r\nP.O. + P.S. - Khulna\r\nDist. - Khulna.\r\nPostal Code - 9100\r\nTele : 723919\r\nCell: 01711826364', 'abc'),
(1466, 5, 3, 5, '17', 'Helatola  Road\r\nP.O.+ P.S. - Khulna\r\nDist. - Khulna.\r\nPostal Code - 9100\r\nTele : 725728, 720599\r\nCell: 01712666473 ', 'abc'),
(1467, 5, 3, 5, '17', 'BIDC Road\r\nP.O. + P.S. - Khalispur\r\nDist. - Khulna.\r\nPostal Code - 9000\r\nTele : 761095\r\nCell: 01556327608  ', 'abc'),
(1468, 5, 3, 5, '17', '	\r\n\r\nJanata Bank Bhaban\r\n8, Khan A Sabur Road\r\nDist. - Khulna.\r\nPostal Code - 9100\r\nTele : 720921, 810718\r\nCell: 01715031456 ', 'abc'),
(1469, 5, 3, 5, '17', '	\r\n\r\nKhanjahan Ali Road\r\nP.O.+ P.S. - Khulna\r\nDist. - Khulna.\r\nPostal Code - 9100\r\nTele : 724649,723730\r\nCell: 01711573160 ', 'abc'),
(1470, 5, 3, 5, '17', 'K.D.A. Building\r\nP.O.+P.S. - Khulna\r\nDist - Khulna\r\nPostal Code - 9100\r\nTele : 720120\r\nCell: 01716087503 ', 'abc'),
(1471, 5, 3, 5, '17', '	\r\n\r\nP.O. - Jahanabad Cantonment\r\nP.S. - Futola\r\nDist. - Khulna.\r\nPostal Code - 9205\r\nTele : 785524\r\nCell: 01715398585 ', 'abc'),
(1472, 5, 3, 5, '17', 'P.O. - Kopilmuni\r\nP.S. -  Paikgacha\r\nDist. - Khulna.\r\nPostal Code - 9282\r\nTele : 763542/75 ', 'abc'),
(1473, 5, 3, 5, '17', 'Mirerdanga\r\n		\r\n\r\nP.O. - Sonali Jute Mill\r\nP.S. - Dighalia\r\nDist - Khulna \r\nPostal Code - 9206\r\nTele : 774465\r\nCell: 01715601647', 'abc'),
(1474, 5, 3, 5, '17', 'Noor Nagar\r\n		\r\n\r\nP.O. - Boyra\r\nP.S. - Daulatpur\r\nDist. - Khulna.\r\nPostal Code - 9000\r\nTele : 761013\r\nCell: 01716912370', 'abc'),
(1475, 5, 3, 5, '17', '	\r\n\r\nRoosevelt Jetty\r\n	\r\nP.O. - Custom House\r\nP.S. - Khalispur\r\nDist. - Khulna.\r\nPostal Code - 9000\r\nTele : 761580\r\nCell: 01711981466', 'abc'),
(1476, 5, 3, 5, '17', ' Rupsa\r\n		\r\n\r\nP.O. - Natun Bazar\r\nP.S. - Khulna\r\nDist. - Khulna.\r\nPostal Code - 9100\r\nTele : 724492\r\nCell: 01716111999', 'abc'),
(1477, 5, 3, 5, '17', '	\r\n\r\nP.O. - Rupsa East\r\nP.S. - Rupsa\r\nDist. - Khulna.\r\nPostal Code - 9241\r\nPhone: 041 800378\r\nCell: 01711115695', 'abc'),
(1478, 5, 3, 5, '17', 'Sheikhpara Bazar\r\n		\r\n\r\nP.O. - B.K.Roy Road\r\nP.S. - Khulna\r\nDist. - Khulna.\r\nPostal Code - 9000\r\nTele : 723026\r\nCell: 01199343513 ', 'abc'),
(1479, 5, 3, 5, '17', '	\r\n\r\nSholua Bazar\r\n		\r\n\r\nP.O. - Rangpur Kalibari\r\nP.S. - Dumuria\r\nDist. - Khulna.\r\nPostal Code - 9202\r\nCell: 01730009666', 'abc'),
(1480, 5, 3, 5, '17', 'P.O. - Kopilmuni\r\nP.S. -  Paikgacha\r\nDist. - Khulna.\r\nCell: 0155352433', 'abc'),
(1481, 5, 3, 36, '17', 'P.O. + P.S. - Bagerhat \r\nDist. - Bagerhat.\r\nPostal Code - 9300\r\nTele : 0468 62245\r\nCell: 01718555654 ', 'abc'),
(1482, 5, 3, 36, '17', 'P.O  - Digraj\r\nP.S. -  Mangla\r\nDist. - Bagerhat.\r\nPostal Code - 9350\r\nPhone: 04662 75339\r\nCell: 01715182540 ', 'abc'),
(1483, 5, 3, 36, '17', 'P.O. - Foylahat\r\nP.S. - Rampal\r\nDist. - Bagerhat\r\nPostal Code - 9341\r\nCell: 01720687720', 'abc'),
(1484, 5, 3, 5, '17', '	\r\n\r\nLokhpur\r\n		\r\n\r\nP.O. -  Biudanga\r\nP.S. -  Fakirhat\r\nDist. - Bagerhat\r\nPostal Code - 9241\r\nCell: 0173009567', 'abc'),
(1485, 5, 3, 36, '9', 'Mongla  Port Compound\r\n		\r\n\r\nP.O. + P.S. - Mangla\r\nDist. - Bagerhat.\r\nPostal Code - 9350\r\nTele : 04662 75303\r\nCell: 01711272491 ', 'abc'),
(1486, 5, 3, 36, '17', 'P.O. - Putikhali\r\nP.S. - Morilganj \r\nDist. - Bagerhat.\r\nPostal  Code : 9300\r\nPhone: 041 760126\r\nCell: 01715892464', 'abc'),
(1487, 5, 3, 36, '17', 'Rail Road\r\n		\r\n\r\nP.O. + P.S. - Bagerhat\r\nDist - Bagerhat\r\nPostal Code - 9000\r\nTele : 0468 62361\r\nCell: 01716569231 ', 'abc'),
(1488, 5, 3, 36, '17', '	\r\n\r\nRampal\r\n		\r\n\r\nP.O. + P.S. - Bagerhat \r\nDist. - Bagerhat.\r\nPostal Code - 9300\r\nTele : 04657 56009\r\nCell: 01715052772 ', 'abc'),
(1489, 5, 3, 36, '17', 'P.O. - Rainda Bazar\r\nP.S. - Sharankhola\r\nDist - Bagerhat \r\nPostal Code - 9330\r\nTele : 0465956014\r\nCell: 01712787451 ', 'abc'),
(1490, 5, 6, 15, '17', '	\r\n\r\nAlekanda Bangla Bazar\r\nPO +Dist : Barisal\r\nPost Code : 8200\r\nTele : 64236\r\nCell: 01199343094', 'abc'),
(1491, 5, 6, 15, '17', 'Bazar Road\r\nPO +Dist : Barisal\r\nPost Code : 8200\r\nTele: 63834\r\nCell: 01715548448', 'abc'),
(1492, 5, 6, 15, '17', '	PO : Bhurghata ,Gournadi\r\nDist.: Barisal\r\nPost code : 8231\r\nT.O : Gournadi\r\nCell: 01732029039', 'abc'),
(1493, 5, 6, 15, '17', 'Chowk Bazar\r\nPO +Dist : Barisal\r\nPost Code : 8200\r\nTele : 64203\r\nCell: 01818424074', 'abc'),
(1494, 5, 6, 15, '17', '	PO : Kakardha\r\nDist.: Barisal\r\nCell: 01730009594', 'abc'),
(1495, 5, 6, 15, '17', '	\r\n\r\nPO : Kalashkathi, Bakergonj\r\nDist.: Barisal\r\nPost Code : 8284\r\nCell: 01733680891', 'abc'),
(1496, 5, 6, 15, '17', 'Muladi 		PO : Langutia\r\nDist.: Barisal\r\nPost Code : 8274\r\nPhone: 04326 75271\r\nCell: 01727379540 ', 'abc'),
(1497, 5, 6, 15, '17', 'Medical College 	PO +Dist : Barisal\r\nPost Code : 8200\r\nTele : 71647\r\nCell: 01716668810 ', 'abc'),
(1498, 5, 6, 15, '17', 'Nutan Bazar 	PO  : Barisal ,Bakergonj\r\nDist. : Barisal\r\nPost Code : 8200\r\nTele : 0431 64938\r\nCell: 01711358275', 'abc'),
(1499, 5, 6, 15, '17', '	PO : Padrishibpur ,Bakergonj\r\nDist. : Barisal\r\nPost Code : 8282\r\nTele : 04328 74046\r\nCell: 01728328707', 'abc'),
(1500, 5, 6, 15, '17', '	\r\n\r\nPatarhat\r\n	 	\r\n\r\nPO  : Mehendiganj\r\nDist.: Barisal\r\nPost Code: 8270\r\nTele : 56001\r\nCell: 01723980123', 'abc'),
(1501, 5, 6, 15, '17', '	Port Road\r\nPO +Dist : Barisal\r\nPost Code: 8270 tele : 64323\r\nCell: 01712603895 ', 'abc'),
(1502, 5, 6, 15, '17', 'Kashipur (Shaistabad) 		PO : Shaistabad\r\nDist.: Barisal\r\nPost Code : 8200\r\nPhone: 61042\r\nCell: 01711942245', 'abc'),
(1503, 5, 6, 15, '17', '	PO : Sharikal, Gournadi\r\nDist. : Barisal\r\nPost code : 8233\r\nCell: 01730009596', 'abc'),
(1504, 5, 6, 15, '17', 'PO    : Torki Bandar\r\nDist.  :  Barisal\r\nPost Code: 8231\r\nTele. : 04322 56134\r\nCell: 01726184433 ', 'abc'),
(1505, 5, 6, 22, '17', '	PO : Jhalakati\r\nDist. : Jhalakati\r\nPost Code : 8400\r\nTele : 0498 63342\r\nCell: 01712469043 ', 'abc'),
(1506, 5, 6, 22, '17', 'Station Road 	PO : Jhalakati\r\nDist.: Jhalakati\r\nPost Code : 8402\r\nPhone: 63171\r\nCell: 01914722525', 'abc'),
(1507, 5, 6, 24, '17', 'PO  : Kowri Khara, Nesarabad(sarupkathi)\r\nDist.: Pirojpur\r\nPost Code: 8522\r\nTele : 01671 369820\r\nCell: 01718929648 ', 'abc'),
(1508, 5, 6, 24, '17', 'PO  : Pirojpur\r\nDist. : Pirojpur\r\nPost Code : 8500\r\nTele : 0461 62360\r\nCell: 01711032026 ', 'abc'),
(1509, 5, 1, 8, '4', 'B.B. Avenue Branch\r\n12, Bangabandhu Avenue, Dhaka-1000\r\nPhone:9552279\r\nMobile:01971404147', ' '),
(1510, 5, 1, 8, '4', 'Banani Branch\r\nHouse no. 28, Road No. 11, Block-F, Banani ,Dhaka-1213\r\nPhone:9870080-81, 9870038-39\r\nMobile:01199879385', ' '),
(1511, 5, 1, 8, '4', 'Bhairab Bazar Branch\r\n129, Kalibari Road, Bhairab, Kishoregonj.\r\nPhone:(09424) 71567\r\nMobile:01971404110', ' '),
(1512, 5, 1, 8, '4', 'Bow Bazar SSC Branch\r\nPO- Deotola, PS- Nawabgonj, Dist.-Dhaka-1321\r\nMobile:01971404157', ' '),
(1513, 5, 1, 8, '4', 'Dhaka Chamber Branch\r\nIsmail Mansion, 9/H Motijheel C/A, Dhaka - 1000\r\nPhone:7171884, 7176827\r\nMobile:01971404164', ' '),
(1514, 5, 1, 8, '4', 'Dhanmondi Branch\r\nHouse # 312 (Old)/16 (New), Road # 27 ( Old)/ (New), Dhanmondi R/A, Dhaka-1209\r\nPhone:8128267\r\nMobile:01974011077', ' '),
(1515, 5, 1, 8, '4', 'DSE Nikunja Branch\r\n57, Zoar Shahara C/A, Lotus Kamal Tower(GF), Nikunja-2, Dhaka-1229\r\nPhone:8964013, 8964014\r\nMobile:01970031857', ' '),
(1516, 5, 1, 8, '4', 'Foreign Exchange Branch\r\nBaitul Hossain Building (Ground Floor), 27 Dilkusha Commercial Area, Dhaka-1000.\r\nPhone: 9564315, 9551239, 9559388\r\nMobile:01971404159', '  '),
(1517, 5, 1, 20, '4', 'Gazipur SME service centre\r\nKalameshar, Board Bazar, Gazipur\r\nPhone:9293978/ 9293927', ' '),
(1518, 5, 1, 8, '4', 'Gulshan Avenue SSC Branch\r\n136,Gulshan Avenue, Gulshan-2,Dhaka-1212\r\nPhone:02-9884457\r\nMobile:01190004885', ' '),
(1519, 5, 1, 8, '4', 'Gulshan Branch\r\nUnited House, 10, Gulshan Avenue, Gulshan 1, Dhaka\r\nPhone:8825206(PABX),8853741(PABX), 8855363(BSSM DIRECT)\r\nMobile:01199806831', ' '),
(1520, 5, 1, 8, '4', 'Imamgonj Branch\r\n44-45/2 , Roy Ishwar Chandra Shil Bahadur Street,Imamgonj, Dhaka-1100\r\nPhone: 7313581, 7316498\r\nMobile: 01199860028', ' '),
(1521, 5, 1, 8, '4', 'Islami Banking Branch\r\nIsmail Mension, 9/H Motijheel C/A, Dhaka-1000\r\nPhone:7176827, 7171884, 7177038\r\nMobile:01199806275', ' '),
(1522, 5, 1, 8, '4', 'Islampur Road Branch\r\n18, Sonar Bangla Market, Islampur Road, Islampur, Dhaka\r\n\r\nPhone:7392402, 7391920\r\nMobile:01971404148', ' '),
(1523, 5, 1, 41, '4', 'Jamalpur SME Service Centre\r\n422, Thakur Bhaban, Station Road, Jamalpur\r\nPhone:(0981) 64614', '  '),
(1524, 5, 1, 8, '4', 'Jatrabari SME Service Centre\r\nYusuf Mansion, 1st Floor, 314,A/5, South Jatrabari, Dhaka-1204\r\nPhone:7540347, 7541914', ' '),
(1525, 5, 1, 8, '4', 'Johnson Road Branch\r\nAziz Center, 1st Floor, 31 Johnson Road, Dhaka-1100.\r\n\r\nPhone:7115439, 7123432\r\nMobile: 01971404149', ' '),
(1526, 5, 1, 8, '4', 'Joypara SME Centre\r\n77 Ahmed Shopping Complex, Purbo Joypara, Dohar, Dhaka\r\nPhone:0622356168\r\nMobile:01711203762', ' '),
(1527, 5, 1, 8, '4', 'Kaliganj SSC Branch\r\nBikrampur Plaza.East Aganagar.Shahid Delwar Hossain Rd. Kaligonj, Keranigonj, Dhaka\r\nPhone:7772857\r\nMobile:01199809340', ' '),
(1528, 5, 1, 8, '4', 'Kawran Bazar Branch\r\nUTC Bhaban, 8, Panthapath, Kawran Bazar, Dhaka.\r\nPhone:02-9130351\r\nMobile:01971404152', ' '),
(1529, 5, 1, 33, '4', 'Kishoregonj SME Service Centre\r\n238, Bara Bazar, Kishoregonj\r\nPhone:(0941) 62175', ' '),
(1530, 5, 1, 32, '4', 'Madhabdi Branch\r\nHolding # 04,Ward # 08,Per Kashipur, Madhabdi Bazar (Bank Road),Madhabdi ,Narsingdi\r\nPhone:9446222\r\nMobile:01973672261', ' '),
(1531, 5, 1, 9, '4', 'Manikganj Branch\r\n13,174, Shahid Rafique Sarak, Manikgonj\r\nPhone:0651-61616,0651-62633\r\nMobile:01971404115', ' '),
(1532, 5, 1, 8, '4', 'Mirpur Branch\r\n1 Darus Salam Road, Section-1, Mirpur, Dhaka-1216.\r\nPhone:8056714\r\nMobile:01971404160', ' '),
(1533, 5, 1, 8, '4', 'Mouchak Branch\r\n80/A, Siddeshwari, Circular Road, Malibagh, Dhaka-1217\r\nPhone:02-9357717\r\nMobile:01971404158', ' '),
(1534, 5, 1, 28, '4', 'Mymensingh Branch\r\n20, Chotto Bazar, Mymensingh\r\nPhone:(091) 67493\r\nMobile:01971404111', ' '),
(1535, 5, 1, 10, '4', 'Narayanganj Branch\r\n72 B B Road , Narayanganj\r\nPhone:7633143\r\nMobile:01971404165', ' '),
(1536, 5, 1, 32, '4', 'Narsinghdi Branch\r\nHolding No. 192 (Bazar), Sarwardi Park, Narsingdi\r\n\r\nPhone:9462505, 9462456\r\nMobile:01971404112', ' '),
(1537, 5, 1, 8, '4', 'Nawabganj Branch\r\nYounus Shopping Complex,Kashimpur, Nawabgonj, Dhaka\r\nPhone:0622556248\r\nMobile:01711404156', ' '),
(1538, 5, 1, 10, '4', 'Netaiganj Branch\r\n217, B.K.Road, Netaigonj, Narayangonj-1400\r\nPhone:7631710\r\nMobile:01971-404106', ' '),
(1539, 5, 1, 8, '4', 'New Market Branch\r\nHouse No 5, Road No 2, Novera Square Dhanmondi 2, Dhaka 1205\r\nPhone:02-8614070\r\nMobile:01971404150', ' '),
(1540, 5, 1, 8, '4', 'Nowabpur Branch\r\n219-220, Nawabpur Road Branch, Nawabpur Dhaka.1100\r\nPhone:02- 9558087\r\nMobile:01971404161', ' '),
(1541, 5, 1, 8, '4', 'Posta Branch\r\n35, Shaesta Khan Road, Posta, Lalbag, Dhaka-1211\r\nPhone:9670537, 8629460\r\nMobile:01971404154', ' '),
(1542, 5, 1, 8, '4', 'Pragati Sarani Branch\r\nGa-30/G, Pragati Sarani Road, Shahjadpur, Badda, Dhaka\r\nPhone: 8899469\r\nMobile:01973082744', ' '),
(1543, 5, 1, 8, '4', 'Principal Office\r\nJibon Bima Tower,10 Dilkusha C/A,Dhaka 1000\r\n\r\nPhone: 9553137, 9553147\r\nMobile:01970338595', ' '),
(1544, 5, 1, 11, '4', 'Rekabi Bazar Branch\r\nBinodpur, P.O:Panchasar,Dist. Munshigonj\r\nPhone:0691-62525, 62526\r\nMobile:01971404107', ' '),
(1545, 5, 1, 8, '4', 'Sadarghat Branch\r\n78, Loyal Street (2Nd Floor), Patuatuli, Dhaka-1100.\r\nPhone:02-7122714\r\nMobile:01971404163', ' '),
(1546, 5, 1, 8, '4', 'Savar SME Service Center\r\nA-111, Ward-2, Bazar Road, Savar\r\nPhone:7744956, 7744957', ' '),
(1547, 5, 1, 8, '4', 'Shaymoli Branch\r\n23/6,khiljee Road ,Mohammadpur,Dhaka-1207\r\nPhone:8150369\r\nMobile:01971404153', ' '),
(1548, 5, 1, 37, '4', 'Tangail Branch\r\nMain Road, 1869/77, Habib Super Market, Tangail-1900\r\nPhone:(0921) 54065\r\nMobile:01971404109', ' '),
(1549, 5, 1, 20, '4', 'Tongi Branch\r\nJarjis Bhaban, Tongi Bazar, Tongi, Gazipur\r\nPhone:9800253', ' '),
(1550, 5, 1, 8, '4', 'Urdu Road Branch\r\n10, Urdu Road, Chawkbazar (Lalbagh), Dhaka-1211\r\nPhone:02-7318221\r\nMobile:01971404162', ' '),
(1551, 5, 1, 8, '4', 'Uttara Branch\r\nHouse no-08, Rabindra Sharani Road, Sector-07, Uttara Model Town, Dhaka- 1230\r\nPhone:8914857\r\nMobile:01979815065', ' '),
(1552, 5, 1, 8, '4', 'VIP Road Branch\r\n35/1, Purana Paltan Lane, VIP Road Dhaka-1000\r\nPhone:02-9348947\r\nMobile:01973068477', ' '),
(1553, 5, 1, 8, '4', 'Zinzira Branch\r\nHossain Bhaban, Zinzira Tin Patti, Keranigonj, Dhaka\r\nPhone:7772742\r\nMobile: 019176404155', ' '),
(1554, 5, 5, 27, '4', 'Agrabad SSC\r\n11, Finlay House, Agrabad Badamtoli More\r\nPhone:031-720631, 031-716210', ' '),
(1555, 5, 5, 27, '4', 'Anderkilla Branch\r\n38, N.A Chowdhury Road,Anderkilla ,Chittagong.\r\nPhone:031-613476', ' '),
(1556, 5, 5, 27, '4', 'Bandartila Branch\r\n2461, South Halishohore, Bandertilla Ctg\r\nPhone:031-742200,0741612', ' '),
(1557, 5, 5, 27, '4', 'Bhatiary SME\r\nStationRoad, Bhatiary, Sitakundo, Chitagong\r\nPhone:031-2781157/ 58\r\n', ' '),
(1558, 5, 5, 27, '4', 'Brahmanbaria Branch\r\nKawtali Morh B. Baria.\r\nPhone:0851-58160', ' '),
(1559, 5, 5, 27, '4', 'Chawkbazar Branch\r\nMorium Tower 452/494 Kapasgola Road Chawkbazar, Chittagong\r\nPhone:4203 - 0312551697/98\r\n', ' '),
(1560, 5, 5, 30, '4', 'Chowmuhani Branch\r\n49, Kalitola Road, Chowmuhani, Begumgonj, Noakhali\r\nPhone:0321-52068', ' '),
(1561, 5, 5, 18, '4', 'Cox''s Bazar Branch\r\nAli Noor Plaza (1st Floor), Main Road, West Bazar Ghata, Cox\\''s Bazar.\r\nPhone:0341-64385', ' '),
(1562, 5, 5, 34, '4', 'Feni Branch\r\nJabbar Market, S.S.K Road, Feni.\r\nPhone:0331-62889 & 0331-73311\r\n', ' '),
(1563, 5, 5, 27, '4', 'Jubilee Road SSC\r\n181,Golap shingh lane Nandankanan Chittagong\r\nPhone:031-612104 ,636153', ' '),
(1564, 5, 5, 27, '4', 'Kadamtoli Branch\r\nRahat Center ( 1st Floor) 295-DT Road , Kadamtali, Chittagong\r\nPhone:031-712006, 031-2520668', ' '),
(1565, 5, 5, 27, '4', 'Khatunganj Branch\r\n282, Khatunonj, Chittagong.\r\n\r\nPhone:031-612681, 638054\r\nFax: 88-031-012681', ' '),
(1566, 5, 5, 48, '4', 'Lakshmipur Branch\r\nArat Patti Thana Road Laxmipur-3700\r\nPhone:55370', ' '),
(1567, 5, 5, 27, '4', 'O.R. Nizam Road Branch\r\nRahima Centre, 1839, CDA Avenue, East Nasirabad, Chittagong\r\nPhone:031-654421, 031-2551765', ' '),
(1568, 5, 5, 27, '4', 'Pahartali Branch\r\n302, D.T.Road, Pahartali, Chittagong.\r\nPhone:031-751570', ' '),
(1569, 5, 5, 27, '4', 'Patherhat Branch\r\nNoapara, Patherhat. PO-Guzra, Code-4346, PS-Raozan, Dist-Chittagong.\r\nPhone:031-2571175', ' '),
(1570, 5, 5, 27, '4', 'Patherhat Branch\r\nNoapara, Patherhat. PO-Guzra, Code-4346, PS-Raozan, Dist-Chittagong.\r\nPhone:031-2571175', ' '),
(1571, 5, 5, 27, '4', 'Prabartak Branch\r\n1486/1672, O.R.Nizam Road, Al-Noor Badrun Center (1st Floor). Probartak More, Chittagong\r\nPhone: 031-2555584 & 031-2555583\r\n', ' '),
(1572, 5, 5, 27, '4', 'Satkania SSC\r\nMukbul seraji Market, Court Road, Satkania, Chitagong\r\nPhone:03036-56337', ' '),
(1573, 5, 4, 14, '4', 'Amberkhana Branch\r\nCentral Plaza(1st floor), Amberkhana, Sylhet.\r\nPhone:0821-715516\r\nMobile:01971404131', ' '),
(1574, 5, 4, 14, '4', 'Bandar Bazar Branch\r\nMetro Centre, 897 Bandar Bazar, Sylhet-3100\r\nPhone:0821-714552-53', ' '),
(1575, 5, 4, 14, '4', 'Beani Bazar Branch\r\nHospital Road, Nayagram, Beani Bazar, Sylhet-3170\r\nPhone:08223-56005', ' '),
(1576, 5, 4, 14, '4', 'Bishwanath Branch\r\nKhurshed Ali Shopping Complex(1st Floor), Rampasha Road, Natunbazar, Bishwanath, Sylhet-3130.\r\nPhone:08224-5612\r\nMobile:01196000593', ' '),
(1577, 5, 4, 14, '4', 'Dhaka Dakshin Branch\r\nSchool Market(1st floor), Dhakadakshin Bazar, Golapgonj, Sylhet\r\nMobile:01971431674', ' '),
(1578, 5, 4, 45, '4', 'Hobigonj SME Service Cente\r\nAmir Chand Complex (1st Floor), 3557/Ka, B. Zaman Khan Road, Hobigonj\r\nPhone:0831-63164, 63165\r\n', ' '),
(1579, 5, 4, 44, '4', 'Jagannathpur Branch\r\nPaurashova Road, Jagannathpur, Sunamgonj\r\nPhone:08727-56429, 88015\r\nMobile:01711404134', ' '),
(1580, 5, 4, 46, '4', 'Moulvi Bazar Branch\r\nKushumbag Shopping City,1st floor, Sylhet Road, Moulvibazar\r\nPhone:0861-52840\r\nMobile:01971404132', ' '),
(1581, 5, 4, 14, '4', 'Srimongal Branch\r\nMoulvi Bazar Road, Sreemongal\r\nPhone:08626-71528', ' '),
(1582, 5, 4, 14, '4', 'Zinda Bazar SSC\r\nKaniz Plaza, 1st Floor, Zinda Bazar, Sylhet\r\nPhone:0821-714196\r\nMobile:01971404130\r\n', ' '),
(1583, 5, 6, 15, '4', 'Barisal Branch\r\n19,Sadar Road, Barisal-8200\r\nPhone: 0431-64139 & 2176043\r\nMobile:01971404146', ' '),
(1584, 5, 3, 23, '4', 'Benapole Branch\r\nSelim Sumon Super Market, Jessore Road Benapole, Jessore-7431\r\nPhone:04228-75625\r\nMobile:01971-404143', ' '),
(1585, 5, 3, 67, '4', 'Faridpur Branch\r\n5/1, Mujib Sarak, Niltuly, Faridpur\r\nPhone:0631-62668\r\nMobile:01971-404114', ' '),
(1586, 5, 3, 23, '4', 'Jessore Branch\r\n28-29, M K Road, Jessore\r\nPhone:0421-68749, 0421-35920\r\nMobile:01971404100', ' '),
(1587, 5, 3, 5, '4', 'Khulna Branch\r\n7 Sir Iqbal Road, Khulna-9100, PO Box. 185,\r\n\r\nPhone:720380, 720381\r\nFax:88-041-732995', ' '),
(1588, 5, 3, 42, '4', 'Kushtia Branch\r\n14 R.A. Khan Chowdhury Sarak, Kaderi Super Market, Kushtia-7000\r\nPhone:61850, 54422', ' '),
(1589, 5, 3, 43, '4', 'Satkhira Branch\r\n400/367 Baro Bazar Sarak, Satkhria-9400\r\nPhone:63223', ' '),
(1590, 5, 2, 56, '4', 'Bogra Branch\r\n200,Raza Bazar, Bogra Sadar, Bogra.5800\r\n\r\nPhone:051-65835, 051-65836\r\nMobile:01711404137\r\n', ' '),
(1591, 5, 2, 13, '4', 'Chapai Nawabgonj Branch\r\nZebun Nessa Super Market,11 Godagari Road,\r\nChapaiNawabgonj\r\nPhone:0781-55025, 0781-62550\r\nMobile:01971404136', ' '),
(1592, 5, 2, 38, '4', 'Dinajpur Branch\r\nNimtola, Dinajpur 5200\r\nPhone:0531-64707\r\nMobile:01971432071', ' '),
(1593, 5, 2, 57, '4', 'Gobindaganj Branch\r\nRajmoti market 1st floor,Gobindagonj,Gaibandha\r\nPhone:05423-75074\r\nMobile:01971425227', ' '),
(1594, 5, 2, 61, '4', 'Pabna Branch\r\nPabna Branch, 288/1 Aurangojeb Road, Pabna- 6600.\r\nPhone:073-165576\r\nMobile:01971404139', ' '),
(1595, 5, 2, 12, '4', 'Rajshahi Branch\r\n125, Natore road,Shaheb Bazar,PO.Ghoramara-6100,PS.Boalia, Rajshahi\r\nPhone:0721-776311, 0721-774648\r\nMobile:01711-404135', ' '),
(1596, 5, 12, 71, '4', 'Rangpur Branch\r\nCentral Point, Holding No-97/1,Cental Road,Pouroshava\r\nRangpur, P/S Kotwali, Dist. Rangpur.\r\nPhone:0521.64492. 0521.63538.\r\nMobile:01971429429', ' '),
(1597, 5, 2, 35, '4', 'Saidpur Branch\r\nShahid Dr.Zikrul Haque Road,Saidpur,Nilphamari\r\n\r\nPhone:05526-72350\r\nMobile:01711-435729', ' '),
(1598, 5, 2, 56, '4', 'Sherpur Branch\r\nMohona Shopping Center, Ist.Floor,\r\nSherpur Bus-Stand,Sherpur, Bogra\r\nPhone:05029-77216\r\nMobile:01971-404138', ' '),
(1599, 5, 2, 63, '4', 'Sirajganj Branch\r\nS.S. Road,Sirajgonj\r\n\r\nPhone:0751-62489\r\nMobile:01971404140', ' '),
(1600, 5, 5, 53, '4', 'Chandpur Branch\r\n57/54, Comilla Road, P.O Box No-44, Chandpur-3600\r\nPhone:0841-63682\r\nMobile:01971-404321', ' '),
(1601, 5, 5, 29, '4', 'Chouddgram Branch\r\nChauddagram Branch, Chauddagram, Comilla\r\nPhone:08020-56181\r\nMobile:01971-404323', ' '),
(1602, 5, 5, 29, '4', 'Comilla Branch\r\nArtisan Nasir Centre, 437, Nazrul Aveue, Kandirpar, Comilla\r\nPhone:081-65514, 081-65214\r\nMobile:01971-404125', ' '),
(1603, 5, 5, 29, '4', 'Daulatganj Branch\r\n252, Bank Road,(1st floor)Daulatgonj Bazar, Laksham, Comilla\r\nPhone:08032-51591 & 51390\r\nMobile:01971-404320', ' '),
(1604, 5, 5, 53, '4', 'Hajiganj Branch\r\nRoyal Rswshan Super Market Hajigonj Bazar Hajigonj Chandpur\r\nPhone:0842475369\r\nMobile:01971-404322', ' '),
(1605, 5, 5, 53, '4', 'Kachua Branch\r\nPalashpur, Hospital Road, Kachua,Chandpur\r\nPhone:08425-56226\r\nMobile:01970-326069', ' '),
(1606, 5, 5, 27, '18', '3, CDA Sheikh Mujib Road, Agrabad C/A, Chittagong\r\nPhone: (031) 716286\r\nMobile: 01711-889901, 01711-889902\r\nFax: (031) 2511381\r\nEmail: agrbad@islamibankbd.com; ibblac@bttb.net.bd ', ' '),
(1607, 5, 6, 15, '19', 'BARISALBRANCH 	79, Sadar Road (1st Floor), F. Rahman Market, Barisal- 8200 	Phone:  0431-2176236-40\r\n\r\nFax:  0431-2176241 ', '  '),
(1608, 5, 6, 16, '19', 'BHOLA BRANCH 	Mahbuba Market, Holding # 1331-1338, Sadar Road, Bhola. 	Phone:  0491-61146-49', ' '),
(1609, 5, 2, 56, '19', 'BOGRA BRANCH 	Sheikh Mansion, 368/405, Ranapur Road, Bogora-5800 	Phone:  051- 78551,78553, 78554\r\n\r\nFax:  78552 ', ' '),
(1610, 5, 5, 53, '19', 'HAJIGONJ BRANCH 	7/1, Makimabad, Hajigonj, Chandpur 	Phone:  75070, 75071, 75072', ' '),
(1611, 5, 5, 27, '19', 'AGRABAD BRANCH 	C&F Tower Progoti House, 1070 Seheikh Mujib Road, Agrabad, Chittagong 	Phone:  031-812087, 031-812089, 031-816134, 031-816135,\r\n\r\nFax:   031-812086 ', ' '),
(1612, 5, 5, 27, '19', 'Jubilee Road Branch 	1st Floor, Haji M Rahman Mansion, 184/A, Anayet Bazar, Chittagong 	Phone:  031-626481-82, 031-626486-87', ' '),
(1613, 5, 5, 27, '19', 'MOMIN ROAD BRANCH 	02, Momin Road, Jamal Khan, Chittagong 	Phone:  031-614766, 031-618346,\r\n\r\nFax:   031-616072 ', ' '),
(1614, 5, 5, 27, '19', 'KAZIR DEWRI BRANCH 	BRAC TARC, 18, SS Khalid Road, Kazir Deori, Khulshi, Chittagong 	\r\n\r\nFax:  2857430, 2857427-28 ', ' '),
(1615, 5, 5, 27, '19', 'HALISHAHAR BRANCH 	House # 1, Lane # 1, Road # 1, Block â€“ L, Halishar Housing State, Chittagong 	Phone:  031-2512696-8\r\n\r\nFax:  2512694 ', ' '),
(1616, 5, 5, 27, '19', 'HALISHAHAR BRANCH 	House # 1, Lane # 1, Road # 1, Block â€“ L, Halishar Housing State, Chittagong 	Phone:  031-2512696-8\r\n\r\nFax:  2512694 ', ' '),
(1617, 5, 5, 27, '19', 'MURADPUR BRANCH 	Ramna Trade Center, 36/7, CDA Avenue, Muradpur, Chittagong 	Phone:  031-2556661, 0312556662,031-2556663, 031-2556664', ' '),
(1618, 5, 5, 27, '19', 'CD AVENUE BRANCH 	GEC Plot # 3439, Hosna Kalam Complex (Ist floor), Nasirabad, Chittagong 	Phone:  2552612-4\r\n\r\nFax:  031-2552617\r\n', ' '),
(1619, 5, 5, 27, '19', 'POTIYA BRANCH 	Holding # 1358/Kha, Potia, Chittagong 	Phone:  03035 -56151,56150 ,\r\n\r\nFax:  56152 ', ' '),
(1620, 5, 5, 27, '19', 'SITAKUNDO BRANCH 	"Ali Market" (1st Floor), Holding # 511, D.T. Road, Sitakunda, Chittagong 	\r\n\r\nFax:  030-2856141 ', ' '),
(1621, 5, 5, 29, '19', 'COMILLA BRANCH 	682/615, Jhaotala Road, Jhaotala, Comilla-3500 	', ' '),
(1622, 5, 5, 18, '19', 'COXS BAZAR BRANCH 	An Nahar Complex, 1462, Burmise Market prodhan Sarak, Cox''s bazar 	Phone:  0341-51137,51138,\r\n\r\nFax:  51139 ', ' '),
(1623, 5, 1, 8, '19', 'ASAD GATE BRANCH 	Plot # 01, Asad Gate, Mohammadpur, Dhaka 	Phone:  Pabx-9137155,\r\n\r\nFax:  8150198, 8158305\r\n', ' '),
(1624, 5, 1, 8, '19', 'BANANI BRANCH 	10, Kemal Ataturk Avenue, Banani, Dhaka 	Phone:  Pabx-8857694\r\n\r\nFax:  8858796 890258, 8858798 ', ' '),
(1625, 5, 1, 8, '19', 'BASHUNDHARA BRANCH 	Holding # 193, Block # B, Safwan Road, Basundhara R/A, Dhaka- 1229 	Phone:  8845009,8845030, 8845025', ' '),
(1626, 5, 1, 8, '19', 'BASHUNDHARA BRANCH 	Holding # 193, Block # B, Safwan Road, Basundhara R/A, Dhaka- 1229 	Phone:  8845009,8845030, 8845025', ' '),
(1627, 5, 1, 8, '19', 'ASHKONA BRANCH 	"Askona Community Center & Decorator", 567/1, Askona, Dakkhin Khan, Dhaka-1230 	Phone:  7912750. 7911030.\r\n\r\nFax:  7911012 ', ' '),
(1628, 5, 1, 8, '19', 'SATMASJID ROAD BRANCH 	66 Dhanmondi R/A, Dhaka-1205 	Phone:  Pabx-9135722\r\n\r\nFax:  8126656 ', ' '),
(1629, 5, 1, 8, '19', 'DOHAR BRANCH 	67, Ashraf Ali Chowdhury Plaza, Joypara, Dohar, Dhaka-1330 	Phone:  06223 -56049,56050\r\n\r\nFax:  56048\r\n', ' '),
(1630, 5, 1, 8, '19', 'ELEPHANT ROAD BRANCH 	Holding # 136 (G/F), Elephant Road, Dhaka-1205 	Phone:  9612300, 9612301, 9612302, 9612303\r\n', ' '),
(1631, 5, 1, 8, '19', 'NEW ESKATON BRANCH 	"Shahnaz Tower", 9, New Eskaton Road, Dhaka-1000 	Phone:  9359619,9359643,\r\n\r\nFax:  8331965\r\n', ' '),
(1632, 5, 1, 8, '19', 'GULSHAN BRANCH 	House # 50 (GF), Road # 03, Gulshan 1, Dhaka-1212 	\r\n\r\nFax:  8818624 ', ' '),
(1633, 5, 1, 8, '19', 'NORTH GULSHAN BRANCH 	Holding # 166 NE (k), Gulshan Avenue-2, Dhaka-1212 	Phone:  9860948.9861117,9895524\r\n\r\nFax:  9860738 ', ' '),
(1634, 5, 1, 8, '19', 'KERANIGANJ BRANCH 	Haji Mollah Mansion (1st Floor), East Aganoger Mosque Road, Kerinegonj, Dhaka-1310 	Phone:  7772662,\r\n\r\nFax:  7772661 ', ' '),
(1635, 5, 1, 8, '19', 'MANDA BRANCH 	Holding # 96, (Monkha Bazar) North Manda, Dhaka 	Phone:  7273806,7273804,7273788', ' '),
(1636, 5, 1, 8, '19', 'ZINZIRA BRANCH 	Mona Trade City (1st Floor), Dakpara, Zinjira High Way, Keraniganj, Dhaka-1310 	Phone:  7763205, 7763206, 7763207\r\n', ' '),
(1637, 5, 1, 8, '19', 'MIRPUR BRANCH 	Plot # 03, Road # 03, Block # A, Section # 11, Mirpur, Dhaka 	Phone:  8059130,\r\n\r\nFax:  8052855 ', ' '),
(1638, 5, 1, 8, '19', 'MOGHBAZAR BRANCH 	Arong Plaza, 211, Moghbazar, Dhaka 	Phone:  Pabx-9355538, 9355539\r\n\r\nFax:  9355532 ', ' '),
(1639, 5, 1, 8, '19', 'ROKEYA SHARONI BEANCH 	Holding No. 129, Ward No. 14, Senpara Parbata, Mirpur, Dhaka.', ' '),
(1640, 5, 1, 8, '19', 'GRAPHICS BUILDING BRANCH 	58, Motijheel C/A, Dhaka-1000 	Phone:  CSD-7164271, 7160871, 7161152\r\n\r\nFax:  7176510 ', ' '),
(1641, 5, 1, 8, '19', 'MOTIJHEEL BRANCH 	107, Motijheel C/A, Dhaka-1000 	Phone:   9550307, 9550382, 9562967, 9562464\r\n\r\nFax:  9562966 ', ' '),
(1642, 5, 1, 8, '19', 'NAWABGANJ BRANCH 	Isamoti Plaza, Plot # 415 (Ground Floor), Dhaka-Bandura Main Road, Nababganj 	Phone:  062255206,062255207,062255208\r\n', ' '),
(1643, 5, 1, 8, '19', 'NATUN BAZAR BRANCH 	"Miah Bhai Plaza", 1020 (1st Floor), Natun Bazar, Dhaka- 1212 	Phone:  8811082,8811083,8811575', ' '),
(1644, 5, 1, 8, '19', 'NAWABPUR BRANCH 	172, Nowabpur Road (1st Floor), Dhaka 	Phone:  7125000,7164406,\r\n\r\nFax:  7163271 ', ' '),
(1645, 5, 1, 8, '19', 'BONOSREE BRANCH 	Plot: 12, Block: C, Main Road, Word: 22, P.O : Rampura, Dhaka 	Phone:  8396587', ' '),
(1646, 5, 1, 8, '19', 'RAMPURA BRANCH 	Bismillah Tower 455/1, West Rampura, Dhaka-1219 	Phone:   8280389, 8280390, 8280406\r\n\r\nFax:  8280406\r\n', ' '),
(1647, 5, 1, 8, '19', 'GANAKBARI BRANCH 	Hashem Plaza, EPZ Gate, Gonak Bari, Saver, Dhaka 	Phone:  7790523-4\r\n\r\nFax:  7702580 ', ' '),
(1648, 5, 1, 8, '19', 'SAVAR BRANCH 	Rana Plaza, Holding # B-36, Mazidpur, Savar 	Phone:  7743506,7743504,\r\n\r\nFax:  7753505 ', ' '),
(1649, 5, 1, 8, '19', 'SHAYMOLI BRANCH 	19-20, Adarsho Chayaneer, Ring road, Shymoli, Dhaka-1207 	\r\n\r\nFax:  8144691 ', ' '),
(1650, 5, 1, 8, '19', 'DAKHIN KHAN BRANCH 	Majid Bahaban, Plot # 115, 10, Shahid Latif Road, Dakhinkhan, Uttara, Dhaka 	Phone:  8933587,8931851, 8933490', ' '),
(1651, 5, 1, 8, '19', 'UTTARA BRANCH 	House # 01, Road # 15, Sector # 03, Uttara, Dhaka-1230 	Phone:  Pabx-8951118, 8931672\r\n\r\nFax:  8959974 ', ' '),
(1652, 5, 5, 34, '19', 'SONAGAZI BRANCH 	Main Road West Bazar Islam & Sons Building (1st Floor), Sonagazi, Feni 	Phone:  03325-76188,\r\n\r\nFax:   03325-76004 ', ' '),
(1653, 5, 1, 20, '19', 'BOARD BAZAR BRANCH 	Holding # 142, Kalameshwar, Dhaka-Mymensing Road, Board Bazar, Gazipur-1704 	Phone:  9293693. 9293692. 9293691', ' '),
(1654, 5, 1, 20, '19', 'JOYDEBPUR BRANCH 	Rahmat Tower, Holding # 1034, Outpara, Gazipur 	Phone:  9263663,9263740,9263801\r\n', ' '),
(1655, 5, 1, 20, '19', 'TONGI BRANCH 	Nasiruddin Sarker Tower, 2, Mymensingh road, Tongi, Gazipur-1700 	\r\n\r\nFax:  9815943 9815942 & 9815945, ', ' '),
(1656, 5, 4, 45, '19', 'HOBIGONJ BRANCH 	Puran Munsefi Road, Habigonj 	Phone:  0831-63061,0831-63062,0831-63063', ' '),
(1657, 5, 4, 45, '19', 'NOBIGONJ BRANCH 	Holding # 79/3, Shantipara, Khaleque Market, Hospital Road, Nabigonj, Habigonj 	Phone:  08328-56221,56239, 56242.\r\n\r\nFax:  08328-56239 ', ' '),
(1658, 5, 1, 41, '19', 'JAMALPUR BRANCH 	Medical Road, Beauty Plaza, Jamalpur-2000 	Phone:  0981-65215,0981-65216\r\n\r\nFax:  0981-65217 ', ' '),
(1659, 5, 3, 23, '19', 'JESSORE BRANCH 	1 Hatkhola (M.K) Road, Jessore-7400 	Phone:  0421-69034-5\r\n\r\nFax:  0421-69036 ', ' '),
(1660, 5, 3, 23, '19', 'NOAPARA BRANCH 	Rahim Tower, Station Bazar, Jessore Khulna Road, Noapara, Jessore 	Phone:  04222-71246, 71252, 71222', ' '),
(1661, 5, 3, 5, '19', 'BARO BAZAR BRANCH 	A.Hossain Plaza, 4, Sir Iqbal Road, Khulna. ', ' '),
(1662, 5, 3, 5, '19', 'KHULNA BRANCH 	"The Daily Probaho Bhaban", KDA Plot No # 03, KDA Avenue, Khulna 	Phone:  2831334,2831335, 2831336,2831337\r\n', ' '),
(1663, 5, 1, 33, '19', 'BHAIRAB BRANCH 	"Jahanara Mansion", Bhairab, Kishoregonj 	Phone:  0942-471863, . Tel-71864\r\n\r\nFax:  71865 ', ' '),
(1664, 5, 5, 48, '19', 'RAIPUR BRANCH 	"Haji Ali Akbar Shopping Complex", Holding # 384, Raipur, Laxmipur', ' '),
(1665, 5, 1, 9, '19', 'MANIKGONJ BRANCH 	Chandi Market, Holding # 194, Shahid Rafiq Sarak, Manikganj-1800 	Phone:  0651-62017-20', ' '),
(1666, 5, 4, 46, '19', 'MOULVIBAZAR BRANCH 	Julia Shopping City (1st Floor), 111, Shantibagh Central Road, Moulvi Bazar 	Phone:  0861-62817 to 19,\r\n\r\nFax:  0861-62819 ', ' '),
(1667, 5, 1, 11, '19', 'MUNSHIGONJ BRANCH 	545, Jamidar Para, Ayub Ali Super Market, Munshiganj 	Phone:  CSM-0691-52075\r\n\r\nFax:  0691-52095 ', ' '),
(1668, 5, 1, 28, '19', 'MYMENSINGH BRANCH 	8, Shymacharan Roy Road, Notun Bazar, Mymensingh-2200 	Phone:  9167240-42,\r\n\r\nFax:  9167242 ', ' '),
(1669, 5, 1, 10, '19', 'NARAYANGANJ BRANCH 	147 BB Road, Narayangonj Sadar, Narayangonj. 	Phone:  7612424, 7615999, 7615455,7635155', ' '),
(1670, 5, 1, 10, '19', 'SONARGAON BRANCH 	Sonargaon Shopping Complex, Sonargaon, Narayangonj 	Phone:  0672356041-42', ' '),
(1671, 5, 1, 32, '19', 'GHORASHAL BRANCH 	Holding # 223 (G/F), Dakkshin Charpara, Hospital Road, Palas, Gorashal-1613, Narshingdi 	Phone:  74191,74192,74196', ' '),
(1672, 5, 1, 32, '19', 'MADHABDI BRANCH 	Holdin # 236. Madhobdi 	Phone:  9446147\r\n\r\nFax:  9446146, 9446147 ', ' '),
(1673, 5, 1, 32, '19', 'MONOHORDI BRANCH 	Holding # 30, Sadar Hospital Road, Monohordi, Norshindi 	Phone:  06253-56350 . 06253-56351,Tel-71864', ' '),
(1674, 5, 2, 50, '19', 'NATORE BRANCH 	Mokbul Plaza, Holding# 402, Natore. 	Phone:  0771-66394 0771-66294, 0771-66274 0771-66494\r\n', ' '),
(1675, 5, 12, 72, '19', 'SYEDPUR BRANCH 	"Sayedpur Plaza", 81, Sher-e- Bangla Road, Syedpur, Nilphamary-5310 	Phone:  05526-73241-42', ' '),
(1676, 5, 5, 30, '19', 'CHOWMUHUNI BRANCH 	"Rupali Bhaban", Holdings # 807, Begumganj, Chowmohony, Noakhali -3821 	\r\n\r\nFax:  0321-56106 ', ' '),
(1677, 5, 2, 61, '19', 'ISHARDI BRANCH 	Mahabub Khan Plaza, Station Road, Ishwardi, Pabna 	Phone:  CSM-07326-64459\r\n\r\nFax:  07326-64458 ', ' '),
(1678, 5, 6, 17, '19', 'PATUAKHALI BRANCH 	Talukdar Bhaban, Holding # 140, Sadar Road, Patuakhali Sadar, Patuakhali-8600 	Phone:  04416-3562\r\n\r\nFax:  04416-4469 ', ' '),
(1679, 5, 2, 12, '19', 'RAJSHAHI BRANCH 	House # F-695, Kumarpara, Ghoramara, Boalia, Rajshahi-6100 	Phone:  Roc-0721-812701-8\r\n\r\nFax:  0721-812709 ', ' '),
(1680, 5, 12, 71, '19', 'RANGPUR BRANCH 	Plot # 4325 & 4328, Station Road, Rangpur 	Phone:  0521-51041, 51042, 51043,51045\r\n', ' '),
(1681, 5, 3, 43, '19', 'SATKHIRA BRANCH 	Tufan Complex, Holding # 01, Polashpole, Satkhira 	Phone:  0471-4509 0471-4515\r\n', ' '),
(1682, 5, 2, 63, '19', 'BELKUCHI BRANCH 	"Sarker Mansion", WAPDA Road, Plot No # 551, 552, Chala, Belkuchi, Sirajgonj 	\r\n\r\nFax:  07522-56488 ', ' '),
(1683, 5, 4, 14, '17', 'BEANIBAZAR BRANCH 	Hajee A. Sattar Market (1st Floor), Beani Bazar, Sylhet 	Phone:  08223-87746 ,\r\n\r\nFax:  08223-88179 ', ' '),
(1684, 5, 4, 14, '19', 'BISWANATH BRANCH 	Didar Shooping Complex (1st Floor), Rampasha Road, Bishwanath, Sylhet 	Phone:  08224-56088,\r\n\r\nFax:  08224-56088\r\n', ' '),
(1685, 5, 4, 14, '19', 'SYLHET BRANCH 	Pallabi Trade Center, Subidbazar, Sylhet 	Phone:  0821-2830608-9 ,\r\n\r\nFax:  2830837 ', ' '),
(1686, 5, 4, 14, '19', 'SYLHET UPOSHAHAR BRANCH 	3/3, Shahjalal Uposhahar, Main Road, Block-D, Sylhet 	Phone:  710857,710836, 710849\r\n', ' '),
(1687, 5, 4, 14, '19', 'ZINDABAZAR BRANCH 	Plot # 8170, New Golden City, East Zindabazar, Sylhet 	Phone:  0821-814441, 0821-814442,\r\n\r\nFax:  0821-814443\r\n', ' '),
(1688, 5, 1, 37, '19', 'TANGAIL BRANCH 	Tangail Tower, Holding# 541,542&544, Main Road, Tangail. 	Phone:  0921-51414-6', '  '),
(1733, 5, 5, 18, '20', 'Coxsbazar Branch\r\n\r\nFayez Market, Main Road, Coxsbazar', ' '),
(1713, 5, 3, 23, '20', 'Abhaynagar Branch\r\n\r\nAbhaynagar Upazilla, Jessor', ' '),
(1714, 5, 5, 52, '20', 'B. Baria Branch\r\n\r\nIslam Mension (1st Floor), T.A Road, Kazipar PO+PS+Dist- B. Baria', ' '),
(1715, 5, 2, 56, '20', 'Bagura Branch\r\n\r\nHafiza Bhaban, 787 Barogola (1st fl), Bagura', ' '),
(1716, 5, 6, 15, '20', 'Barishal Branch\r\n\r\n71/71 Alekanda Road, Bat Tola, Barishal', ' '),
(1717, 5, 1, 33, '20', 'Bhairab Branch\r\n\r\nHajee Ful Miah Market, Jaman Road, Bhairab, Kishorgonj', ' '),
(1718, 5, 6, 16, '20', 'Bhola Branch\r\n\r\nKalinath Rayerbazar Road, Bhola', ' '),
(1719, 5, 2, 62, '20', 'Boda Branch\r\n\r\nMoslempur, Alochhya Neer, Islambag, Boda, Panchagor', ' '),
(1720, 5, 5, 53, '20', 'Chandpur Branch\r\n\r\nAlimpar, Chandpur Sadar, Chandpur', ' '),
(1721, 5, 5, 27, '20', 'Chittagong Branch\r\n\r\n4, Amanat Shah Sharak, Jail Road (3rd Fl), Chittagong', ' '),
(1722, 5, 5, 29, '20', 'Comilla Branch\r\n\r\nChhatipatti (1st Fl), Rajgonj, Comilla', ' '),
(1723, 5, 1, 2, '20', 'Alfadanga Branch\r\n\r\nAlfadanga Sadar, Alfadanga, Faridpur', ' '),
(1724, 5, 3, 36, '20', 'Bagerhat Branch\r\n\r\n125 K.Ali Road. Shalpara, Bagerhat', ' '),
(1725, 5, 5, 21, '20', 'Bandarban Branch\r\n\r\nMaster T.S.Pro Market, Bandarban Bazar, Bandarban', ' '),
(1726, 5, 2, 61, '20', 'Bera Branch\r\n\r\nBrishalika, Bera, Pabna', ' '),
(1727, 5, 2, 61, '20', 'Bera Branch\r\n\r\nBrishalika, Bera, Pabna', ' '),
(1728, 5, 1, 28, '20', 'Bhaluka Branch\r\n\r\nGafargaon, Bhaluka, Mymensingh', ' '),
(1729, 5, 2, 38, '20', 'Birampur Branch\r\n\r\nIslam Para, Birampur Powrashabha, Dinajpur', ' '),
(1730, 5, 5, 29, '20', 'Chandina Branch\r\n\r\nCollege Road, Nangalcoat, Comilla', ' '),
(1731, 5, 3, 54, '20', 'Chuyadangha Branch\r\n\r\nChuyadangha Baro Bazar Road, Chuyadangha', ' '),
(1732, 5, 4, 14, '20', 'Companigonj Branch\r\n\r\nShahjalal Maket, Upazilla Sadar, Companigonj, Sylhet', ' '),
(1734, 5, 2, 38, '20', 'Dinajpur Branch\r\n\r\nPuratan Bahadur Bazar, Post Office Road, Dinajpur Powrashaba, Dinajpur', ' '),
(1735, 5, 1, 2, '20', 'Faridpur Branch\r\n\r\n44, Jhiltuli, Faridpur.', ' '),
(1736, 5, 3, 5, '20', 'Fultala Branch\r\n\r\nFultala, Khulna', ' '),
(1737, 5, 1, 37, '20', 'Ghatail Branch\r\n\r\nJanata Shaping Complex (2nd Fl), 4/4 Ghatail, Tangail', ' '),
(1738, 5, 4, 45, '20', 'Habigonj Branch\r\n\r\n3376 Kalibari Moor, Habigonj', ' '),
(1739, 5, 1, 41, '20', 'Jamalpur Branch\r\n\r\nSinghajahani High School Road, Jamalpur', ' '),
(1740, 5, 6, 22, '20', 'Jhalokathi Branch\r\n\r\n58 New College Road, Jhalokathi', ' '),
(1741, 5, 2, 58, '20', 'Joypurhat Branch\r\n\r\nJoypurhat Bata Moor, Sadar Road, Joypurhat', ' '),
(1742, 5, 1, 20, '20', 'Kaliyakair Branch\r\n\r\nSamata Super Market, Kaliyakair Bazar, Kaliyakair, Gazipur', ' '),
(1743, 5, 1, 6, '20', 'Damudda Branch\r\n\r\nSadar Road, Damudda Bazar, Damudda, Shariyatpur', ' '),
(1744, 5, 1, 8, '20', 'Dohar Branch\r\n\r\nPallabi Super Market, Purba Joypara Bazar, Duhar, Dhaka', ' '),
(1745, 5, 5, 34, '20', 'Feni Branch\r\n\r\nIzzat Market (2nd Fl), 54 Trank Road, Feni', ' '),
(1746, 5, 12, 77, '20', 'Gaibandha Branch\r\n\r\nV-Aid Road. Gaibandha', ' '),
(1747, 5, 1, 7, '20', 'Gopalgong Branch\r\n\r\n250 Udayan Road, Gopalgong', ' '),
(1748, 5, 12, 75, '20', 'Hatibandha Branch\r\n\r\nDakhin Panditmari, Hatibandha, Lalmanirhat', ' '),
(1749, 5, 3, 23, '20', 'Jessor Branch\r\n\r\nR.S Bhahan, Jail Road Sadar, Jessor', ' '),
(1750, 5, 3, 26, '20', 'Jhinaidhaha Branch\r\n\r\nKabi Golam Mustafa Road, Chuyadangha Bus Stand, Jhinaidhaha', ' '),
(1751, 5, 1, 20, '20', 'Kaligonj Branch\r\n\r\nMunshefpur, Kaligonj, Gazipur', ' '),
(1752, 5, 5, 51, '20', 'KhagraChhari Branch\r\n\r\nKhagraChhari Press Club, KhagraChhari', ' '),
(1753, 5, 3, 5, '20', 'Khulna Branch\r\n\r\n172 B.K Ray Road, Khulna', ' '),
(1754, 5, 12, 72, '20', 'Kishorgong Branch\r\n\r\nKishorgong Sadar, Nilfamari', ' '),
(1755, 5, 4, 46, '20', 'Kulaura Branch\r\n\r\nYawshad Ghar, Kulaura, Mowlubhibazar', ' '),
(1756, 5, 12, 74, '20', 'Kurigram Branch\r\n\r\nKurigram Sadar, Kurigram', ' '),
(1757, 5, 5, 48, '20', 'Lakhmipur Branch\r\n\r\nLakhmipur Alim Madrasha (1st Fl), Lakhmipur', ' '),
(1758, 5, 1, 1, '20', 'Madaripur Branch\r\n\r\nNew Market, Puranbazar, Madaripur', ' '),
(1759, 5, 1, 8, '20', 'Main Branch\r\n\r\n01, Rajuk Avenue,\r\nDhaka-1000\r\nPhone : 9571780 ', ' '),
(1760, 5, 5, 53, '20', 'Matlab Branch\r\n\r\nBismilla Market, Agrani Bank Road, Matlab, Chandpur', ' '),
(1761, 5, 12, 71, '20', 'Mithapukur Branch\r\n\r\nShathibari, Haripur, Mithapukur, Rangpur', ' '),
(1762, 5, 4, 46, '20', 'Mowlubhibazar Branch\r\n\r\nPurba Gowbinda (Srimangal Road), Mowlubhibazar', ' '),
(1763, 5, 1, 33, '20', 'Kishorgong Branch\r\n\r\n1533 Isha Khan Road (Kalabagan), Kishorgong', ' '),
(1764, 5, 3, 42, '20', 'Kumarkhali Branch\r\n\r\n65/81 Sharnapatti, Kumarkhali Bazar, Kushtia', ' '),
(1765, 5, 3, 42, '20', 'Kustia Branch\r\n\r\n62, N.S Road, Kustia', ' '),
(1766, 5, 12, 75, '20', 'Lalmanirhat Branch\r\n\r\nZilla Parishad Moor, Lalmanirhat', ' '),
(1767, 5, 3, 55, '20', 'Magura Branch\r\n\r\nKeshob Moor, Magura', ' '),
(1768, 5, 1, 9, '20', 'Manikgonj Branch\r\n\r\nShahid Rafiq Road, Manikgonj', ' '),
(1769, 5, 3, 40, '20', 'Meherpur Branch\r\n\r\nKasharipara Main Road, Meherpur Upazilla, Meherpur', ' '),
(1770, 5, 2, 12, '20', 'Mohonpur Branch\r\n\r\nMononpur, Rajshahi.', ' '),
(1771, 5, 1, 11, '20', 'Munshigong Branch\r\n\r\nSarkar Mension, Sadar Road, Munshigong', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_approved` (`comment_approved`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'http://wordpress.org/', '', '2010-07-13 04:37:21', '2010-07-13 03:37:21', 'Hi, this is a comment.<br />To delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_links`
--

INSERT INTO `wp_links` (`link_id`, `link_url`, `link_name`, `link_image`, `link_target`, `link_description`, `link_visible`, `link_owner`, `link_rating`, `link_updated`, `link_rel`, `link_notes`, `link_rss`) VALUES
(1, 'http://codex.wordpress.org/', 'Documentation', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(2, 'http://wordpress.org/development/', 'Development Blog', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', 'http://wordpress.org/development/feed/'),
(3, 'http://wordpress.org/extend/ideas/', 'Suggest Ideas', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(4, 'http://wordpress.org/support/', 'Support Forum', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(5, 'http://wordpress.org/extend/plugins/', 'Plugins', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(6, 'http://wordpress.org/extend/themes/', 'Themes', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', ''),
(7, 'http://planet.wordpress.org/', 'WordPress Planet', '', '', '', 'Y', 1, 0, '0000-00-00 00:00:00', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL DEFAULT '0',
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`,`blog_id`,`option_name`),
  KEY `option_name` (`option_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `blog_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 0, '_transient_random_seed', 'f4e3dbe3b3a7d819ebda16bbdd489f81', 'yes'),
(2, 0, 'siteurl', 'http://www.sme.com.bd/wp', 'yes'),
(3, 0, 'blogname', 'SME Blog', 'yes'),
(4, 0, 'blogdescription', 'Just another WordPress weblog', 'yes'),
(5, 0, 'users_can_register', '0', 'yes'),
(6, 0, 'admin_email', 'mynul9280@gmail.com', 'yes'),
(7, 0, 'start_of_week', '1', 'yes'),
(8, 0, 'use_balanceTags', '0', 'yes'),
(9, 0, 'use_smilies', '1', 'yes'),
(10, 0, 'require_name_email', '1', 'yes'),
(11, 0, 'comments_notify', '1', 'yes'),
(12, 0, 'posts_per_rss', '10', 'yes'),
(13, 0, 'rss_excerpt_length', '50', 'yes'),
(14, 0, 'rss_use_excerpt', '0', 'yes'),
(15, 0, 'mailserver_url', 'mail.example.com', 'yes'),
(16, 0, 'mailserver_login', 'login@example.com', 'yes'),
(17, 0, 'mailserver_pass', 'password', 'yes'),
(18, 0, 'mailserver_port', '110', 'yes'),
(19, 0, 'default_category', '1', 'yes'),
(20, 0, 'default_comment_status', 'open', 'yes'),
(21, 0, 'default_ping_status', 'open', 'yes'),
(22, 0, 'default_pingback_flag', '1', 'yes'),
(23, 0, 'default_post_edit_rows', '10', 'yes'),
(24, 0, 'posts_per_page', '10', 'yes'),
(25, 0, 'date_format', 'F j, Y', 'yes'),
(26, 0, 'time_format', 'g:i a', 'yes'),
(27, 0, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(28, 0, 'links_recently_updated_prepend', '<em>', 'yes'),
(29, 0, 'links_recently_updated_append', '</em>', 'yes'),
(30, 0, 'links_recently_updated_time', '120', 'yes'),
(31, 0, 'comment_moderation', '0', 'yes'),
(32, 0, 'moderation_notify', '1', 'yes'),
(33, 0, 'permalink_structure', '', 'yes'),
(34, 0, 'gzipcompression', '0', 'yes'),
(35, 0, 'hack_file', '0', 'yes'),
(36, 0, 'blog_charset', 'UTF-8', 'yes'),
(37, 0, 'moderation_keys', '', 'no'),
(38, 0, 'active_plugins', 'a:0:{}', 'yes'),
(39, 0, 'home', 'http://www.sme.com.bd/wp', 'yes'),
(40, 0, 'category_base', '', 'yes'),
(41, 0, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(42, 0, 'advanced_edit', '0', 'yes'),
(43, 0, 'comment_max_links', '2', 'yes'),
(44, 0, 'gmt_offset', '1', 'yes'),
(45, 0, 'default_email_category', '1', 'yes'),
(46, 0, 'recently_edited', '', 'no'),
(47, 0, 'use_linksupdate', '0', 'yes'),
(48, 0, 'template', 'default', 'yes'),
(49, 0, 'stylesheet', 'default', 'yes'),
(50, 0, 'comment_whitelist', '1', 'yes'),
(51, 0, 'blacklist_keys', '', 'no'),
(52, 0, 'comment_registration', '0', 'yes'),
(53, 0, 'rss_language', 'en', 'yes'),
(54, 0, 'html_type', 'text/html', 'yes'),
(55, 0, 'use_trackback', '0', 'yes'),
(56, 0, 'default_role', 'subscriber', 'yes'),
(57, 0, 'db_version', '11548', 'yes'),
(58, 0, 'uploads_use_yearmonth_folders', '1', 'yes'),
(59, 0, 'upload_path', '/home/s/m/sme/public_html/wp/wp-content/uploads', 'yes'),
(60, 0, 'secret', 'gZqFMwA3)F*0JG4u5A10QY#@&YZ&GWqaoJvVV9Z$%X3Y1K58uqz6JNc&@r!aT*Wk', 'yes'),
(61, 0, 'blog_public', '1', 'yes'),
(62, 0, 'default_link_category', '2', 'yes'),
(63, 0, 'show_on_front', 'posts', 'yes'),
(64, 0, 'tag_base', '', 'yes'),
(65, 0, 'show_avatars', '1', 'yes'),
(66, 0, 'avatar_rating', 'G', 'yes'),
(67, 0, 'upload_url_path', '', 'yes'),
(68, 0, 'thumbnail_size_w', '150', 'yes'),
(69, 0, 'thumbnail_size_h', '150', 'yes'),
(70, 0, 'thumbnail_crop', '1', 'yes'),
(71, 0, 'medium_size_w', '300', 'yes'),
(72, 0, 'medium_size_h', '300', 'yes'),
(73, 0, 'avatar_default', 'mystery', 'yes'),
(74, 0, 'enable_app', '0', 'yes'),
(75, 0, 'enable_xmlrpc', '0', 'yes'),
(76, 0, 'large_size_w', '1024', 'yes'),
(77, 0, 'large_size_h', '1024', 'yes'),
(78, 0, 'image_default_link_type', 'file', 'yes'),
(79, 0, 'image_default_size', '', 'yes'),
(80, 0, 'image_default_align', '', 'yes'),
(81, 0, 'close_comments_for_old_posts', '0', 'yes'),
(82, 0, 'close_comments_days_old', '14', 'yes'),
(83, 0, 'thread_comments', '0', 'yes'),
(84, 0, 'thread_comments_depth', '5', 'yes'),
(85, 0, 'page_comments', '1', 'yes'),
(86, 0, 'comments_per_page', '50', 'yes'),
(87, 0, 'default_comments_page', 'newest', 'yes'),
(88, 0, 'comment_order', 'asc', 'yes'),
(89, 0, 'sticky_posts', 'a:0:{}', 'yes'),
(90, 0, 'widget_categories', 'a:0:{}', 'yes'),
(91, 0, 'widget_text', 'a:0:{}', 'yes'),
(92, 0, 'widget_rss', 'a:0:{}', 'yes'),
(93, 0, 'timezone_string', '', 'yes'),
(94, 0, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:54:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 0, '_transient_rewrite_rules', '', 'yes'),
(96, 0, 'cron', 'a:2:{i:1312169865;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(97, 0, '_transient_doing_cron', '1312135265', 'yes'),
(98, 0, '_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:1:{i:0;O:8:"stdClass":5:{s:8:"response";s:7:"upgrade";s:3:"url";s:30:"http://wordpress.org/download/";s:7:"package";s:40:"http://wordpress.org/wordpress-3.2.1.zip";s:7:"current";s:5:"3.2.1";s:6:"locale";s:5:"en_US";}}s:12:"last_checked";i:1312135266;s:15:"version_checked";s:3:"2.8";}', 'yes'),
(99, 0, '_transient_update_plugins', 'O:8:"stdClass":3:{s:12:"last_checked";i:1312135266;s:7:"checked";a:4:{s:19:"akismet/akismet.php";s:5:"2.2.4";s:47:"categories-autolink/categories-autolink-2.0.php";s:3:"2.0";s:9:"hello.php";s:3:"1.5";s:21:"sociable/sociable.php";s:3:"3.3";}s:8:"response";a:1:{s:21:"sociable/sociable.php";O:8:"stdClass":5:{s:2:"id";s:4:"1514";s:4:"slug";s:8:"sociable";s:11:"new_version";s:5:"3.5.2";s:3:"url";s:45:"http://wordpress.org/extend/plugins/sociable/";s:7:"package";s:56:"http://downloads.wordpress.org/plugin/sociable.3.5.2.zip";}}}', 'yes'),
(103, 0, 'disable_fsockopen', '1309546205', 'yes'),
(100, 0, '_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1312135267;}', 'yes'),
(101, 0, 'auth_salt', 'cp)oEnY1s)Vdgmk5FAnvXZvchi8Yow0a^Tro8t)^Y1ycC%Td57W&TWAY@sPFh!Pr', 'yes'),
(102, 0, 'logged_in_salt', 'iTayEbJzIKL!XGrR3p4DcCm1pUw#W4eacgE&tKbe%hiUe2iW1dW(y5MAh0GY519Q', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` text NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2010-07-13 04:37:21', '2010-07-13 03:37:21', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2010-07-13 04:37:21', '2010-07-13 03:37:21', '', 0, 'http://www.sme.com.bd/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2010-07-13 04:37:21', '2010-07-13 03:37:21', 'This is an example of a WordPress page, you could edit this to put information about yourself or your site so readers know where you are coming from. You can create as many pages like this one or sub-pages as you like and manage all of your content inside of WordPress.', 'About', '', 'publish', 'open', 'open', '', 'about', '', '', '2010-07-13 04:37:21', '2010-07-13 03:37:21', '', 0, 'http://www.sme.com.bd/wp/?page_id=2', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Blogroll', 'blogroll', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 2, 0),
(2, 2, 0),
(3, 2, 0),
(4, 2, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0),
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'link_category', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'rich_editing', 'true'),
(3, 1, 'comment_shortcuts', 'false'),
(4, 1, 'admin_color', 'fresh'),
(5, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(6, 1, 'default_password_nag', '1'),
(7, 1, 'wp_user_level', '10');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BVBhcXZdRMG4ZUrj5816SkdQ/ndYUc.', 'admin', 'sharmin@biid.org.bd', '', '2010-07-13 03:37:21', '', 0, 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
