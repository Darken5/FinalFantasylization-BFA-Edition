function FinalFantasylization_KalimdorZones_Uldum()
--'==========================================================================================
--' Kalimdor Zones: Uldum
--'==========================================================================================
--	Zone: Uldum			FinalFantasylization_KalimdorUldum()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorUldumResting()
--		Player is Swimming		FinalFantasylization_KalimdorUldumSwimming()
--
--	TOWNS:
--	Neutral:
--		Mar'at						FinalFantasylization_NeutralTownMarat()
--		Oasis of Vir'sar			FinalFantasylization_NeutralTownOasisofVirsar()
--			Sullah's Sideshow		FinalFantasylization_NeutralTownSullahsSideshow()
--		Ramkahen					FinalFantasylization_NeutralTownRamkahen()
--		Schnottz's Landing			FinalFantasylization_NeutralTownSchnottzsLanding()
--
--	SUBZONES:
--	Akhenet Fields					FinalFantasylization_SubzoneAkhenetFields()
--	Arsad Trade Post				FinalFantasylization_SubzoneArsadTradePost()
--	Bluff of the South Wind			FinalFantasylization_SubzoneBluffoftheSouthWind()
--	Cloudtop Terrace				FinalFantasylization_SubzoneCloudtopTerrace()
--	Cradle of the Ancients			FinalFantasylization_SubzoneCradleoftheAncients()
--	The Cursed Landing				FinalFantasylization_SubzoneTheCursedLanding()
--	Gate of Hamatep					FinalFantasylization_SubzoneGateofHamatep()
--	The Gate of Unending Cycles		FinalFantasylization_SubzoneTheGateofUnendingCycles()
--		Khartut's Tomb					FinalFantasylization_SubzoneKhartutsTomb()
--	Halls of Origination			FinalFantasylization_SubzoneHallsofOrigination()
--	Keset Pass						FinalFantasylization_SubzoneKesetPass()
--	Lost City of the Tol'vir		FinalFantasylization_SubzoneLostCityoftheTolvir()
--	Maker's Ascent					FinalFantasylization_SubzoneMakersAscent()
--	M.A.C. Diver					FinalFantasylization_SubzoneMACDiver()
--	Mount Akher						FinalFantasylization_SubzoneMountAkher()
--	Nahom							FinalFantasylization_SubzoneNahom()
--	Neferset City					FinalFantasylization_SubzoneNefersetCity()
--	Neferset City Outskirts			FinalFantasylization_SubzoneNefersetCityOutskirts()
--	Obelisk of the Moon				FinalFantasylization_SubzoneObeliskoftheMoon()
--		Chamber of the Moon				FinalFantasylization_SubzoneChamberoftheMoon()
--	Obelisk of the Stars			FinalFantasylization_SubzoneObeliskoftheStars()
--		Chamber of the Stars			FinalFantasylization_SubzoneChamberoftheStars()
--	Obelisk of the Sun				FinalFantasylization_SubzoneObeliskoftheSun()
--		Chamber of the Sun				FinalFantasylization_SubzoneChamberoftheSun()
--	Orsis							FinalFantasylization_SubzoneOrsis()
--	Pilgrim's Precipice				FinalFantasylization_SubzonePilgrimsPrecipice()
--	The Pit of Scales				FinalFantasylization_SubzoneThePitofScales()
--	Ramkahen Legion Outpost			FinalFantasylization_SubzoneRamkahenLegionOutpost()
--	Ruins of Ahmtul					FinalFantasylization_SubzoneRuinsofAhmtul()
--	Ruins of Ammon					FinalFantasylization_SubzoneRuinsofAmmon()
--	Ruins of Khintaset				FinalFantasylization_SubzoneRuinsofKhintaset()
--	Sahket Wastes					FinalFantasylization_SubzoneSahketWastes()
--	Seal of the Sun King			FinalFantasylization_SubzoneSealoftheSunKing()
--	The Steps of Fate				FinalFantasylization_SubzoneTheStepsofFate()
--	Sunstone Terrace				FinalFantasylization_SubzoneSunstoneTerrace()
--	Sunwatcher's Ridge				FinalFantasylization_SubzoneSunwatchersRidge()
--	Surveyors' Outpost				FinalFantasylization_SubzoneSurveyorsOutpost()
--	Tahret Grounds					FinalFantasylization_SubzoneTahretGrounds()
--	Temple of Uldum					FinalFantasylization_SubzoneTempleofUldum()
--	Tomb of the Sun King			FinalFantasylization_SubzoneTomboftheSunKing()
--	Tombs of the Precursors			FinalFantasylization_SubzoneTombsofthePrecursors()
--	The Trail of Devastation		FinalFantasylization_SubzoneTheTrailofDevastation()
--	Vir'naal Dam					FinalFantasylization_SubzoneVirnaalDam()
--	Vir'naal Lake					FinalFantasylization_SubzoneVirnaalLake()
--		Murkdeep Cavern					FinalFantasylization_SubzoneMurkdeepCavern()
--	Vir'naal Oasis					FinalFantasylization_SubzoneVirnaalOasis()
--	Vir'naal River					FinalFantasylization_SubzoneVirnaalRiver()
--	Vir'naal River Delta			FinalFantasylization_SubzoneVirnaalRiverDelta()
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
			FinalFantasylization_KalimdorUldumResting()
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
			FinalFantasylization_KalimdorUldumSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Neutral Town: Mar'at
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mar'at"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownMarat()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Neutral Town: Oasis of Vir'sar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Oasis of Vir'sar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownOasisofVirsar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Neutral Town: Sullah's Sideshow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sullah's Sideshow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownSullahsSideshow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Neutral Town: Ramkahen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ramkahen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownRamkahen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Neutral Town: Schnottz's Landing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Schnottz's Landing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownSchnottzsLanding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Akhenet Fields
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Akhenet Fields"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAkhenetFields()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Arsad Trade Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Arsad Trade Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneArsadTradePost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Bluff of the South Wind
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bluff of the South Wind"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBluffoftheSouthWind()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Cloudtop Terrace
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cloudtop Terrace"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCloudtopTerrace()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Cradle of the Ancients
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cradle of the Ancients"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCradleoftheAncients()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: The Cursed Landing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Cursed Landing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCursedLanding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Gate of Hamatep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gate of Hamatep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGateofHamatep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: The Gate of Unending Cycles
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Gate of Unending Cycles"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGateofUnendingCycles()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Khartut's Tomb
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Khartut's Tomb"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKhartutsTomb()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Halls of Origination
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Halls of Origination"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHallsofOrigination()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Keset Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Keset Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKesetPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Lost City of the Tol'vir
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lost City of the Tol'vir"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLostCityoftheTolvir()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Maker's Ascent
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Maker's Ascent"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMakersAscent()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: M.A.C. Diver
	--'==========================================================================================
	elseif ( SubZoneName == SZ["M.A.C. Diver"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMACDiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Mount Akher
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mount Akher"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMountAkher()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Nahom
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nahom"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNahom()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Neferset City
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Neferset City"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNefersetCity()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Neferset City Outskirts
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Neferset City Outskirts"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNefersetCityOutskirts()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Obelisk of the Moon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Obelisk of the Moon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneObeliskoftheMoon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Chamber of the Moon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chamber of the Moon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneChamberoftheMoon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Obelisk of the Stars
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Obelisk of the Stars"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneObeliskoftheStars()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Chamber of the Stars
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chamber of the Stars"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneChamberoftheStars()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Obelisk of the Sun
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Obelisk of the Sun"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneObeliskoftheSun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Chamber of the Sun
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chamber of the Sun"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneChamberoftheSun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Orsis
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Orsis"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneOrsis()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Pilgrim's Precipice
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pilgrim's Precipice"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePilgrimsPrecipice()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: The Pit of Scales
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Pit of Scales"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThePitofScales()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Ramkahen Legion Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ramkahen Legion Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRamkahenLegionOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Ruins of Ahmtul
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Ahmtul"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofAhmtul()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Ruins of Ammon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Ammon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofAmmon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Ruins of Khintaset
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Khintaset"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofKhintaset()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Sahket Wastes
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sahket Wastes"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSahketWastes()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Seal of the Sun King
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Seal of the Sun King"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSealoftheSunKing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: The Steps of Fate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Steps of Fate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheStepsofFate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Sunstone Terrace
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sunstone Terrace"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSunstoneTerrace()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Sunwatcher's Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sunwatcher's Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSunwatchersRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Surveyors' Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Surveyors' Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSurveyorsOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Tahret Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tahret Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTahretGrounds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Temple of Uldum
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Temple of Uldum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTempleofUldum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Tomb of the Sun King
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tomb of the Sun King"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTomboftheSunKing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Tombs of the Precursors
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tombs of the Precursors"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTombsofthePrecursors()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: The Trail of Devastation
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Trail of Devastation"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTrailofDevastation()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Vir'naal Dam
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vir'naal Dam"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVirnaalDam()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Vir'naal Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vir'naal Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVirnaalLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Murkdeep Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Murkdeep Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMurkdeepCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Vir'naal Oasis
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vir'naal Oasis"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVirnaalOasis()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Vir'naal River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vir'naal River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVirnaalRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum Subzone: Vir'naal River Delta
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vir'naal River Delta"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVirnaalRiverDelta()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Uldum END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorUldum()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end