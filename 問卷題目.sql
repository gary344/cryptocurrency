-- --------------------------------------------------------
-- 主機:                           127.0.0.1
-- 伺服器版本:                        11.5.2-MariaDB - mariadb.org binary distribution
-- 伺服器作業系統:                      Win64
-- HeidiSQL 版本:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- 傾印 cryptocurrency 的資料庫結構
CREATE DATABASE IF NOT EXISTS `cryptocurrency` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cryptocurrency`;

-- 傾印  資料表 cryptocurrency.agent_answeroption 結構
CREATE TABLE IF NOT EXISTS `agent_answeroption` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) NOT NULL,
  `order` int(10) unsigned NOT NULL CHECK (`order` >= 0),
  `question_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agent_answeroption_question_id_5f373ed0_fk_agent_question_id` (`question_id`),
  CONSTRAINT `agent_answeroption_question_id_5f373ed0_fk_agent_question_id` FOREIGN KEY (`question_id`) REFERENCES `agent_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=447 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在傾印表格  cryptocurrency.agent_answeroption 的資料：~446 rows (近似值)
DELETE FROM `agent_answeroption`;
INSERT INTO `agent_answeroption` (`id`, `content`, `order`, `question_id`) VALUES
	(1, '18 歲以下', 1, 1),
	(2, '18–24 歲', 2, 1),
	(3, '25–34 歲', 3, 1),
	(4, '35–44 歲', 4, 1),
	(5, '45–54 歲', 5, 1),
	(6, '55–64 歲', 6, 1),
	(7, '65 歲以上', 7, 1),
	(8, '國中以下', 1, 2),
	(9, '高中/職', 2, 2),
	(10, '專科', 3, 2),
	(11, '大學', 4, 2),
	(12, '研究所以上', 5, 2),
	(13, '工資/薪水', 1, 3),
	(14, '投資收益', 2, 3),
	(15, '自營業或自由業收入', 3, 3),
	(16, '其他', 4, 3),
	(17, '學生', 1, 4),
	(18, '上班族', 2, 4),
	(19, '自營業者/創業者', 3, 4),
	(20, '退休/無業', 4, 4),
	(21, '未婚', 1, 5),
	(22, '已婚', 2, 5),
	(23, '離異', 3, 5),
	(24, '喪偶', 4, 5),
	(25, '亞洲', 1, 6),
	(26, '歐洲', 2, 6),
	(27, '北美洲', 3, 6),
	(28, '南美洲', 4, 6),
	(29, '非洲', 5, 6),
	(30, '大洋洲', 6, 6),
	(31, '低於 2 萬元', 1, 7),
	(32, '2 萬 ~ 4 萬元', 2, 7),
	(33, '4 萬 ~ 6 萬元', 3, 7),
	(34, '6 萬元以上', 4, 7),
	(35, '無投資經驗', 1, 8),
	(36, '有股票投資經驗', 2, 8),
	(37, '有基金投資經驗', 3, 8),
	(38, '有房地產投資經驗', 4, 8),
	(39, '其他', 5, 8),
	(40, '閱讀新聞網站', 1, 9),
	(41, '觀看影音節目', 2, 9),
	(42, '社群媒體', 3, 9),
	(43, '親友交流', 4, 9),
	(44, '其他', 5, 9),
	(45, '完全沒有持有', 1, 10),
	(46, '少量持有', 2, 10),
	(47, '中量持有', 3, 10),
	(48, '大量持有', 4, 10),
	(49, '尚未投資', 1, 11),
	(50, '少於 1 年', 2, 11),
	(51, '1~3 年', 3, 11),
	(52, '3~5 年', 4, 11),
	(53, '超過 5 年', 5, 11),
	(54, '加密貨幣', 1, 12),
	(55, '股票', 2, 12),
	(56, '基金', 3, 12),
	(57, '房地產', 4, 12),
	(58, '多元資產皆有涉略', 5, 12),
	(59, '每天', 1, 13),
	(60, '每週數次', 2, 13),
	(61, '每月幾次', 3, 13),
	(62, '非常偶爾', 4, 13),
	(63, '從未交易', 5, 13),
	(64, '經常使用', 1, 14),
	(65, '偶爾使用', 2, 14),
	(66, '知道但未使用', 3, 14),
	(67, '不了解槓桿交易', 4, 14),
	(68, '尚未持有', 1, 15),
	(69, '1~2 種', 2, 15),
	(70, '3~5 種', 3, 15),
	(71, '6 種以上', 4, 15),
	(72, '中心化交易所（如 Binance, MAX）', 1, 16),
	(73, '去中心化交易所（如 Uniswap）', 2, 16),
	(74, '錢包內建交易功能（如 Trust Wallet）', 3, 16),
	(75, '尚未實際交易', 4, 16),
	(76, '無投入', 1, 17),
	(77, '1,000 元以下', 2, 17),
	(78, '1,000 ~ 5,000 元', 3, 17),
	(79, '5,000 ~ 20,000 元', 4, 17),
	(80, '20,000 元以上', 5, 17),
	(81, '有，且收益不錯', 1, 18),
	(82, '有，但損失金額', 2, 18),
	(83, '了解但未參與', 3, 18),
	(84, '不了解 ICO 是什麼', 4, 18),
	(85, '幾乎不研究', 1, 19),
	(86, '1 小時以內', 2, 19),
	(87, '1 ~ 3 小時', 3, 19),
	(88, '3 ~ 5 小時', 4, 19),
	(89, '超過 5 小時', 5, 19),
	(90, '中心化交易所錢包（如 Binance、Coinbase 內建錢包）', 1, 20),
	(91, '熱錢包（如 MetaMask、Trust Wallet）', 2, 20),
	(92, '冷錢包（如 Ledger、Trezor）', 3, 20),
	(93, '僅註冊但未實際使用', 4, 20),
	(94, '極度保守，避免任何損失', 1, 21),
	(95, '偏向保守，接受微幅波動', 2, 21),
	(96, '中立，願意承擔適度風險', 3, 21),
	(97, '積極，尋求高報酬與高風險並存', 4, 21),
	(98, '非常激進，偏好高風險高回報', 5, 21),
	(99, '立即全部贖回止損', 1, 22),
	(100, '部分贖回降低風險', 2, 22),
	(101, '暫時觀望不動作', 3, 22),
	(102, '逢低加碼降低平均成本', 4, 22),
	(103, '視為機會持續加碼', 5, 22),
	(104, '完全重視安全性', 1, 23),
	(105, '偏向安全性', 2, 23),
	(106, '兩者兼顧', 3, 23),
	(107, '偏向高報酬', 4, 23),
	(108, '完全重視報酬', 5, 23),
	(109, '0% 高風險 / 100% 低風險', 1, 24),
	(110, '20% 高風險 / 80% 低風險', 2, 24),
	(111, '50% 高風險 / 50% 低風險', 3, 24),
	(112, '80% 高風險 / 20% 低風險', 4, 24),
	(113, '100% 高風險 / 0% 低風險', 5, 24),
	(114, '經常如此', 1, 25),
	(115, '偶爾會受影響', 2, 25),
	(116, '影響有限', 3, 25),
	(117, '幾乎無影響', 4, 25),
	(118, '完全不會影響', 5, 25),
	(119, '完全不感興趣', 1, 26),
	(120, '保持觀望態度', 2, 26),
	(121, '研究後謹慎嘗試', 3, 26),
	(122, '嘗試小額投入', 4, 26),
	(123, '積極投入並推薦他人', 5, 26),
	(124, '完全未虧損', 1, 27),
	(125, '虧損低於 5%', 2, 27),
	(126, '虧損 5%~20%', 3, 27),
	(127, '虧損 20%~50%', 4, 27),
	(128, '超過 50%', 5, 27),
	(129, '立即賣出止損', 1, 28),
	(130, '減碼持有', 2, 28),
	(131, '保持原本部位', 3, 28),
	(132, '逢低加碼', 4, 28),
	(133, '持續投入更多資金', 5, 28),
	(134, '資金需隨時可動用，無法承受波動', 1, 29),
	(135, '資金具短期使用需求', 2, 29),
	(136, '資金中期可動用', 3, 29),
	(137, '資金可長期投入', 4, 29),
	(138, '資金為閒置可彈性運用', 5, 29),
	(139, '無任何應急儲備', 1, 30),
	(140, '僅有少量儲備', 2, 30),
	(141, '有中等儲備，可短期支撐', 3, 30),
	(142, '有完整應急資金', 4, 30),
	(143, '有多元來源與高儲備', 5, 30),
	(144, '資產增值', 1, 31),
	(145, '退休準備', 2, 31),
	(146, '財富傳承', 3, 31),
	(147, '短期投機', 4, 31),
	(148, '其他', 5, 31),
	(149, '低於 5%', 1, 32),
	(150, '5% ~ 10%', 2, 32),
	(151, '10% ~ 20%', 3, 32),
	(152, '20% ~ 50%', 4, 32),
	(153, '超過 50%', 5, 32),
	(154, '少於 3 個月', 1, 33),
	(155, '3 個月 ~ 1 年', 2, 33),
	(156, '1 ~ 3 年', 3, 33),
	(157, '3 ~ 5 年', 4, 33),
	(158, '5 年以上', 5, 33),
	(159, '是，佔重要比例', 1, 34),
	(160, '是，但比例不高', 2, 34),
	(161, '可能會納入考量', 3, 34),
	(162, '尚未規劃', 4, 34),
	(163, '否', 5, 34),
	(164, '買房或置產', 1, 35),
	(165, '旅遊與生活享受', 2, 35),
	(166, '子女教育基金', 3, 35),
	(167, '創業或副業資金', 4, 35),
	(168, '單純投資或興趣', 5, 35),
	(169, '會，完全重新調整', 1, 36),
	(170, '會，部分調整', 2, 36),
	(171, '不會，維持原計劃', 3, 36),
	(172, '會觀察市場再決定', 4, 36),
	(173, '不確定', 5, 36),
	(174, '有，明確設定目標', 1, 37),
	(175, '有，但不嚴格執行', 2, 37),
	(176, '無，視情況而定', 3, 37),
	(177, '無明確計劃', 4, 37),
	(178, '不知道什麼是停利點', 5, 37),
	(179, '有，虧損達特定比例即停損', 1, 38),
	(180, '有，但較少執行', 2, 38),
	(181, '無，長期持有為主', 3, 38),
	(182, '無計劃', 4, 38),
	(183, '不知道什麼是停損點', 5, 38),
	(184, '立即獲利了結', 1, 39),
	(185, '部分獲利出場', 2, 39),
	(186, '再投入其他加密資產', 3, 39),
	(187, '繼續持有觀望', 4, 39),
	(188, '加碼操作追求更高收益', 5, 39),
	(189, '是，固定時間檢視', 1, 40),
	(190, '偶爾檢視', 2, 40),
	(191, '僅在市場波動時檢視', 3, 40),
	(192, '幾乎不檢視', 4, 40),
	(193, '從未設定過目標', 5, 40),
	(194, '尚未接觸', 1, 41),
	(195, '2023 年後', 2, 41),
	(196, '2020 ~ 2022 年', 3, 41),
	(197, '2017 ~ 2019 年', 4, 41),
	(198, '2016 年以前', 5, 41),
	(199, '朋友或家人介紹', 1, 42),
	(200, '網路文章/YouTube/社群平台', 2, 42),
	(201, '金融或區塊鏈相關課程', 3, 42),
	(202, '自己主動研究', 4, 42),
	(203, '尚未接觸', 5, 42),
	(204, '有，且經常使用', 1, 43),
	(205, '有，但很少使用', 2, 43),
	(206, '曾經使用過但已停用', 3, 43),
	(207, '知道但沒使用過', 4, 43),
	(208, '完全不了解錢包是什麼', 5, 43),
	(209, '經常使用', 1, 44),
	(210, '偶爾使用', 2, 44),
	(211, '只有測試過一次', 3, 44),
	(212, '知道但從未使用', 4, 44),
	(213, '不知道可以支付', 5, 44),
	(214, '手機 App', 1, 45),
	(215, '電腦網頁', 2, 45),
	(216, '硬體錢包（如 Ledger）', 3, 45),
	(217, '紙本/手抄錢包', 4, 45),
	(218, '我沒有管理任何加密貨幣', 5, 45),
	(219, '有，經常參與', 1, 46),
	(220, '有，偶爾參與', 2, 46),
	(221, '曾參與過一兩次', 3, 46),
	(222, '知道但沒參加過', 4, 46),
	(223, '不知道什麼是空投', 5, 46),
	(224, '三者皆有使用', 1, 47),
	(225, '曾使用其中 2 種', 2, 47),
	(226, '只用過其中 1 種', 3, 47),
	(227, '知道但尚未使用', 4, 47),
	(228, '從未聽過這些名詞', 5, 47),
	(229, '是，且持有中長期不動', 1, 48),
	(230, '是，但會頻繁交易', 2, 48),
	(231, '之前持有但已全部出售', 3, 48),
	(232, '只有模擬交易或測試', 4, 48),
	(233, '從未持有', 5, 48),
	(234, '經常轉移（跨鏈/錢包）', 1, 49),
	(235, '偶爾轉移', 2, 49),
	(236, '曾嘗試但不熟悉', 3, 49),
	(237, '聽過但未嘗試', 4, 49),
	(238, '完全不知道怎麼操作', 5, 49),
	(239, '錢包使用與備份困難', 1, 50),
	(240, '手續費過高或操作複雜', 2, 50),
	(241, '資訊過多無法判斷', 3, 50),
	(242, '平台安全性不清楚', 4, 50),
	(243, '尚未實際使用', 5, 50),
	(244, 'YouTube 或影片平台', 1, 51),
	(245, 'Facebook、IG、X 等社群媒體', 2, 51),
	(246, 'Reddit、PTT、Dcard 等討論區', 3, 51),
	(247, '加密貨幣新聞網站', 4, 51),
	(248, '朋友或同事推薦', 5, 51),
	(249, 'CoinDesk / CoinTelegraph', 1, 52),
	(250, '區塊客 / 動區', 2, 52),
	(251, '幣特財經 / MarsBit', 3, 52),
	(252, '沒有特定網站', 4, 52),
	(253, '我不看新聞網站', 5, 52),
	(254, '經常如此', 1, 53),
	(255, '偶爾會參考', 2, 53),
	(256, '只當作參考來源之一', 3, 53),
	(257, '幾乎不採信社群資訊', 4, 53),
	(258, '完全不看社群平台', 5, 53),
	(259, '非常可信，常依其建議操作', 1, 54),
	(260, '可信度高，但會再查證', 2, 54),
	(261, '部分可信，需自行判斷', 3, 54),
	(262, '可信度低，僅當參考', 4, 54),
	(263, '完全不信任 KOL', 5, 54),
	(264, 'YouTube、Podcast 類內容', 1, 55),
	(265, 'Telegram、Line 群組', 2, 55),
	(266, '社群媒體貼文（如 X, IG）', 3, 55),
	(267, '新聞媒體與報導', 4, 55),
	(268, '無法判斷', 5, 55),
	(269, '有，多次發生', 1, 56),
	(270, '有，一兩次經驗', 2, 56),
	(271, '不確定是否為資訊誤導', 3, 56),
	(272, '沒有，但聽過他人案例', 4, 56),
	(273, '從未遇過', 5, 56),
	(274, '整體可信，資訊透明', 1, 57),
	(275, '可信度中等，需篩選', 2, 57),
	(276, '資訊混亂，真假難辨', 3, 57),
	(277, '不太可信，誤導性高', 4, 57),
	(278, '不了解、不關注', 5, 57),
	(279, '交叉查證多個來源', 1, 58),
	(280, '尋求專家或朋友意見', 2, 58),
	(281, '依照過往經驗判斷', 3, 58),
	(282, '不特別驗證，憑直覺操作', 4, 58),
	(283, '不太會主動查證', 5, 58),
	(284, '有，且曾受損失', 1, 59),
	(285, '有，但未受影響', 2, 59),
	(286, '僅聽說過', 3, 59),
	(287, '沒有', 4, 59),
	(288, '不確定', 5, 59),
	(289, '願意，已有付費訂閱', 1, 60),
	(290, '願意，但尚未訂閱', 2, 60),
	(291, '可能會考慮', 3, 60),
	(292, '不願意，偏好免費資訊', 4, 60),
	(293, '不需要任何分析內容', 5, 60),
	(294, '非常認同，未來一定普及', 1, 61),
	(295, '認同，但仍需時間', 2, 61),
	(296, '中立，不確定', 3, 61),
	(297, '不太認同，存在重大風險', 4, 61),
	(298, '完全不認同，將會沒落', 5, 61),
	(299, '大幅成長（超過兩倍）', 1, 62),
	(300, '緩慢增長', 2, 62),
	(301, '維持現狀', 3, 62),
	(302, '下跌但仍存在', 4, 62),
	(303, '大幅縮水或消失', 5, 62),
	(304, '比特幣（BTC）', 1, 63),
	(305, '以太坊（ETH）', 2, 63),
	(306, '公鏈生態（如 Solana、Avalanche）', 3, 63),
	(307, '穩定幣與支付應用', 4, 63),
	(308, '不確定或不了解', 5, 63),
	(309, '非常期待，有助於穩定發展', 1, 64),
	(310, '可以適度監管', 2, 64),
	(311, '中立，視情況而定', 3, 64),
	(312, '不太期待，怕限制創新', 4, 64),
	(313, '完全不期待，應保持去中心化', 5, 64),
	(314, '互補，能共同發展', 1, 65),
	(315, 'CBDC 將主導，取代加密貨幣', 2, 65),
	(316, '競爭，但可共存', 3, 65),
	(317, '互斥，CBDC 不是真正加密貨幣', 4, 65),
	(318, '不了解 CBDC 是什麼', 5, 65),
	(319, '非常看好，會廣泛應用', 1, 66),
	(320, '部分應用會成功', 2, 66),
	(321, '暫時退燒，但仍有機會', 3, 66),
	(322, '大多數會被淘汰', 4, 66),
	(323, '不清楚這些是什麼', 5, 66),
	(324, '相信，未來一定普及', 1, 67),
	(325, '技術可行，但仍需制度支持', 2, 67),
	(326, '不確定', 3, 67),
	(327, '不太可能，大眾難以接受', 4, 67),
	(328, '完全不相信', 5, 67),
	(329, '金融交易與結算', 1, 68),
	(330, '供應鏈與物流', 2, 68),
	(331, '身份認證與數位證書', 3, 68),
	(332, '遊戲與娛樂', 4, 68),
	(333, '不確定或不了解', 5, 68),
	(334, '願意，且已經配置', 1, 69),
	(335, '願意，但尚未實行', 2, 69),
	(336, '考慮中，尚未決定', 3, 69),
	(337, '不太願意，風險太高', 4, 69),
	(338, '完全不會這麼做', 5, 69),
	(339, '非常樂觀，持續成長', 1, 70),
	(340, '樂觀但保持審慎', 2, 70),
	(341, '中立觀望', 3, 70),
	(342, '偏悲觀，風險過高', 4, 70),
	(343, '非常悲觀，無信心', 5, 70),
	(344, '非常了解，且有追蹤最新法規', 1, 71),
	(345, '大致了解主要規範', 2, 71),
	(346, '知道一些，但不詳盡', 3, 71),
	(347, '聽過但不了解細節', 4, 71),
	(348, '完全不了解', 5, 71),
	(349, '有，且影響過操作', 1, 72),
	(350, '偶爾遇到', 2, 72),
	(351, '聽說過但未遇過', 3, 72),
	(352, '沒有遇過', 4, 72),
	(353, '完全沒有此情況', 5, 72),
	(354, '支持，保障交易安全', 1, 73),
	(355, '可以接受，但擔心隱私', 2, 73),
	(356, '中立，看情況而定', 3, 73),
	(357, '不喜歡，覺得麻煩', 4, 73),
	(358, '完全反對，不願意配合', 5, 73),
	(359, '是，並使用強密碼管理工具', 1, 74),
	(360, '有嘗試，但不固定', 2, 74),
	(361, '偶爾更新', 3, 74),
	(362, '很少關注密碼安全', 4, 74),
	(363, '完全不做這些動作', 5, 74),
	(364, '很清楚，能有效避免', 1, 75),
	(365, '知道一些基本方法', 2, 75),
	(366, '聽過但不太確定', 3, 75),
	(367, '不了解相關技巧', 4, 75),
	(368, '完全不知道', 5, 75),
	(369, '有，損失金額不少', 1, 76),
	(370, '有，但損失有限', 2, 76),
	(371, '聽說過但自己沒遇過', 3, 76),
	(372, '沒有遇過，也未聽聞', 4, 76),
	(373, '完全沒有此類經驗', 5, 76),
	(374, '有，且都使用 2FA', 1, 77),
	(375, '有時使用 2FA', 2, 77),
	(376, '知道 2FA 但沒使用', 3, 77),
	(377, '不了解 2FA 是什麼', 4, 77),
	(378, '完全沒用過', 5, 77),
	(379, '非常安全，信任平台', 1, 78),
	(380, '大致安全，但有疑慮', 2, 78),
	(381, '安全性普通，需要謹慎', 3, 78),
	(382, '不太安全，擔心風險', 4, 78),
	(383, '非常不安全，不信任', 5, 78),
	(384, '有，分散多個錢包與平台', 1, 79),
	(385, '有，但分散程度有限', 2, 79),
	(386, '知道分散重要但未實行', 3, 79),
	(387, '不太重視這部分', 4, 79),
	(388, '完全沒分散過', 5, 79),
	(389, '是，定期備份並妥善保存', 1, 80),
	(390, '偶爾備份', 2, 80),
	(391, '有紀錄，但未定期更新', 3, 80),
	(392, '沒有備份習慣', 4, 80),
	(393, '我沒有加密貨幣錢包', 5, 80),
	(394, '每次都有完整規劃', 1, 81),
	(395, '大部分有初步規劃', 2, 81),
	(396, '偶爾會擬定', 3, 81),
	(397, '幾乎沒有計畫，憑感覺操作', 4, 81),
	(398, '完全沒有計畫', 5, 81),
	(399, '都會設定並嚴格執行', 1, 82),
	(400, '會設定但不一定執行', 2, 82),
	(401, '偶爾設定', 3, 82),
	(402, '很少設定', 4, 82),
	(403, '從未設定', 5, 82),
	(404, '冷靜觀察，不輕易操作', 1, 83),
	(405, '依計畫調整部位', 2, 83),
	(406, '情緒容易影響操作', 3, 83),
	(407, '常在恐慌或貪婪下交易', 4, 83),
	(408, '無特定反應或策略', 5, 83),
	(409, '經常後悔，影響心情', 1, 84),
	(410, '有時會後悔', 2, 84),
	(411, '偶爾出現此情況', 3, 84),
	(412, '幾乎不會', 4, 84),
	(413, '從不後悔', 5, 84),
	(414, '經常出現這樣的行為', 1, 85),
	(415, '偶爾會這樣操作', 2, 85),
	(416, '知道這樣不對但仍發生', 3, 85),
	(417, '曾有過，但現在不會', 4, 85),
	(418, '完全沒有這種情況', 5, 85),
	(419, '會，常因此 FOMO（錯失恐懼）', 1, 86),
	(420, '偶爾會有此情緒', 2, 86),
	(421, '不太會受影響', 3, 86),
	(422, '完全不會有這種情緒', 4, 86),
	(423, '我不太會關注他人操作', 5, 86),
	(424, '有清晰且穩定執行的策略', 1, 87),
	(425, '有策略但會調整變化', 2, 87),
	(426, '策略尚在摸索中', 3, 87),
	(427, '沒有明確策略', 4, 87),
	(428, '完全隨機操作', 5, 87),
	(429, '經常如此', 1, 88),
	(430, '有時會這樣做', 2, 88),
	(431, '偶爾有這樣的情況', 3, 88),
	(432, '幾乎不會', 4, 88),
	(433, '從未發生過', 5, 88),
	(434, '都有，且很重視', 1, 89),
	(435, '多半會進行其中一種分析', 2, 89),
	(436, '偶爾分析，依情況而定', 3, 89),
	(437, '很少分析，靠直覺', 4, 89),
	(438, '從不進行分析', 5, 89),
	(439, '穩健保守，注重風險控制', 1, 90),
	(440, '偏向中性，兼顧風險與收益', 2, 90),
	(441, '積極進取，願意承擔風險', 3, 90),
	(442, '波動大，策略常變', 4, 90),
	(443, '沒有固定風格', 5, 90),
	(444, '未曾使用', 5, 20),
	(445, '不清楚這些是什麼', 6, 20),
	(446, '我沒有加密貨幣錢包', 6, 74);

