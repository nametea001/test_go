-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 11:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL,
  `img` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `species` text CHARACTER SET utf8mb4 NOT NULL,
  `friendly` int(11) NOT NULL,
  `adapt` int(11) NOT NULL,
  `playful` int(11) NOT NULL,
  `img_2` varchar(1000) CHARACTER SET utf8mb4 NOT NULL,
  `experimental` text CHARACTER SET utf8mb4 NOT NULL,
  `health` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cats`
--

INSERT INTO `cats` (`id`, `img`, `species`, `friendly`, `adapt`, `playful`, `img_2`, `experimental`, `health`) VALUES
(1, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/thumb_cat-breeds-01_1652358723718.jpeg', 'อเมริกันช็อตแฮร์', 5, 5, 3, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/cat-breeds-01_1920x670_1652358723715.jpeg', 'มีความตรงตามชื่อสายพันธุ์เลย สำหรับน้องแมวอเมริกันช็อตแฮร์ที่นิยมเลี้ยงกันเพราะมีขนสั้น หนา เรียบตรง และมีปัญหาขนร่วงน้อย ลูกแมวอเมริกันช็อตแฮร์มีความเป็นนักล่าสูง ทำให้พวกเค้ามีโครงสร้างร่างกายใหญ่ บึกบึน มีกล้ามเนื้อแน่น ซึ่งเอื้อประโยชน์ต่อการล่าสูง นอกจากนี้ อเมริกันช็อตแฮร์ยังมีรูปร่างโค้งมน ช่วยเพิ่มความแข็งแกร่งและความทนทานเมื่อต้องอยู่ตามธรรมชาติ บวกกับมีช่วงอกกว้าง ลำคอหนา กรามและขาที่แข็งแรง ทำให้พวกเค้าเป็นนักล่าที่น่าเกรงขาม ด้วยทักษะและลักษณะของนักล่า อเมริกันช็อตแฮร์จึงมักถูกเลี้ยงในโรงนาเพื่อกำจัดหนู แม้จะรับบทนักล่าแต่พวกเค้าก็มีนิสัยเป็นมิตรเหมาะกับการเป็นสัตว์เลี้ยงในบ้าน เราสามารถพบน้องแมวพันธุ์อเมริกันช็อตแฮร์ได้ในหลากหลายสีขน ตั้งแต่สีขาว สีเทาหม่น สีดำ สีครีม สีน้ำตาลแดง สีครีมเหลือบแดง หรืออาจจะมีสองสี สามสี ไล่เฉดสี และสีเปรอะ นอกจากนี้พวกเค้ายังมีน้ำหนักตัวมากกว่าแมวทั่วไป โดยจะอยู่ระหว่าง 3 – 5 กก. พวกเค้ามีนิสัยรักสงบ ซึ่งเป็นหนึ่งในลักษณะอเมริกันช็อตแฮร์ที่โดดเด่นที่สุด', 'แม้ว่าอเมริกันช็อตแฮร์จะเป็นสายพันธุ์ที่แข็งแกร่งมาก แต่พวกเค้าก็มีโอกาสเสี่ยงต่อปัญหาสุขภาพได้เช่นกัน ดังนั้นการทำความเข้าใจถึงปัญหาที่พบได้บ่อยในอเมริกันช็อตแฮร์ จะทำให้คุณรับรู้ถึงอาการเตือนต่าง ๆ ได้ตั้งแต่เริ่มแรก และสามารถพาพวกเค้าไปรักษาได้เร็วยิ่งขึ้น'),
(2, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/cat-breeds-07_200x200_1652359058023.jpeg', 'แมวสายพันธุ์บริติชช็อตแฮร์', 4, 3, 2, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/cat-breeds-07_1920x670_1652359057992.jpeg', 'ลักษณะทางกายภาคของบริติชช็อตแฮร์: บริติชชอร์ตแฮร์จัดอยู่ในแมวขนาดกลางที่มีรูปร่างบึกบึน กล้ามเนื้อแน่น หน้าอกกว้าง ลำคอและกรามแข็งแรง พวกเค้ามีใบหน้ากลมแก้มยุ้ย ดวงตาสีเหลืองอมส้ม และใบหูทั้งสองตั้งห่างจากกัน ลักษณะโดดเด่นของบริติชชอร์ตแฮร์ยังรวมไปถึงช่วงขาที่แข็งแรง อุ้งเท้ากลม และหางที่มีขนาดรับกับรูปร่าง นอกจากนี้เจ้าเหมียวบริติชชอร์ตแฮร์ยังมีช่วงปากที่โดดเด่น และมีขนหนานุ่มน่าสัมผัสอีกด้วย', 'แมวเหมียวบริติชช็อตแฮร์มีอายุโดยเฉลี่ย 7 – 15 ปี หรืออาจอยู่ได้นานถึง 20 ปีเลยทีเดียว ถึงจะมีร่างกายบึกบึนดูแข็งแรง แต่แมวสายพันธุ์นี้ก็มีความเสี่ยงต่อปัญหาสุขภาพบางประการเช่นกัน:'),
(3, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/cat-breeds-22_200x200_1652359777697.jpeg', 'แมวเปอร์เซีย', 5, 5, 3, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/cat-breeds-22_1920x670_1652359777695.jpeg', 'เจ้าเหมียวพันธุ์เปอร์เซียมีลักษณะเฉพาะตัว ทำให้โดดเด่นและแตกต่างจากแมวพันธุ์อื่น พวกเค้ามีขนยาวพลิ้วสลวยเหมือนแมวเมนคูน แต่มีใบหน้าสั้นแบนเป็นเอกลักษณ์ และมีดวงตากลมโตพร้อมขโมยหัวใจทาสแมวทุกคนที่สบตา ดวงตาของพวกเค้าพบได้ในสีคอปเปอร์ สีเขียว และสีฟ้าอมเขียว', 'สายพันธุ์แมวเปอร์เซียมีภูมิต้านทานต่อโรคสูงกว่าพันธุ์แมวส่วนใหญ่ มีเพียงความเสี่ยงต่อโรคทางพันธุกรรม เพราะลักษณะแมวเปอร์เซียโดยทั่วไป ทำให้พวกเค้ามีแนวโน้มเป็นโรคถุงน้ำในไต จอประสาทตาเสื่อม นิ่วในกระเพาะปัสสาวะ โรคกระเพาะปัสสาวะอักเสบ และกล้ามเนื้อหัวใจหนา การทำความเข้าใจแมวเปอร์เซียข้อมูลเกี่ยวกับปัญหาสุขภาพ จะช่วยให้พวกเค้าปลอดภัย เจ้าของเองก็พร้อมรับมือกับภาวะแทรกซ้อนต่าง ๆ จนกว่าจะมั่นใจว่าเจ้าตัวน้อยสามารถใช้ชีวิตได้ตามปกติ'),
(4, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/cat-breeds-23_200x200_1652359814394.jpeg', 'แมวสายพันธุ์แร็กดอลล์', 5, 5, 4, 'https://cdn.onemars.net/sites/whiskas_th_r81SA_mwh5/image/cat-breeds-23_1920x670_1652359814391.jpeg', 'เจ้าเหมียวขนนุ่มน่ากอดเหล่านี้มีรูปร่างใหญ่ กล้ามเนื้อแน่น น้ำหนักตัวมาก และมีขนยาวนุ่มลื่น พวกเค้ายังมีใบหน้าใหญ่ทรงเหลี่ยม มาพร้อมดวงตากลมโตสีฟ้าสดใส เราอาจพบแร็กดอลล์ได้ในหลากหลายสีขน แต่ส่วนใหญ่มักมีสองสี โดยมีแต้มสีอยู่บริเวณรอบดวงตา ใบหู ขาหลัง และหาง', 'เจ้าเหมียวแร็กดอลล์ถือเป็นสายพันธุ์ที่แข็งแรง สุขภาพดี มีอายุยืนถึง 18 ปี แต่แน่นอนว่าพวกเค้ายังมีโอกาสเสี่ยงต่อโรคจำเพาะบางอย่างเช่นกัน เพื่อให้แน่ใจว่าแมวแร็กดอลล์ของคุณสุขภาพดีและมีอายุยืนยาวขึ้น ควรดูแลระมัดระวังโรคต่าง ๆ ดังต่อไปนี้:');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'test', 'test'),
(2, 'ss', 'ss');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
