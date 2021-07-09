-- MariaDB dump 10.17  Distrib 10.4.8-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: Pokemon
-- ------------------------------------------------------
-- Server version	10.4.8-MariaDB-1:10.4.8+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Pokemon_stats`
--

DROP TABLE IF EXISTS `Pokemon_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pokemon_stats` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pokemon_stats`
--

LOCK TABLES `Pokemon_stats` WRITE;
/*!40000 ALTER TABLE `Pokemon_stats` DISABLE KEYS */;
INSERT INTO `Pokemon_stats` VALUES ('Bulbasaur',128,111,118),('Ivysaur',155,143,151),('Venusaur',190,189,198),('Charmander',118,93,116),('Charmeleon',151,126,158),('Charizard',186,173,223),('Squirtle',127,121,94),('Wartortle',153,155,126),('Blastoise',188,207,171),('Caterpie',128,55,55),('Metapod',137,80,45),('Butterfree',155,137,167),('Weedle',120,50,63),('Kakuna',128,75,46),('Beedrill',163,130,169),('Pidgey',120,73,85),('Pidgeotto',160,105,117),('Pidgeot',195,154,166),('Rattata',102,70,103),('Raticate',146,139,161),('Spearow',120,60,112),('Fearow',163,133,182),('Ekans',111,97,110),('Arbok',155,153,167),('Pikachu',111,96,112),('Raichu',155,151,193),('Sandshrew',137,120,126),('Sandslash',181,175,182),('Nidoran♀',146,89,86),('Nidorina',172,120,117),('Nidoqueen',207,173,180),('Nidoran♂',130,76,105),('Nidorino',156,111,137),('Nidoking',191,156,204),('Clefairy',172,108,107),('Clefable',216,162,178),('Vulpix',116,109,96),('Ninetales',177,190,169),('Jigglypuff',251,41,80),('Wigglytuff',295,90,156),('Zubat',120,73,83),('Golbat',181,150,161),('Oddish',128,112,131),('Gloom',155,136,153),('Vileplume',181,167,202),('Paras',111,99,121),('Parasect',155,146,165),('Venonat',155,100,100),('Venomoth',172,143,179),('Diglett',67,78,109),('Dugtrio',111,136,167),('Meowth',120,78,92),('Persian',163,136,150),('Psyduck',137,95,122),('Golduck',190,162,191),('Mankey',120,82,148),('Primeape',163,138,207),('Growlithe',146,93,136),('Arcanine',207,166,227),('Poliwag',120,82,101),('Poliwhirl',163,123,130),('Poliwrath',207,184,182),('Abra',93,82,195),('Kadabra',120,117,232),('Alakazam',146,167,271),('Machop',172,82,137),('Machoke',190,125,177),('Machamp',207,159,234),('Bellsprout',137,61,139),('Weepinbell',163,92,172),('Victreebel',190,135,207),('Tentacool',120,149,97),('Tentacruel',190,209,166),('Geodude',120,132,132),('Graveler',146,164,164),('Golem',190,198,211),('Ponyta',137,127,170),('Rapidash',163,162,207),('Slowpoke',207,98,109),('Slowbro',216,180,177),('Magnemite',93,121,165),('Magneton',137,169,223),('Farfetch’d',141,115,124),('Doduo',111,83,158),('Dodrio',155,140,218),('Seel',163,121,85),('Dewgong',207,177,139),('Grimer',190,90,135),('Muk',233,172,190),('Shellder',102,134,116),('Cloyster',137,256,186),('Gastly',102,67,186),('Haunter',128,107,223),('Gengar',155,149,261),('Onix',111,232,85),('Drowzee',155,136,89),('Hypno',198,193,144),('Krabby',102,124,181),('Kingler',146,181,240),('Voltorb',120,111,109),('Electrode',155,173,173),('Exeggcute',155,125,107),('Exeggutor',216,149,233),('Cubone',137,144,90),('Marowak',155,186,144),('Hitmonlee',137,181,224),('Hitmonchan',137,197,193),('Lickitung',207,137,108),('Koffing',120,141,119),('Weezing',163,197,174),('Rhyhorn',190,127,140),('Rhydon',233,171,222),('Chansey',487,128,60),('Tangela',163,169,183),('Kangaskhan',233,165,181),('Horsea',102,103,129),('Seadra',146,156,187),('Goldeen',128,110,123),('Seaking',190,147,175),('Staryu',102,112,137),('Starmie',155,184,210),('Mr. Mime',120,205,192),('Scyther',172,170,218),('Jynx',163,151,223),('Electabuzz',163,158,198),('Magmar',163,154,206),('Pinsir',163,182,238),('Tauros',181,183,198),('Magikarp',85,85,29),('Gyarados',216,186,237),('Lapras',277,174,165),('Ditto',134,91,91),('Eevee',146,114,104),('Vaporeon',277,161,205),('Jolteon',163,182,232),('Flareon',163,179,246),('Porygon',163,136,153),('Omanyte',111,153,155),('Omastar',172,201,207),('Kabuto',102,140,148),('Kabutops',155,186,220),('Aerodactyl',190,159,221),('Snorlax',330,169,190),('Articuno',207,236,192),('Zapdos',207,185,253),('Moltres',207,181,251),('Dratini',121,91,119),('Dragonair',156,135,163),('Dragonite',209,198,263),('Mewtwo',214,182,300),('Mew',225,210,210),('Chikorita',128,122,92),('Bayleef',155,155,122),('Meganium',190,202,168),('Cyndaquil',118,93,116),('Quilava',151,126,158),('Typhlosion',186,173,223),('Totodile',137,109,117),('Croconaw',163,142,150),('Feraligatr',198,188,205),('Sentret',111,73,79),('Furret',198,125,148),('Hoothoot',155,88,67),('Noctowl',225,156,145),('Ledyba',120,118,72),('Ledian',146,179,107),('Spinarak',120,73,105),('Ariados',172,124,161),('Crobat',198,178,194),('Chinchou',181,97,106),('Lanturn',268,137,146),('Pichu',85,53,77),('Cleffa',137,79,75),('Igglybuff',207,32,69),('Togepi',111,116,67),('Togetic',146,181,139),('Natu',120,89,134),('Xatu',163,146,192),('Mareep',146,79,114),('Flaaffy',172,109,145),('Ampharos',207,169,211),('Bellossom',181,186,169),('Marill',172,93,37),('Azumarill',225,152,112),('Sudowoodo',172,176,167),('Politoed',207,179,174),('Hoppip',111,94,67),('Skiploom',146,120,91),('Jumpluff',181,183,118),('Aipom',146,112,136),('Sunkern',102,55,55),('Sunflora',181,135,185),('Yanma',163,94,154),('Wooper',146,66,75),('Quagsire',216,143,152),('Espeon',163,175,261),('Umbreon',216,240,126),('Murkrow',155,87,175),('Slowking',216,180,177),('Misdreavus',155,154,167),('Unown',134,91,136),('Wobbuffet',382,106,60),('Girafarig',172,133,182),('Pineco',137,122,108),('Forretress',181,205,161),('Dunsparce',225,128,131),('Gligar',163,184,143),('Steelix',181,272,148),('Snubbull',155,85,137),('Granbull',207,131,212),('Qwilfish',163,138,184),('Scizor',172,181,236),('Shuckle',85,396,17),('Heracross',190,179,234),('Sneasel',146,146,189),('Teddiursa',155,93,142),('Ursaring',207,144,236),('Slugma',120,71,118),('Magcargo',137,191,139),('Swinub',137,69,90),('Piloswine',225,138,181),('Corsola',146,156,118),('Remoraid',111,69,127),('Octillery',181,141,197),('Delibird',128,90,128),('Mantine',163,226,148),('Skarmory',163,226,148),('Houndour',128,83,152),('Houndoom',181,144,224),('Kingdra',181,194,194),('Phanpy',207,98,107),('Donphan',207,185,214),('Porygon2',198,180,198),('Stantler',177,131,192),('Smeargle',146,83,40),('Tyrogue',111,64,64),('Hitmontop',137,207,173),('Smoochum',128,91,153),('Elekid',128,101,135),('Magby',128,99,151),('Miltank',216,193,157),('Blissey',496,169,129),('Raikou',207,195,241),('Entei',251,171,235),('Suicune',225,235,180),('Larvitar',137,93,115),('Pupitar',172,133,155),('Tyranitar',225,207,251),('Lugia',235,310,193),('Ho-Oh',214,244,239),('Celebi',225,210,210),('Treecko',120,94,124),('Grovyle',137,120,172),('Sceptile',172,169,223),('Torchic',128,87,130),('Combusken',155,115,163),('Blaziken',190,141,240),('Mudkip',137,93,126),('Marshtomp',172,133,156),('Swampert',225,175,208),('Poochyena',111,61,96),('Mightyena',172,132,171),('Zigzagoon',116,80,58),('Linoone',186,128,142),('Wurmple',128,59,75),('Silcoon',137,77,60),('Beautifly',155,98,189),('Cascoon',137,77,60),('Dustox',155,162,98),('Lotad',120,77,71),('Lombre',155,119,112),('Ludicolo',190,176,173),('Seedot',120,77,71),('Nuzleaf',172,78,134),('Shiftry',207,121,200),('Taillow',120,61,106),('Swellow',155,124,185),('Wingull',120,61,106),('Pelipper',155,174,175),('Ralts',99,59,79),('Kirlia',116,90,117),('Gardevoir',169,195,237),('Surskit',120,87,93),('Masquerain',172,150,192),('Shroomish',155,110,74),('Breloom',155,144,241),('Slakoth',155,92,104),('Vigoroth',190,145,159),('Slaking',284,166,290),('Nincada',104,126,80),('Ninjask',156,112,199),('Shedinja',1,73,153),('Whismur',162,42,92),('Loudred',197,81,134),('Exploud',232,137,179),('Makuhita',176,54,99),('Hariyama',302,114,209),('Azurill',137,71,36),('Nosepass',102,215,82),('Skitty',137,79,84),('Delcatty',172,127,132),('Sableye',137,136,141),('Mawile',137,141,155),('Aron',137,141,121),('Lairon',155,198,158),('Aggron',172,257,198),('Meditite',102,107,78),('Medicham',155,152,121),('Electrike',120,78,123),('Manectric',172,127,215),('Plusle',155,129,167),('Minun',155,150,147),('Volbeat',163,166,143),('Illumise',163,166,143),('Roselia',137,131,186),('Gulpin',172,99,80),('Swalot',225,159,140),('Carvanha',128,39,171),('Sharpedo',172,83,243),('Wailmer',277,68,136),('Wailord',347,87,175),('Numel',155,79,119),('Camerupt',172,136,194),('Torkoal',172,203,151),('Spoink',155,122,125),('Grumpig',190,188,171),('Spinda',155,116,116),('Trapinch',128,78,162),('Vibrava',137,99,134),('Flygon',190,168,205),('Cacnea',137,74,156),('Cacturne',172,115,221),('Swablu',128,132,76),('Altaria',181,201,141),('Zangoose',177,124,222),('Seviper',177,118,196),('Lunatone',207,153,178),('Solrock',207,153,178),('Barboach',137,82,93),('Whiscash',242,141,151),('Corphish',125,99,141),('Crawdaunt',160,142,224),('Baltoy',120,124,77),('Claydol',155,229,140),('Lileep',165,150,105),('Cradily',200,194,152),('Anorith',128,100,176),('Armaldo',181,174,222),('Feebas',85,85,29),('Milotic',216,219,192),('Castform',172,139,139),('Kecleon',155,189,161),('Shuppet',127,65,138),('Banette',162,126,218),('Duskull',85,162,70),('Dusclops',120,234,124),('Tropius',223,163,136),('Chimecho',181,170,175),('Absol',163,120,246),('Wynaut',216,86,41),('Snorunt',137,95,95),('Glalie',190,162,162),('Spheal',172,90,95),('Sealeo',207,132,137),('Walrein',242,176,182),('Clamperl',111,135,133),('Huntail',146,179,197),('Gorebyss',146,179,211),('Relicanth',225,203,162),('Luvdisc',125,128,81),('Bagon',128,93,134),('Shelgon',163,155,172),('Salamence',216,168,277),('Beldum',120,132,96),('Metang',155,176,138),('Metagross',190,228,257),('Regirock',190,309,179),('Regice',190,309,179),('Registeel',190,285,143),('Latias',190,246,228),('Latios',190,212,268),('Kyogre',205,228,270),('Groudon',205,228,270),('Rayquaza',213,170,284),('Jirachi',225,210,210),('Deoxys',137,115,345),('Turtwig',146,110,119),('Grotle',181,143,157),('Torterra',216,188,202),('Chimchar',127,86,113),('Monferno',162,105,158),('Infernape',183,151,222),('Piplup',142,102,112),('Prinplup',162,139,150),('Empoleon',197,186,210),('Starly',120,58,101),('Staravia',146,94,142),('Staraptor',198,140,234),('Bidoof',153,73,80),('Bibarel',188,119,162),('Kricketot',114,74,45),('Kricketune',184,100,160),('Shinx',128,64,117),('Luxio',155,95,159),('Luxray',190,156,232),('Budew',120,109,91),('Roserade',155,185,243),('Cranidos',167,71,218),('Rampardos',219,109,295),('Shieldon',102,195,76),('Bastiodon',155,286,94),('Mothim',172,98,185),('Combee',102,83,59),('Vespiquen',172,190,149),('Pachirisu',155,172,94),('Buizel',146,67,132),('Floatzel',198,114,221),('Cherubi',128,92,108),('Ambipom',181,143,205),('Drifloon',207,80,117),('Drifblim',312,102,180),('Buneary',146,105,130),('Lopunny',163,194,156),('Mismagius',155,187,211),('Honchkrow',225,103,243),('Glameow',135,82,109),('Purugly',174,133,172),('Chingling',128,94,114),('Stunky',160,90,121),('Skuntank',230,132,184),('Bronzor',149,154,43),('Bronzong',167,213,161),('Bonsly',137,133,124),('Mime Jr.',85,142,125),('Happiny',225,77,25),('Chatot',183,91,183),('Spiritomb',137,199,169),('Gible',151,84,124),('Gabite',169,125,172),('Garchomp',239,193,261),('Munchlax',286,117,137),('Riolu',120,78,127),('Lucario',172,144,236),('Hippopotas',169,118,124),('Hippowdon',239,191,201),('Skorupi',120,151,93),('Drapion',172,202,180),('Croagunk',134,76,116),('Toxicroak',195,133,211),('Carnivine',179,136,187),('Finneon',135,116,96),('Lumineon',170,170,142),('Mantyke',128,179,105),('Snover',155,105,115),('Abomasnow',207,158,178),('Weavile',172,171,243),('Magnezone',172,205,238),('Lickilicky',242,181,161),('Rhyperior',251,190,241),('Tangrowth',225,184,207),('Electivire',181,163,249),('Magmortar',181,172,247),('Togekiss',198,217,225),('Yanmega',200,156,231),('Leafeon',163,219,216),('Glaceon',163,205,238),('Gliscor',181,222,185),('Mamoswine',242,146,247),('Porygon-Z',198,150,264),('Gallade',169,195,237),('Probopass',155,275,135),('Dusknoir',128,254,180),('Froslass',172,150,171),('Rotom',137,159,185),('Uxie',181,270,156),('Mesprit',190,212,212),('Azelf',181,151,270),('Dialga',205,211,275),('Palkia',189,215,280),('Heatran',209,213,251),('Regigigas',221,210,287),('Cresselia',260,258,152),('Phione',190,162,162),('Manaphy',225,210,210),('Darkrai',172,198,285),('Arceus',237,238,238),('Victini',225,210,210),('Snivy',128,107,88),('Servine',155,152,122),('Serperior',181,204,161),('Tepig',163,85,115),('Pignite',207,106,173),('Emboar',242,127,235),('Oshawott',146,85,117),('Dewott',181,116,159),('Samurott',216,157,212),('Patrat',128,73,98),('Watchog',155,139,165),('Lillipup',128,86,107),('Herdier',163,126,145),('Stoutland',198,182,206),('Purrloin',121,73,98),('Liepard',162,106,187),('Pansage',137,94,104),('Simisage',181,133,206),('Pansear',137,94,104),('Simisear',181,133,206),('Panpour',137,94,104),('Simipour',181,133,206),('Munna',183,92,111),('Musharna',253,166,183),('Pidove',137,80,98),('Tranquill',158,107,144),('Unfezant',190,146,226),('Blitzle',128,64,118),('Zebstrika',181,136,211),('Roggenrola',146,110,121),('Boldore',172,143,174),('Gigalith',198,201,226),('Woobat',163,85,107),('Swoobat',167,119,161),('Drilbur',155,85,154),('Excadrill',242,129,255),('Audino',230,163,114),('Timburr',181,87,134),('Gurdurr',198,134,180),('Conkeldurr',233,158,243),('Tympole',137,78,98),('Palpitoad',181,109,128),('Seismitoad',233,150,188),('Throh',260,160,172),('Sawk',181,153,231),('Sewaddle',128,124,96),('Swadloon',146,162,115),('Leavanny',181,165,205),('Venipede',102,99,83),('Whirlipede',120,173,100),('Scolipede',155,175,203),('Cottonee',120,111,71),('Whimsicott',155,176,164),('Petilil',128,91,119),('Lilligant',172,155,214),('Sandile',137,69,132),('Krokorok',155,90,155),('Krookodile',216,158,229),('Darumaka',172,86,153),('Maractus',181,130,201),('Dwebble',137,128,118),('Crustle',172,200,188),('Scraggy',137,132,132),('Scrafty',163,222,163),('Sigilyph',176,167,204),('Yamask',116,141,95),('Cofagrigus',151,237,163),('Tirtouga',144,146,134),('Carracosta',179,197,192),('Archen',146,89,213),('Archeops',181,139,292),('Trubbish',137,122,96),('Garbodor',190,164,181),('Zorua',120,78,153),('Zoroark',155,127,250),('Minccino',146,80,98),('Cinccino',181,130,198),('Gothita',128,112,98),('Gothorita',155,153,137),('Gothitelle',172,205,176),('Solosis',128,83,170),('Duosion',163,103,208),('Reuniclus',242,148,214),('Ducklett',158,96,84),('Swanna',181,132,182),('Vanillite',113,106,118),('Vanillish',139,138,151),('Vanilluxe',174,184,218),('Emolga',146,127,158),('Karrablast',137,87,137),('Escavalier',172,187,223),('Foongus',170,91,97),('Amoonguss',249,139,155),('Frillish',146,134,115),('Jellicent',225,178,159),('Alomomola',338,131,138),('Joltik',137,98,110),('Galvantula',172,128,201),('Ferroseed',127,155,82),('Ferrothorn',179,223,158),('Klink',120,121,98),('Klang',155,174,150),('Klinklang',155,214,199),('Tynamo',111,78,105),('Eelektrik',163,130,156),('Eelektross',198,152,217),('Elgyem',146,100,148),('Beheeyem',181,163,221),('Litwick',137,98,108),('Lampent',155,115,169),('Chandelure',155,182,271),('Axew',130,101,154),('Fraxure',165,123,212),('Haxorus',183,172,284),('Cubchoo',146,74,128),('Beartic',216,152,233),('Cryogonal',190,218,190),('Shelmet',137,140,72),('Accelgor',190,120,220),('Stunfisk',240,171,144),('Mienfoo',128,98,160),('Mienshao',163,127,258),('Druddigon',184,170,213),('Golett',153,92,127),('Golurk',205,154,222),('Pawniard',128,114,154),('Bisharp',163,176,232),('Bouffalant',216,182,195),('Rufflet',172,97,150),('Braviary',225,152,232),('Vullaby',172,139,105),('Mandibuzz',242,205,129),('Heatmor',198,129,204),('Durant',151,188,217),('Deino',141,93,116),('Zweilous',176,135,159),('Hydreigon',211,188,256),('Larvesta',146,107,156),('Volcarona',198,189,264),('Cobalion',209,229,192),('Terrakion',209,192,260),('Virizion',209,229,192),('Reshiram',205,211,275),('Zekrom',205,211,275),('Kyurem',245,170,246),('Genesect',174,199,252),('Chespin',148,106,110),('Quilladin',156,156,146),('Chesnaught',204,204,201),('Fennekin',120,102,116),('Braixen',153,130,171),('Delphox',181,189,230),('Froakie',121,84,122),('Frogadier',144,114,168),('Greninja',176,152,223),('Bunnelby',116,72,68),('Diggersby',198,155,112),('Fletchling',128,80,95),('Fletchinder',158,110,145),('Talonflame',186,155,176),('Scatterbug',116,63,63),('Spewpa',128,89,48),('Vivillon',190,103,176),('Litleo',158,112,139),('Pyroar',200,149,221),('Flabebe',127,120,108),('Floette',144,151,136),('Florges',186,244,212),('Skiddo',165,102,123),('Gogoat',265,146,196),('Pancham',167,107,145),('Pangoro',216,146,226),('Espurr',158,114,120),('Meowstic',179,167,166),('Honedge',0,0,0),('Doublade',0,0,0),('Aegislash',0,0,0),('Spritzee',186,113,110),('Aromatisse',226,150,173),('Swirlix',158,119,109),('Slurpuff',193,163,168),('Inkay',142,95,98),('Malamar',200,165,177),('Binacle',123,120,96),('Barbaracle',176,205,194),('Skrelp',137,109,109),('Dragalge',163,207,177),('Clauncher',137,117,108),('Clawitzer',174,171,221),('Helioptile',127,78,115),('Heliolisk',158,168,219),('Tyrunt',151,123,158),('Tyrantrum',193,191,227),('Amaura',184,109,124),('Aurorus',265,163,186),('Sylveon',216,205,203),('Hawlucha',186,153,195),('Dedenne',167,134,164),('Carbink',137,285,95),('Goomy',128,112,101),('Sliggoo',169,176,159),('Goodra',207,242,220),('Klefki',149,179,160),('Phantump',125,103,125),('Trevenant',198,154,201),('Pumpkaboo',135,123,121),('Gourgeist',163,213,175),('Bergmite',146,120,117),('Avalugg',216,240,196),('Noibat',120,73,83),('Noivern',198,175,205),('Xerneas',246,185,250),('Yveltal',246,185,250),('Zygarde',0,0,0),('Meltan',130,99,118),('Melmetal',264,190,226);
/*!40000 ALTER TABLE `Pokemon_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stanley`
--

DROP TABLE IF EXISTS `Stanley`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stanley` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stanley`
--

LOCK TABLES `Stanley` WRITE;
/*!40000 ALTER TABLE `Stanley` DISABLE KEYS */;
INSERT INTO `Stanley` VALUES ('Pikachu',111,96,112),('Eevee',146,114,104);
/*!40000 ALTER TABLE `Stanley` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stanley's history`
--

DROP TABLE IF EXISTS `Stanley's history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stanley's history` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stanley's history`
--

LOCK TABLES `Stanley's history` WRITE;
/*!40000 ALTER TABLE `Stanley's history` DISABLE KEYS */;
INSERT INTO `Stanley's history` VALUES ('Venusaur',190,189,198),('Pikachu',111,96,112);
/*!40000 ALTER TABLE `Stanley's history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stan's history`
--

DROP TABLE IF EXISTS `stan's history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stan's history` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stan's history`
--

LOCK TABLES `stan's history` WRITE;
/*!40000 ALTER TABLE `stan's history` DISABLE KEYS */;
INSERT INTO `stan's history` VALUES ('Wartortle',153,155,126),('Pikachu',111,96,112),('Eevee',146,114,104);
/*!40000 ALTER TABLE `stan's history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stante`
--

DROP TABLE IF EXISTS `stante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stante` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stante`
--

LOCK TABLES `stante` WRITE;
/*!40000 ALTER TABLE `stante` DISABLE KEYS */;
INSERT INTO `stante` VALUES ('Pikachu',111,96,112),('Eevee',146,114,104);
/*!40000 ALTER TABLE `stante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('Torchic',128,87,130);
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test's_history`
--

DROP TABLE IF EXISTS `test's_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test's_history` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test's_history`
--

LOCK TABLES `test's_history` WRITE;
/*!40000 ALTER TABLE `test's_history` DISABLE KEYS */;
INSERT INTO `test's_history` VALUES ('Pikachu',111,96,112);
/*!40000 ALTER TABLE `test's_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test2` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES ('Torchic',128,87,130);
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test3`
--

DROP TABLE IF EXISTS `test3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test3` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test3`
--

LOCK TABLES `test3` WRITE;
/*!40000 ALTER TABLE `test3` DISABLE KEYS */;
INSERT INTO `test3` VALUES ('Pikachu',111,96,112);
/*!40000 ALTER TABLE `test3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test4`
--

DROP TABLE IF EXISTS `test4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test4` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test4`
--

LOCK TABLES `test4` WRITE;
/*!40000 ALTER TABLE `test4` DISABLE KEYS */;
INSERT INTO `test4` VALUES ('Pikachu',111,96,112);
/*!40000 ALTER TABLE `test4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test5`
--

DROP TABLE IF EXISTS `test5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test5` (
  `Name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Base_stamina` bigint(20) DEFAULT NULL,
  `Base_defense` bigint(20) DEFAULT NULL,
  `Base_attack` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test5`
--

LOCK TABLES `test5` WRITE;
/*!40000 ALTER TABLE `test5` DISABLE KEYS */;
INSERT INTO `test5` VALUES ('Pikachu',111,96,112),('Torchic',128,87,130);
/*!40000 ALTER TABLE `test5` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-09 11:07:17
