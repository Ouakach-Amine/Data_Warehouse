-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 27 oct. 2025 à 18:28
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestionstock`
--

-- --------------------------------------------------------

--
-- Structure de la table `entrepots`
--

CREATE TABLE `entrepots` (
  `entrepot_id` int(11) NOT NULL,
  `nom_entrepot` varchar(100) NOT NULL,
  `region` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `entrepots`
--

INSERT INTO `entrepots` (`entrepot_id`, `nom_entrepot`, `region`) VALUES
(1, 'Entrepot Ouest', 'Ouest'),
(2, 'Entrepot Est', 'Est'),
(3, 'Entrepot Sud', 'Sud'),
(4, 'Entrepot Nord', 'Nord'),
(5, 'Entrepot Centre', 'Centre'),
(6, 'Entrepot Ouest', 'Ouest'),
(7, 'Entrepot Est', 'Est'),
(8, 'Entrepot Sud', 'Sud'),
(9, 'Entrepot Nord', 'Nord'),
(10, 'Entrepot Centre', 'Centre'),
(100, 'Entrepot Global', 'Global');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

CREATE TABLE `fournisseurs` (
  `fournisseur_id` int(11) NOT NULL,
  `nom_fournisseur` varchar(100) NOT NULL,
  `pays` varchar(50) DEFAULT NULL,
  `email_contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`fournisseur_id`, `nom_fournisseur`, `pays`, `email_contact`) VALUES
(1, 'Fournitures USA', 'États-Unis', 'contact@fournituresusa.com'),
(2, 'Mobilier Europe', 'France', 'contact@mobilierfrance.fr'),
(3, 'Papeterie Monde', 'Allemagne', 'contact@papeteriemonde.de'),
(4, 'Techno Supplies', 'Royaume-Uni', 'contact@technosupplies.co.uk'),
(5, 'Bureautique Inc.', 'Canada', 'contact@bureautiqueinc.ca'),
(6, 'Fournitures Asie', 'Chine', 'contact@fournituresasie.cn'),
(7, 'Mobilier Afrique', 'Afrique du Sud', 'contact@mobilierafrique.co.za'),
(8, 'Papeterie Amérique Latine', 'Brésil', 'contact@papeteriebrasil.com'),
(9, 'Techno Supplies', 'Japon', 'contact@technosupplies.jp'),
(10, 'Bureautique Europe', 'Espagne', 'contact@bureautiqueeurope.es');

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

CREATE TABLE `stock` (
  `product_id` varchar(50) NOT NULL,
  `nom_produit` varchar(200) NOT NULL,
  `fournisseur_id` int(11) DEFAULT NULL,
  `entrepot_id` int(11) DEFAULT NULL,
  `quantite_stock` int(11) DEFAULT NULL,
  `date_dernier_reapprovisionnement` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`product_id`, `nom_produit`, `fournisseur_id`, `entrepot_id`, `quantite_stock`, `date_dernier_reapprovisionnement`) VALUES
