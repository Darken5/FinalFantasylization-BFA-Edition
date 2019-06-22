--#######################################
--##
--##	   FinalFantasylization 8.1.0
--##
--##	     Final Fantasy 7 
--##
--##	        Soundpack
--##
--##     		By: Darken5
--##
--#######################################

local flag = false -- off: used in the Code to determine which sound pack is enabled
local soundPackID = "ff7" -- Specific /ffsoundpack <command> for this soundpack, must be 1 word/acronym, and lowercase (example: "Final Fantasy Mix Project" would be "ffmix"  or similar)
_G["SoundPack" .. soundPackID  .. "_SetEnabled"] = function(enabled)
    flag = enabled
    if enabled then
		-- set all the sound effects variables for this pack (you know... the ones passed to PlaySoundFile())
		--#######################################
		--##
		--##		Song List
		--##
		--#######################################

		S = "Interface\\AddOns\\FinalFantasylization_FF7Soundpack\\Sounds\\"
		
		-- Capital Cities Events --
		OrgrimmarSong = "OrgrimmarSong.mp3" -- 
		SilvermoonCitySong = "SilvermoonCitySong.mp3" -- 
		ThunderBluffSong = "ThunderbluffSong.mp3" -- 
		UndercitySong = "UndercitySong.mp3" -- 

		DarnassusSong = "DarnassusSong.mp3" -- 
		ExodarSong = "ExodarSong.mp3" -- 
		IronforgeSong = "IronforgeSong.mp3" -- 
		StormwindCitySong = "StormwindCitySong.mp3" -- 

		ShattrathCitySong = "ShattrathCitySong.mp3" -- 
		DalaranSong = "DalaranSong.mp3" -- 
		EbonHoldSong = "EbonHoldSong.mp3" -- 

		-- Horde Towns Events --
		Horde1Town = "Horde1Town.mp3" -- 
		Horde2Town = "Horde2Town.mp3" -- 
		Horde3Town = "Horde3Town.mp3" -- 
		Horde4Town = "Horde4Town.mp3" -- 
		Horde5Town = "Horde5Town.mp3" --
		Horde6Town = "Horde6Town.mp3" -- 
		Horde7Town = "Horde7Town.mp3" -- 
		Horde8Town = "Horde8Town.mp3" -- 
		Horde9Town = "Horde9Town.mp3" -- 
		Horde10Town = "Horde10Town.mp3" --

		-- Alliance Towns Events --
		Alliance1Town = "Alliance1Town.mp3" -- 
		Alliance2Town = "Alliance2Town.mp3" -- 
		Alliance3Town = "Alliance3Town.mp3" -- 
		Alliance4Town = "Alliance4Town.mp3" -- 
		Alliance5Town = "Alliance5Town.mp3" -- 
		Alliance6Town = "Alliance6Town.mp3" -- 
		Alliance7Town = "Alliance7Town.mp3" -- 
		Alliance8Town = "Alliance8Town.mp3" -- 
		Alliance9Town = "Alliance9Town.mp3" -- 
		Alliance10Town = "Alliance10Town.mp3" --

		-- PvP Type Zones Events --
		FriendlySong = "FriendlySong.mp3" -- 
		ContestedSong = "ContestedSong.mp3" -- 
		HostileSong = "HostileSong.mp3" -- 

		ForestSong = "ForestSong.mp3" -- 
		LandSong = "LandSong.mp3" -- 
		PlagueSong = "PlagueSong.mp3" -- 
		SandSong = "SandSong.mp3" -- 
		SnowSong = "SnowSong.mp3" -- 
		SwampSong = "SwampSong.mp3" -- 
		BeachSong = "BeachSong.mp3" -- 
		LakeSong = "LakeSong.mp3" -- 
		WaterSong = "WaterSong.mp3" -- 
		CaveSong = "Horde4Town.mp3" --
		WarySong = "WarySong.mp3" --

		-- Battlegrounds Events --
		BattleGround1 = "BattleGround1.mp3" -- 
		BattleGround2 = "BattleGround2.mp3" -- 
		BattleGround3 = "BattleGround3.mp3" -- 
		BattleGround4 = "BattleGround4.mp3" -- 
		BattleGround5 = "BattleGround5.mp3" --

		-- Normal Mount Events --
		Mounted1Song = "Mounted1Song.mp3" -- 
		Mounted2Song = "Mounted2Song.mp3" -- 
		Mounted3Song = "Mounted3Song.mp3" -- 

		Escape1Song = "Escape1Song.mp3" -- 
		Escape2Song = "Escape2Song.mp3" -- 
		Escape3Song = "Escape3Song.mp3" -- 
		Escape4Song = "Escape4Song.mp3" -- 
	
		-- Flying Mount Events --
		Flying1Song = "Flying1Song.mp3" -- 
		Flying2Song = "Flying2Song.mp3" -- 

		-- Dead/Ghost Events --
		DeadSong = "Dead1Song.mp3" -- 
		DieSong = "DieSong.mp3" -- 

		-- Fighting Events --
		Fanfare = "Fanfare.mp3" -- Fanfare
		Fighting1Song = "Fighting1Song.mp3" -- 
		Fighting2Song = "Fighting2Song.mp3" -- 
		Fighting3Song = "Fighting3Song.mp3" -- 
		Fighting4Song = "Fighting4Song.mp3" -- 
		
		-- Misc Events --
		WorgenHowl = "Howl.mp3" -- Worgen Howl Sound
		ChocoboKweh = "kweh.mp3" -- Chocobo Kweh Sound
		FelsaberRoar = "FelsaberRoar.mp3"
		SwimSong = "SwimSong.mp3" -- 
		DarkSwimSong = "DarkSwimSong.mp3"
		SleepSong = "SleepSong.mp3" -- 
		KillSound = "Kill.wav" -- Leave combat sound
		CombatSound = "Combat.wav" -- Enter combat sound
		LevelUpSong = "LevelUpSong.mp3" -- Level Up song
		CampingSong = "CampingSong.mp3"
		
		-- Misc Songs --
		Misc1Song = "Misc1Song.mp3" -- 
		Misc2Song = "Misc2Song.mp3" -- 

	--#######################################
	--##
	--##	MUSIC /SOUND CALLS
	--##
	--#######################################

	--#############
	--## SOUNDS
	--#############
	function FinalFantasylization_KillSound()
		FinalFantasylization_PlayFile(S .. KillSound );
		FinalFantasylization_debugMsg("KillSound")
	end
	function FinalFantasylization_CombatSound()
		FinalFantasylization_PlayFile(S .. CombatSound );
		FinalFantasylization_debugMsg("CombatSound")
	end
	function FinalFantasylization_LevelUpSong()
		FinalFantasylization_PlayFile(S .. LevelUpSong );
		FinalFantasylization_debugMsg("LevelUpSong")
	end
	function FinalFantasylization_ChocoboKweh()
		FinalFantasylization_PlayFile( S ..  ChocoboKweh );
		FinalFantasylization_debugMsg("Chocobo Kweh!")
	end
	function FinalFantasylization_FelsaberRoar()
		FinalFantasylization_PlayFile( S ..  FelsaberRoar );
		FinalFantasylization_debugMsg("Felsaber Roar!")
	end
	function FinalFantasylization_WorgenHowl()
		FinalFantasylization_PlayFile( S ..  WorgenHowl );
		FinalFantasylization_debugMsg("Worgen Howl!")
	end
	
	--########################
	--## BATTLEGROUNDS
	--########################
	function FinalFantasylization_AlteracValleyBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_ArathiBasinBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_EyeoftheStormBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_StrandsoftheAncientsBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_WarsongGulchBG()
		FinalFantasylization_BattleGround();
	end
	function FinalFantasylization_IsleOfConquestBG()
		FinalFantasylization_BattleGround();
	end

	--########################
	--## ZONES
	--########################
	FFz = {

		Zone = {
			
			[ 1 ] = { -- Durotar
				Faction = "Horde",
				Music1 = LandSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS: 
				--	Horde:
				["Razor Hill"] = { Type = "Town", Faction = "Horde" },
					["Razor Hill Barracks"] = { Type = "Town", Faction = "Horde" },
				["Razor Hill Outskirts"] = { Type = "Town", Faction = "Horde" },
					["Razor Hill Watchtower"] = { Type = "Town", Faction = "Horde" },
				["Sen'jin Village"] = { Type = "Town", Faction = "Horde" },
				["Sen'jin Village Outskirts"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Bladefist Bay"] = { Type = "Subzone", Music = WaterSong },
				["Darkspear Strand"] = { Type = "Subzone", Music = WaterSong },
				["Deadeye Shore"] = { Type = "Subzone", Music = WaterSong },
				["The Dranosh'ar Blockade"] = { Type = "Subzone", Music = BattleGround5 },
				["Drygulch Ravine"] = { Type = "Subzone", Music = LandSong },
				["Dustwind Cave"] = { Type = "Subzone", Music = CaveSong },
				["The Great Sea"] = { Type = "Subzone", Music = WaterSong },
				["Hidden Path"] = { Type = "Subzone", Music = LandSong },
				["Jaggedswine Farm"] = { Type = "Subzone", Music = LandSong },
				["Northwatch Foothold"] = { Type = "Subzone", Music = LandSong },
				["Razormane Grounds"] = { Type = "Subzone", Music = Alliance8Town },
				["Razorwind Canyon"] = { Type = "Subzone", Music = LandSong },
				["Rocktusk Farm"] = { Type = "Subzone", Music = LandSong },
				["Scuttle Coast"] = { Type = "Subzone", Music = WaterSong },
				["Shrine of the Dormant Flame"] = { Type = "Subzone", Music = LandSong },
				["Skull Rock"] = { Type = "Subzone", Music = LandSong },
				["Southfury River"] = { Type = "Subzone", Music = WaterSong },
				["Southfury Watershed"] = { Type = "Subzone", Music = WaterSong },
				["Spirit Rock"] = { Type = "Subzone", Music = LandSong },
				["Thunder Ridge"] = { Type = "Subzone", Music = LandSong },
				["Tiragarde Keep"] = { Type = "Subzone", Music = Alliance8Town },
				["Tor'kren Farm"] = { Type = "Subzone", Music = LandSong },
			},
			[ 7 ] = { -- Mulgore
				Faction = "Horde",
				Music1 = LandSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Horde:
				["Bloodhoof Village"] = { Type = "Town", Faction = "Horde" },
				["Camp Sungraze"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Bael'dun Digsite"] = { Type = "Subzone", Music = nil },
				["The Golden Plains"] = { Type = "Subzone", Music = nil },
				["The Great Gate"] = { Type = "Subzone", Music = nil },
				["Kodo Rock"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["Palemane Rock"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["Ravaged Caravan"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["Red Rocks"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["The Rolling Plains"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["Stonebull Lake"] = { Type = "Subzone", Faction = "Horde", Music = LakeSong },
				["Stonetalon Pass"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["Thunderhorn Water Well"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["The Venture Co. Mine"] = { Type = "Subzone", Faction = "Horde", Music = CaveSong },
				["Wildmane Water Well"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["Windfury Ridge"] = { Type = "Subzone", Faction = "Horde", Music = nil },
				["Winterhoof Water Well"] = { Type = "Subzone", Faction = "Horde", Music = nil },				
			},		
			[ 10 ] = nil, -- Northern Barrens	Zone	Kalimdor
			[ 14 ] = nil, -- Arathi Highlands	Zone	Eastern Kingdoms
			[ 15 ] = nil, -- Badlands	Zone	Eastern Kingdoms
			[ 17 ] = nil, -- Blasted Lands	Zone	Eastern Kingdoms
			[ 18 ] = nil, -- Tirisfal Glades	Zone	Eastern Kingdoms
			[ 21 ] = nil, -- Silverpine Forest	Zone	Eastern Kingdoms
			[ 22 ] = nil, -- Western Plaguelands	Zone	Eastern Kingdoms
			[ 23 ] = nil, -- Eastern Plaguelands	Zone	Eastern Kingdoms
			[ 25 ] = nil, -- Hillsbrad Foothills	Zone	Eastern Kingdoms
			[ 26 ] = nil, -- The Hinterlands	Zone	Eastern Kingdoms
			[ 27 ] = nil, -- Dun Morogh	Zone	Eastern Kingdoms
			[ 32 ] = nil, -- Searing Gorge	Zone	Eastern Kingdoms
			[ 36 ] = nil, -- Burning Steppes	Zone	Eastern Kingdoms
			[ 37 ] = nil, -- Elwynn Forest	Zone	Eastern Kingdoms
			[ 42 ] = nil, -- Deadwind Pass	Zone	Eastern Kingdoms
			[ 47 ] = nil, -- Duskwood	Zone	Eastern Kingdoms
			[ 48 ] = nil, -- Loch Modan	Zone	Eastern Kingdoms
			[ 49 ] = nil, -- Redridge Mountains	Zone	Eastern Kingdoms
			[ 50 ] = nil, -- Northern Stranglethorn	Zone	Stranglethorn Vale
			[ 51 ] = nil, -- Swamp of Sorrows	Zone	Eastern Kingdoms
			[ 52 ] = nil, -- Westfall	Zone	Eastern Kingdoms
			[ 56 ] = nil, -- Wetlands	Zone	Eastern Kingdoms
			[ 57 ] = nil, -- Teldrassil	Zone	Kalimdor
			[ 62 ] = nil, -- Darkshore	Zone	Kalimdor
			[ 63 ] = nil, -- Ashenvale	Zone	Kalimdor
			[ 64 ] = nil, -- Thousand Needles	Zone	Kalimdor
			[ 65 ] = nil, -- Stonetalon Mountains	Zone	Kalimdor
			[ 66 ] = nil, -- Desolace	Zone	Kalimdor
			[ 69 ] = nil, -- Feralas	Zone	Kalimdor
			[ 70 ] = nil, -- Dustwallow Marsh	Zone	Kalimdor
			[ 71 ] = nil, -- Tanaris	Zone	Kalimdor
			[ 76 ] = nil, -- Azshara	Zone	Kalimdor
			[ 77 ] = nil, -- Felwood	Zone	Kalimdor
			[ 78 ] = nil, -- Un'Goro Crater	Zone	Kalimdor
			[ 80 ] = nil, -- Moonglade	Zone	Kalimdor
			[ 81 ] = nil, -- Silithus	Zone	Kalimdor
			[ 83 ] = nil, -- Winterspring	Zone	Kalimdor
			[ 84 ] = nil, -- Stormwind City	Zone	Eastern Kingdoms
			[ 85 ] = nil, -- Orgrimmar	Zone	Kalimdor
			[ 87 ] = nil, -- Ironforge	Zone	Eastern Kingdoms
			[ 88 ] = nil, -- Thunder Bluff	Zone	Kalimdor
			[ 89 ] = nil, -- Darnassus	Zone	Kalimdor
			[ 90 ] = nil, -- Undercity	Zone	Eastern Kingdoms
			[ 94 ] = nil, -- Eversong Woods	Zone	Eastern Kingdoms
			[ 95 ] = nil, -- Ghostlands	Zone	Eastern Kingdoms
			[ 97 ] = nil, -- Azuremyst Isle	Zone	Kalimdor
			[ 100 ] = nil, -- Hellfire Peninsula	Zone	Outland
			[ 102 ] = nil, -- Zangarmarsh	Zone	Outland
			[ 103 ] = nil, -- The Exodar	Zone	Kalimdor
			[ 104 ] = nil, -- Shadowmoon Valley	Zone	Outland
			[ 105 ] = nil, -- Blade's Edge Mountains	Zone	Outland
			[ 106 ] = nil, -- Bloodmyst Isle	Zone	Kalimdor
			[ 107 ] = nil, -- Nagrand	Zone	Outland
			[ 108 ] = nil, -- Terokkar Forest	Zone	Outland
			[ 109 ] = nil, -- Netherstorm	Zone	Outland
			[ 110 ] = nil, -- Silvermoon City	Zone	Eastern Kingdoms
			[ 111 ] = nil, -- Shattrath City	Zone	Outland
			[ 114 ] = nil, -- Borean Tundra	Zone	Northrend
			[ 115 ] = nil, -- Dragonblight	Zone	Northrend
			[ 116 ] = nil, -- Grizzly Hills	Zone	Northrend
			[ 117 ] = nil, -- Howling Fjord	Zone	Northrend
			[ 118 ] = nil, -- Icecrown	Zone	Northrend
			[ 119 ] = nil, -- Sholazar Basin	Zone	Northrend
			[ 120 ] = nil, -- The Storm Peaks	Zone	Northrend
			[ 121 ] = nil, -- Zul'Drak	Zone	Northrend
			[ 122 ] = nil, -- Isle of Quel'Danas	Zone	Eastern Kingdoms
			[ 123 ] = nil, -- Wintergrasp	Zone	Northrend
			[ 127 ] = nil, -- Crystalsong Forest	Zone	Northrend
			[ 170 ] = nil, -- Hrothgar's Landing	Zone	Northrend
			[ 174 ] = nil, -- The Lost Isles	Zone	The Maelstrom
			[ 194 ] = nil, -- Kezan	Zone	The Maelstrom
			[ 198 ] = nil, -- Mount Hyjal	Zone	Kalimdor
			[ 199 ] = nil, -- Southern Barrens	Zone	Kalimdor
			[ 201 ] = nil, -- Kelp'thar Forest	Zone	Vashj'ir
			[ 202 ] = nil, -- Gilneas City	Zone	Gilneas
			[ 203 ] = nil, -- Vashj'ir	Zone	Eastern Kingdoms
			[ 204 ] = nil, -- Abyssal Depths	Zone	Vashj'ir
			[ 205 ] = nil, -- Shimmering Expanse	Zone	Vashj'ir
			[ 207 ] = nil, -- Deepholm	Zone	The Maelstrom
			[ 210 ] = nil, -- The Cape of Stranglethorn	Zone	Stranglethorn Vale
			[ 217 ] = nil, -- Ruins of Gilneas	Zone	Eastern Kingdoms
			[ 224 ] = nil, -- Stranglethorn Vale	Zone	Eastern Kingdoms
			[ 241 ] = nil, -- Twilight Highlands	Zone	Eastern Kingdoms
			[ 244 ] = nil, -- Tol Barad	Zone	Eastern Kingdoms
			[ 245 ] = nil, -- Tol Barad Peninsula	Zone	Eastern Kingdoms
			[ 249 ] = nil, -- Uldum	Zone	Kalimdor
			[ 276 ] = nil, -- The Maelstrom	Zone	The Maelstrom
			[ 371 ] = nil, -- The Jade Forest	Zone	Pandaria
			[ 376 ] = nil, -- Valley of the Four Winds	Zone	Pandaria
			[ 379 ] = nil, -- Kun-Lai Summit	Zone	Pandaria
			[ 388 ] = nil, -- Townlong Steppes	Zone	Pandaria
			[ 390 ] = nil, -- Vale of Eternal Blossoms	Zone	Pandaria
			[ 418 ] = nil, -- Krasarang Wilds	Zone	Pandaria
			[ 422 ] = nil, -- Dread Wastes	Zone	Pandaria
			[ 425 ] = nil, -- Northshire	Zone	Elwynn Forest
			[ 433 ] = nil, -- The Veiled Stair	Zone	Pandaria
			[ 460 ] = nil, -- Shadowglen	Zone	Teldrassil
			[ 461 ] = { -- Valley of Trials - Orc Start:
				Faction = "Horde",
				Music1 = LandSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				["Valley of Trials"] = { Type = "Zone", Faction = "Horde", Music = LandSong },
				["Burning Blade Coven"] = { Type = "Subzone", Faction = "Horde", Music = CaveSong },
				["The Den"] = { Type = "Subzone", Faction = "Horde", Music = CaveSong },
			},
			[ 462 ] = { -- Camp Narache - Tauren Start:
				["Red Cloud Mesa"] = { Type = "Subzone", Faction = "Horde", Music = LandSong },
					["The Battleboar Pen"] = { Type = "Subzone", Faction = "Horde", Music = ForestSong },
					["Brambleblade Ravine"] = { Type = "Subzone", Faction = "Horde", Music = ForestSong },
					["Camp Narache"] = { Type = "Subzone", Faction = "Horde", Music = LandSong },
					["Fargaze Mesa"] = { Type = "Subzone", Faction = "Horde", Music = LandSong },
					["Thornmantle's Hideout"] = { Type = "Subzone", Faction = "Horde", Music = ForestSong },
					["The Thornsnarl"] = { Type = "Subzone", Faction = "Horde", Music = ForestSong },
			},
			[ 463 ] = { -- Echo Isles - Troll Start:
				Faction = "Horde",
				Music1 = BeachSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				["Bloodtalon Shore"] = { Type = "Subzone", Faction = "Horde", Music = BeachSong },
				["Darkspear Isle"] = { Type = "Subzone", Faction = "Horde", Music = BeachSong },
					["Darkspear Hold"] = { Type = "Town", Faction = "Horde" },
					["Darkspear Shore"] = { Type = "Town", Faction = "Horde" },
					["Darkspear Training Grounds"] = { Type = "Town", Faction = "Horde" },
				["Spitescale Cove"] = { Type = "Subzone", Faction = "Horde", Music = BeachSong },
					["Spitescale Cavern"] = { Type = "Subzone", Faction = "Horde", Music = CaveSong },
					["Zalazane's Fall"] = { Type = "Subzone", Faction = "Horde", Music = BeachSong },
			},
			[ 465 ] = nil, -- Deathknell	Zone	Tirisfal Glades
			[ 467 ] = nil, -- Sunstrider Isle	Zone	Eversong Woods
			[ 468 ] = nil, -- Ammen Vale	Zone	Azuremyst Isle
			[ 469 ] = nil, -- New Tinkertown	Zone	Dun Morogh
			[ 504 ] = nil, -- Isle of Thunder	Zone	Pandaria
			[ 507 ] = nil, -- Isle of Giants	Zone	Pandaria
			[ 525 ] = nil, -- Frostfire Ridge	Zone	Draenor
			[ 534 ] = nil, -- Tanaan Jungle	Zone	Draenor
			[ 535 ] = nil, -- Talador	Zone	Draenor
			[ 539 ] = nil, -- Shadowmoon Valley	Zone	Draenor
			[ 542 ] = nil, -- Spires of Arak	Zone	Draenor
			[ 543 ] = nil, -- Gorgrond	Zone	Draenor
			[ 550 ] = nil, -- Nagrand	Zone	Draenor
			[ 554 ] = nil, -- Timeless Isle	Zone	Pandaria
			[ 588 ] = nil, -- Ashran	Zone	Draenor
			[ 625 ] = nil, -- Dalaran	Zone	Broken Isles
			[ 630 ] = nil, -- Azsuna	Zone	Broken Isles
			[ 634 ] = nil, -- Stormheim	Zone	Broken Isles
			[ 641 ] = nil, -- Val'sharah	Zone	Broken Isles
			[ 646 ] = nil, -- Broken Shore	Zone	Broken Isles
			[ 650 ] = nil, -- Highmountain	Zone	Broken Isles
			[ 680 ] = nil, -- Suramar	Zone	Broken Isles
			[ 739 ] = nil, -- Trueshot Lodge	Zone	Highmountain
			[ 790 ] = nil, -- Eye of Azshara	Zone	Broken Isles
			[ 830 ] = nil, -- Krokuun	Zone	Argus
			[ 862 ] = nil, -- Zuldazar	Zone	Zandalar
			[ 863 ] = nil, -- Nazmir	Zone	Zandalar
			[ 864 ] = nil, -- Vol'dun	Zone	Zandalar
			[ 882 ] = nil, -- Mac'Aree	Zone	Argus
			[ 885 ] = nil, -- Antoran Wastes	Zone	Argus
			[ 895 ] = nil, -- Tiragarde Sound	Zone	Kul Tiras
			[ 896 ] = nil, -- Drustvar	Zone	Kul Tiras
			[ 942 ] = nil, -- Stormsong Valley	Zone	Kul Tiras
			[ 997 ] = nil, -- Tirisfal Glades	Zone	
			[ 998 ] = nil, -- Undercity	Zone	Ruins of Lordaeron
			[ 1010 ] = nil, -- The MOTHERLODE!!	Zone	Kezan
			[ 1022 ] = nil, -- Uncharted Island	Zone	
			[ 1032 ] = nil, -- Skittering Hollow	Zone	
			[ 1033 ] = nil, -- The Rotting Mire	Zone	
			[ 1034 ] = nil, -- Verdant Wilds	Zone	
			[ 1035 ] = nil, -- Molten Cay	Zone	
			[ 1036 ] = nil, -- The Dread Chain	Zone	
			[ 1037 ] = nil, -- Whispering Reef	Zone	
			[ 1039 ] = nil, -- Shrine of the Storm	Zone	Stormsong Valley
			[ 1041 ] = nil, -- The Underrot	Zone	Nazmir
			[ 1158 ] = nil, -- Arathi Highlands	Zone	
			[ 1161 ] = nil, -- Boralus	Zone	Tiragarde Sound
			[ 1165 ] = nil, -- Dazar'alor	Zone	Zuldazar
			[ 1169 ] = nil, -- Tol Dagor	Zone	Kul Tiras
			[ 1170 ] = nil, -- Gorgrond - Mag'har Scenario	Zone	
			[ 1187 ] = nil, -- Azsuna	Zone	Broken Isles
			[ 1188 ] = nil, -- Val'sharah	Zone	Broken Isles
			[ 1189 ] = nil, -- Highmountain	Zone	Broken Isles
			[ 1190 ] = nil, -- Stormheim	Zone	Broken Isles
			[ 1191 ] = nil, -- Suramar	Zone	Broken Isles
			[ 1192 ] = nil, -- Broken Shore	Zone	Broken Isles
			[ 1193 ] = nil, -- Zuldazar	Zone	Zandalar
			[ 1194 ] = nil, -- Nazmir	Zone	Zandalar
			[ 1195 ] = nil, -- Vol'dun	Zone	Zandalar
			[ 1196 ] = nil, -- Tiragarde Sound	Zone	Kul Tiras
			[ 1197 ] = nil, -- Drustvar	Zone	Kul Tiras
			[ 1198 ] = nil, -- Stormsong Valley	Zone	Kul Tiras
			[ 1244 ] = nil, -- Arathi Highlands	Zone	Eastern Kingdoms
			[ 1245 ] = nil, -- Badlands	Zone	Eastern Kingdoms
			[ 1246 ] = nil, -- Blasted Lands	Zone	Eastern Kingdoms
			[ 1247 ] = nil, -- Tirisfal Glades	Zone	Eastern Kingdoms
			[ 1248 ] = nil, -- Silverpine Forest	Zone	Eastern Kingdoms
			[ 1249 ] = nil, -- Western Plaguelands	Zone	Eastern Kingdoms
			[ 1250 ] = nil, -- Eastern Plaguelands	Zone	Eastern Kingdoms
			[ 1251 ] = nil, -- Hillsbrad Foothills	Zone	Eastern Kingdoms
			[ 1252 ] = nil, -- The Hinterlands	Zone	Eastern Kingdoms
			[ 1253 ] = nil, -- Dun Morogh	Zone	Eastern Kingdoms
			[ 1254 ] = nil, -- Searing Gorge	Zone	Eastern Kingdoms
			[ 1255 ] = nil, -- Burning Steppes	Zone	Eastern Kingdoms
			[ 1256 ] = nil, -- Elwynn Forest	Zone	Eastern Kingdoms
			[ 1257 ] = nil, -- Deadwind Pass	Zone	Eastern Kingdoms
			[ 1258 ] = nil, -- Duskwood	Zone	Eastern Kingdoms
			[ 1259 ] = nil, -- Loch Modan	Zone	Eastern Kingdoms
			[ 1260 ] = nil, -- Redridge Mountains	Zone	Eastern Kingdoms
			[ 1261 ] = nil, -- Swamp of Sorrows	Zone	Eastern Kingdoms
			[ 1262 ] = nil, -- Westfall	Zone	Eastern Kingdoms
			[ 1263 ] = nil, -- Wetlands	Zone	Eastern Kingdoms
			[ 1264 ] = nil, -- Stormwind City	Zone	Eastern Kingdoms
			[ 1265 ] = nil, -- Ironforge	Zone	Eastern Kingdoms
			[ 1266 ] = nil, -- Undercity	Zone	Eastern Kingdoms
			[ 1267 ] = nil, -- Eversong Woods	Zone	Eastern Kingdoms
			[ 1268 ] = nil, -- Ghostlands	Zone	Eastern Kingdoms
			[ 1269 ] = nil, -- Silvermoon City	Zone	Eastern Kingdoms
			[ 1270 ] = nil, -- Isle of Quel'Danas	Zone	Eastern Kingdoms
			[ 1271 ] = nil, -- Gilneas	Zone	Eastern Kingdoms
			[ 1272 ] = nil, -- Vashj'ir	Zone	Eastern Kingdoms
			[ 1273 ] = nil, -- Ruins of Gilneas	Zone	Eastern Kingdoms
			[ 1274 ] = nil, -- Stranglethorn Vale	Zone	Eastern Kingdoms
			[ 1275 ] = nil, -- Twilight Highlands	Zone	Eastern Kingdoms
			[ 1276 ] = nil, -- Tol Barad	Zone	Eastern Kingdoms
			[ 1277 ] = nil, -- Tol Barad Peninsula	Zone	Eastern Kingdoms
			[ 1305 ] = nil, -- Durotar	Zone	Kalimdor
			[ 1306 ] = nil, -- Mulgore	Zone	Kalimdor
			[ 1307 ] = nil, -- Northern Barrens	Zone	Kalimdor
			[ 1308 ] = nil, -- Teldrassil	Zone	Kalimdor
			[ 1309 ] = nil, -- Darkshore	Zone	Kalimdor
			[ 1310 ] = nil, -- Ashenvale	Zone	Kalimdor
			[ 1311 ] = nil, -- Thousand Needles	Zone	Kalimdor
			[ 1312 ] = nil, -- Stonetalon Mountains	Zone	Kalimdor
			[ 1313 ] = nil, -- Desolace	Zone	Kalimdor
			[ 1314 ] = nil, -- Feralas	Zone	Kalimdor
			[ 1315 ] = nil, -- Dustwallow Marsh	Zone	Kalimdor
			[ 1316 ] = nil, -- Tanaris	Zone	Kalimdor
			[ 1317 ] = nil, -- Azshara	Zone	Kalimdor
			[ 1318 ] = nil, -- Felwood	Zone	Kalimdor
			[ 1319 ] = nil, -- Un'Goro Crater	Zone	Kalimdor
			[ 1320 ] = nil, -- Moonglade	Zone	Kalimdor
			[ 1321 ] = nil, -- Silithus	Zone	Kalimdor
			[ 1322 ] = nil, -- Winterspring	Zone	Kalimdor
			[ 1323 ] = nil, -- Thunder Bluff	Zone	Kalimdor
			[ 1324 ] = nil, -- Darnassus	Zone	Kalimdor
			[ 1325 ] = nil, -- Azuremyst Isle	Zone	Kalimdor
			[ 1326 ] = nil, -- The Exodar	Zone	Kalimdor
			[ 1327 ] = nil, -- Bloodmyst Isle	Zone	Kalimdor
			[ 1328 ] = nil, -- Mount Hyjal	Zone	Kalimdor
			[ 1329 ] = nil, -- Southern Barrens	Zone	Kalimdor
			[ 1330 ] = nil, -- Uldum	Zone	Kalimdor
			[ 1331 ] = nil, -- The Exodar	Zone	Kalimdor
			[ 1333 ] = nil, -- Darkshore	Zone	Kalimdor
			[ 1334 ] = nil, -- Wintergrasp	Zone	
			[ 1335 ] = nil, -- Cooking: Impossible	Zone	
			[ 1336 ] = nil, -- Havenswood	Zone	
			[ 1337 ] = nil, -- Jorundall	Zone	
			[ 1339 ] = nil, -- Warsong Gulch	Zone	Northern Barrens
			[ 1347 ] = nil, -- Zandalari Treasury	Zone	
			[ 1355 ] = nil, -- Nazjatar	Zone	
			[ 1362 ] = nil, -- Shrine of the Storm	Zone	
			[ 1396 ] = nil, -- Borean Tundra	Zone	Northrend
			[ 1397 ] = nil, -- Dragonblight	Zone	Northrend
			[ 1398 ] = nil, -- Grizzly Hills	Zone	Northrend
			[ 1399 ] = nil, -- Howling Fjord	Zone	Northrend
			[ 1400 ] = nil, -- Icecrown	Zone	Northrend
			[ 1401 ] = nil, -- Sholazar Basin	Zone	Northrend
			[ 1402 ] = nil, -- The Storm Peaks	Zone	Northrend
			[ 1403 ] = nil, -- Zul'Drak	Zone	Northrend
			[ 1404 ] = nil, -- Wintergrasp	Zone	Northrend
			[ 1405 ] = nil, -- Crystalsong Forest	Zone	Northrend
			[ 1406 ] = nil, -- Hrothgar's Landing	Zone	Northrend
			[ 1408 ] = nil, -- Ashran	Zone	
			[ 1462 ] = nil, -- Mechagon Island	Zone	Kul Tiras
			[ 1476 ] = nil, -- Twilight Highlands	Zone	
			[ 1478 ] = nil, -- Ashran	Zone	Draenor
			[ 1501 ] = nil, -- Crestfall	Zone	
			[ 1502 ] = nil, -- Snowblossom Village	Zone	
		},

	};

	--#############
	--## PVP ZONES
	--#############
	function FinalFantasylization_FriendlySong()
		FinalFantasylization_PlayMusic(S .. FriendlySong);
		FinalFantasylization_debugMsg("FriendlySong")
	end

	function FinalFantasylization_ContestedSong()
		FinalFantasylization_PlayMusic(S .. ContestedSong);
		FinalFantasylization_debugMsg("ContestedSong")
	end

	function FinalFantasylization_HostileSong()
		FinalFantasylization_PlayMusic(S .. HostileSong);
		FinalFantasylization_debugMsg("HostileSong")
	end

	--#############
	--## ZONE SONGS
	--#############
	function FinalFantasylization_SnowSong()
		FinalFantasylization_PlayMusic(S .. SnowSong);
		FinalFantasylization_debugMsg("SnowSong")
	end
	function FinalFantasylization_ForestSong()
		FinalFantasylization_PlayMusic(S .. ForestSong);
		FinalFantasylization_debugMsg("ForestSong")
	end
	function FinalFantasylization_SandSong()
		FinalFantasylization_PlayMusic(S .. SandSong);
		FinalFantasylization_debugMsg("SandSong")
	end
	function FinalFantasylization_PlagueSong()
		FinalFantasylization_PlayMusic(S .. PlagueSong);
		FinalFantasylization_debugMsg("PlagueSong")
	end
	function FinalFantasylization_SwampSong()
		FinalFantasylization_PlayMusic(S .. SwampSong);
		FinalFantasylization_debugMsg("SwampSong")
	end
	function FinalFantasylization_BeachSong()
		FinalFantasylization_PlayMusic(S .. BeachSong);
		FinalFantasylization_debugMsg("BeachSong")
	end
	function FinalFantasylization_LandSong()
		FinalFantasylization_PlayMusic(S .. LandSong);
		FinalFantasylization_debugMsg("LandSong")
	end
	function FinalFantasylization_LakeSong()
		FinalFantasylization_PlayMusic(S .. LakeSong);
		FinalFantasylization_debugMsg("LakeSong")
	end
	function FinalFantasylization_WaterSong()
		FinalFantasylization_PlayMusic(S .. WaterSong);
		FinalFantasylization_debugMsg("WaterSong")
	end
	function FinalFantasylization_CaveSong()
		FinalFantasylization_PlayMusic(S .. CaveSong);
		FinalFantasylization_debugMsg("CaveSong")
	end
	function FinalFantasylization_WarySong()
		FinalFantasylization_PlayMusic(S .. WarySong);
		FinalFantasylization_debugMsg("WarySong")
	end

	--################
	--## DUNGEON SONGS
	--################
		-- Vanilla WoW Dungeons
	function FinalFantasylization_Dungeon_RagefireChasmSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_WailingCavernsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_DeadminesSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ShadowfangKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BlackfathomDeepsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_StormwindStockadeSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_GnomereganSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_RazorfenKraulSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ScarletMonasterySong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_RazorfenDownsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UldamanSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ZulFarrakSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_MaraudonSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TempleofAtalHakkarSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BlackrockDepthsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_LowerBlackrockSpireSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UpperBlackrockSpireSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_DireMaulSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_StratholmeSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ScholomanceSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
		-- Burning Crusade Dungeons
	function FinalFantasylization_Dungeon_HellfireRampartsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BloodFurnaceSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_SlavePensSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UnderbogSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ManaTombsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_AuchenaiCryptsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_SethekkHallsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_SteamvaultSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ShatteredHallsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ShadowLabyrinthSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_EscapefromDurnholdeKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_BotanicaSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ArcatrazSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_MagistersTerraceSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
		-- Wrath of the Lich King Dungeons	
	function FinalFantasylization_Dungeon_UtgardeKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TheNexusSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_AzjolNerubSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_AhnkahetTheOldKingdomSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_DrakTharonKeepSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_VioletHoldSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_GundrakSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_HallsofStoneSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TheOculusSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_HallsofLightningSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_UtgardePinnacleSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TheCullingofStratholmeSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_TrialoftheChampionSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_ForgeofSoulsSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_PitofSaronSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end
	function FinalFantasylization_Dungeon_HallsofReflectionSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end

	--#############
	--## RAID SONGS
	--#############
	function FinalFantasylization_RaidSong()
		FinalFantasylization_PlayMusic(S .. BattleGround5);
		FinalFantasylization_debugMsg("BattleGround5")
	end

	--#############
	--## FANFARE
	--#############
	function FinalFantasylization_Fanfare()
		FinalFantasylization_PlayFile(S .. Fanfare );
		FinalFantasylization_debugMsg("Fanfare")
	end

	--################
	--## FIGHTING SONGS
	--################
	function FinalFantasylization_WorldBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_DungeonBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_WorldElite()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_BattlegroundBoss()
		FinalFantasylization_PlayMusic(S .. Fighting4Song);
		FinalFantasylization_debugMsg("Fighting4Song")
	end
	function FinalFantasylization_BattlegroundPVP()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_WorldPVP()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Fighting3Song);
				FinalFantasylization_debugMsg("Fighting3Song")
			else
				FinalFantasylization_PlayMusic(S .. Fighting2Song);
				FinalFantasylization_debugMsg("Fighting2Song")
			end
	end
	function FinalFantasylization_WorldNormalPVE()
		FinalFantasylization_PlayMusic(S .. Fighting1Song);
		FinalFantasylization_debugMsg("Fighting1Song")
	end

	--#############
	--## TOWN SONGS
	--#############
	function FinalFantasylization_HostileTowns()
		FinalFantasylization_PlayMusic(S .. HostileSong);
		FinalFantasylization_debugMsg("HostileSong")
	end
	function FinalFantasylization_NeutralTowns()
		local x = math.random(1, 20);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Horde1Town);
				FinalFantasylization_debugMsg("Horde1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Horde2Town);
				FinalFantasylization_debugMsg("Horde2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Horde3Town);
				FinalFantasylization_debugMsg("Horde3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Horde4Town);
				FinalFantasylization_debugMsg("Horde4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Horde5Town);
				FinalFantasylization_debugMsg("Horde5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Horde6Town);
				FinalFantasylization_debugMsg("Horde6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Horde7Town);
				FinalFantasylization_debugMsg("Horde7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Horde8Town);
				FinalFantasylization_debugMsg("Horde8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Horde9Town);
				FinalFantasylization_debugMsg("Horde9Town")
			elseif x == 10 then
				FinalFantasylization_PlayMusic(S .. Horde10Town);
				FinalFantasylization_debugMsg("Horde10Town")
			elseif x == 11 then
				FinalFantasylization_PlayMusic(S .. Alliance1Town);
				FinalFantasylization_debugMsg("Alliance1Town")
			elseif x == 12 then
				FinalFantasylization_PlayMusic(S .. Alliance2Town);
				FinalFantasylization_debugMsg("Alliance2Town")
			elseif x == 13 then
				FinalFantasylization_PlayMusic(S .. Alliance3Town);
				FinalFantasylization_debugMsg("Alliance3Town")
			elseif x == 14 then
				FinalFantasylization_PlayMusic(S .. Alliance4Town);
				FinalFantasylization_debugMsg("Alliance4Town")
			elseif x == 15 then
				FinalFantasylization_PlayMusic(S .. Alliance5Town);
				FinalFantasylization_debugMsg("Alliance5Town")
			elseif x == 16 then
				FinalFantasylization_PlayMusic(S .. Alliance6Town);
				FinalFantasylization_debugMsg("Alliance6Townn")
			elseif x == 17 then
				FinalFantasylization_PlayMusic(S .. Alliance7Town);
				FinalFantasylization_debugMsg("Alliance7Town")
			elseif x == 18 then
				FinalFantasylization_PlayMusic(S .. Alliance8Town);
				FinalFantasylization_debugMsg("Alliance8Town")
			elseif x == 19 then
				FinalFantasylization_PlayMusic(S .. Alliance9Town);
				FinalFantasylization_debugMsg("Alliance9Town")
			else
				FinalFantasylization_PlayMusic(S .. Alliance10Town);
				FinalFantasylization_debugMsg("Alliance10Town")
			end
	end
	function FinalFantasylization_AllianceTowns()
		local x = math.random(1, 10);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Alliance1Town);
				FinalFantasylization_debugMsg("Alliance1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Alliance2Town);
				FinalFantasylization_debugMsg("Alliance2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Alliance3Town);
				FinalFantasylization_debugMsg("Alliance3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Alliance4Town);
				FinalFantasylization_debugMsg("Alliance4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Alliance5Town);
				FinalFantasylization_debugMsg("Alliance5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Alliance6Town);
				FinalFantasylization_debugMsg("Alliance6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Alliance7Town);
				FinalFantasylization_debugMsg("Alliance7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Alliance8Town);
				FinalFantasylization_debugMsg("Alliance8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Alliance9Town);
				FinalFantasylization_debugMsg("Alliance9Town")
			else
				FinalFantasylization_PlayMusic(S .. Alliance10Town);
				FinalFantasylization_debugMsg("Alliance10Town")
			end
	end
	function FinalFantasylization_HordeTowns()
		local x = math.random(1, 10);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Horde1Town);
				FinalFantasylization_debugMsg("Horde1Town")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Horde2Town);
				FinalFantasylization_debugMsg("Horde2Town")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Horde3Town);
				FinalFantasylization_debugMsg("Horde3Town")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. Horde4Town);
				FinalFantasylization_debugMsg("Horde4Town")
			elseif x == 5 then
				FinalFantasylization_PlayMusic(S .. Horde5Town);
				FinalFantasylization_debugMsg("Horde5Town")
			elseif x == 6 then
				FinalFantasylization_PlayMusic(S .. Horde6Town);
				FinalFantasylization_debugMsg("Horde6Town")
			elseif x == 7 then
				FinalFantasylization_PlayMusic(S .. Horde7Town);
				FinalFantasylization_debugMsg("Horde7Town")
			elseif x == 8 then
				FinalFantasylization_PlayMusic(S .. Horde8Town);
				FinalFantasylization_debugMsg("Horde8Town")
			elseif x == 9 then
				FinalFantasylization_PlayMusic(S .. Horde9Town);
				FinalFantasylization_debugMsg("Horde9Town")
			else
				FinalFantasylization_PlayMusic(S .. Horde10Town);
				FinalFantasylization_debugMsg("Horde10Town")
			end
	end

	--###############
	--## BATTLEGROUNDS
	--###############
	function FinalFantasylization_BattleGround()
		local x = math.random(1, 5);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. BattleGround1);
				FinalFantasylization_debugMsg("BattleGround1")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. BattleGround2);
				FinalFantasylization_debugMsg("BattleGround2")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. BattleGround3);
				FinalFantasylization_debugMsg("BattleGround3")
			elseif x == 4 then
				FinalFantasylization_PlayMusic(S .. BattleGround4);
				FinalFantasylization_debugMsg("BattleGround4")
			else
				FinalFantasylization_PlayMusic(S .. BattleGround5);
				FinalFantasylization_debugMsg("BattleGround5")
			end
	end

	--#############
	--## DIE/DEAD
	--#############
	function FinalFantasylization_PlayerDie()
		FinalFantasylization_PlayMusic(S .. DieSong);
		FinalFantasylization_debugMsg("DieSong")
	end
	function FinalFantasylization_PlayerGhost()
		FinalFantasylization_PlayMusic(S .. DeadSong);
		FinalFantasylization_debugMsg("DeadSong")
	end

	--#############
	--## SLEEPING
	--#############
	function FinalFantasylization_Sleeping()
		FinalFantasylization_PlayMusic(S .. SleepSong);
		FinalFantasylization_debugMsg("SleepSong")
	end
	
	--#############
	--## CAMPING
	--#############
	function FinalFantasylization_Camping()
		FinalFantasylization_PlayMusic(S .. CampingSong);
		FinalFantasylization_debugMsg("CampingSong")
	end

	--#############
	--## SWIMMING
	--#############
	function FinalFantasylization_Swimming(Zone)
		if Zone == 1 then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Swimming)
			FinalFantasylization_PlayMusic(S .. SwimSong);  -- Normal Swim song
			FinalFantasylization_debugMsg("SwimSong") -- Normal Swim song
			return
		elseif Zone == 2 then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Swimming2)
			FinalFantasylization_PlayMusic(S .. DarkSwimSong);  -- alt Swim song
			FinalFantasylization_debugMsg("DarkSwimSong") -- alt Swim song
		end
	end

	--#############
	--## TAXI
	--#############
	function FinalFantasylization_HordeTaxi()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	function FinalFantasylization_AllianceTaxi()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	
	--#############
	--## FLYING
	--#############
	function FinalFantasylization_HordeFlying()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end
	function FinalFantasylization_AllianceFlying()
		local x = math.random(1, 2);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Flying1Song);
				FinalFantasylization_debugMsg("Flying1Song")
			else
				FinalFantasylization_PlayMusic(S .. Flying2Song);
				FinalFantasylization_debugMsg("Flying2Song")
			end
	end

	--#############
	--## MOUNTED
	--#############
	function FinalFantasylization_Mounted()					
		local x = math.random(1, 3);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Mounted1Song);
				FinalFantasylization_debugMsg("Mounted1Song")
			elseif x == 2 then 
				FinalFantasylization_PlayMusic(S .. Mounted2Song);
				FinalFantasylization_debugMsg("Mounted2Song")
			else 
				FinalFantasylization_PlayMusic(S .. Mounted3Song);
				FinalFantasylization_debugMsg("Mounted3Song")
			end
	end
	function FinalFantasylization_MountedEscape()		
		local x = math.random(1, 4);
			if x == 1 then
				FinalFantasylization_PlayMusic(S .. Escape1Song);
				FinalFantasylization_debugMsg("Escape1Song")
			elseif x == 2 then
				FinalFantasylization_PlayMusic(S .. Escape2Song);
				FinalFantasylization_debugMsg("Escape2Song")
			elseif x == 3 then
				FinalFantasylization_PlayMusic(S .. Escape3Song);
				FinalFantasylization_debugMsg("Escape3Song")
			else
				FinalFantasylization_PlayMusic(S .. Escape4Song);
				FinalFantasylization_debugMsg("Escape4Song")
			end
	end
	
--END of music calls
        CoreSavedVariable = soundPackID
        for i = 1, NUM_SOUND_PACKS do -- set NUM_SOUND_PACKS in the Core
            local func = _G["SoundPack" .. soundPackID  .. "_SetEnabled"]
            if i ~= soundPackID and func then
                func(not enabled)
            end
        end
    end
end
_G["SoundPack" .. soundPackID  .. "_GetEnabled"] = function()
    return flag
end