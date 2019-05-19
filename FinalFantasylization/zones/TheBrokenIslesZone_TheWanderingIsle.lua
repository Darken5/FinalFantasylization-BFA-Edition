function FinalFantasylization_TheBrokenIslesZones_TheWanderingIsle()
--'==========================================================================================
--' The Broken Isles Zones: The Wandering Isle ( Pandaren Start )
--'==========================================================================================
--	Zone: The Wandering Isle		FinalFantasylization_TheBrokenIslesTheWanderingIsle()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_TheBrokenIslesTheWanderingIsleResting()
--		Player is Swimming		FinalFantasylization_TheBrokenIslesTheWanderingIsleSwimming()
--
--	TOWNS:
--	Pandaren Start:
--		Shang Xi Training Grounds		FinalFantasylization_Pandaren_Start_ShangXiTrainingGrounds()
--	Horde:
--		Forlorn Hut						FinalFantasylization_HordeTownForlornHut()
-- Neutral:
--	Mandori Village						FinalFantasylization_NeutralTownMandoriVillage()
--	Morning Breeze Village				FinalFantasylization_NeutralTownMorningBreezeVillage()
--	Temple of Five Dawns				FinalFantasylization_NeutralTownTempleofFiveDawns()
--	The Dai-Lo Farmstead				FinalFantasylization_NeutralTownTheDaiLoFarmstead()
--	Wu-Song Village						FinalFantasylization_NeutralTownWuSongVillage()
--
--	SUBZONES:	
--	Cave of Meditation				FinalFantasylization_SubzoneCaveofMeditation()
--	Chamber of Whispers				FinalFantasylization_SubzoneChamberofWhispers()
--	The Dawning Span				FinalFantasylization_SubzoneTheDawningSpan()
--	The Dawning Stair				FinalFantasylization_SubzoneTheDawningStair()
--	The Dawning Valley				FinalFantasylization_SubzoneTheDawningValley()
--	The Elders' Path				FinalFantasylization_SubzoneTheEldersPath()
--	Fe-Feng Village					FinalFantasylization_SubzoneFeFengVillage()
--	Fu's Pond						FinalFantasylization_SubzoneFusPond()
--	Liang's Retreat					FinalFantasylization_SubzoneLiangsRetreat()
--	Morning Breeze Lake				FinalFantasylization_SubzoneMorningBreezeLake()
--	Pei-Wu Forest					FinalFantasylization_SubzonePeiWuForest()
--		Pool of the Paw				FinalFantasylization_SubzonePoolofthePaw()
--	Ridge of Laughing Winds			FinalFantasylization_SubzoneRidgeofLaughingWinds()
--	The Rows						FinalFantasylization_SubzoneTheRows()
--		Ki-Han Brewery				FinalFantasylization_SubzoneKiHanBrewery()
--		Teeming Burrow				FinalFantasylization_SubzoneTeemingBurrow()
--		Virmen Grotto				FinalFantasylization_SubzoneVirmenGrotto()
--	Shrine of Dreaming Stones		FinalFantasylization_SubzoneShrineofDreamingStones()
--	Shrine of Five Dawns			FinalFantasylization_SubzoneShrineofFiveDawns()
--	Shrine of Inner-Light			FinalFantasylization_SubzoneShrineofInnerLight()
--	The Singing Pools				FinalFantasylization_SubzoneTheSingingPools()
--		Pool of Reflection			FinalFantasylization_SubzonePoolofReflection()	
--	Tranquil Grotto					FinalFantasylization_SubzoneTranquilGrotto()
--	The Wood of Staves				FinalFantasylization_SubzoneTheWoodofStaves()
--	Wreck of the Skyseeker			FinalFantasylization_SubzoneWreckoftheSkyseeker()
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
			FinalFantasylization_TheBrokenIslesTheWanderingIsleResting()
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
			FinalFantasylization_TheBrokenIslesTheWanderingIsleSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle: Pandaren Starting Area: Shang Xi Training Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shang Xi Training Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Pandaren_Start_ShangXiTrainingGrounds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Horde Town: Forlorn Hut
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forlorn Hut"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownForlornHut()
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
	--' The Wandering Isle Neutral Town: Mandori Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mandori Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownMandoriVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Neutral Town: Morning Breeze Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Morning Breeze Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownMorningBreezeVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Neutral Town: Temple of Five Dawns
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Temple of Five Dawns"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownTempleofFiveDawns()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Neutral Town: The Dai-Lo Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dai-Lo Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownTheDaiLoFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Neutral Town: Wu-Song Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wu-Song Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownWuSongVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Cave of Meditation
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cave of Meditation"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCaveofMeditation()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Chamber of Whispers
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chamber of Whispers"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneChamberofWhispers()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: The Dawning Span
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dawning Span"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDawningSpan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: The Dawning Stair
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dawning Stair"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDawningStair()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' TheWanderingIsle Subzone: The Dawning Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dawning Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDawningValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: The Elders' Path
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Elders' Path"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheEldersPath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Fe-Feng Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fe-Feng Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFeFengVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Fu's Pond
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fu's Pond"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFusPond()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Liang's Retreat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Liang's Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLiangsRetreat()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Morning Breeze Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Morning Breeze Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMorningBreezeLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Pei-Wu Forest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pei-Wu Forest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePeiWuForest()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Pool of the Paw
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pool of the Paw"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePoolofthePaw()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Ridge of Laughing Winds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ridge of Laughing Winds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRidgeofLaughingWinds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: The Rows
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Rows"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRows()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Ki-Han Brewery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ki-Han Brewery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKiHanBrewery()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Teeming Burrow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Teeming Burrow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTeemingBurrow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Virmen Grotto
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Virmen Grotto"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVirmenGrotto()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Shrine of Dreaming Stones
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of Dreaming Stones"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShrineofDreamingStones()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Shrine of Five Dawns
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of Five Dawns"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShrineofFiveDawns()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Shrine of Inner-Light
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of Inner-Light"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShrineofInnerLight()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: The Singing Pools
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Singing Pools"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSingingPools()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Pool of Reflection
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pool of Reflection"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePoolofReflection()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Tranquil Grotto
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tranquil Grotto"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTranquilGrotto()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: The Wood of Staves
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Wood of Staves"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheWoodofStaves()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle Subzone: Wreck of the Skyseeker
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wreck of the Skyseeker"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWreckoftheSkyseeker()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Wandering Isle END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_TheBrokenIslesTheWanderingIsle()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end