-- 傾印  資料表 cryptocurrency.agent_question 結構
CREATE TABLE IF NOT EXISTS `agent_question` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order` int(10) unsigned NOT NULL CHECK (`order` >= 0),
  `content` longtext NOT NULL,
  `question_type` varchar(10) NOT NULL,
  `questionnaire_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `agent_question_questionnaire_id_5ea261c7_fk_agent_que` (`questionnaire_id`),
  CONSTRAINT `agent_question_questionnaire_id_5ea261c7_fk_agent_que` FOREIGN KEY (`questionnaire_id`) REFERENCES `agent_questionnaire` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在傾印表格  cryptocurrency.agent_question 的資料：~90 rows (近似值)
DELETE FROM `agent_question`;
INSERT INTO `agent_question` (`id`, `order`, `content`, `question_type`, `questionnaire_id`) VALUES
	(1, 1, '您的年齡範圍為？', 'single', 1),
	(2, 2, '您的教育程度為？', 'single', 1),
	(3, 3, '您的主要收入來源為？', 'single', 1),
	(4, 4, '您目前的職業為？', 'single', 1),
	(5, 5, '您的婚姻狀況為？', 'single', 1),
	(6, 6, '您目前的居住地區屬於哪一洲？', 'single', 1),
	(7, 7, '您的月可支配所得範圍？', 'single', 1),
	(8, 8, '您是否有其他投資經驗？', 'multiple', 1),
	(9, 9, '您平時的資訊取得習慣？', 'multiple', 1),
	(10, 10, '您目前的加密貨幣持有狀況？', 'single', 1),
	(11, 1, '您投資加密貨幣的年資為？', 'single', 2),
	(12, 2, '您曾經投資過哪些資產類型？', 'multiple', 2),
	(13, 3, '您平均多久進行一次加密貨幣交易？', 'single', 2),
	(14, 4, '您是否曾經使用槓桿進行加密貨幣交易？', 'single', 2),
	(15, 5, '您目前持有多少種不同的加密貨幣？', 'single', 2),
	(16, 6, '您主要透過哪種平台進行加密貨幣交易？', 'multiple', 2),
	(17, 7, '您目前每月投入加密貨幣的金額範圍為？', 'single', 2),
	(18, 8, '您是否曾經參與過 ICO 或加密貨幣募資項目？', 'single', 2),
	(19, 9, '您平均每週花多少時間研究加密貨幣資訊？', 'single', 2),
	(20, 10, '您曾使用過哪些類型的加密貨幣錢包？', 'multiple', 2),
	(21, 1, '您對投資風險的態度為何？', 'single', 3),
	(22, 2, '若投資出現短期虧損，您的反應會是？', 'single', 3),
	(23, 3, '在追求報酬與風險之間，您較重視哪一方？', 'single', 3),
	(24, 4, '以下哪一種投資組合您最能接受？', 'single', 3),
	(25, 5, '您是否曾因投資損失影響生活品質或情緒？', 'single', 3),
	(26, 6, '當聽到新興高風險投資工具時，您會？', 'single', 3),
	(27, 7, '過去您在投資上曾承受過多大損失？', 'single', 3),
	(28, 8, '若您投入資金在加密貨幣後發生劇烈波動，您會？', 'single', 3),
	(29, 9, '您對資金的使用彈性為何？', 'single', 3),
	(30, 10, '您是否具備應對投資風險的備援資源？', 'single', 3),
	(31, 1, '您投資加密貨幣的主要目的是？', 'single', 4),
	(32, 2, '您期望從加密貨幣投資中達成的年報酬率是？', 'single', 4),
	(33, 3, '您計畫持有加密貨幣的時間長度為？', 'single', 4),
	(34, 4, '您是否視加密貨幣為退休或長期財務規劃的一部分？', 'single', 4),
	(35, 5, '您投資加密貨幣是為了達成哪類財務目標？', 'single', 4),
	(36, 6, '當市場出現劇烈波動時，您是否會改變投資目標？', 'single', 4),
	(37, 7, '您是否有設定加密貨幣投資的停利點？', 'single', 4),
	(38, 8, '您是否有設定加密貨幣投資的停損點？', 'single', 4),
	(39, 9, '若達成目標報酬，您通常會？', 'single', 4),
	(40, 10, '您會定期檢視加密貨幣投資是否達成目標嗎？', 'single', 4),
	(41, 1, '您第一次接觸加密貨幣是在什麼時候？', 'single', 5),
	(42, 2, '您是從哪種方式開始接觸加密貨幣的？', 'single', 5),
	(43, 3, '您目前是否有加密貨幣錢包？', 'single', 5),
	(44, 4, '您是否曾透過加密貨幣進行轉帳或支付？', 'single', 5),
	(45, 5, '您主要使用哪種設備管理加密貨幣？', 'single', 5),
	(46, 6, '您是否曾參與空投（Airdrop）活動？', 'single', 5),
	(47, 7, '您是否曾與 NFT、GameFi 或 DeFi 等應用互動？', 'single', 5),
	(48, 8, '您目前是否仍持有加密貨幣？', 'single', 5),
	(49, 9, '您是否曾在不同平台間轉移加密貨幣？', 'single', 5),
	(50, 10, '您在使用加密貨幣產品時最常遇到的問題是？', 'single', 5),
	(51, 1, '您主要從哪些管道獲取加密貨幣相關資訊？', 'multiple', 6),
	(52, 2, '您最常使用的加密貨幣新聞網站是？', 'multiple', 6),
	(53, 3, '您是否曾根據社群媒體上的資訊進行加密貨幣投資決策？', 'single', 6),
	(54, 4, '您對 KOL（意見領袖）在幣圈的可信度看法為何？', 'single', 6),
	(55, 5, '您認為哪一類來源的資訊最容易誤導大眾？', 'single', 6),
	(56, 6, '您是否曾因為相信錯誤資訊而導致虧損？', 'single', 6),
	(57, 7, '您認為目前加密貨幣相關資訊的可信度整體如何？', 'single', 6),
	(58, 8, '您在做出投資決策前，通常會如何驗證資訊？', 'single', 6),
	(59, 9, '您是否曾參與或觀察過假消息造成幣價劇烈波動？', 'single', 6),
	(60, 10, '您是否願意付費訂閱可靠的加密貨幣分析內容？', 'single', 6),
	(61, 1, '您認為加密貨幣會成為未來主流的金融資產嗎？', 'single', 7),
	(62, 2, '您預期未來 5 年內加密貨幣的整體市值會？', 'single', 7),
	(63, 3, '您認為哪一種加密資產未來最具發展潛力？', 'single', 7),
	(64, 4, '您是否期待政府對加密貨幣進一步規範與監管？', 'single', 7),
	(65, 5, '您認為央行數位貨幣（CBDC）與加密貨幣的關係是？', 'single', 7),
	(66, 6, '您認為 NFT、DeFi、GameFi 等應用未來前景如何？', 'single', 7),
	(67, 7, '您是否相信加密貨幣可成為日常支付工具？', 'single', 7),
	(68, 8, '您認為哪一領域將最早大規模採用區塊鏈技術？', 'single', 7),
	(69, 9, '您是否願意將部分退休或長期資產配置於加密貨幣？', 'single', 7),
	(70, 10, '您對於整體加密貨幣產業未來的情緒傾向為何？', 'single', 7),
	(71, 1, '您是否了解您所在國家對加密貨幣的法律規範？', 'single', 8),
	(72, 2, '您是否曾因不熟悉規範而遇到交易或提款困難？', 'single', 8),
	(73, 3, '您對於使用 KYC（身份驗證）流程的看法是？', 'single', 8),
	(74, 4, '您是否定期更新並保護您的錢包密碼及私鑰？', 'single', 8),
	(75, 5, '您是否知道如何辨別加密貨幣詐騙或釣魚網站？', 'single', 8),
	(76, 6, '您是否曾遭遇過加密貨幣詐騙？', 'single', 8),
	(77, 7, '您是否啟用過兩步驟驗證（2FA）來加強帳戶安全？', 'single', 8),
	(78, 8, '您認為加密貨幣交易平台的安全性如何？', 'single', 8),
	(79, 9, '您是否有將加密貨幣分散存放以降低風險？', 'single', 8),
	(80, 10, '您是否會定期備份錢包的重要資訊（如助記詞或私鑰）？\n（註：助記詞是一組 12~24 個英文單字，用來還原加密貨幣錢包）', 'single', 8),
	(81, 1, '您在進行交易前是否會擬定明確的交易計畫？', 'single', 9),
	(82, 2, '您是否設定停損與停利點？', 'single', 9),
	(83, 3, '您在市場大幅波動時的反應通常是？', 'single', 9),
	(84, 4, '您是否經常後悔自己的交易決策？', 'single', 9),
	(85, 5, '您對「追高殺低」的情況是否常有共鳴？', 'single', 9),
	(86, 6, '當看到他人獲利時，您是否會感到焦慮或想立即跟進？', 'single', 9),
	(87, 7, '您是否有固定的交易策略？', 'single', 9),
	(88, 8, '您是否曾因為短期虧損而提前賣出長期看好的資產？', 'single', 9),
	(89, 9, '您在交易前是否會自行進行技術或基本面分析？', 'single', 9),
	(90, 10, '您如何形容自己在交易中的風格？', 'single', 9);

-- 傾印  資料表 cryptocurrency.agent_questionnaire 結構
CREATE TABLE IF NOT EXISTS `agent_questionnaire` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 正在傾印表格  cryptocurrency.agent_questionnaire 的資料：~9 rows (近似值)
DELETE FROM `agent_questionnaire`;
INSERT INTO `agent_questionnaire` (`id`, `title`) VALUES
	(1, '基本資料'),
	(2, '投資經驗'),
	(3, '風險偏好'),
	(4, '目標調查'),
	(5, '接觸與使用'),
	(6, '資訊來源與信任'),
	(7, '未來看法與預期'),
	(8, '合規與安全'),
	(9, '交易策略與心理行為');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
