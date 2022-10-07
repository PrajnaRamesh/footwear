
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



CREATE TABLE `admin` (
  `id` int(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(1, 'prajna', 'admin', 'admin@10');



CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `footname` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `category` (
  `categoryid` varchar(100) NOT NULL,
  `categoryname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `category` (`categoryid`, `categoryname`) VALUES
('C1', 'ConeHeels'),
('KH07', 'KittenHeels'),
('MU04', 'Mules'),
('OT05', 'OpenToeHeels'),
('PT06', 'PeepToeHeels'),
('PU03', 'Pumps'),
('W001', 'Wedges');



CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `feedback` (`id`, `name`, `email`, `feedback`) VALUES
(1, 'manjula', 'manjula@gmail.com', 'good'),
(3, 'raj', 'raj@gmail.com', 'nice'),
(4, 'maddy', 'maddy@gmail.com', 'good purchase'),
(5, 'ram', 'ram@gmail.com', 'gud footwear collection'),
(6, 'navya', 'navya@gmail.com', 'nice purchase'),
(7, 'janu', 'janu@gmail.com', 'good'),
(8, 'pooja', 'pooja@gmail.com', 'good purchase'),
(9, 'sam', 'sam@gmail.com', 'nyc purchase'),
(10, 'rrrr', 'rrrr@gmail.com', 'good purchase'),
(11, 'ooo', 'ooo@gmail.com', 'good purchase'),
(12, 'nan', 'nan@gmail.com', 'good purchase');


CREATE TABLE `foot` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `description` text NOT NULL,
  `discount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `foot` (`id`, `name`, `categoryname`, `image`, `price`, `description`, `discount`) VALUES
(2, 'Zovim', 'ConeHeels', 'coneheel1.jpg', 1200, 'worn wwith fun and flirty dresses', 0),
(3, 'Trase', 'Pumps', 'pumpheel1.jpg', 2000, 'Party wear date ready shoes', 0),
(5, 'Dymo', 'Pumps', 'pumpheel2.jpg', 1000, 'Casual shoes for girls', 0),
(6, 'Quriozz', 'ConeHeels', 'coneheel2.jpg', 800, 'Unique and different wworn with fun', 0),
(7, 'Irsoe', 'KittenHeels', 'kittenheels.jpg', 1800, 'Short slender women heel', 0),
(8, 'Generic', 'PeepToeHeels', 'opentoeheels.jpg', 2000, 'Show toe women heels', 0),
(9, 'Footshez', 'PeepToeHeels', 'peeptoeheels1.jpg', 1400, 'formal party wear women heels', 0),
(13, 'Bata', 'PeepToeHeels', 'peeptoeheels2.jpg', 1000, 'peep', 0),
(15, 'NON', 'ConeHeels', 'muleheel1.jpg', 1000, 'non', 0);


CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `transaction` (`id`, `name`, `email`, `quantity`, `price`, `date`) VALUES
(1, 'Bata', 'manjula@gmail.com', 1, 2, '2020-07-01 19:08:47'),
(2, 'Footshez', 'nandan@gmail.com', 1, 1, '2020-07-02 07:33:10'),
(3, 'Zovim', 'raj@gmail.com', 1, 1, '2020-07-02 10:47:59'),
(4, 'Zovim', 'maddy@gmail.com', 1, 1, '2020-07-02 11:14:37'),
(5, 'Bata', 'ram@gmail.com', 1, 600, '2020-07-02 14:48:25'),
(6, 'Zovim', 'ram@gmail.com', 1, 1, '2020-07-02 14:48:26'),
(7, 'Zovim', 'navya@gmail.com', 1, 1, '2020-07-03 10:04:53'),
(8, 'Zovim', 'janu@gmail.com', 1, 1, '2020-07-04 17:47:28'),
(9, 'Zovim', 'pooja@gmail.com', 2, 2, '2020-07-05 00:31:55'),
(10, 'Bata', 'sam@gmail.com', 2, 1, '2020-11-06 10:24:45'),
(11, 'Zovim', 'rrrr@gmail.com', 1, 1, '2020-11-11 18:18:41'),
(12, 'Zovim', 'ooo@gmail.com', 1, 1, '2020-11-12 11:06:41'),
(13, 'Trase', 'nan@gmail.com', 1, 2, '2020-11-13 03:54:10');



CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `user` (`id`, `name`, `email`, `password`) VALUES
(1, 'shashank', 'shashank@gmail.com', 'shashank@10'),
(2, 'madan', 'madan@gmail.com', '$2y$10$WdXB1BW6UHJA840sGCZkAOwwl2gVy9fSRsUr8SBiNYcwMJvH/biQy'),
(3, 'dhanya', 'dhanya@gmail.com', '$2y$10$6YqTBQyvoK69/PqeoXjPh.MOlfr1JcVoD7QCEpNzeKNXYa9NUCZIq'),
(4, 'halesh', 'halesh@gmail.com', '$2y$10$ODTDfmomRqbaJ7pWG/AAXeHDm48g8F.A98/xigabcESVTwsh690fi'),
(5, 'rekha', 'rekha@gmail.com', '$2y$10$Zir4C.klCL.lqSUVxIJBneDJDHdVGxvl2WuBhUaVFMFdTKIW5uBZa'),
(6, 'baby', 'baby@gmail.com', '$2y$10$UCElg7Ylc3qtahbPNQLp4OZI1N6XYsohGvaywnPFWC8Ro7ZgUMP1O'),
(7, 'andy', 'andy@gmail.com', '$2y$10$GwI7GI.1.KCoWl9JZq/oZeMkcK0Se3Y5OLe0l1bVxhzGa4D9bIBpy'),
(8, 'manjula', 'manjula@gmail.com', '$2y$10$otcosT5Co6ssrmmJkrGEp.NrRKEphNQLtonrMeujabDyuci7l0XhW'),
(9, 'nandan', 'nandan@gmail.com', '$2y$10$Xzfh2CmFzfPUd9MkhyWXOene8XuxLnUxfP175sTFwoAMTmeTfphAe'),
(10, 'raj', 'raj@gmail.com', '$2y$10$yYi.Z4mgTrK0n6hJHdFzteoQleB64IG7FvyDlTvwjthy4M5K05TuO'),
(11, 'maddy', 'maddy@gmail.com', '$2y$10$xf9860I8H.eZWM83r92wq.Uz5oo0bsolDPYFtDcBpk2GNkjwfWfPC'),
(12, 'ram', 'ram@gmail.com', '$2y$10$oUEdkaffqxfdtd0cijmVJ.ubriM.CRoiGs8OUX2KYqN/UpSHBNUvm'),
(13, 'navya', 'navya@gmail.com', '$2y$10$Xb9swWUhlGeA.tXyhSwfTeaxnYVC7MRrFw8RylvZuXc.W8PeFcNNW'),
(14, 'manu', 'manu@gmail.com', '$2y$10$qRQ6TOWR1eQuiO284/eA3eLBJNjUQk.w3VoK0f9Tj50VJTkTbMHSe'),
(15, 'janu', 'janu@gmail.com', '$2y$10$uQ96SCsIwE9UiJPufTucqe4Alqtu/gQRC9fFLorkogy688Ez9oGfG'),
(16, 'pooja', 'pooja@gmail.com', '$2y$10$xQStn3.a/8g7IUX.uz/.7OoYq8sldfDT9XzVEfRPP.GQwvpNebcNy'),
(17, 'sam', 'sam@gmail.com', '$2y$10$I4DVJXkbdksNAtLK84ZWMuFS/L8ZZVZ6C/PmWaXIzE2vLgRFrQi/u'),
(18, 'rrrr', 'rrrr@gmail.com', '$2y$10$gLqNTFNHTVXkW78vM3fxZuCvoDTuY4etvHa6Dlz37kFl76c289e7q'),
(19, 'tttt', 'tttt@gmail.com', '$2y$10$TL/tgoFmIvldZAIuTKcn/.JMEXmnwB2sILHqBgsogAGn7ZolHF41K'),
(20, 'ooo', 'ooo@gmail.com', '$2y$10$MbFdY4SjW86U7sAmuGi3ge2EKl.OKz62U2ePoxNWgiUD6xKOoesp.'),
(21, 'sss', 'sss@gmail.com', '$2y$10$2Nsu2h.NMbmlfFgUIdjmReUJ6ykvPI5yp1BPZHY9waS8H6Ew8L.Ku'),
(22, 'nan', 'nan@gmail.com', '$2y$10$0gEGKKdIrX4Mwcuo5bvRpOAi.0dEWNXENHOu.SdIVhiZX1yy/7ZLu');


ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryname`);


ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `foot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryname` (`categoryname`);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;


ALTER TABLE `foot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;


ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;


ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;


ALTER TABLE `foot`
  ADD CONSTRAINT `foot_ibfk_1` FOREIGN KEY (`categoryname`) REFERENCES `category` (`categoryname`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
