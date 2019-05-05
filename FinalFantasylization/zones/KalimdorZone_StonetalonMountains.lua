function FinalFantasylization_KalimdorZones_StonetalonMountains()
--'==========================================================================================
--' Kalimdor Zones: Stonetalon Mountains
--'==========================================================================================
--	Zone: Stonetalon Mountains			FinalFantasylization_KalimdorStonetalonMountains()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorStonetalonMountainsResting()
--		Player is Swimming		FinalFantasylization_KalimdorStonetalonMountainsSwimming()
--
--	TOWNS:
--	Alliance:
--		Farwatcher's Glen					FinalFantasylization_AllianceTownFarwatchersGlen()
--		Mirkfallon Post						FinalFantasylization_AllianceTownMirkfallonPost()
--		Northwatch Expedition Base Camp		FinalFantasylization_AllianceTownNorthwatchExpeditionBaseCamp()
--		Thal'darah Overlook					FinalFantasylization_AllianceTownThaldarahOverlook()
--		Windshear Hold						FinalFantasylization_AllianceTownWindshearHold()
--	Horde:
--		Cliffwalker Post		FinalFantasylization_HordeTownCliffwalkerPost()
--		The Fold				FinalFantasylization_HordeTownTheFold()
--		Krom'gar Fortress		FinalFantasylization_HordeTownKromgarFortress()
--		Malaka'jin				FinalFantasylization_HordeTownMalakajin()
--		Sludgewerks				FinalFantasylization_HordeTownSludgewerks()
--		Sun Rock Retreat		FinalFantasylization_HordeTownSunRockRetreat()
--
--	SUBZONES:	
--	Battlescar Valley			FinalFantasylization_SubzoneBattlescarValley()
--	Boulderslide Ravine			FinalFantasylization_SubzoneBoulderslideRavine()
--		Boulderslide Cavern			FinalFantasylization_SubzoneBoulderslideCavern()
--	Camp Aparaje				FinalFantasylization_SubzoneCampAparaje()
--	The Charred Vale			FinalFantasylization_SubzoneTheCharredVale()
--	Dagger Pass					FinalFantasylization_SubzoneDaggerPass()
--	The Deep Reaches			FinalFantasylization_SubzoneTheDeepReaches()
--	Greatwood Vale				FinalFantasylization_SubzoneGreatwoodVale()
--	Grimtotem Post				FinalFantasylization_SubzoneGrimtotemPost()
--	Mirkfallon Lake				FinalFantasylization_SubzoneMirkfallonLake()
--	Sishir Canyon				FinalFantasylization_SubzoneSishirCanyon()
--		Ruins of Eldre'thar			FinalFantasylization_SubzoneRuinsofEldrethar()
--	Stonetalon Peak				FinalFantasylization_SubzoneStonetalonPeak()
--	The Talon Den				FinalFantasylization_SubzoneTheTalonDen()
--	Talondeep Pass				FinalFantasylization_SubzoneTalondeepPass()
--	Thal'darah Grove			FinalFantasylization_SubzoneThaldarahGrove()
--	Trueshot Point				FinalFantasylization_SubzoneTrueshotPoint()
--	Unearthed Ground			FinalFantasylization_SubzoneUnearthedGround()
--	Webwinder Hollow			FinalFantasylization_SubzoneWebwinderHollow()
--	Webwinder Path				FinalFantasylization_SubzoneWebwinderPath()
--	Windshear Crag				FinalFantasylization_SubzoneWindshearCrag()
--		Blackwolf River				FinalFantasylization_SubzoneBlackwolfRiver()
--		Cragpool Lake				FinalFantasylization_SubzoneCragpoolLake()
--		Windshear Heights			FinalFantasylization_SubzoneWindshearHeights()
--		Windshear Mine				FinalFantasylization_SubzoneWindshearMine()
--		Windshear Valley			FinalFantasylization_SubzoneWindshearValley()
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
			FinalFantasylization_KalimdorStonetalonMountainsResting()
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
			FinalFantasylization_KalimdorStonetalonMountainsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Alliance Town: Farwatcher's Glen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Farwatcher's Glen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownFarwatchersGlen()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Alliance Town: Mirkfallon Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mirkfallon Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownMirkfallonPost()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Alliance Town: Northwatch Expedition Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Northwatch Expedition Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownNorthwatchExpeditionBaseCamp()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Alliance Town: Thal'darah Overlook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thal'darah Overlook"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownThaldarahOverlook()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Alliance Town: Windshear Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windshear Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownWindshearHold()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Horde Town: Cliffwalker Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cliffwalker Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownCliffwalkerPost()
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
	--' Stonetalon Mountains Horde Town: The Fold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Fold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheFold()
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
	--' Stonetalon Mountains Horde Town: Krom'gar Fortress
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Krom'gar Fortress"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownKromgarFortress()
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
	--' Stonetalon Mountains Horde Town: Malaka'jin
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Malaka'jin"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownMalakajin()
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
	--' Stonetalon Mountains Horde Town: The Sludgewerks
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sludgewerks"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheSludgewerks()
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
	--' Stonetalon Mountains Horde Town: Sun Rock Retreat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sun Rock Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSunRockRetreat()
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
	--' Stonetalon Mountains Subzone: Battlescar Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Battlescar Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBattlescarValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Boulderslide Ravine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Boulderslide Ravine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBoulderslideRavine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Boulderslide Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Boulderslide Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBoulderslideCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Camp Aparaje
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Aparaje"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCampAparaje()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: The Charred Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Charred Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCharredVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Dagger Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dagger Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDaggerPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: The Deep Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Deep Reaches"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDeepReaches()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Greatwood Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Greatwood Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGreatwoodVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Grimtotem Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grimtotem Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGrimtotemPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Mirkfallon Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mirkfallon Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMirkfallonLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Sishir Canyon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sishir Canyon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSishirCanyon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Ruins of Eldre'thar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Eldre'thar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofEldrethar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Stonetalon Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonetalon Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonetalonPeak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: The Talon Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Talon Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTalonDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Talondeep Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Talondeep Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTalondeepPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Thal'darah Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thal'darah Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThaldarahGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Trueshot Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Trueshot Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTrueshotPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Unearthed Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Unearthed Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneUnearthedGrounds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Webwinder Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Webwinder Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWebwinderHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Webwinder Path
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Webwinder Path"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWebwinderPath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Windshear Crag
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windshear Crag"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWindshearCrag()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Blackwolf River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackwolf River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackwolfRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Cragpool Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cragpool Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCragpoolLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Windshear Heights
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windshear Heights"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWindshearHeights()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Windshear Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windshear Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWindshearMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains Subzone: Windshear Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windshear Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWindshearValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Stonetalon Mountains END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorStonetalonMountains()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end