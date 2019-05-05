function FinalFantasylization_EasternKingdomsZones_TirisfalGlades()
--'==========================================================================================
--' Eastern Kingdoms Zones: Tirisfal Glades : Horde
--'==========================================================================================
--	Zone: Tirisfal Glades			FinalFantasylization_EasternKingdomsTirisfalGlades()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsTirisfalGladesResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsTirisfalGladesSwimming()
--
--	TOWNS:
--	Forsaken Start:
--		Deathknell						FinalFantasylization_Forsaken_Start_Deathknell()
--			The Deathknell Graves			FinalFantasylization_Forsaken_Start_TheDeathknellGraves()
--			Night Web's Hollow				FinalFantasylization_Forsaken_Start_NightWebsHollow()
--			Rotbrain Encampment				FinalFantasylization_Forsaken_Start_RotbrainEncampment()
--			Shadow Grave					FinalFantasylization_Forsaken_Start_ShadowGrave()
--	Horde:
--		Brill							FinalFantasylization_HordeTownBrill()
--			Brill Town Hall					FinalFantasylization_HordeTownBrillTownHall()
--			Gallows' End Tavern				FinalFantasylization_HordeTownGallowsEndTavern()
--		Ruins of Lordaeron				FinalFantasylization_HordeTownRuinsofLordaeron()
--
--	SUBZONES:
--	Agamand Mills					FinalFantasylization_SubzoneAgamandMills()
--		Agamand Family Crypt			FinalFantasylization_SubzoneAgamandFamilyCrypt()
--	Balnir Farmstead				FinalFantasylization_SubzoneBalnirFarmstead()
--	Brightwater Lake				FinalFantasylization_SubzoneBrightwaterLake()
--		Gunther's Retreat				FinalFantasylization_SubzoneGunthersRetreat()
--	The Bulwark						FinalFantasylization_SubzoneTheBulwark()
--	Calston Estate					FinalFantasylization_SubzoneCalstonEstate()
--	Cold Hearth Manor				FinalFantasylization_SubzoneColdHearthManor()
--	Crusader Outpost				FinalFantasylization_SubzoneCrusaderOutpost()
--	Death's Watch Waystation		FinalFantasylization_SubzoneDeathsWatchWaystation()
--	Faol's Rest						FinalFantasylization_SubzoneFaolsRest()
--	Garren's Haunt					FinalFantasylization_SubzoneGarrensHaunt()
--	Nightmare Vale					FinalFantasylization_SubzoneNightmareVale()
--	The North Coast					FinalFantasylization_SubzoneTheNorthCoast()
--	Scarlet Monastery				FinalFantasylization_SubzoneScarletMonastery()
--		The Grand Vestibule				FinalFantasylization_SubzoneTheGrandVestibule()
--		Terrace of Repose				FinalFantasylization_SubzoneTerraceofRepose()
--	Crusader's Outpost				FinalFantasylization_SubzoneCrusadersOutpost()
--		Scarlet Palisade				FinalFantasylization_SubzoneScarletPalisade()
--	Scarlet Watchtower				FinalFantasylization_SubzoneScarletWatchtower()
--	Scarlet Watch Post				FinalFantasylization_SubzoneScarletWatchPost()
--	Solliden Farmstead				FinalFantasylization_SubzoneSollidenFarmstead()
--	Stillwater Pond					FinalFantasylization_SubzoneStillwaterPond()
--	Venomweb Vale					FinalFantasylization_SubzoneVenomwebVale()
--		Scarlet Encampment				FinalFantasylization_SubzoneScarletEncampment()
--	Whispering Forest				FinalFantasylization_SubzoneWhisperingForest()
--	Whispering Gardens				FinalFantasylization_SubzoneWhisperingGardens()
--	Whispering Shore				FinalFantasylization_SubzoneWhisperingShore()
	--'==========================================================================================
	--'	Zone Event: Player is Resting
	--'==========================================================================================
	if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
		if FinalFantasylization_CurrentZone ~= "Sleeping" then
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. AllianceRest)
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
			end
			FinalFantasylization_CurrentZone = "Sleeping"
			FinalFantasylization_EasternKingdomsTirisfalGladesResting()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--'	Zone Event: Player is Swimming
	--'==========================================================================================
	elseif IsSwimming() and FinalFantasylizationOptions.Swim == true then
		if FinalFantasylization_CurrentZone ~= "Swimming" then
			FinalFantasylization_CurrentZone = "Swimming"
			FinalFantasylization_EasternKingdomsTirisfalGladesSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades: Forsaken Starting Area: Deathknell
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deathknell"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Forsaken_Start_Deathknell()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades: Forsaken Starting Area: The Deathknell Graves
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Deathknell Graves"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Forsaken_Start_TheDeathknellGraves()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades: Forsaken Starting Area: Night Web's Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Night Web's Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Forsaken_Start_NightWebsHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades: Forsaken Starting Area: Rotbrain Encampment
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rotbrain Encampment"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Forsaken_Start_RotbrainEncampment()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades: Forsaken Starting Area: Shadow Grave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadow Grave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Forsaken_Start_ShadowGrave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Horde Town: Brill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownBrill()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Horde Town: Brill Town Hall in Brill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brill Town Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownBrillTownHall()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Horde Town: Gallows' End Tavern in Brill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallows' End Tavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownGallowsEndTavern()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Horde Town: Ruins of Lordaeron
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Lordaeron"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRuinsofLordaeron()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Agamand Mills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Agamand Mills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAgamandMills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Agamand Family Crypt in Agamand Mills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Agamand Family Crypt"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAgamandFamilyCrypt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Balnir Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Balnir Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBalnirFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Brightwater Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brightwater Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBrightwaterLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Gunther's Retreat in Brightwater Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gunther's Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGunthersRetreat()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: The Bulwark
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Bulwark"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBulwark()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Calston Estate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Calston Estate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCalstonEstate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Cold Hearth Manor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cold Hearth Manor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneColdHearthManor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Crusader Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crusader Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrusaderOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Death's Watch Waystation
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Death's Watch Waystation"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeathsWatchWaystation()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Faol's Rest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Faol's Rest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFaolsRest()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Garren's Haunt
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Garren's Haunt"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGarrensHaunt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Nightmare Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nightmare Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNightmareVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: The North Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The North Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheNorthCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Scarlet Monastery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Monastery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScarletMonastery()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: The Grand Vestibule in Scarlet Monastery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Grand Vestibule"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGrandVestibule()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Terrace of Repose in Scarlet Monastery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Terrace of Repose"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTerraceofRepose()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Crusader's Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crusader's Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrusadersOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Scarlet Palisade in Crusader's Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Palisade"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScarletPalisade()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Scarlet Watchtower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Watchtower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScarletWatchtower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Scarlet Watch Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Watch Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScarletWatchPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Solliden Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Solliden Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSollidenFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Stillwater Pond
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stillwater Pond"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStillwaterPond()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Venomweb Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Venomweb Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVenomwebVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Scarlet Encampment in Venomweb Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Encampment"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScarletEncampment()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Whispering Forest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Whispering Forest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWhisperingForest()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Whispering Gardens
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Whispering Gardens"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWhisperingGardens()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades Subzone: Whispering Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Whispering Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWhisperingShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tirisfal Glades END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsTirisfalGlades()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end