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
			
			[ 1 ] = { -- Durotar	-	Kalimdor
				Faction = "Horde",
				Songs = 2,
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
			[ 7 ] = { -- Mulgore	-	Kalimdor
				Faction = "Horde",
				Songs = 2,
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
				["Kodo Rock"] = { Type = "Subzone", Music = nil },
				["Palemane Rock"] = { Type = "Subzone", Music = nil },
				["Ravaged Caravan"] = { Type = "Subzone", Music = nil },
				["Red Rocks"] = { Type = "Subzone", Music = nil },
				["The Rolling Plains"] = { Type = "Subzone", Music = nil },
				["Stonebull Lake"] = { Type = "Subzone", Music = LakeSong },
				["Stonetalon Pass"] = { Type = "Subzone", Music = nil },
				["Thunderhorn Water Well"] = { Type = "Subzone", Music = nil },
				["The Venture Co. Mine"] = { Type = "Subzone", Music = CaveSong },
				["Wildmane Water Well"] = { Type = "Subzone", Music = nil },
				["Windfury Ridge"] = { Type = "Subzone", Music = nil },
				["Winterhoof Water Well"] = { Type = "Subzone", Music = nil },				
			},		
			[ 10 ] = { -- Northern Barrens	-	Kalimdor
				Faction = "Horde",
				Songs = 2,
				Music1 = SandSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Horde:
				["The Crossroads"] = { Type = "Town", Faction = "Horde" },
				["Darsok's Outpost"] = { Type = "Town", Faction = "Horde" },
				["Dreadmist Camp"] = { Type = "Town", Faction = "Horde" },
				["Far Watch Post"] = { Type = "Town", Faction = "Horde" },
				["Grol'dom Farm"] = { Type = "Town", Faction = "Horde" },
				["Mor'shan Base Camp"] = { Type = "Town", Faction = "Horde" },
				["The Mor'shan Rampart"] = { Type = "Town", Faction = "Horde" },
				["Nozzlepot's Outpost"] = { Type = "Town", Faction = "Horde" },
				--	Neutral
				["Ratchet"] = { Type = "Town", Faction = "Neutral" },
				["Broken Keel Tavern"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["Boulder Lode Mine"] = { Type = "Subzone", Music = CaveSong },
				["Dreadmist Den"] = { Type = "Subzone", Music = CaveSong },
				["Dreadmist Peak"] = { Type = "Subzone", Music = PlagueSong },
				["The Dry Hills"] = { Type = "Subzone", Music = SandSong },
				["The Forgotten Pools"] = { Type = "Subzone", Music = LakeSong },
				["Fray Island"] = { Type = "Subzone", Music = Alliance5Town },
				["Gold Road"] = { Type = "Subzone", Music = SandSong },
				["The Great Divide"] = { Type = "Subzone", Music = LandSong },
				["The Great Sea"] = { Type = "Subzone", Music = WaterSong },
				["Lushwater Oasis"] = { Type = "Subzone", Music = LakeSong },
				["The Merchant Coast"] = { Type = "Subzone", Music = WaterSong },
				["Shrine of the Fallen Warrior"] = { Type = "Subzone", Music = Alliance4Town },
				["The Sludge Fen"] = { Type = "Subzone", Music = SwampSong, Swim = 2 },
				["Southfury River"] = { Type = "Subzone", Music = WaterSong },
				["The Stagnant Oasis"] = { Type = "Subzone", Music = LakeSong },
				["Thorn Hill"] = { Type = "Subzone", Music = CaveSong },
				["The Tidus Stair"] = { Type = "Subzone", Music = SandSong },
			},
			[ 14 ] = { -- Arathi Highlands	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 1,
				Music1 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Faldir's Cove"] = { Type = "Town", Faction = "Alliance" },
				["Refuge Pointe"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Galen's Fall"] = { Type = "Town", Faction = "Horde" },
				["Go'Shek Farm"] = { Type = "Town", Faction = "Horde" },
				["Hammerfall"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Boulder'gor"] = { Type = "Subzone", Music = LandSong },
				["Boulderfist Outpost"] = { Type = "Subzone", Music = CaveSong },
				["Boulderfist Hall"] = { Type = "Subzone", Music = CaveSong },
				["Circle of East Binding"] = { Type = "Subzone", Music = ContestedSong },
				["Circle of Inner Binding"] = { Type = "Subzone", Music = ContestedSong },
				["Circle of Outer Binding"] = { Type = "Subzone", Music = ContestedSong },
				["Circle of West Binding"] = { Type = "Subzone", Music = ContestedSong },
				["Dabyrie's Farmstead"] = { Type = "Subzone", Music = ContestedSong },
				["The Drowned Reef"] = { Type = "Subzone", Music = WaterSong },
				["Drywhisker Gorge"] = { Type = "Subzone", Music = LandSong },
				["The Forbidding Sea"] = { Type = "Subzone", Music = WaterSong },
				["Northfold Manor"] = { Type = "Subzone", Music = ContestedSong },
				["Stromgarde Keep"] = { Type = "Subzone", Music = PlagueSong },
				["Crypt"] = { Type = "Subzone", Music = CaveSong },
				["The Sanctum"] = { Type = "Subzone", Music = ContestedSong },
				["The Tower of Arathor"] = { Type = "Subzone", Music = PlagueSong },
				["Thandol Span"] = { Type = "Subzone", Music = ContestedSong },
				["Thoradin's Wall"] = { Type = "Subzone", Music = ContestedSong },
				["Witherbark Village"] = { Type = "Subzone", Music = ForestSong },				
			},
			[ 15 ] = { -- Badlands	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = SandSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Dragon's Mouth"] = { Type = "Town", Faction = "Alliance" },
				["Dustwind Dig"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Bloodwatcher Point"] = { Type = "Town", Faction = "Horde" },
				["New Kargath"] = { Type = "Town", Faction = "Horde" },
				--	Neutral:
				["Fuselight"] = { Type = "Town", Faction = "Neutral" },
				["Fuselight-by-the-Sea"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["Agmond's End"] = { Type = "Subzone", Music = SandSong },
				["Angor Fortress"] = { Type = "Subzone", Music = SandSong },
				["Apocryphan's Rest"] = { Type = "Subzone", Music = nil },
				["Camp Boff"] = { Type = "Subzone", Music = SandSong },
				["Camp Cagg"] = { Type = "Subzone", Music = SandSong },
				["Camp Kosh"] = { Type = "Subzone", Music = SandSong },
				["Crypt"] = { Type = "Subzone", Music = CaveSong },
				["Dustbelch Grotto"] = { Type = "Subzone", Music = SandSong },
				["The Dustbowl"] = { Type = "Subzone", Music = SandSong },
				["Dustwind Gulch"] = { Type = "Subzone", Music = SandSong },
				["Hammertoe's Digsite"] = { Type = "Subzone", Music = SandSong },
				["The Hidden Clutch"] = { Type = "Subzone", Music = CaveSong },
				["Lethlor Ravine"] = { Type = "Subzone", Music = SandSong },
				["The Maker's Terrace"] = { Type = "Subzone", Music = SandSong },
				["Mirage Flats"] = { Type = "Subzone", Music = SandSong },
				["Rhea's Camp"] = { Type = "Subzone", Music = SandSong },
				["Ruins of Kargath"] = { Type = "Subzone", Music = SandSong },
				["Scar of the Worldbreaker"] = { Type = "Subzone", Music = PlagueSong },
				["Tomb of the Watchers"] = { Type = "Subzone", Music = SandSong },
				["Uldaman"] = { Type = "Subzone", Music = CaveSong },
				["Uldaman Entrance"] = { Type = "Subzone", Music = CaveSong },
			},
			[ 17 ] = { -- Blasted Lands	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = SandSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Nethergarde Keep"] = { Type = "Town", Faction = "Alliance" },
				["Shattered Beachhead"] = { Type = "Town", Faction = "Alliance" },
				["Surwich"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Okril'lon Hold"] = { Type = "Town", Faction = "Horde" },
				["Shattered Landing"] = { Type = "Town", Faction = "Horde" },
				["Sunveil Excursion"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Altar of Storms"] = { Type = "Subzone", Music = WarySong },
				["The Dark Portal"] = { Type = "Subzone", Music = BattleGround2 },
				["Dreadmaul Furnace"] = { Type = "Subzone", Music = nil },
				["Dreadmaul Post"] = { Type = "Subzone", Music = SandSong },
				["The Forbidding Sea"] = { Type = "Subzone", Music = WaterSong },
				["Nethergarde Mines"] = { Type = "Subzone", Music = CaveSong },
				["Nethergarde Supply Camps"] = { Type = "Subzone", Music = SandSong },
				["The Forge Grounds"] = { Type = "Subzone", Music = SandSong },
				["The Red Reaches"] = { Type = "Subzone", Music = SandSong },
				["Bloodwash Cavern"] = { Type = "Subzone", Music = CaveSong },
				["Bloodwash Fighting Pits"] = { Type = "Subzone", Music = SandSong },
				["Bloodwash Shrine"] = { Type = "Subzone", Music = SandSong },
				["Rockpool Village"] = { Type = "Subzone", Music = SandSong },
				["Rise of the Defiler"] = { Type = "Subzone", Music = SandSong },
				["Serpent's Coil"] = { Type = "Subzone", Music = SandSong },
				["Shattershore"] = { Type = "Subzone", Music = SandSong },
				["The Shattered Front"] = { Type = "Subzone", Music = SandSong },
				["The Tainted Forest"] = { Type = "Subzone", Music = PlagueSong },
				["Maldraz"] = { Type = "Subzone", Music = WarySong },
				["The Tainted Scar"] = { Type = "Subzone", Music = SwampSong },
			},
			[ 18 ] = { -- Tirisfal Glades	-	Eastern Kingdoms
				Faction = "Horde",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = PlagueSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Horde:
				["Brill"] = { Type = "Town", Faction = "Horde" },
				["Brill Town Hall"] = { Type = "Town", Faction = "Horde" },
				["Gallows' End Tavern"] = { Type = "Town", Faction = "Horde" },
				["Ruins of Lordaeron"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Agamand Mills"] = { Type = "Subzone", Music = PlagueSong },
				["Agamand Family Crypt"] = { Type = "Subzone", Music = PlagueSong },
				["Balnir Farmstead"] = { Type = "Subzone", Music = PlagueSong },
				["Brightwater Lake"] = { Type = "Subzone", Music = LakeSong },
				["Gunther's Retreat"] = { Type = "Subzone", Music = nil },
				["The Bulwark"] = { Type = "Subzone", Music = Horde1Town },
				["Calston Estate"] = { Type = "Subzone", Music = Horde1Town },
				["Cold Hearth Manor"] = { Type = "Subzone", Music = PlagueSong },
				["Crusader Outpost"] = { Type = "Subzone", Music = ForestSong },
				["Death's Watch Waystation"] = { Type = "Subzone", Music = Horde1Town },
				["Faol's Rest"] = { Type = "Subzone", Music = DeadSong },
				["Garren's Haunt"] = { Type = "Subzone", Music = PlagueSong },
				["Nightmare Vale"] = { Type = "Subzone", Music = nil },
				["The North Coast"] = { Type = "Subzone", Music = nil },
				["Scarlet Monastery"] = { Type = "Subzone", Music = WarySong },
				["The Grand Vestibule"] = { Type = "Subzone", Music = WarySong },
				["Terrace of Repose"] = { Type = "Subzone", Music = WarySong },
				["Crusader's Outpost"] = { Type = "Subzone", Music = HostileSong },
				["Scarlet Palisade"] = { Type = "Subzone", Music = HostileSong },
				["Scarlet Watchtower"] = { Type = "Subzone", Music = HostileSong },
				["Scarlet Watch Post"] = { Type = "Subzone", Music = HostileSong },
				["Solliden Farmstead"] = { Type = "Subzone", Music = HostileSong },
				["Stillwater Pond"] = { Type = "Subzone", Music = LakeSong },
				["Venomweb Vale"] = { Type = "Subzone", Music = nil },
				["Scarlet Encampment"] = { Type = "Subzone", Music = nil },
				["Whispering Forest"] = { Type = "Subzone", Music = nil },
				["Whispering Gardens"] = { Type = "Subzone", Music = nil },
				["Whispering Shore"] = { Type = "Subzone", Music = PlagueSong },
			},
			[ 21 ] = { -- Silverpine Forest	-	Eastern Kingdoms
				Faction = "Horde",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = PlagueSong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Horde:
				["The Forsaken Front"] = { Type = "Town", Faction = "Horde" },
				["Forsaken High Command"] = { Type = "Town", Faction = "Horde" },
				["Forsaken Rear Guard"] = { Type = "Town", Faction = "Horde" },
				["The Sepulcher"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["7th Legion Base Camp"] = { Type = "Subzone", Music = nil },
				["Ambermill"] = { Type = "Subzone", Music = Alliance10Town },
				["The Battlefront"] = { Type = "Subzone", Music = BattleGround1 },
				["Beren's Peril"] = { Type = "Subzone", Music = nil },
				["The Dead Field"] = { Type = "Subzone", Music = PlagueSong },
				["The Decrepit Fields"] = { Type = "Subzone", Music = PlagueSong },
				["Deep Elem Mine"] = { Type = "Subzone", Music = CaveSong },
				["Gilneas Liberation Front Base Camp"] = { Type = "Subzone", Music = Alliance1Town },
				["The Greymane Wall"] = { Type = "Subzone", Music = SwampSong },
				["The Ivar Patch"] = { Type = "Subzone", Music = nil },
				["Lordamere Lake"] = { Type = "Subzone", Music = LakeSong },
				["The Dawning Isles"] = { Type = "Subzone", Music = nil },
				["Fenris Isle"] = { Type = "Subzone", Music = nil },
				["Fenris Keep"] = { Type = "Subzone", Music = nil },
				["North Tide's Beachhead"] = { Type = "Subzone", Music = WaterSong },
				["North Tide's Hollow"] = { Type = "Subzone", Music = nil },
				["North Tide's Run"] = { Type = "Subzone", Music = nil },
				["Olsen's Farthing"] = { Type = "Subzone", Music = nil },
				["Pyrewood Village"] = { Type = "Subzone", Music = PlagueSong },
				["Pyrewood Chapel"] = { Type = "Subzone", Music = PlagueSong },
				["Pyrewood Inn"] = { Type = "Subzone", Music = PlagueSong },
				["Pyrewood Town Hall"] = { Type = "Subzone", Music = PlagueSong },
				["Shadowfang Keep"] = { Type = "Subzone", Music = SwampSong },
				["The Shining Strand"] = { Type = "Subzone", Music = PlagueSong },
				["The Skittering Dark"] = { Type = "Subzone", Music = PlagueSong },
				["South Tide's Run"] = { Type = "Subzone", Music = nil },
				["Valgan's Field"] = { Type = "Subzone", Music = nil },
			},
			[ 22 ] = nil, -- Western Plaguelands	-	Eastern Kingdoms
			[ 23 ] = nil, -- Eastern Plaguelands	-	Eastern Kingdoms
			[ 25 ] = { -- Hillsbrad Foothills	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Corrahn's Dagger"] = { Type = "Town", Faction = "Alliance" },
				["Gavin's Naze"] = { Type = "Town", Faction = "Alliance" },
				["Sofera's Naze"] = { Type = "Town", Faction = "Alliance" },
				["The Headland"] = { Type = "Town", Faction = "Alliance" },
				["Purgation Isle"] = { Type = "Town", Faction = "Alliance" },
				--	Horde
				["Eastpoint Tower"] = { Type = "Town", Faction = "Horde" },
				["Ruins of Southshore"] = { Type = "Town", Faction = "Horde" },
				["Sludgeguard Tower"] = { Type = "Town", Faction = "Horde" },
				["Southpoint Gate"] = { Type = "Town", Faction = "Horde" },
				["Strahnbrad"] = { Type = "Town", Faction = "Horde" },
				["Tarren Mill"] = { Type = "Town", Faction = "Horde" },
				["The Sludge Fields"] = { Type = "Town", Faction = "Horde" },
				--	Neutral:
				["Brazie Farmstead"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["Alterac Mountains"] = { Type = "Subzone", Music = nil },
				["Chillwind Point"] = { Type = "Subzone", Music = nil },
				["Crushridge Hold"] = { Type = "Subzone", Music = nil },
				["Dandred's Fold"] = { Type = "Subzone", Music = nil },
				["Gallows' Corner"] = { Type = "Subzone", Music = nil },
				["Growless Cave"] = { Type = "Subzone", Music = nil },
				["Ravenholdt Manor"] = { Type = "Subzone", Music = Horde8Town },
				["Ruins of Alterac"] = { Type = "Subzone", Music = nil },
				["Slaughter Hollow"] = { Type = "Subzone", Music = nil },
				["The Uplands"] = { Type = "Subzone", Music = LandSong },
				["Azurelode Mine"] = { Type = "Subzone", Music = PlagueSong },
				["Dalaran Crater"] = { Type = "Subzone", Music = ContestedSong },
				["Darrow Hill"] = { Type = "Subzone", Music = nil },
				["Dun Garok"] = { Type = "Subzone", Music = nil },
				["Durnholde Keep"] = { Type = "Subzone", Music = PlagueSong },
				["Eastern Strand"] = { Type = "Subzone", Music = nil },
				["Lordamere Lake"] = { Type = "Subzone", Music = LakeSong },
				["Misty Shore"] = { Type = "Subzone", Music = nil },
				["Nethander Stead"] = { Type = "Subzone", Music = nil },
				["Thoradin's Wall"] = { Type = "Subzone", Music = nil },
				["Western Strand"] = { Type = "Subzone", Music = nil },
			},
			[ 26 ] = { -- The Hinterlands	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Aerie Peak"] = { Type = "Town", Faction = "Alliance" },
				["Stormfeather Outpost"] = { Type = "Town", Faction = "Alliance" },
				--	Horde
				["Hiri'watha Research Station"] = { Type = "Town", Faction = "Horde" },
				["Revantusk Village"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Wildhammer Keep"] = { Type = "Subzone", Music = nil },
				["Agol'watha"] = { Type = "Subzone", Music = nil },
				["Altar of Zul"] = { Type = "Subzone", Music = nil },
				["Bogen's Ledge"] = { Type = "Subzone", Music = nil },
				["The Creeping Ruin"] = { Type = "Subzone", Music = nil },
				["Featherbeard's Hovel"] = { Type = "Subzone", Music = nil },
				["The Forbidding Sea"] = { Type = "Subzone", Music = WaterSong },
				["Jintha'Alor"] = { Type = "Subzone", Music = nil },
				["Overlook Cliffs"] = { Type = "Subzone", Music = ForestSong },
				["Plaguemist Ravine"] = { Type = "Subzone", Music = nil },
				["Quel'Danil Lodge"] = { Type = "Subzone", Music = nil },
				["Seradane"] = { Type = "Subzone", Music = nil },
				["Shaol'watha"] = { Type = "Subzone", Music = nil },
				["Shadra'Alor"] = { Type = "Subzone", Music = nil },
				["Shindigger's Camp"] = { Type = "Subzone", Music = nil },
				["Skulk Rock"] = { Type = "Subzone", Music = CaveSong },
				["Valorwind Lake"] = { Type = "Subzone", Music = LakeSong },
				["Zun'watha"] = { Type = "Subzone", Music = LandSong },
			},
			[ 27 ] = { -- Dun Morogh	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 2,
				Music1 = SnowSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Amberstill Ranch"] = { Type = "Town", Faction = "Alliance" },
				["Gates of Ironforge"] = { Type = "Town", Faction = "Alliance" },
				["Gol'Bolar Quarry"] = { Type = "Town", Faction = "Alliance" },
				["Ironforge Airfield"] = { Type = "Town", Faction = "Alliance" },
				["Kharanos"] = { Type = "Town", Faction = "Alliance" },
				["Thunderbrew Distillery"] = { Type = "Town", Faction = "Alliance" },
				["Misty Pine Refuge"] = { Type = "Town", Faction = "Alliance" },
				["North Gate Outpost"] = { Type = "Town", Faction = "Alliance" },
				["Steelgrill's Depot"] = { Type = "Town", Faction = "Alliance" },
				["South Gate Outpost"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Bahrum's Post"] = { Type = "Subzone", Music = SnowSong },
				["Frostmane Front"] = { Type = "Subzone", Music = SnowSong },
				["Frostmane Retreat"] = { Type = "Subzone", Music = SnowSong },
				["The Grizzled Den"] = { Type = "Subzone", Music = SnowSong },
				["Gol'Bolar Quarry Mine"] = { Type = "Subzone", Music = CaveSong },
				["Helm's Bed Lake"] = { Type = "Subzone", Music = LakeSong },
				["Ironband's Compound"] = { Type = "Subzone", Music = SnowSong },
				["The Mountain Den"] = { Type = "Subzone", Music = CaveSong },
				["North Gate Pass"] = { Type = "Subzone", Music = SnowSong },
				["Shimmer Ridge"] = { Type = "Subzone", Music = SnowSong },
				["South Gate Pass"] = { Type = "Subzone", Music = SnowSong },
				["The Tundrid Hills"] = { Type = "Subzone", Music = SnowSong },
			},
			[ 30 ] = {	-- New Tinkertown	-	Dun Morogh
				Faction = "Alliance",
				Songs = 2,
				Music1 = SnowSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Brewnall Village"] = { Type = "Town", Faction = "Alliance" },
				["New Tinkertown"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Chill Breeze Valley"] = { Type = "Subzone", Music = SnowSong },
				["Crushcog's Arsenal"] = { Type = "Subzone", Music = SnowSong },
				["Frostmane Hold"] = { Type = "Subzone", Music = SnowSong },
				["Gnomeregan"] = { Type = "Subzone", Music = HostileSong },
				["The Clockwerk Run"] = { Type = "Subzone", Music = HostileSong },
				["Loading Room"] = { Type = "Subzone", Music = HostileSong },
				["The Old Dormitory"] = { Type = "Subzone", Music = HostileSong },
				["Train Depot"] = { Type = "Subzone", Music = HostileSong },
				["Workshop Entrance"] = { Type = "Subzone", Music = HostileSong },
				["Iceflow Lake"] = { Type = "Subzone", Music = SnowSong },
				["The Toxic Airfield"] = { Type = "Subzone", Music = PlagueSong },
			},
			[ 32 ] = { -- Searing Gorge	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = PlagueSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Neutral:
				["Iron Summit"] = { Type = "Town", Faction = "Neutral" },
				["Thorium Advance"] = { Type = "Town", Faction = "Neutral" },
				["Thorium Point"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["Blackchar Cave"] = { Type = "Subzone", Music = CaveSong },
				["Blackrock Mountain"] = { Type = "Subzone", Music = PlagueSong },
				["The Cauldron"] = { Type = "Subzone", Music = PlagueSong },
				["The Slag Pit"] = { Type = "Subzone", Music = PlagueSong },
				["Dustfire Valley"] = { Type = "Subzone", Music = PlagueSong },
				["Firewatch Ridge"] = { Type = "Subzone", Music = PlagueSong },
				["Grimesilt Dig Site"] = { Type = "Subzone", Music = PlagueSong },
				["Pyrox Flats"] = { Type = "Subzone", Music = PlagueSong },
				["The Sea of Cinders"] = { Type = "Subzone", Music = PlagueSong },
				["Stonewrought Pass"] = { Type = "Subzone", Music = PlagueSong },
			},
			[ 36 ] = { -- Burning Steppes	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = PlagueSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Morgan's Vigil"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Flame Crest"] = { Type = "Town", Faction = "Horde" },
				--	Neutral:
				["Chiselgrip"] = { Type = "Town", Faction = "Neutral" },
				["Flamestar Post"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["Altar of Storms"] = { Type = "Subzone", Music = PlagueSong },
				["Blackrock Mountain"] = { Type = "Subzone", Music = PlagueSong },
				["Blackrock Pass"] = { Type = "Subzone", Music = PlagueSong },
				["Blackrock Stronghold"] = { Type = "Subzone", Music = PlagueSong },
				["Black Tooth Hovel"] = { Type = "Subzone", Music = PlagueSong },
				["The Pillar of Ash"] = { Type = "Subzone", Music = PlagueSong },
				["Dreadmaul Rock"] = { Type = "Subzone", Music = PlagueSong },
				["Firegut Furnace"] = { Type = "Subzone", Music = PlagueSong },
				["The Skull Warren"] = { Type = "Subzone", Music = PlagueSong },
				["Fields of Honor"] = { Type = "Subzone", Music = PlagueSong },
				["Ruins of Thaurissan"] = { Type = "Subzone", Music = PlagueSong },
				["Slither Rock"] = { Type = "Subzone", Music = PlagueSong },
				["Terror Wing Path"] = { Type = "Subzone", Music = PlagueSong },
				["Valley of Ashes"] = { Type = "Subzone", Music = PlagueSong },
				["The Whelping Downs"] = { Type = "Subzone", Music = PlagueSong },
			},
			[ 37 ] = { -- Elwynn Forest	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				["Eastvale Logging Camp"] = { Type = "Town", Faction = "Alliance" },
				["Goldshire"] = { Type = "Town", Faction = "Alliance" },
				["Lion's Pride Inn"] = { Type = "Town", Faction = "Alliance" },
				["Brackwell Pumpkin Patch"] = { Type = "Town", Faction = "Alliance" },
				["The Maclure Vineyards"] = { Type = "Town", Faction = "Alliance" },
				["Ridgepoint Tower"] = { Type = "Town", Faction = "Alliance" },
				["The Stonefield Farm"] = { Type = "Town", Faction = "Alliance" },
				["Westbrook Garrison"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Crystal Lake"] = { Type = "Subzone", Music = LakeSong },
				["Fargodeep Mine"] = { Type = "Subzone", Music = CaveSong },
				["Forest's Edge"] = { Type = "Subzone", Music = ForestSong },
				["Goldtooth's Den"] = { Type = "Subzone", Music = ForestSong },
				["Hogger Hill"] = { Type = "Subzone", Music = ForestSong },
				["Jasperlode Mine"] = { Type = "Subzone", Music = CaveSong },
				["Jerod's Landing"] = { Type = "Subzone", Music = ForestSong },
				["Mirror Lake"] = { Type = "Subzone", Music = LakeSong },
				["Mirror Lake Orchard"] = { Type = "Subzone", Music = ForestSong },
				["Stone Cairn Lake"] = { Type = "Subzone", Music = LakeSong },
				["Heroes' Vigil"] = { Type = "Subzone", Music = Alliance4Town },
				["Thunder Falls"] = { Type = "Subzone", Music = LakeSong },
				["Tower of Azora"] = { Type = "Subzone", Music = ForestSong },
			},
			[ 42 ] = { -- Deadwind Pass	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 1,
				Music1 = SwampSong,
				Sleep = true,
				Swim = 2,
				--	SUBZONES:
				["Abandoned Kirin Tor Camp"] = { Type = "Subzone", Music = SwampSong },
				["Alturus' Sanctum"] = { Type = "Subzone", Music = SwampSong },
				["Ariden's Camp"] = { Type = "Subzone", Music = SwampSong },
				["Forgotten Crypt"] = { Type = "Subzone", Music = SwampSong },
				["Deadman's Crossing"] = { Type = "Subzone", Music = SwampSong },
				["Deadwind Ravine"] = { Type = "Subzone", Music = SwampSong },
				["Karazhan"] = { Type = "Subzone", Music = WarySong },
				["Karazhan Catacombs"] = { Type = "Subzone", Music = CaveSong },
				["The Master's Cellar"] = { Type = "Subzone", Music = SwampSong },
				["Morgan's Plot"] = { Type = "Subzone", Music = SwampSong },
				["Sleeping Gorge"] = { Type = "Subzone", Music = SwampSong },
				["The Vice"] = { Type = "Subzone", Music = SwampSong },
				["Grosh'gok Compound"] = { Type = "Subzone", Music = SwampSong },
			},
			[ 47 ] = { -- Duskwood	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = PlagueSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Darkshire"] = { Type = "Town", Faction = "Alliance" },
				["Darkshire Town Hall"] = { Type = "Town", Faction = "Alliance" },
				["Scarlet Raven Tavern"] = { Type = "Town", Faction = "Alliance" },
				["Raven Hill"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Addle's Stead"] = { Type = "Subzone", Music = PlagueSong },
				["Beggar's Haunt"] = { Type = "Subzone", Music = PlagueSong },
				["Brightwood Grove"] = { Type = "Subzone", Music = PlagueSong },
				["The Darkened Bank"] = { Type = "Subzone", Music = PlagueSong },
				["Forlorn Rowe"] = { Type = "Subzone", Music = PlagueSong },
				["The Hushed Bank"] = { Type = "Subzone", Music = WaterSong },
				["Manor Mistmantle"] = { Type = "Subzone", Music = PlagueSong },
				["Raven Hill Cemetery"] = { Type = "Subzone", Music = PlagueSong },
				["Dawning Wood Catacombs"] = { Type = "Subzone", Music = CaveSong },
				["Roland's Doom"] = { Type = "Subzone", Music = PlagueSong },
				["The Rotting Orchard"] = { Type = "Subzone", Music = PlagueSong },
				["Tranquil Gardens Cemetery"] = { Type = "Subzone", Music = PlagueSong },
				["Twilight Grove"] = { Type = "Subzone", Music = PlagueSong },
				["Vul'Gol Ogre Mound"] = { Type = "Subzone", Music = PlagueSong },
				["The Yorgen Farmstead"] = { Type = "Subzone", Music = PlagueSong },
			},
			[ 48 ] = { -- Loch Modan	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 1,
				Music1 = FriendlySong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Algaz Station"] = { Type = "Town", Faction = "Alliance" },
				["The Farstrider Lodge"] = { Type = "Town", Faction = "Alliance" },
				["Thelsamar"] = { Type = "Town", Faction = "Alliance" },
				["Stoutlager Inn"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Dun Algaz"] = { Type = "Subzone", Music = FriendlySong },
				["Grizzlepaw Ridge"] = { Type = "Subzone", Music = FriendlySong },
				["Ironband's Excavation Site"] = { Type = "Subzone", Music = FriendlySong },
				["Ironwing Cavern"] = { Type = "Subzone", Music = CaveSong },
				["The Loch"] = { Type = "Subzone", Music = PlagueSong },
				["Twilight Camp"] = { Type = "Subzone", Music = SwampSong },
				["Mo'grosh Stronghold"] = { Type = "Subzone", Music = LandSong },
				["North Gate Pass"] = { Type = "Subzone", Music = FriendlySong },
				["Silver Stream Mine"] = { Type = "Subzone", Music = CaveSong },
				["South Gate Pass"] = { Type = "Subzone", Music = FriendlySong },
				["Stonesplinter Valley"] = { Type = "Subzone", Music = FriendlySong },
				["Stonewrought Dam"] = { Type = "Subzone", Music = ContestedSong },
				["Valley of Kings"] = { Type = "Subzone", Music = FriendlySong },
			},
			[ 49 ] = { -- Redridge Mountains	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = LandSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Camp Everstill"] = { Type = "Town", Faction = "Alliance" },
				["Keeshan's Post"] = { Type = "Town", Faction = "Alliance" },
				["Lakeshire"] = { Type = "Town", Faction = "Alliance" },
				["Lakeshire Inn"] = { Type = "Town", Faction = "Alliance" },
				["Lakeshire Town Hall"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Alther's Mill"] = { Type = "Subzone", Music = LandSong },
				["Galardell Valley"] = { Type = "Subzone", Music = LandSong },
				["Lake Everstill"] = { Type = "Subzone", Music = LakeSong },
				["Lakeridge Highway"] = { Type = "Subzone", Music = LandSong },
				["Redridge Canyons"] = { Type = "Subzone", Music = LandSong },
				["Render's Camp"] = { Type = "Subzone", Music = LandSong },
				["Render's Rock"] = { Type = "Subzone", Music = LandSong },
				["Render's Valley"] = { Type = "Subzone", Music = LandSong },
				["Rethban Caverns"] = { Type = "Subzone", Music = CaveSong },
				["Shalewind Canyon"] = { Type = "Subzone", Music = LandSong },
				["Stonewatch"] = { Type = "Subzone", Music = LandSong },
				["Stonewatch Keep"] = { Type = "Subzone", Music = LandSong },
				["Stonewatch Tower"] = { Type = "Subzone", Music = LandSong },
				["Stonewatch Falls"] = { Type = "Subzone", Music = LakeSong },
				["Three Corners"] = { Type = "Subzone", Music = LandSong },
				["Tower of Ilgalar"] = { Type = "Subzone", Music = LandSong },
				["Yowler's Den"] = { Type = "Subzone", Music = CaveSong },
			},
			[ 50 ] = { -- Northern Stranglethorn	-	Stranglethorn Vale
				Faction = "Contested",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Fort Livingston"] = { Type = "Town", Faction = "Alliance" },
				["Rebel Camp"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Bambala"] = { Type = "Town", Faction = "Horde" },
				["Grom'gol Base Camp"] = { Type = "Town", Faction = "Horde" },
				--	Neutral:
				["Nesingwary's Expedition"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["Bal'lal Ruins"] = { Type = "Subzone", Music = BeachSong },
				["Balia'mah Ruins"] = { Type = "Subzone", Music = ForestSong },
				["The Great Sea"] = { Type = "Subzone", Music = WaterSong },
				["Kal'ai Ruins"] = { Type = "Subzone", Music = WarySong },
				["Kurzen's Compound"] = { Type = "Subzone", Music = ForestSong },
				["Lake Nazferiti"] = { Type = "Subzone", Music = LakeSong },
				["Mizjah Ruins"] = { Type = "Subzone", Music = ForestSong },
				["Mosh'Ogg Ogre Mound"] = { Type = "Subzone", Music = ForestSong },
				["Ruins of Zul'Kunda"] = { Type = "Subzone", Music = ForestSong },
				["Ruins of Zul'Mamwe"] = { Type = "Subzone", Music = ForestSong },
				["The Savage Coast"] = { Type = "Subzone", Music = BeachSong },
				["The Stockpile"] = { Type = "Subzone", Music = ForestSong },
				["The Sundering"] = { Type = "Subzone", Music = WaterSong },
				["Tkashi Ruins"] = { Type = "Subzone", Music = ForestSong },
				["Venture Co. Base Camp"] = { Type = "Subzone", Music = Alliance10Town },
				["Venture Co. Operations Center"] = { Type = "Subzone", Music = Alliance8Town },
				["The Vile Reef"] = { Type = "Subzone", Music = LakeSong },
				["Yojamba Isle"] = { Type = "Subzone", Music = BeachSong },
				["Ziata'jai Ruins"] = { Type = "Subzone", Music = ForestSong },
				["Zul'Gurub"] = { Type = "Subzone", Music = WarySong },
				["Zuuldaia Ruins"] = { Type = "Subzone", Music = BeachSong },
			},
			[ 51 ] = { -- Swamp of Sorrows	-	Eastern Kingdoms
				Faction = "Contested",
				Songs = 2,
				Music1 = SwampSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["The Harborage"] = { Type = "Town", Faction = "Alliance" },
				["Marshtide Watch"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Misty Reed Post"] = { Type = "Town", Faction = "Horde" },
				["Stonard"] = { Type = "Town", Faction = "Horde" },
				--	Neutral:
				["Bogpaddle"] = { Type = "Town", Faction = "Neutral" },
				["Sorrowmurk"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["The Bloodmire"] = { Type = "Subzone", Music = SwampSong },
				["Fallow Sanctuary"] = { Type = "Subzone", Music = SwampSong },
				["The Forbidding Sea"] = { Type = "Subzone", Music = WaterSong },
				["Misty Reed Strand"] = { Type = "Subzone", Music = SwampSong },
				["Misty Valley"] = { Type = "Subzone", Music = SwampSong },
				["Pool of Tears"] = { Type = "Subzone", Music = WaterSong },
				["Temple of Atal'Hakkar"] = { Type = "Subzone", Music = Alliance10Town },
				["Purespring Cavern"] = { Type = "Subzone", Music = CaveSong },
				["The Shifting Mire"] = { Type = "Subzone", Music = SwampSong },
				["Splinterspear Junction"] = { Type = "Subzone", Music = SwampSong },
				["Stagalbog"] = { Type = "Subzone", Music = SwampSong },
				["Stagalbog Cave"] = { Type = "Subzone", Music = CaveSong },
			},
			[ 52 ] = { -- Westfall	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 2,
				Music1 = SandSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Moonbrook"] = { Type = "Town", Faction = "Alliance" },
				["Sentinel Hill"] = { Type = "Town", Faction = "Alliance" },
				["Sentinel Tower"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Alexston Farmstead"] = { Type = "Subzone", Music = SandSong },
				["Deadmines"] = { Type = "Subzone", Music = CaveSong },
				["The Dagger Hills"] = { Type = "Subzone", Music = SandSong },
				["The Dead Acre"] = { Type = "Subzone", Music = SandSong },
				["Demont's Place"] = { Type = "Subzone", Music = SandSong },
				["The Dust Plains"] = { Type = "Subzone", Music = SandSong },
				["Mortwake's Tower"] = { Type = "Subzone", Music = ForestSong },
				["Furlbrow's Pumpkin Farm"] = { Type = "Subzone", Music = SandSong },
				["Gold Coast Quarry"] = { Type = "Subzone", Music = CaveSong },
				["Jangolode Mine"] = { Type = "Subzone", Music = CaveSong },
				["The Jansen Stead"] = { Type = "Subzone", Music = SandSong },
				["Longshore"] = { Type = "Subzone", Music = BeachSong },
				["The Molsen Farm"] = { Type = "Subzone", Music = SandSong },
				["The Raging Chasm"] = { Type = "Subzone", Music = Horde1Town },
				["Saldean's Farm"] = { Type = "Subzone", Music = SandSong },
				["Stendel's Pond"] = { Type = "Subzone", Music = LakeSong },
				["Westfall Lighthouse"] = { Type = "Subzone", Music = WaterSong },
			},
			[ 56 ] = { -- Wetlands	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 2,
				Music1 = SwampSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Greenwarden's Grove"] = { Type = "Town", Faction = "Alliance" },
				["Menethil Harbor"] = { Type = "Town", Faction = "Alliance" },
				["Deepwater Tavern"] = { Type = "Town", Faction = "Alliance" },
				["Menethil Keep"] = { Type = "Town", Faction = "Alliance" },
				["Slabchisel's Survey"] = { Type = "Town", Faction = "Alliance" },
				["Swiftgear Station"] = { Type = "Town", Faction = "Alliance" },
				["Whelgar's Retreat"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Angerfang Encampment"] = { Type = "Subzone", Music = SwampSong },
				["Baradin Bay"] = { Type = "Subzone", Music = WaterSong },
				["Black Channel Marsh"] = { Type = "Subzone", Music = SwampSong },
				["Bluegill Marsh"] = { Type = "Subzone", Music = SwampSong },
				["Direforge Hill"] = { Type = "Subzone", Music = ForestSong },
				["Dun Algaz"] = { Type = "Subzone", Music = SwampSong },
				["Dun Modr"] = { Type = "Subzone", Music = SwampSong },
				["The Great Sea"] = { Type = "Subzone", Music = WaterSong },
				["The Green Belt"] = { Type = "Subzone", Music = ForestSong },
				["Ironbeard's Tomb"] = { Type = "Subzone", Music = CaveSong },
				["The Lost Fleet"] = { Type = "Subzone", Music = WaterSong },
				["Menethil Bay"] = { Type = "Subzone", Music = LakeSong },
				["Mosshide Fen"] = { Type = "Subzone", Music = SwampSong },
				["Raptor Ridge"] = { Type = "Subzone", Music = ForestSong },
				["Saltspray Glen"] = { Type = "Subzone", Music = SwampSong },
				["Sundown Marsh"] = { Type = "Subzone", Music = SwampSong },
				["Thandol Span"] = { Type = "Subzone", Music = SwampSong },
				["Thelgen Rock"] = { Type = "Subzone", Music = LandSong },
				["Whelgar's Excavation Site"] = { Type = "Subzone", Music = CaveSong },
			},
			[ 57 ] = nil, -- Teldrassil	-	Kalimdor
			[ 62 ] = nil, -- Darkshore	-	Kalimdor
			[ 63 ] = nil, -- Ashenvale	-	Kalimdor
			[ 64 ] = nil, -- Thousand Needles	-	Kalimdor
			[ 65 ] = nil, -- Stonetalon Mountains	-	Kalimdor
			[ 66 ] = nil, -- Desolace	-	Kalimdor
			[ 69 ] = nil, -- Feralas	-	Kalimdor
			[ 70 ] = nil, -- Dustwallow Marsh	-	Kalimdor
			[ 71 ] = nil, -- Tanaris	-	Kalimdor
			[ 76 ] = nil, -- Azshara	-	Kalimdor
			[ 77 ] = nil, -- Felwood	-	Kalimdor
			[ 78 ] = nil, -- Un'Goro Crater	-	Kalimdor
			[ 80 ] = nil, -- Moonglade	-	Kalimdor
			[ 81 ] = nil, -- Silithus	-	Kalimdor
			[ 83 ] = nil, -- Winterspring	-	Kalimdor
			[ 84 ] = { -- Stormwind City	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 1,
				Music1 = StormwindCitySong,
				Sleep = false,
				Swim = 1,
				--	SUBZONES:
				["The Canals"] = { Type = "Capital", Music = StormwindCitySong },
				["Cathedral Square"] = { Type = "Capital", Music = StormwindCitySong },
				["Cathedral of Light"] = { Type = "Capital", Music = StormwindCitySong },
				["Dwarven District"] = { Type = "Capital", Music = StormwindCitySong },
				["Cut-Throat Alley"] = { Type = "Capital", Music = StormwindCitySong },
				["Mage Quarter"] = { Type = "Capital", Music = StormwindCitySong },
				["The Slaughtered Lamb"] = { Type = "Capital", Music = StormwindCitySong },
				["Wizard's Sanctum"] = { Type = "Capital", Music = StormwindCitySong },
				["The Old Barracks"] = { Type = "Capital", Music = StormwindCitySong },
				["Old Town"] = { Type = "Capital", Music = StormwindCitySong },
				["Champions' Hall"] = { Type = "Capital", Music = StormwindCitySong },
				["Command Center"] = { Type = "Capital", Music = StormwindCitySong },
				["SI:7"] = { Type = "Capital", Music = StormwindCitySong },
				["Stormwind City Cemetery"] = { Type = "Capital", Music = StormwindCitySong },
				["Stormwind City Outskirts"] = { Type = "Capital", Music = StormwindCitySong },
				["Lion's Rest"] = { Type = "Capital", Music = StormwindCitySong },
				["Olivia's Pond"] = { Type = "Capital", Music = StormwindCitySong },
				["The Wollerton Stead"] = { Type = "Capital", Music = StormwindCitySong },
				["The Eastern Earthshrine"] = { Type = "Capital", Music = StormwindCitySong },
				["Stormwind Harbor"] = { Type = "Capital", Music = StormwindCitySong },
				["Stormwind Keep"] = { Type = "Capital", Music = StormwindCitySong },
				["Petitioner's Chamber"] = { Type = "Capital", Music = StormwindCitySong },
				["Royal Gallery"] = { Type = "Capital", Music = StormwindCitySong },
				["Royal Library"] = { Type = "Capital", Music = StormwindCitySong },
				["War Room"] = { Type = "Capital", Music = StormwindCitySong },
				["Stormwind Lake"] = { Type = "Capital", Music = StormwindCitySong },
				["Trade District"] = { Type = "Capital", Music = StormwindCitySong },
				["Gryphon Roost"] = { Type = "Capital", Music = StormwindCitySong },
				["Valley of Heroes"] = { Type = "Capital", Music = StormwindCitySong },
			},
			[ 85 ] = nil, -- Orgrimmar	-	Kalimdor
			[ 87 ] = { -- Ironforge	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 1,
				Music1 = IronforgeSong,
				Sleep = false,
				Swim = 1,
				--	SUBZONES:
				["The Commons"] = { Type = "Capital", Music = IronforgeSong },
				["The Stonefire Tavern"] = { Type = "Capital", Music = IronforgeSong },
				["Vault of Ironforge"] = { Type = "Capital", Music = IronforgeSong },
				["The Forlorn Cavern"] = { Type = "Capital", Music = IronforgeSong },
				["Gates of Ironforge"] = { Type = "Capital", Music = IronforgeSong },
				["The Great Forge"] = { Type = "Capital", Music = IronforgeSong },
				["The High Seat"] = { Type = "Capital", Music = IronforgeSong },
				["Cask 'n' Anvil"] = { Type = "Capital", Music = IronforgeSong },
				["Hall of Explorers"] = { Type = "Capital", Music = IronforgeSong },
				["The Library"] = { Type = "Capital", Music = IronforgeSong },
				["The Military Ward"] = { Type = "Capital", Music = IronforgeSong },
				["Hall of Arms"] = { Type = "Capital", Music = IronforgeSong },
				["The Mystic Ward"] = { Type = "Capital", Music = IronforgeSong },
				["Hall of Mysteries"] = { Type = "Capital", Music = IronforgeSong },
				["Old Ironforge"] = { Type = "Capital", Music = IronforgeSong },
				["Tinker Town"] = { Type = "Capital", Music = IronforgeSong },
				["Deeprun Tram"] = { Type = "Capital", Music = IronforgeSong },
			},
			[ 88 ] = nil, -- Thunder Bluff	-	Kalimdor
			[ 89 ] = nil, -- Darnassus	-	Kalimdor
			[ 90 ] = { -- Undercity	-	Eastern Kingdoms
				Faction = "Horde",
				Songs = 1,
				Music1 = UndercitySong,
				Sleep = false,
				Swim = 2,
				--	SUBZONES:
				["Apothecarium"] = { Type = "Capital", Music = UndercitySong },
				["Canals"] = { Type = "Capital", Music = UndercitySong },
				["Magic Quarter"] = { Type = "Capital", Music = UndercitySong },
				["Rogues' Quarter"] = { Type = "Capital", Music = UndercitySong },
				["Royal Quarter"] = { Type = "Capital", Music = UndercitySong },
				["Ruins of Lordaeron"] = { Type = "Capital", Music = UndercitySong },
				["Sewers"] = { Type = "Capital", Music = UndercitySong },
				["Trade Quarter"] = { Type = "Capital", Music = UndercitySong },
				["War Quarter"] = { Type = "Capital", Music = UndercitySong },
			},
			[ 94 ] = { -- Eversong Woods	-	Eastern Kingdoms
				Faction = "Horde",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Horde:
				["Fairbreeze Village"] = { Type = "Town", Faction = "Horde" },
				["Falconwing Square"] = { Type = "Town", Faction = "Horde" },
				["Farstrider Retreat"] = { Type = "Town", Faction = "Horde" },
				["Saltheril's Haven"] = { Type = "Town", Faction = "Horde" },
				["Thuron's Livery"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Azurebreeze Coast"] = { Type = "Subzone", Music = WaterSong },
				["The Dead Scar"] = { Type = "Subzone", Music = SwampSong },
				["Duskwither Ground"] = { Type = "Subzone", Music = ForestSong },
				["Duskwither Spire"] = { Type = "Subzone", Music = ForestSong },
				["East Sanctum"] = { Type = "Subzone", Music = SwampSong },
				["Elrendar Falls"] = { Type = "Subzone", Music = LakeSong },
				["Golden Strand"] = { Type = "Subzone", Music = WaterSong },
				["Goldenbough Pass"] = { Type = "Subzone", Music = ForestSong },
				["Huntress of the Sun"] = { Type = "Subzone", Music = PlagueSong },
				["Lake Elrendar"] = { Type = "Subzone", Music = LakeSong },
				["The Living Wood"] = { Type = "Subzone", Music = ForestSong },
				["North Sanctum"] = { Type = "Subzone", Music = ForestSong },
				["Ruins of Silvermoon"] = { Type = "Subzone", Music = PlagueSong },
				["Commons Hall"] = { Type = "Subzone", Music = PlagueSong },
				["Dawning Lane"] = { Type = "Subzone", Music = Misc1Song },
				["Feth's Way"] = { Type = "Subzone", Music = PlagueSong },
				["Skulking Row"] = { Type = "Subzone", Music = PlagueSong },
				["Runestone Falithas"] = { Type = "Subzone", Music = PlagueSong },
				["Runestone Shan'dor"] = { Type = "Subzone", Music = PlagueSong },
				["Sunsail Anchorage"] = { Type = "Subzone", Music = LakeSong },
				["The Scorched Grove"] = { Type = "Subzone", Music = SwampSong },
				["The Shepherd's Gate"] = { Type = "Subzone", Music = SilvermoonCitySong },
				["Stillwhisper Pond"] = { Type = "Subzone", Music = LakeSong },
				["Tor'Watha"] = { Type = "Subzone", Music = LandSong },
				["Tranquil Shore"] = { Type = "Subzone", Music = WaterSong },
				["West Sanctum"] = { Type = "Subzone", Music = ForestSong },
				["Zeb'Watha"] = { Type = "Subzone", Music = LandSong },
			},
			[ 95 ] = { -- Ghostlands	-	Eastern Kingdoms
				Faction = "Horde",
				Songs = 1,
				Music1 = PlagueSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Horde:
				["Farstrider Enclave"] = { Type = "Town", Faction = "Horde" },
				["Sanctum of the Sun"] = { Type = "Town", Faction = "Horde" },
				["Tranquillien"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Amani Catacombs"] = { Type = "Subzone", Music = LandSong },
				["Amani Mountains"] = { Type = "Subzone", Music = LandSong },
				["Amani Pass"] = { Type = "Subzone", Music = LandSong },
				["Andilien Estate"] = { Type = "Subzone", Music = PlagueSong },
				["An'daroth"] = { Type = "Subzone", Music = PlagueSong },
				["An'owyn"] = { Type = "Subzone", Music = PlagueSong },
				["An'telas"] = { Type = "Subzone", Music = PlagueSong },
				["Bleeding Ziggurat"] = { Type = "Subzone", Music = PlagueSong },
				["Dawnstar Spire"] = { Type = "Subzone", Music = PlagueSong },
				["The Dead Scar"] = { Type = "Subzone", Music = SwampSong },
				["Deatholme"] = { Type = "Subzone", Music = SwampSong },
				["Elrendar Crossing"] = { Type = "Subzone", Music = WaterSong },
				["Elrendar River"] = { Type = "Subzone", Music = WaterSong },
				["Goldenmist Village"] = { Type = "Subzone", Music = PlagueSong },
				["Hatchet Hills"] = { Type = "Subzone", Music = PlagueSong },
				["Howling Ziggurat"] = { Type = "Subzone", Music = PlagueSong },
				["Isle of Tribulations"] = { Type = "Subzone", Music = PlagueSong },
				["Lake Elrendar"] = { Type = "Subzone", Music = LakeSong },
				["Sanctum of the Moon"] = { Type = "Subzone", Music = PlagueSong },
				["Shalandis Isle"] = { Type = "Subzone", Music = DarnassusSong },
				["Suncrown Village"] = { Type = "Subzone", Music = PlagueSong },
				["Sungraze Peak"] = { Type = "Subzone", Music = PlagueSong },
				["Thalassian Pass"] = { Type = "Subzone", Music = PlagueSong },
				["Thalassian Range"] = { Type = "Subzone", Music = PlagueSong },
				["Tower of the Damned"] = { Type = "Subzone", Music = PlagueSong },
				["Underlight Mines"] = { Type = "Subzone", Music = PlagueSong },
				["Windrunner Spire"] = { Type = "Subzone", Music = PlagueSong },
				["Windrunner Village"] = { Type = "Subzone", Music = PlagueSong },
				["Zeb'Nowa"] = { Type = "Subzone", Music = LandSong },
				["Zeb'Sora"] = { Type = "Subzone", Music = LandSong },
				["Zeb'Tela"] = { Type = "Subzone", Music = LandSong },
			},
			[ 97 ] = nil, -- Azuremyst Isle	-	Kalimdor
			[ 100 ] = nil, -- Hellfire Peninsula	-	Outland
			[ 102 ] = nil, -- Zangarmarsh	-	Outland
			[ 103 ] = nil, -- The Exodar	-	Kalimdor
			[ 104 ] = nil, -- Shadowmoon Valley	-	Outland
			[ 105 ] = nil, -- Blade's Edge Mountains	-	Outland
			[ 106 ] = nil, -- Bloodmyst Isle	-	Kalimdor
			[ 107 ] = nil, -- Nagrand	-	Outland
			[ 108 ] = nil, -- Terokkar Forest	-	Outland
			[ 109 ] = nil, -- Netherstorm	-	Outland
			[ 110 ] = { -- Silvermoon City	-	Eastern Kingdoms
				Faction = "Horde",
				Songs = 1,
				Music1 = SilvermoonCitySong,
				Sleep = false,
				Swim = 1,
				--	SUBZONES:
				["The Bazaar"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Bank of Silvermoon"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Blades & Axes"] = { Type = "Capital", Music = SilvermoonCitySong },
				["General Goods"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Keelen's Trustworthy Tailoring"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Shields of Silver"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Silvermoon Finery"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Court of the Sun"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Sunfury Spire"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Inner Sanctum"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Farstriders' Square"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Hall of Blood"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Rangers' Lodge"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Murder Row"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Sanctum"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Royal Exchange"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Hall of Respite"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Silvermoon Jewelery"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Reliquary"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Royal Exchange Auction House"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Royal Exchange Bank"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Silvermoon City Inn"] = { Type = "Capital", Music = SilvermoonCitySong },
				["The Shepherd's Gate"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Walk of Elders"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Silvermoon Registry"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Velaani's Arcane Goods"] = { Type = "Capital", Music = SilvermoonCitySong },
				["Wayfarer's Rest"] = { Type = "Capital", Music = SilvermoonCitySong },
			},
			[ 111 ] = nil, -- Shattrath City	-	Outland
			[ 114 ] = nil, -- Borean Tundra	-	Northrend
			[ 115 ] = nil, -- Dragonblight	-	Northrend
			[ 116 ] = nil, -- Grizzly Hills	-	Northrend
			[ 117 ] = nil, -- Howling Fjord	-	Northrend
			[ 118 ] = nil, -- Icecrown	-	Northrend
			[ 119 ] = nil, -- Sholazar Basin	-	Northrend
			[ 120 ] = nil, -- The Storm Peaks	-	Northrend
			[ 121 ] = nil, -- Zul'Drak	-	Northrend
			[ 122 ] = nil, -- Isle of Quel'Danas	-	Eastern Kingdoms
			[ 123 ] = nil, -- Wintergrasp	-	Northrend
			[ 124 ] = { -- Plaguelands: The Scarlet Enclave	-	Eastern Plaguelands
				Faction = "Neutral",
				Songs = 5,
				Music1 = BattleGround1,
				Music2 = BattleGround2,
				Music3 = BattleGround3,
				Music4 = BattleGround4,
				Music5 = BattleGround5,
				Sleep = false,
				Swim = 2,
				--	SUBZONES:
				["Acherus: The Ebon Hold"] = { Type = "Subzone", Music = EbonHoldSong },
				["Hall of Command"] = { Type = "Subzone", Music = EbonHoldSong },
				["The Heart of Acherus"] = { Type = "Subzone", Music = EbonHoldSong },
				["Browman Mill"] = { Type = "Subzone", Music = nil },
				["Crypt of Remembrance"] = { Type = "Subzone", Music = EbonHoldSong },
				["Death's Breach"] = { Type = "Subzone", Music = SwampSong },
				["Havenshire"] = { Type = "Subzone", Music = nil },
				["Havenshire Farms"] = { Type = "Subzone", Music = nil },
				["Havenshire Lumber Mill"] = { Type = "Subzone", Music = nil },
				["Havenshire Mine"] = { Type = "Subzone", Music = CaveSong },
				["Havenshire Stables"] = { Type = "Subzone", Music = nil },
				["King's Harbor"] = { Type = "Subzone", Music = nil },
				["Light's Hope Chapel"] = { Type = "Subzone", Music = nil },
				["Light's Point"] = { Type = "Subzone", Music = nil },
				["Light's Point Tower"] = { Type = "Subzone", Music = nil },
				["New Avalon"] = { Type = "Subzone", Music = nil },
				["Chapel of the Crimson Flame"] = { Type = "Subzone", Music = nil },
				["New Avalon Forge"] = { Type = "Subzone", Music = nil },
				["New Avalon Orchard"] = { Type = "Subzone", Music = nil },
				["New Avalon Town Hall"] = { Type = "Subzone", Music = nil },
				["Scarlet Hold"] = { Type = "Subzone", Music = nil },
				["Scarlet Tavern"] = { Type = "Subzone", Music = nil },
				["The Noxious Glade"] = { Type = "Subzone", Music = PlagueSong },
				["The Noxious Pass"] = { Type = "Subzone", Music = PlagueSong },
				["The Pestilent Scar"] = { Type = "Subzone", Music = SwampSong },
				["The Scarlet Overlook"] = { Type = "Subzone", Music = nil },
				["Tyr's Hand"] = { Type = "Subzone", Music = nil },
				["The Scarlet Basilica"] = { Type = "Subzone", Music = nil },
				["Tyr's Hand Abbey"] = { Type = "Subzone", Music = nil },
				["Hall of Arms"] = { Type = "Subzone", Music = nil },
				["Library Wing"] = { Type = "Subzone", Music = nil },
				["Main Hall"] = { Type = "Subzone", Music = nil },
			},
			[ 127 ] = nil, -- Crystalsong Forest	-	Northrend
			[ 170 ] = nil, -- Hrothgar's Landing	-	Northrend
			[ 174 ] = nil, -- The Lost Isles	-	The Maelstrom
			[ 179 ] = {	-- Gilneas	-	Eastern Kingdoms
				Faction = "Alliance",
				Songs = 1,
				Music1 = ForestSong,
				Sleep = true,				
				Swim = 2,
				--	TOWNS:
				--	Alliance:
				["Duskhaven"] = { Type = "Town", Faction = "Alliance" },
				["Greymane Manor"] = { Type = "Town", Faction = "Alliance" },
				["Keel Harbor"] = { Type = "Town", Faction = "Alliance" },
				["Stormglen Village"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Aderic's Repose"] = { Type = "Subzone", Music = DeadSong },
				["Allen Farmstead"] = { Type = "Subzone", Music = ForestSong },
				["The Bite"] = { Type = "Subzone", Music = ForestSong },
				["The Blackwald"] = { Type = "Subzone", Music = ForestSong },
				["The Bradshaw Mill"] = { Type = "Subzone", Music = ContestedSong },
				["Crowley Orchard"] = { Type = "Subzone", Music = ForestSong },
				["Crowley Stable Grounds"] = { Type = "Subzone", Music = ForestSong },
				["Duskmist Shore"] = { Type = "Subzone", Music = ForestSong },
				["Emberstone Mine"] = { Type = "Subzone", Music = CaveSong },
				["Emberstone Village"] = { Type = "Subzone", Music = HostileSong },
				["Forsaken Forward Command"] = { Type = "Subzone", Music = BattleGround1 },
				["Galewatch Lighthouse"] = { Type = "Subzone", Music = ForestSong },
				["The Greymane Wall"] = { Type = "Subzone", Music = ForestSong },
				["Hailwood Marsh"] = { Type = "Subzone", Music = ForestSong },
				["Hammond Farmstead"] = { Type = "Subzone", Music = ForestSong },
				["Hayward Fishery"] = { Type = "Subzone", Music = WaterSong },
				["The Headlands"] = { Type = "Subzone", Music = ForestSong },
				["King's Gate"] = { Type = "Subzone", Music = ForestSong },
				["Koroth's Den"] = { Type = "Subzone", Music = HostileSong },
				["Livery Outpost"] = { Type = "Subzone", Music = ForestSong },
				["Northern Headlands"] = { Type = "Subzone", Music = ForestSong },
				["Northgate River"] = { Type = "Subzone", Music = LakeSong },
				["Northgate Woods"] = { Type = "Subzone", Music = ForestSong },
				["Queen's Gate"] = { Type = "Subzone", Music = ForestSong },
				["Rygna's Lair"] = { Type = "Subzone", Music = ForestSong },
				["Stagecoach Crash Site"] = { Type = "Subzone", Music = ForestSong },
				["Tal'doren"] = { Type = "Subzone", Music = ForestSong },
				["Tempest's Reach"] = { Type = "Subzone", Music = ForestSong },
				["Wahl Cottage"] = { Type = "Subzone", Music = ForestSong },
				["Wood's End Cabin"] = { Type = "Subzone", Music = ForestSong },
			},
			[ 194 ] = nil, -- Kezan	-	The Maelstrom
			[ 198 ] = nil, -- Mount Hyjal	-	Kalimdor
			[ 199 ] = nil, -- Southern Barrens	-	Kalimdor
			[ 201 ] = nil, -- Kelp'thar Forest	-	Vashj'ir
			[ 202 ] = { -- Gilneas City	-	Gilneas
				Faction = "Alliance",
				Songs = 5,
				Music1 = BattleGround1,
				Music2 = BattleGround2,
				Music3 = BattleGround3,
				Music4 = BattleGround4,
				Music5 = BattleGround5,
				Sleep = true,
				Swim = 2,
				--	SUBZONES:
				["Cathedral Quarter"] = { Type = "Subzone", Music = nil },
				["Light's Dawn Cathedral"] = { Type = "Subzone", Music = nil },
				["Greymane Court"] = { Type = "Subzone", Music = nil },
				["Merchant Square"] = { Type = "Subzone", Music = Alliance8Town },
				["Military District"] = { Type = "Subzone", Music = nil },
				["Stoneward Prison"] = { Type = "Subzone", Music = nil },
			},
			[ 203 ] = nil, -- Vashj'ir	-	Eastern Kingdoms
			[ 204 ] = { -- Abyssal Depths	-	Vashj'ir
				Faction = "Contested",
				Songs = 4,
				Music1 = LakeSong,
				Music2 = WaterSong,
				Music3 = SwimSong,
				Music4 = DarkSwimSong,
				Sleep = true,
				--	TOWNS:
				--	Alliance:
				["Darkbreak Cove"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Tenebrous Cavern"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Abandoned Reef"] = { Type = "Subzone", Music = nil },
				["Abyssal Breach"] = { Type = "Subzone", Music = nil },
				["The Abyssal Maw"] = { Type = "Subzone", Music = nil },
				["The Cerebrillum"] = { Type = "Subzone", Music = nil },
				["Coldlight Chasm"] = { Type = "Subzone", Music = nil },
				["Deepfin Ridge"] = { Type = "Subzone", Music = nil },
				["Fireplume Trench"] = { Type = "Subzone", Music = nil },
				["Korthun's End"] = { Type = "Subzone", Music = nil },
				["L'ghorek"] = { Type = "Subzone", Music = nil },
				["The Lightless Reaches"] = { Type = "Subzone", Music = nil },
				["Nightmare Depths"] = { Type = "Subzone", Music = nil },
				["The Overlook"] = { Type = "Subzone", Music = nil },
				["Promontory Point"] = { Type = "Subzone", Music = nil },
				["The Scalding Chasm"] = { Type = "Subzone", Music = nil },
				["Seabrush"] = { Type = "Subzone", Music = nil },
				["Sira'kess Front"] = { Type = "Subzone", Music = nil },
				["Thermal Vents"] = { Type = "Subzone", Music = nil },
				["Underlight Canyon"] = { Type = "Subzone", Music = nil },
				["The Undershell"] = { Type = "Subzone", Music = nil },
			},
			[ 205 ] = nil, -- Shimmering Expanse	-	Vashj'ir
			[ 207 ] = nil, -- Deepholm	-	The Maelstrom
			[ 210 ] = { -- The Cape of Stranglethorn	-	Stranglethorn Vale
				Faction = "Contested",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = ContestedSong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Explorers' League Digsite"] = { Type = "Town", Faction = "Alliance" },
				--	Horde:
				["Hardwrench Hideaway"] = { Type = "Town", Faction = "Horde" },
				--	Neutral:
				["Booty Bay"] = { Type = "Town", Faction = "Neutral" },
				["The Salty Sailor Tavern"] = { Type = "Town", Faction = "Neutral" },
				--	SUBZONES:
				["The Crystal Shore"] = { Type = "Subzone", Music = WaterSong },
				["Crystalvein Mine"] = { Type = "Subzone", Music = CaveSong },
				["Gurubashi Arena"] = { Type = "Subzone", Music = BattleGround1 },
				["The Great Arena"] = { Type = "Subzone", Music = BattleGround1 },
				["Battle Ring"] = { Type = "Subzone", Music = HostileSong },
				["Jaguero Isle"] = { Type = "Subzone", Music = BeachSong },
				["Janeiro's Point"] = { Type = "Subzone", Music = Misc1Song },
				["Mistvale Valley"] = { Type = "Subzone", Music = ForestSong },
				["Spirit Den"] = { Type = "Subzone", Music = CaveSong },
				["Nek'mani Wellspring"] = { Type = "Subzone", Music = LakeSong },
				["Ruins of Aboraz"] = { Type = "Subzone", Music = WaterSong },
				["Ruins of Jubuwal"] = { Type = "Subzone", Music = ForestSong },
				["South Seas"] = { Type = "Subzone", Music = WaterSong },
				["Southern Savage Coast"] = { Type = "Subzone", Music = WaterSong },
				["The Sundering"] = { Type = "Subzone", Music = WaterSong },
				["Wild Shore"] = { Type = "Subzone", Music = WaterSong },
			},
			[ 217 ] = { -- Ruins of Gilneas	-	Eastern Kingdoms
				Faction = "Horde",
				Songs = 1,
				Music1 = ForestSong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				--	Horde:
				["Forsaken Forward Command"] = { Type = "Town", Faction = "Horde" },
				--		SUBZONES:
				["7th Legion Submarine"] = { Type = "Subzone", Music = WaterSong },
				["Dreadwatch Outpost"] = { Type = "Subzone", Music = nil },
				["Emberstone Mine"] = { Type = "Subzone", Music = CaveSong },
				["Emberstone Village"] = { Type = "Subzone", Music = nil },
				["Gilneas City"] = { Type = "Subzone", Music = nil },
				["Light's Dawn Cathedral"] = { Type = "Subzone", Music = nil },
				["Stoneward Prison"] = { Type = "Subzone", Music = nil },
				["The Greymane Wall"] = { Type = "Subzone", Music = ForestSong },
				["Northern Headlands"] = { Type = "Subzone", Music = nil },
				["Rutsak's Guard"] = { Type = "Subzone", Music = nil },
				["Tempest's Reach"] = { Type = "Subzone", Music = nil },
			},
			[ 224 ] = nil, -- Stranglethorn Vale	-	Eastern Kingdoms
			[ 241 ] = nil, -- Twilight Highlands	-	Eastern Kingdoms
			[ 244 ] = nil, -- Tol Barad	-	Eastern Kingdoms
			[ 245 ] = nil, -- Tol Barad Peninsula	-	Eastern Kingdoms
			[ 249 ] = nil, -- Uldum	-	Kalimdor
			[ 276 ] = nil, -- The Maelstrom	-	The Maelstrom
			[ 371 ] = nil, -- The Jade Forest	-	Pandaria
			[ 376 ] = nil, -- Valley of the Four Winds	-	Pandaria
			[ 379 ] = nil, -- Kun-Lai Summit	-	Pandaria
			[ 388 ] = nil, -- Townlong Steppes	-	Pandaria
			[ 390 ] = nil, -- Vale of Eternal Blossoms	-	Pandaria
			[ 418 ] = nil, -- Krasarang Wilds	-	Pandaria
			[ 422 ] = nil, -- Dread Wastes	-	Pandaria
			[ 425 ] = { -- Northshire	-	Elwynn Forest
				Faction = "Alliance",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Northshire Abbey"] = { Type = "Town", Faction = "Alliance" },
				["Hall of Arms"] = { Type = "Town", Faction = "Alliance" },
				["Library Wing"] = { Type = "Town", Faction = "Alliance" },
				["Main Hall"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Echo Ridge Mine"] = { Type = "Subzone", Music = ForestSong },
				["Northshire River"] = { Type = "Subzone", Music = LakeSong },
				["Northshire Valley"] = { Type = "Subzone", Music = ForestSong },
				["Northshire Vineyards"] = { Type = "Subzone", Music = HostileSong },				
			},
			[ 427 ] = {	-- Coldridge Valley	-	Dun Morogh
				Faction = "Alliance",
				Songs = 2,
				Music1 = SnowSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Alliance:
				["Anvilmar"] = { Type = "Town", Faction = "Alliance" },
				--	SUBZONES:
				["Coldridge Valley"] = { Type = "Subzone", Music = SnowSong },
				["Coldridge Pass"] = { Type = "Subzone", Music = SnowSong },
				["Frostmane Hovel"] = { Type = "Subzone", Music = CaveSong },
				["Whitebeard's Encampment"] = { Type = "Subzone", Music = SnowSong },
			},
			[ 433 ] = nil, -- The Veiled Stair	-	Pandaria
			[ 460 ] = nil, -- Shadowglen	-	Teldrassil
			[ 461 ] = { -- Valley of Trials - Orc Start:
				Faction = "Horde",
				Songs = 2,
				Music1 = LandSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	SUBZONES:
				["Valley of Trials"] = { Type = "Zone", Faction = "Horde", Music = LandSong },
				["Burning Blade Coven"] = { Type = "Subzone", Music = CaveSong },
				["The Den"] = { Type = "Subzone", Music = CaveSong },
			},
			[ 462 ] = { -- Camp Narache - Tauren Start:
				Faction = "Horde",
				Songs = 2,
				Music1 = LandSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	SUBZONES:
				["Red Cloud Mesa"] = { Type = "Subzone", Music = LandSong },
				["The Battleboar Pen"] = { Type = "Subzone", Music = ForestSong },
				["Brambleblade Ravine"] = { Type = "Subzone", Music = ForestSong },
				["Camp Narache"] = { Type = "Subzone", Music = LandSong },
				["Fargaze Mesa"] = { Type = "Subzone", Music = LandSong },
				["Thornmantle's Hideout"] = { Type = "Subzone", Music = ForestSong },
				["The Thornsnarl"] = { Type = "Subzone", Music = ForestSong },
			},
			[ 463 ] = { -- Echo Isles - Troll Start:
				Faction = "Horde",
				Songs = 2,
				Music1 = BeachSong,
				Music2 = FriendlySong,
				Sleep = true,
				Swim = 1,
				--	TOWNS:
				--	Horde:
				["Darkspear Hold"] = { Type = "Town", Faction = "Horde" },
				["Darkspear Shore"] = { Type = "Town", Faction = "Horde" },
				["Darkspear Training Grounds"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Bloodtalon Shore"] = { Type = "Subzone", Music = BeachSong },
				["Darkspear Isle"] = { Type = "Subzone", Music = BeachSong },
				["Spitescale Cove"] = { Type = "Subzone", Music = BeachSong },
				["Spitescale Cavern"] = { Type = "Subzone", Music = CaveSong },
				["Zalazane's Fall"] = { Type = "Subzone", Music = BeachSong },
			},
			[ 465 ] = { -- Deathknell	-	Tirisfal Glades
				Faction = "Horde",
				Songs = 2,
				Music1 = ForestSong,
				Music2 = PlagueSong,
				Sleep = true,
				Swim = 2,
				--	SUBZONES:
				["Deathknell"] = { Type = "Subzone", Music = PlagueSong },
				["The Deathknell Graves"] = { Type = "Subzone", Music = PlagueSong },
				["Night Web's Hollow"] = { Type = "Subzone", Music = PlagueSong },
				["Rotbrain Encampment"] = { Type = "Subzone", Music = PlagueSong },
				["Shadow Grave"] = { Type = "Subzone", Music = PlagueSong },
			},
			[ 467 ] = { -- Sunstrider Isle	-	Eversong Woods
				Faction = "Horde",
				Songs = 1,
				Music1 = FriendlySong,
				Sleep = true,
				Swim = 2,
				--	TOWNS:
				-- Horde:
				["The Sunspire"] = { Type = "Town", Faction = "Horde" },
				--	SUBZONES:
				["Sunstrider Isle"] = { Type = "Subzone", Music = FriendlySong },
				["Falthrien Academy"] = { Type = "Subzone", Music = Horde7Town },
				["Shrine of Dath'Remar"] = { Type = "Subzone", Music = DalaranSong },
			},
			[ 468 ] = nil, -- Ammen Vale	-	Azuremyst Isle
			[ 469 ] = nil, -- New Tinkertown	-	Dun Morogh
			[ 504 ] = nil, -- Isle of Thunder	-	Pandaria
			[ 507 ] = nil, -- Isle of Giants	-	Pandaria
			[ 525 ] = nil, -- Frostfire Ridge	-	Draenor
			[ 534 ] = nil, -- Tanaan Jungle	-	Draenor
			[ 535 ] = nil, -- Talador	-	Draenor
			[ 539 ] = nil, -- Shadowmoon Valley	-	Draenor
			[ 542 ] = nil, -- Spires of Arak	-	Draenor
			[ 543 ] = nil, -- Gorgrond	-	Draenor
			[ 550 ] = nil, -- Nagrand	-	Draenor
			[ 554 ] = nil, -- Timeless Isle	-	Pandaria
			[ 588 ] = nil, -- Ashran	-	Draenor
			[ 625 ] = nil, -- Dalaran	-	Broken Isles
			[ 630 ] = nil, -- Azsuna	-	Broken Isles
			[ 634 ] = nil, -- Stormheim	-	Broken Isles
			[ 641 ] = nil, -- Val'sharah	-	Broken Isles
			[ 646 ] = nil, -- Broken Shore	-	Broken Isles
			[ 650 ] = nil, -- Highmountain	-	Broken Isles
			[ 680 ] = nil, -- Suramar	-	Broken Isles
			[ 739 ] = nil, -- Trueshot Lodge	-	Highmountain
			[ 790 ] = nil, -- Eye of Azshara	-	Broken Isles
			[ 830 ] = nil, -- Krokuun	-	Argus
			[ 862 ] = nil, -- Zuldazar	-	Zandalar
			[ 863 ] = nil, -- Nazmir	-	Zandalar
			[ 864 ] = nil, -- Vol'dun	-	Zandalar
			[ 882 ] = nil, -- Mac'Aree	-	Argus
			[ 885 ] = nil, -- Antoran Wastes	-	Argus
			[ 895 ] = nil, -- Tiragarde Sound	-	Kul Tiras
			[ 896 ] = nil, -- Drustvar	-	Kul Tiras
			[ 942 ] = nil, -- Stormsong Valley	-	Kul Tiras
			[ 997 ] = nil, -- Tirisfal Glades	-	
			[ 998 ] = nil, -- Undercity	-	Ruins of Lordaeron
			[ 1010 ] = nil, -- The MOTHERLODE!!	-	Kezan
			[ 1022 ] = nil, -- Uncharted Island	-	
			[ 1032 ] = nil, -- Skittering Hollow	-	
			[ 1033 ] = nil, -- The Rotting Mire	-	
			[ 1034 ] = nil, -- Verdant Wilds	-	
			[ 1035 ] = nil, -- Molten Cay	-	
			[ 1036 ] = nil, -- The Dread Chain	-	
			[ 1037 ] = nil, -- Whispering Reef	-	
			[ 1039 ] = nil, -- Shrine of the Storm	-	Stormsong Valley
			[ 1041 ] = nil, -- The Underrot	-	Nazmir
			[ 1158 ] = nil, -- Arathi Highlands	-	
			[ 1161 ] = nil, -- Boralus	-	Tiragarde Sound
			[ 1165 ] = nil, -- Dazar'alor	-	Zuldazar
			[ 1169 ] = nil, -- Tol Dagor	-	Kul Tiras
			[ 1170 ] = nil, -- Gorgrond - Mag'har Scenario	-	
			[ 1187 ] = nil, -- Azsuna	-	Broken Isles
			[ 1188 ] = nil, -- Val'sharah	-	Broken Isles
			[ 1189 ] = nil, -- Highmountain	-	Broken Isles
			[ 1190 ] = nil, -- Stormheim	-	Broken Isles
			[ 1191 ] = nil, -- Suramar	-	Broken Isles
			[ 1192 ] = nil, -- Broken Shore	-	Broken Isles
			[ 1193 ] = nil, -- Zuldazar	-	Zandalar
			[ 1194 ] = nil, -- Nazmir	-	Zandalar
			[ 1195 ] = nil, -- Vol'dun	-	Zandalar
			[ 1196 ] = nil, -- Tiragarde Sound	-	Kul Tiras
			[ 1197 ] = nil, -- Drustvar	-	Kul Tiras
			[ 1198 ] = nil, -- Stormsong Valley	-	Kul Tiras
			[ 1244 ] = nil, -- Arathi Highlands	-	Eastern Kingdoms
			[ 1245 ] = nil, -- Badlands	-	Eastern Kingdoms
			[ 1246 ] = nil, -- Blasted Lands	-	Eastern Kingdoms
			[ 1247 ] = nil, -- Tirisfal Glades	-	Eastern Kingdoms
			[ 1248 ] = nil, -- Silverpine Forest	-	Eastern Kingdoms
			[ 1249 ] = nil, -- Western Plaguelands	-	Eastern Kingdoms
			[ 1250 ] = nil, -- Eastern Plaguelands	-	Eastern Kingdoms
			[ 1251 ] = nil, -- Hillsbrad Foothills	-	Eastern Kingdoms
			[ 1252 ] = nil, -- The Hinterlands	-	Eastern Kingdoms
			[ 1253 ] = nil, -- Dun Morogh	-	Eastern Kingdoms
			[ 1254 ] = nil, -- Searing Gorge	-	Eastern Kingdoms
			[ 1255 ] = nil, -- Burning Steppes	-	Eastern Kingdoms
			[ 1256 ] = nil, -- Elwynn Forest	-	Eastern Kingdoms
			[ 1257 ] = nil, -- Deadwind Pass	-	Eastern Kingdoms
			[ 1258 ] = nil, -- Duskwood	-	Eastern Kingdoms
			[ 1259 ] = nil, -- Loch Modan	-	Eastern Kingdoms
			[ 1260 ] = nil, -- Redridge Mountains	-	Eastern Kingdoms
			[ 1261 ] = nil, -- Swamp of Sorrows	-	Eastern Kingdoms
			[ 1262 ] = nil, -- Westfall	-	Eastern Kingdoms
			[ 1263 ] = nil, -- Wetlands	-	Eastern Kingdoms
			[ 1264 ] = nil, -- Stormwind City	-	Eastern Kingdoms
			[ 1265 ] = nil, -- Ironforge	-	Eastern Kingdoms
			[ 1266 ] = nil, -- Undercity	-	Eastern Kingdoms
			[ 1267 ] = nil, -- Eversong Woods	-	Eastern Kingdoms
			[ 1268 ] = nil, -- Ghostlands	-	Eastern Kingdoms
			[ 1269 ] = nil, -- Silvermoon City	-	Eastern Kingdoms
			[ 1270 ] = nil, -- Isle of Quel'Danas	-	Eastern Kingdoms
			[ 1271 ] = nil, -- Gilneas	-	Eastern Kingdoms
			[ 1272 ] = nil, -- Vashj'ir	-	Eastern Kingdoms
			[ 1273 ] = nil, -- Ruins of Gilneas	-	Eastern Kingdoms
			[ 1274 ] = nil, -- Stranglethorn Vale	-	Eastern Kingdoms
			[ 1275 ] = nil, -- Twilight Highlands	-	Eastern Kingdoms
			[ 1276 ] = nil, -- Tol Barad	-	Eastern Kingdoms
			[ 1277 ] = nil, -- Tol Barad Peninsula	-	Eastern Kingdoms
			[ 1305 ] = nil, -- Durotar	-	Kalimdor
			[ 1306 ] = nil, -- Mulgore	-	Kalimdor
			[ 1307 ] = nil, -- Northern Barrens	-	Kalimdor
			[ 1308 ] = nil, -- Teldrassil	-	Kalimdor
			[ 1309 ] = nil, -- Darkshore	-	Kalimdor
			[ 1310 ] = nil, -- Ashenvale	-	Kalimdor
			[ 1311 ] = nil, -- Thousand Needles	-	Kalimdor
			[ 1312 ] = nil, -- Stonetalon Mountains	-	Kalimdor
			[ 1313 ] = nil, -- Desolace	-	Kalimdor
			[ 1314 ] = nil, -- Feralas	-	Kalimdor
			[ 1315 ] = nil, -- Dustwallow Marsh	-	Kalimdor
			[ 1316 ] = nil, -- Tanaris	-	Kalimdor
			[ 1317 ] = nil, -- Azshara	-	Kalimdor
			[ 1318 ] = nil, -- Felwood	-	Kalimdor
			[ 1319 ] = nil, -- Un'Goro Crater	-	Kalimdor
			[ 1320 ] = nil, -- Moonglade	-	Kalimdor
			[ 1321 ] = nil, -- Silithus	-	Kalimdor
			[ 1322 ] = nil, -- Winterspring	-	Kalimdor
			[ 1323 ] = nil, -- Thunder Bluff	-	Kalimdor
			[ 1324 ] = nil, -- Darnassus	-	Kalimdor
			[ 1325 ] = nil, -- Azuremyst Isle	-	Kalimdor
			[ 1326 ] = nil, -- The Exodar	-	Kalimdor
			[ 1327 ] = nil, -- Bloodmyst Isle	-	Kalimdor
			[ 1328 ] = nil, -- Mount Hyjal	-	Kalimdor
			[ 1329 ] = nil, -- Southern Barrens	-	Kalimdor
			[ 1330 ] = nil, -- Uldum	-	Kalimdor
			[ 1331 ] = nil, -- The Exodar	-	Kalimdor
			[ 1333 ] = nil, -- Darkshore	-	Kalimdor
			[ 1334 ] = nil, -- Wintergrasp	-	
			[ 1335 ] = nil, -- Cooking: Impossible	-	
			[ 1336 ] = nil, -- Havenswood	-	
			[ 1337 ] = nil, -- Jorundall	-	
			[ 1339 ] = nil, -- Warsong Gulch	-	Northern Barrens
			[ 1347 ] = nil, -- Zandalari Treasury	-	
			[ 1355 ] = nil, -- Nazjatar	-	
			[ 1362 ] = nil, -- Shrine of the Storm	-	
			[ 1396 ] = nil, -- Borean Tundra	-	Northrend
			[ 1397 ] = nil, -- Dragonblight	-	Northrend
			[ 1398 ] = nil, -- Grizzly Hills	-	Northrend
			[ 1399 ] = nil, -- Howling Fjord	-	Northrend
			[ 1400 ] = nil, -- Icecrown	-	Northrend
			[ 1401 ] = nil, -- Sholazar Basin	-	Northrend
			[ 1402 ] = nil, -- The Storm Peaks	-	Northrend
			[ 1403 ] = nil, -- Zul'Drak	-	Northrend
			[ 1404 ] = nil, -- Wintergrasp	-	Northrend
			[ 1405 ] = nil, -- Crystalsong Forest	-	Northrend
			[ 1406 ] = nil, -- Hrothgar's Landing	-	Northrend
			[ 1408 ] = nil, -- Ashran	-	
			[ 1462 ] = nil, -- Mechagon Island	-	Kul Tiras
			[ 1476 ] = nil, -- Twilight Highlands	-	
			[ 1478 ] = nil, -- Ashran	-	Draenor
			[ 1501 ] = nil, -- Crestfall	-	
			[ 1502 ] = nil, -- Snowblossom Village	-	
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