-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 16, 2023 at 03:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kadai_db1`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `unique_id` int(12) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `book_name` varchar(64) NOT NULL,
  `book_url` text NOT NULL,
  `book_comment` text DEFAULT NULL,
  `reg_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`unique_id`, `user_id`, `book_name`, `book_url`, `book_comment`, `reg_datetime`) VALUES
(1, 'test1', '良いコード/悪いコード', 'https://amzn.asia/d/fwbj6dN', '1章から14章まではよくある悪いコードを例にどう実装すべきかが纏められています。15章から17章では文化/プロセスに言及されています。全体的に要点が良く纏まっており、初学者でも参考になります。', '2023-12-15 01:42:08'),
(2, 'test1', 'Googleのソフトウェアエンジニアリング', 'https://amzn.asia/d/4IhtHIu', 'HowToものとしてここでやってることをそのまますべてやろうとすれば「Googleだから〜」となるだろうけど、なぜそう考えたかという視点で読めば取り入れられることはたくさんある。\r\n特にOJT古参兵など、知識が古いままアップデートされていない人は読んでみるべきだし、そういう老害がチームにのさばっている場合はこれを武器に折伏するなりBanするなりすれば日々の泥沼のような仕事を少しずつ改善していけるでしょう。', '2023-12-15 01:45:18'),
(3, 'test2', 'Web APIの設計', 'https://amzn.asia/d/i5bfT3v', 'Web APIの設計における原理原則が丁寧に書かれていてとても充実した内容。', '2023-12-15 01:48:26'),
(4, 'test2', '行動経済学ノート', 'https://amzn.asia/d/23avlSc', '時に不可解なユーザーの心理や行動を、自作のイラストと共にわかりやすく解説。人間中心の視点でサービスを設計する上で役立つ情報が満載。ナントカ心理学とかナンチャラ経済学の本は数々あるが、本書はそれらをザッピングするように気軽に学べるユーザー理解の教則本。サービスの企画や設計に関わる人にはもちろん、デザイナーに是非読んでもらいたい。', '2023-12-15 02:25:43'),
(5, 'test3', '脳のしくみとユーザー体験', 'https://amzn.asia/d/dcXc639', '人の行動は無意識にやっていることも多く、また、錯覚や人の記憶の曖昧さを理解することで\r\n人に沿ったデザインができるようになります。\r\n人の気持ちに寄り添うためにも、まずは人を理解する必要があります。\r\n脳、シックスマインドを知ることで、人に愛されるデザインが作れるようになります。', '2023-12-15 02:32:09'),
(6, 'test3', '1兆ドルコーチ', 'https://amzn.asia/d/aeHI9z9', '日本は「おもてなし」なんていいますが、海外(アメリカくらいしかわかりませんが)には良い意味で他人へのポジティブな干渉に抵抗がなく(ようは親切)、利他的で大きな仕事を成し遂げる人が多いのでは、と感じされられます。', '2023-12-15 02:46:56'),
(7, 'test4', 'スタートアップとテクノロジーの世界地図', 'https://amzn.asia/d/j05mRG3', '将来、GAFAに並び、追い抜く可能性を感じられる企業が紹介されている本。\r\n掲載されている企業の7割ぐらいは、アメリカ・中国由来の企業。\r\n理由は明白で、スタートアップに投資している金額が他国を圧倒しているから。\r\nアメリカが6兆、中国が5.5兆に対して、日本は0.3兆。\r\nそもそものスケールが段違いで、質をいくら高めても限界あると感じさせられる。\r\nアメリカと中国は国の特徴が色濃く反映されているのが面白い。', '2023-12-15 02:50:48'),
(8, 'test4', 'ハッカーのたのしみ', 'https://amzn.asia/d/hn379I9', '素晴らしい内容であり、星の数による評価はもちろん五つです。買って良かったと思います。「計算をビット演算のレベルに落として色々やる」という内容(しかも洗練されたもの)です。濃い勉強になりました。そんな本なので、レビューで普通に褒めるのでは正直言ってつまんないし熱意のある初学者にとって参考にならない。だから、このレビューでは対象読者層の説明と些細な不満の吐露をやろうと思う。\r\n', '2023-12-15 02:55:19'),
(9, 'test5', '量子コンピュータの頭の中', 'https://amzn.asia/d/fTT8QGt', '量子コンピュータの事前知識はほぼない状態で読んだが、量子コンピュータがどういう気持ちで動作するのか、がよく分かる一冊だった。\r\n特に、量子ビットが１ビットの計算から、２ビット３ビットと順番に計算式を紹介してくれたため、ビット数が増えて計算が複雑になっても、やりたいことは変わらない、というのがよく分かった。\r\n後半の計算式が複雑で追えない部分も、本書で紹介されているQiskitのコードに落として、可視化、実際に動かしながら理解することができた。', '2023-12-15 03:00:34'),
(10, 'test5', '世界一流エンジニアの思考法', 'https://amzn.asia/d/2AFxYpj', '本書はタイトル通り、世界の一流とされるエンジニアがどう考え行動するかを「思考法」という言葉でまとめて紹介してくれています。\r\n具体的なTipsのような内容から、マインド、そしてAIとの関わり方など、多岐にわたる一流エンジニアの捉え方を垣間見ることができます。', '2023-12-15 03:05:20'),
(11, 'test1', 'お文具といっしょ', 'https://amzn.asia/d/8s147wi', 'すみずみにまで遊び心がありとても癒されました☺️\r\nとってもぷりちー❤️', '2023-12-16 09:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `gs_user_table`
--

CREATE TABLE `gs_user_table` (
  `id` int(12) NOT NULL,
  `user_id` varchar(12) NOT NULL,
  `password` varchar(64) NOT NULL,
  `life_flag` int(12) NOT NULL,
  `user_name` varchar(64) NOT NULL,
  `fav_genre` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `user_id`, `password`, `life_flag`, `user_name`, `fav_genre`) VALUES
(1, 'test1', 'wpeoaqj532', 0, 'Angie', '小説'),
(2, 'test2', 'wpeoaqj55&', 0, 'Kate', 'ビジネス'),
(3, 'test3', 'faea[ewag3', 0, 'Josh', 'プログラミング'),
(4, 'test4', 'ra@owejgjw', 0, 'Hacker', 'ホワイトハッキング'),
(5, 'test5', 'pwajegpa22', 0, 'Jessica', 'アート');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `unique_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