('FUR-BO-10001798', 'Bush Somerset Collection Bookcase', 3, 5, 45, '2024-01-15'),
('FUR-BO-10002545', 'Atlantic Metals Mobile 3-Shelf Bookcases, Custom Colors', 3, 5, 15, '2024-02-17'),
('FUR-BO-10002613', 'Atlantic Metals Mobile 4-Shelf Bookcases, Custom Colors', 3, 5, 11, '2024-06-03'),
('FUR-BO-10004695', 'O\'Sullivan 2-Door Barrister Bookcase in Odessa Pine', 3, 5, 7, '2024-04-23'),
('FUR-BO-10004834', 'Riverside Palais Royal Lawyers Bookcase, Royale Cherry Finish', 3, 5, 8, '2024-03-22'),
('FUR-CH-10000454', 'Hon Deluxe Fabric Upholstered Stacking Chairs, Rounded Back', 7, 2, 26, '2024-05-14'),
('FUR-CH-10000513', 'High-Back Leather Manager\'s Chair', 7, 2, 14, '2024-02-12'),
('FUR-CH-10000863', 'Novimex Swivel Fabric Task Chair', 7, 2, 31, '2024-04-12'),
('FUR-CH-10002331', 'Global Enterprise Series Seating High-Back Swivel/Tilt Chairs', 7, 2, 17, '2024-06-22'),
('FUR-CH-10002774', 'Global Deluxe Stacking Chair, Gray', 7, 2, 38, '2024-03-14'),
('FUR-CH-10003061', 'Global Leather Task Chair, Black', 7, 2, 22, '2024-03-26'),
('FUR-CH-10003817', 'Global Value Steno Chair, Gray', 7, 2, 36, '2024-05-26'),
('FUR-CH-10003968', 'Novimex Turbo Task Chair', 7, 2, 29, '2024-02-05'),
('FUR-CH-10004218', 'Global Fabric Manager\'s Chair, Dark Gray', 7, 2, 25, '2024-03-21'),
('FUR-CH-10004287', 'SAFCO Arco Folding Chair', 7, 2, 34, '2024-05-23'),
('FUR-CH-10004698', 'Padded Folding Chairs, Black, 4/Carton', 7, 2, 22, '2024-05-28'),
('FUR-FU-10000087', 'Executive Impressions 14\" Two-Color Numerals Wall Clock', 8, 4, 46, '2024-06-19'),
('FUR-FU-10000260', '6\" Cubicle Wall Clock, Black', 8, 4, 68, '2024-02-14'),
('FUR-FU-10000397', 'Luxo Economy Swing Arm Lamp', 8, 4, 48, '2024-04-02'),
('FUR-FU-10000521', 'Seth Thomas 14\" Putty-Colored Wall Clock', 8, 4, 52, '2024-03-21'),
('FUR-FU-10000629', '9-3/4 Diameter Round Wall Clock', 8, 4, 49, '2024-02-24'),
('FUR-FU-10001487', 'Eldon Expressions Wood and Plastic Desk Accessories, Cherry Wood', 8, 4, 75, '2024-03-05'),
('FUR-FU-10001706', 'Longer-Life Soft White Bulbs', 8, 4, 380, '2024-05-09'),
('FUR-FU-10001934', 'Magnifier Swing Arm Lamp', 8, 4, 41, '2024-03-03'),
('FUR-FU-10002157', 'Artistic Insta-Plaque', 8, 4, 67, '2024-04-29'),
('FUR-FU-10002960', 'Eldon 200 Class Desk Accessories, Burgundy', 8, 4, 63, '2024-04-19'),
('FUR-FU-10003194', 'Eldon Expressions Desk Accessory, Wood Pencil Holder, Oak', 8, 4, 88, '2024-02-15'),
('FUR-FU-10003664', 'Electrix Architect\'s Clamp-On Swing Arm Lamp, Black', 8, 4, 55, '2024-03-19'),
('FUR-FU-10003708', 'Tenex Traditional Chairmats for Medium Pile Carpet, Standard Lip, 36\" x 48\"', 8, 4, 26, '2024-04-06'),
('FUR-FU-10003773', 'Eldon Cleatmat Plus Chair Mats for High Pile Carpets', 8, 4, 31, '2024-05-04'),
('FUR-FU-10003799', 'Seth Thomas 13 1/2\" Wall Clock', 8, 4, 37, '2024-04-16'),
('FUR-FU-10004006', 'Deflect-o DuraMat Lighweight, Studded, Beveled Mat for Low Pile Carpeting', 8, 4, 29, '2024-02-28'),
('FUR-FU-10004848', 'Howard Miller 13-3/4\" Diameter Brushed Chrome Round Wall Clock', 8, 4, 44, '2024-03-18'),
('FUR-TA-10000577', 'Bretford CR4500 Series Slim Rectangular Table', 5, 3, 18, '2024-01-28'),
('FUR-TA-10001539', 'Chromcraft Rectangular Conference Tables', 3, 5, 12, '2024-02-18'),
('FUR-TA-10001768', 'Hon Racetrack Conference Tables', 5, 3, 10, '2024-04-28'),
('FUR-TA-10004289', 'BoxOffice By Design Rectangular and Half-Moon Meeting Room Tables', 5, 3, 9, '2024-06-09'),
('FUR-TA-10004534', 'Bevis 44 x 96 Conference Tables', 5, 3, 8, '2024-05-02'),
('OFF-AP-10000326', 'Belkin 7 Outlet SurgeMaster Surge Protector with Phone Protection', 9, 10, 47, '2024-05-15'),
('OFF-AP-10000358', 'Fellowes Basic Home/Office Series Surge Protectors', 9, 10, 62, '2024-02-25'),
('OFF-AP-10000891', 'Kensington 7 Outlet MasterPiece HOMEOFFICE Power Control Center', 9, 10, 25, '2024-04-04'),
('OFF-AP-10001058', 'Sanyo 2.5 Cubic Foot Mid-Size Office Refrigerators', 9, 10, 14, '2024-03-20'),
('OFF-AP-10001492', 'Acco Six-Outlet Power Strip, 4 Cord Length', 9, 10, 50, '2024-02-24'),
('OFF-AP-10002118', '1.7 Cubic Foot Compact \"Cube\" Office Refrigerators', 9, 10, 16, '2024-04-09'),
('OFF-AP-10002311', 'Holmes Replacement Filter for HEPA Air Cleaner, Very Large Room, HEPA Filter', 9, 10, 35, '2024-03-12'),
('OFF-AP-10002518', 'Kensington 7 Outlet MasterPiece Power Center', 9, 10, 29, '2024-05-24'),
('OFF-AP-10002684', 'Acco 7-Outlet Masterpiece Power Center, Wihtout Fax/Phone Line Protection', 9, 10, 33, '2024-04-05'),
('OFF-AP-10002892', 'Belkin F5C206VTEL 6 Outlet Surge', 9, 10, 40, '2024-01-30'),
('OFF-AP-10003217', 'Eureka Sanitaire Commercial Upright', 9, 10, 17, '2024-06-10'),
('OFF-AP-10003622', 'Bravo II Megaboss 12-Amp Hard Body Upright, Replacement Belts, 2 Belts per Pack', 9, 10, 38, '2024-04-18'),
('OFF-AP-10003842', 'Fellowes Super Stor/Drawer Files', 4, 6, 53, '2024-05-04'),
('OFF-AP-10004708', 'Fellowes Advanced Computer Series Surge Protectors', 9, 10, 44, '2024-06-21'),
('OFF-AR-10000246', 'Newell 318', 1, 9, 170, '2024-01-17'),
('OFF-AR-10000380', 'Hunt PowerHouse Electric Pencil Sharpener, Blue', 1, 9, 33, '2024-04-25'),
('OFF-AR-10000390', 'Newell Chalk Holder', 1, 9, 180, '2024-03-02'),
('OFF-AR-10000634', 'Boston 16765 Mini Stand Up Battery Pencil Sharpener', 1, 9, 88, '2024-05-03'),
('OFF-AR-10000919', 'Boston 1903 Designer Electric Pencil Sharpener', 1, 9, 47, '2024-07-04'),
('OFF-AR-10000940', 'Newell 343', 1, 9, 210, '2024-05-10'),
('OFF-AR-10001026', 'Sanford Uni-Blazer View Highlighters, Chisel Tip, Yellow', 1, 9, 115, '2024-04-29'),
('OFF-AR-10001149', 'Sanford Colorific Colored Pencils, 12/Box', 1, 9, 95, '2024-05-07'),
('OFF-AR-10001427', 'BIC Brite Liner Highlighters, Chisel Tip, Yellow, 36/Pack', 1, 9, 165, '2024-07-07'),
('OFF-AR-10001547', 'Newell 311', 1, 9, 195, '2024-03-26'),
('OFF-AR-10001662', 'BIC Brite Liner Highlighters, Fine Tip, Assorted, 36/Pack', 1, 9, 145, '2024-07-08'),
('OFF-AR-10001683', 'Lumber Crayons', 1, 9, 300, '2024-03-24'),
('OFF-AR-10001868', 'Prang Dustless Chalk Sticks', 1, 9, 350, '2024-03-30'),
('OFF-AR-10001915', 'Boston 1806 Commercial Electric pencil sharpener', 1, 9, 35, '2024-05-06'),
('OFF-AR-10001940', 'Sanford Colorific Eraseable Coloring Pencils, 12 Count', 1, 9, 105, '2024-05-29'),
('OFF-AR-10001954', 'BIC Brite Liner Highlighters, Vivid Colors, 8/Pack', 1, 9, 110, '2024-05-15'),
('OFF-AR-10001958', 'Stanley Bostitch Contemporary Electric Pencil Sharpeners', 1, 9, 52, '2024-06-20'),
('OFF-AR-10002053', 'Premium Writing Pencils, Soft, #2 by Central Association for the Blind', 1, 9, 280, '2024-04-10'),
('OFF-AR-10002135', 'Boston 1650 Electric Pencil Sharpener, Black', 1, 9, 36, '2024-05-11'),
('OFF-AR-10002257', 'Boston 1645 Deluxe Heavy-Duty Electric Pencil Sharpener', 1, 9, 38, '2024-06-25'),
('OFF-AR-10002375', 'Boston 1760 Electric Pencil Sharpener, Black', 1, 9, 44, '2024-06-29'),
('OFF-AR-10002656', 'Sanford Liquid Accent Highlighters', 1, 9, 155, '2024-04-01'),
('OFF-AR-10002671', 'Hunt BOSTON Model 1606 High-Volume Electric Pencil Sharpener, Beige', 1, 9, 42, '2024-04-03'),
('OFF-AR-10002818', 'Boston 1900 Electric Pencil Sharpener, White', 1, 9, 48, '2024-06-27'),
('OFF-AR-10002833', 'Newell 322', 1, 9, 200, '2024-01-20'),
('OFF-AR-10003056', 'Newell 341', 1, 9, 150, '2024-07-09'),
('OFF-AR-10003156', 'Boston 16801 Nautilus Battery Pencil Sharpener', 1, 9, 65, '2024-06-30'),
('OFF-AR-10003338', 'Boston Electric Pencil Sharpener, Model 1812, Charcoal Black', 1, 9, 39, '2024-05-09'),
('OFF-AR-10003514', '4009 Highlighters by Sanford', 1, 9, 125, '2024-05-14'),
('OFF-AR-10003560', 'Boston 1950 Mighty Mite Electric Pencil Sharpener', 1, 9, 58, '2024-06-28'),
('OFF-AR-10003631', 'BIC Brite Liner Highlighters, Chisel Tip, Assorted, 36/Pack', 1, 9, 155, '2024-05-16'),
('OFF-AR-10003651', 'Boston 1730 StandUp Electric Pencil Sharpener', 1, 9, 42, '2024-05-05'),
('OFF-AR-10003732', 'Boston 1720 Standup Electric Pencil Sharpener', 1, 9, 29, '2024-05-08'),
('OFF-AR-10003829', 'Boston 1706 Elephant Ear Pencil Sharpener', 1, 9, 55, '2024-07-03'),
('OFF-AR-10004027', 'Binney & Smith inkTank Erasable Desk Highlighter, Chisel Tip, Yellow, 12/Box', 1, 9, 142, '2024-07-05'),
('OFF-AR-10004042', 'BOSTON Model 1800 Electric Pencil Sharpeners, Putty/Woodgrain', 1, 9, 60, '2024-01-23'),
('OFF-AR-10004078', 'Boston 1606 Mission-Style Electric Pencil Sharpener', 1, 9, 41, '2024-07-02'),
('OFF-AR-10004344', 'Boston School Pro Electric Pencil Sharpener, 1670', 1, 9, 26, '2024-07-01'),
('OFF-AR-10004441', 'BIC Brite Liner Highlighters', 1, 9, 185, '2024-03-30'),
('OFF-AR-10004602', 'BIC Brite Liner Grip Highlighters, Assorted, 5/Pack', 1, 9, 95, '2024-07-06'),
('OFF-AR-10004685', 'Binney & Smith Crayola Metallic Colored Pencils, 8-Color Set', 1, 9, 78, '2024-05-13'),
('OFF-AR-10004790', 'Boston 1845 Electric Pencil Sharpener, White', 1, 9, 33, '2024-05-10'),
('OFF-AR-10004930', 'Turquoise Lead Holder with Pocket Clip', 1, 9, 95, '2024-04-14'),
('OFF-AR-10004974', 'Boston 1902 Heavy-Duty Electric Pencil Sharpener', 1, 9, 31, '2024-05-12'),
('OFF-AR-10004999', 'Boston 1827 Professional Battery-Operated Pencil Sharpener', 1, 9, 32, '2024-05-07'),
('OFF-BI-10000343', 'Pressboard Covers with Storage Hooks, 9 1/2\" x 11\", Light Blue', 6, 7, 165, '2024-04-16'),
('OFF-BI-10000474', 'Avery Recycled Flexi-View Covers for Binding Systems', 6, 7, 130, '2024-01-21'),
('OFF-BI-10000756', 'Storex DuraTech Recycled Plastic Frosted Binders', 6, 7, 110, '2024-01-18'),
('OFF-BI-10001078', 'Acco PRESSTEX Data Binder with Storage Hooks, Dark Blue, 14 7/8\" X 11\"', 6, 7, 120, '2024-04-01'),
('OFF-BI-10001460', 'Plastic Binding Combs', 6, 7, 180, '2024-02-06'),
('OFF-BI-10001525', 'Acco Pressboard Covers with Storage Hooks, 14 7/8\" x 11\", Executive Red', 6, 7, 100, '2024-02-21'),
('OFF-BI-10001634', 'Wilson Jones Active Use Binders', 6, 7, 95, '2024-01-19'),
('OFF-BI-10001721', 'Trimflex Flexible Post Binders', 6, 7, 115, '2024-04-18'),
('OFF-BI-10001890', 'Avery Poly Binder Pockets', 6, 7, 175, '2024-06-01'),
('OFF-BI-10002215', 'Wilson Jones Hanging View Binder, White, 1\"', 6, 7, 85, '2024-03-18'),
('OFF-BI-10002309', 'Avery Heavy-Duty EZD Binder With Locking Rings', 6, 7, 135, '2024-02-16'),
('OFF-BI-10002609', 'Avery Hidden Tab Dividers for Binding Systems', 6, 7, 175, '2024-04-20'),
('OFF-BI-10002794', 'Avery Trapezoid Ring Binder, 3\" Capacity, Black, 1040 sheets', 6, 7, 88, '2024-04-22'),
('OFF-BI-10002824', 'GBC VeloBinder Electric Binding Machine', 6, 7, 20, '2024-05-01'),
('OFF-BI-10002852', 'Ibico Standard Transparent Covers', 6, 7, 160, '2024-02-23'),
('OFF-BI-10002982', 'Ibico Recycled Linen-Style Covers', 6, 7, 145, '2024-05-02'),
('OFF-BI-10003274', 'Avery Durable Slant Ring Binders, No Labels', 6, 7, 142, '2024-03-11'),
('OFF-BI-10003291', 'Wilson Jones Leather-Like Binders with DublLock Round Rings', 6, 7, 110, '2024-03-23'),
('OFF-BI-10003650', 'GBC DocuBind 300 Electric Binding Machine', 6, 7, 15, '2024-03-07'),
('OFF-BI-10003656', 'Fellowes PB200 Plastic Comb Binding Machine', 6, 7, 22, '2024-02-22'),
('OFF-BI-10003981', 'Avery Durable Plastic 1\" Binders', 6, 7, 195, '2024-03-04'),
('OFF-BI-10004002', 'Wilson Jones International Size A4 Ring Binders', 6, 7, 115, '2024-05-21'),
('OFF-BI-10004182', 'Economy Binders', 6, 7, 300, '2024-04-07'),
('OFF-BI-10004410', 'C-Line Peel & Stick Add-On Filing Pockets, 8-3/4 x 5-1/8, 10/Pack', 6, 7, 140, '2024-03-25'),
('OFF-BI-10004654', 'Avery Binding System Hidden Tab Executive Style Index Sets', 6, 7, 200, '2024-02-11'),
('OFF-BI-10004738', 'Flexible Leather- Look Classic Collection Ring Binder', 6, 7, 105, '2024-04-17'),
('OFF-BI-10004781', 'GBC Wire Binding Strips', 6, 7, 130, '2024-05-08'),
('OFF-EN-10000927', 'Jet-Pak Recycled Peel N Seal Padded Mailers', 2, 8, 110, '2024-04-11'),
('OFF-EN-10001509', 'Poly String Tie Envelopes', 2, 8, 220, '2024-03-16'),
('OFF-EN-10001990', 'Staple envelope', 2, 8, 240, '2024-03-29'),
('OFF-EN-10002500', 'Globe Weis Peel & Seel First Class Envelopes', 2, 8, 105, '2024-03-09'),
('OFF-EN-10002504', 'Tyvek Top-Opening Peel & Seel Envelopes, Plain White', 2, 8, 95, '2024-03-06'),
('OFF-EN-10002600', 'Redi-Strip #10 Envelopes, 4 1/8 x 9 1/2', 2, 8, 160, '2024-03-05'),
('OFF-EN-10002986', '#10-4 1/8\" x 9 1/2\" Premium Diagonal Seam Envelopes', 2, 8, 180, '2024-01-24'),
('OFF-EN-10004030', 'Convenience Packs of Business Envelopes', 2, 8, 135, '2024-03-19'),
('OFF-FA-10000134', 'Advantus Push Pins, Aluminum Head', 1, 9, 520, '2024-04-21'),
('OFF-FA-10000304', 'Advantus Push Pins', 1, 9, 600, '2024-02-03'),
('OFF-FA-10000585', 'OIC Bulk Pack Metal Binder Clips', 1, 9, 380, '2024-04-26'),
('OFF-FA-10000621', 'OIC Colored Binder Clips, Assorted Sizes', 1, 9, 450, '2024-04-26'),
('OFF-FA-10002780', 'Staples', 1, 9, 800, '2024-03-14'),
('OFF-FA-10002988', 'Ideal Clamps', 1, 9, 220, '2024-03-16'),
('OFF-LA-10000134', 'Avery 511', 2, 8, 320, '2024-04-13'),
('OFF-LA-10000240', 'Self-Adhesive Address Labels for Typewriters by Universal', 2, 8, 120, '2024-03-10'),
('OFF-LA-10002475', 'Avery 519', 2, 8, 270, '2024-03-27'),
('OFF-LA-10002762', 'Avery 485', 2, 8, 250, '2024-01-31'),
('OFF-LA-10003148', 'Avery 51', 2, 8, 310, '2024-05-27'),
('OFF-LA-10004544', 'Avery 505', 2, 8, 285, '2024-06-14'),
('OFF-PA-10000061', 'Xerox 205', 2, 8, 198, '2024-06-04'),
('OFF-PA-10000249', 'Easy-staple paper', 2, 8, 500, '2024-01-16'),
('OFF-PA-10000304', 'Xerox 1995', 2, 8, 140, '2024-04-15'),
('OFF-PA-10000482', 'Snap-A-Way Black Print Carbonless Ruled Speed Letter, Triplicate', 2, 8, 75, '2024-04-04'),
('OFF-PA-10000587', 'Array Parchment Paper, Assorted Colors', 2, 8, 85, '2024-03-29'),
('OFF-PA-10000659', 'Adams Phone Message Book, Professional, 400 Message Capacity, 5 3/6 x 11', 2, 8, 92, '2024-05-25'),
('OFF-PA-10001144', 'Xerox 1913', 2, 8, 168, '2024-04-03'),
('OFF-PA-10001569', 'Xerox 232', 2, 8, 190, '2024-03-28'),
('OFF-PA-10001736', 'Xerox 1880', 2, 8, 165, '2024-03-15'),
('OFF-PA-10001804', 'Xerox 195', 2, 8, 175, '2024-05-06'),
('OFF-PA-10001937', 'Xerox 1894', 2, 8, 148, '2024-04-30'),
('OFF-PA-10001950', 'Southworth 25% Cotton Antique Laid Paper & Envelopes', 2, 8, 88, '2024-05-16'),
('OFF-PA-10002250', 'Xerox 1969', 2, 8, 152, '2024-06-26'),
('OFF-PA-10002254', 'Xerox 1883', 2, 8, 122, '2024-03-25'),
('OFF-PA-10002365', 'Xerox 1967', 2, 8, 180, '2024-01-25'),
('OFF-PA-10002377', 'Xerox 1916', 2, 8, 155, '2024-05-05'),
('OFF-PA-10002666', 'Southworth 25% Cotton Linen-Finish Paper & Envelopes', 2, 8, 79, '2024-04-17'),
('OFF-PA-10002749', 'Wirebound Message Books, 5-1/2 x 4 Forms, 2 or 4 Forms per Page', 2, 8, 102, '2024-06-08'),
('OFF-PA-10002751', 'Xerox 1920', 2, 8, 138, '2024-03-28'),
('OFF-PA-10003177', 'Xerox 1999', 2, 8, 130, '2024-02-22'),
('OFF-PA-10003256', 'Avery Personal Creations Heavyweight Cards', 2, 8, 85, '2024-04-19'),
('OFF-PA-10003673', 'Xerox 1922', 2, 8, 132, '2024-06-24'),
('OFF-PA-10003892', 'Xerox 1943', 2, 8, 160, '2024-02-08'),
('OFF-PA-10004000', 'While You Were Out Pads, 50 per Pad, 4 x 5 1/4, Green Cycle', 2, 8, 112, '2024-06-18'),
('OFF-PA-10004040', 'Universal Premium White Copier/Laser Paper (20Lb. and 87 Bright)', 2, 8, 600, '2024-02-27'),
('OFF-PA-10004327', 'Xerox 1911', 2, 8, 145, '2024-05-11'),
('OFF-PA-10004675', 'Telephone Message Books with Fax/Mobile Section, 5 1/2\" x 3 3/16\"', 2, 8, 90, '2024-04-05'),
('OFF-PA-10004965', 'Xerox 1921', 2, 8, 125, '2024-04-27'),
('OFF-ST-10000107', 'Fellowes Super Stor/Drawer', 4, 6, 65, '2024-03-20'),
('OFF-ST-10000604', 'Home/Office Personal File Carts', 4, 6, 38, '2024-02-04'),
('OFF-ST-10000615', 'SimpliFile Personal File, Black Granite, 15w x 6-15/16d x 11-1/4h', 4, 6, 52, '2024-04-08'),
('OFF-ST-10000642', 'Tennsco Lockers, Gray', 4, 6, 32, '2024-04-20'),
('OFF-ST-10000760', 'Eldon Fold N Roll Cart System', 4, 6, 55, '2024-02-14'),
('OFF-ST-10000777', 'Companion Letter/Legal File, Black', 4, 6, 27, '2024-04-30'),
('OFF-ST-10000991', 'Space Solutions HD Industrial Steel Shelving.', 4, 6, 21, '2024-03-31'),
('OFF-ST-10001328', 'Personal Filing Tote with Lid, Black/Gray', 4, 6, 88, '2024-06-02'),
('OFF-ST-10001414', 'Decoflex Hanging Personal Folder File', 4, 6, 56, '2024-06-07'),
('OFF-ST-10001522', 'Gould Plastics 18-Pocket Panel Bin, 34w x 5-1/4d x 20-1/2h', 4, 6, 29, '2024-06-13'),
('OFF-ST-10001590', 'Tenex Personal Project File with Scoop Front Design, Black', 4, 6, 63, '2024-05-17'),
('OFF-ST-10001713', 'Gould Plastics 9-Pocket Panel Bin, 18-3/8w x 5-1/4d x 20-1/2h, Black', 4, 6, 32, '2024-01-29'),
('OFF-ST-10002370', 'Sortfiler Multipurpose Personal File Organizer, Black', 4, 6, 44, '2024-02-17'),
('OFF-ST-10002974', 'Trav-L-File Heavy-Duty Shuttle II, Black', 4, 6, 23, '2024-05-03'),
('OFF-ST-10003282', 'Advantus 10-Drawer Portable Organizer, Chrome Metal Frame, Smoke Drawers', 4, 6, 45, '2024-01-27'),
('OFF-ST-10003442', 'Eldon Portable Mobile Manager', 4, 6, 58, '2024-02-20'),
('OFF-ST-10003455', 'Tenex File Box, Personal Filing Tote with Lid, Black', 4, 6, 72, '2024-04-07'),
('OFF-ST-10003479', 'Eldon Base for stackable storage shelf, platinum', 4, 6, 70, '2024-03-17'),
('OFF-ST-10004123', 'Safco Industrial Wire Shelving System', 4, 6, 19, '2024-02-13'),
('OFF-ST-10004186', 'Stur-D-Stor Shelving, Vertical 5-Shelf: 72\"H x 36\"W x 18 1/2\"D', 4, 6, 28, '2024-02-16'),
('OFF-SU-10001218', 'Fiskars Softgrip Scissors', 4, 6, 78, '2024-03-17'),
('OFF-SU-10002189', 'Acme Rosewood Handle Letter Opener', 4, 6, 85, '2024-04-06'),
('TEC-AC-10000109', 'Sony Micro Vault Click 16 GB USB 2.0 Flash Drive', 10, 100, 88, '2024-06-16'),
('TEC-AC-10000171', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 25/Pack', 10, 100, 80, '2024-02-29'),
('TEC-AC-10000844', 'Logitech Gaming G510s - Keyboard', 10, 100, 21, '2024-04-24'),
('TEC-AC-10001266', 'Memorex Micro Travel Drive 8 GB', 10, 100, 95, '2024-04-22'),
('TEC-AC-10001552', 'Logitech K350 2.4Ghz Wireless Keyboard', 10, 100, 38, '2024-04-21'),
('TEC-AC-10001767', 'SanDisk Ultra 64 GB MicroSDHC Class 10 Memory Card', 10, 100, 45, '2024-02-26'),
('TEC-AC-10001998', 'Logitech LS21 Speaker System - PC Multimedia - 2.1-CH - Wired', 10, 100, 24, '2024-02-19'),
('TEC-AC-10002167', 'Imation 8gb Micro Traveldrive Usb 2.0 Flash Drive', 10, 100, 150, '2024-03-01'),
('TEC-AC-10002323', 'SanDisk Ultra 32 GB MicroSDHC Class 10 Memory Card', 10, 100, 82, '2024-04-10'),
('TEC-AC-10002345', 'HP Standard 104 key PS/2 Keyboard', 10, 100, 58, '2024-04-09'),
('TEC-AC-10003027', 'Imation 8GB Mini TravelDrive USB 2.0 Flash Drive', 10, 100, 200, '2024-02-26'),
('TEC-AC-10003499', 'Memorex Mini Travel Drive 8 GB USB 2.0 Flash Drive', 10, 100, 120, '2024-03-01'),
('TEC-AC-10003657', 'Lenovo 17-Key USB Numeric Keypad', 10, 100, 52, '2024-05-20'),
('TEC-AC-10004633', 'Verbatim 25 GB 6x Blu-ray Single Layer Recordable Disc, 3/Pack', 10, 100, 95, '2024-02-07'),
('TEC-AC-10004659', 'Imation Secure+ Hardware Encrypted USB 2.0 Flash Drive; 16GB', 10, 100, 68, '2024-05-30'),
('TEC-MA-10000822', 'Lexmark MX611dhe Monochrome Laser Printer', 10, 100, 12, '2024-05-22'),
('TEC-MA-10000864', 'Cisco 9971 IP Video Phone Charcoal', 10, 100, 14, '2024-04-24'),
('TEC-MA-10001148', 'Swingline SM12-08 MicroCut Jam Free Shredder', 10, 100, 11, '2024-04-28'),
('TEC-PH-10000215', 'Plantronics Cordless Phone Headset with In-line Volume - M214C', 10, 1, 28, '2024-05-13'),
('TEC-PH-10000486', 'Plantronics HL10 Handset Lifter', 10, 1, 35, '2024-01-26'),
('TEC-PH-10001254', 'Jabra BIZ 2300 Duo QD Duo Corded Headset', 10, 1, 19, '2024-03-24'),
('TEC-PH-10001448', 'Anker Astro 15000mAh USB Portable Charger', 10, 100, 35, '2024-03-22'),
('TEC-PH-10001552', 'I Need\'s 3d Hello Kitty Hybrid Silicone Case Cover for HTC One X 4g with 3d Hello Kitty Stylus Pen Green/pink', 10, 1, 67, '2024-04-12'),
('TEC-PH-10001700', 'Panasonic KX-TG6844B Expandable Digital Cordless Telephone', 10, 1, 21, '2024-06-12'),
('TEC-PH-10001918', 'Nortel Business Series Terminal T7208 Digital phone', 10, 1, 26, '2024-06-11'),
('TEC-PH-10001949', 'Cisco SPA 501G IP Phone', 10, 1, 30, '2024-02-28'),
('TEC-PH-10002033', 'Konftel 250 Conference phone - Charcoal black', 10, 1, 15, '2024-03-08'),
('TEC-PH-10002275', 'Mitel 5320 IP Phone VoIP phone', 10, 1, 25, '2024-02-25'),
('TEC-PH-10002293', 'Anker 36W 4-Port USB Wall Charger Travel Power Adapter for iPhone 5s 5c 5', 10, 1, 42, '2024-03-13'),
('TEC-PH-10002447', 'AT&T CL83451 4-Handset Telephone', 10, 1, 12, '2024-03-27'),
('TEC-PH-10002563', 'Adtran 1202752G1', 10, 1, 19, '2024-06-17'),
('TEC-PH-10002726', 'netTALK DUO VoIP Telephone Service', 10, 1, 18, '2024-02-10'),
('TEC-PH-10002844', 'Speck Products Candyshell Flip Case', 10, 1, 75, '2024-04-23'),
('TEC-PH-10003273', 'AT&T TR1909W', 10, 1, 31, '2024-04-08'),
('TEC-PH-10003875', 'KLD Oscar II Style Snap-on Ultra Thin Side Flip Synthetic Leather Cover Case for HTC One HTC M7', 10, 1, 58, '2024-05-01'),
('TEC-PH-10003931', 'JBL Micro Wireless Portable Bluetooth Speaker', 10, 1, 41, '2024-04-02'),
('TEC-PH-10003988', 'LF Elite 3D Dazzle Designer Hard Case Cover, Lf Stylus Pen and Wiper For Apple Iphone 5c Mini Lite', 10, 1, 65, '2024-02-01'),
('TEC-PH-10004536', 'Avaya 5420 Digital phone', 10, 1, 24, '2024-05-19'),
('TEC-PH-10004896', 'Nokia Lumia 521 (T-Mobile)', 10, 1, 45, '2024-05-31'),
('TEC-PH-10004977', 'GE 30524EE4', 10, 1, 20, '2024-02-23');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `entrepots`
--
ALTER TABLE `entrepots`
  ADD PRIMARY KEY (`entrepot_id`);

--
-- Index pour la table `fournisseurs`
--
ALTER TABLE `fournisseurs`
  ADD PRIMARY KEY (`fournisseur_id`);

--
-- Index pour la table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fournisseur_id` (`fournisseur_id`),
  ADD KEY `entrepot_id` (`entrepot_id`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`fournisseur_id`) REFERENCES `fournisseurs` (`fournisseur_id`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`entrepot_id`) REFERENCES `entrepots` (`entrepot_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
