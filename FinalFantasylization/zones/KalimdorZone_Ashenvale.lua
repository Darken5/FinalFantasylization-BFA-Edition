function FinalFantasylization_KalimdorZones_Ashenvale()
--'==========================================================================================
--' Kalimdor Zones: Ashenvale
--'==========================================================================================
--	Zone: Ashenvale			FinalFantasylization_KalimdorAshenvale()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorAshenvaleResting()
--		Player is Swimming		FinalFantasylization_KalimdorAshenvaleSwimming()
--
--	TOWNS:
--	Alliance:
--		Astranaar				FinalFantasylization_AllianceTownAstranaar()
--		Blackfathom Camp		FinalFantasylization_AllianceTownBlackfathomCamp()
--		Bolyun's Camp			FinalFantasylization_AllianceTownBolyunsCamp()
--		Forest Song				FinalFantasylization_AllianceTownForestSong()
--		House of Edune			FinalFantasylization_AllianceTownHouseofEdune()
--		Maestra's Post			FinalFantasylization_AllianceTownMaestrasPost()
--		Orendil's Retreat		FinalFantasylization_AllianceTownOrendilsRetreat()
--		Raynewood Retreat		FinalFantasylization_AllianceTownRaynewoodRetreat()
--			Raynewood Tower			FinalFantasylization_AllianceTownRaynewoodTower()
--		Silverwing Outpost		FinalFantasylization_AllianceTownSilverwingOutpost()
--		Stardust Spire			FinalFantasylization_AllianceTownStardustSpire()
--		The Shrine of Aessina	FinalFantasylization_AllianceTownTheShrineofAessina()
--
--	Horde:
--		Hellscream's Watch		FinalFantasylization_HordeTownHellscreamsWatch()
--		Kargathia Keep			FinalFantasylization_HordeTownKargathiaKeep()
--		Silverwind Refuge		FinalFantasylization_HordeTownSilverwindRefuge()
--		The Skunkworks			FinalFantasylization_HordeTownTheSkunkworks()
--		Splintertree Post		FinalFantasylization_HordeTownSplintertreePost()
--			Splintertree Mine		FinalFantasylization_HordeTownSplintertreeMine()
--		Warsong Labor Camp		FinalFantasylization_HordeTownWarsongLaborCamp()
--		Zoram'gar Outpost		FinalFantasylization_HordeTownZoramgarOutpost()
--
--	SUBZONES:	
--	Bathran's Haunt				FinalFantasylization_SubzoneBathransHaunt()
--	Blackfathom Deeps			FinalFantasylization_SubzoneBlackfathomDeeps()
--	Bloodtooth Camp				FinalFantasylization_SubzoneBloodtoothCamp()
--	Bough Shadow				FinalFantasylization_SubzoneBoughShadow()
--	Demon Fall Canyon			FinalFantasylization_SubzoneDemonFallCanyon()
--		Demon Fall Ridge			FinalFantasylization_SubzoneDemonFallRidge()
--	The Dor'Danil Barrow Den	FinalFantasylization_SubzoneTheDorDanilBarrowDen()
--	Falfarren River				FinalFantasylization_SubzoneFalfarrenRiver()
--	Fallen Sky Lake				FinalFantasylization_SubzoneFallenSkyLake()
--	Felfire Hill				FinalFantasylization_SubzoneFelfireHill()
--	Fire Scar Shrine			FinalFantasylization_SubzoneFireScarShrine()
--	Greenpaw Village			FinalFantasylization_SubzoneGreenpawVillage()
--	The Howling Vale			FinalFantasylization_SubzoneTheHowlingVale()
--	Remains of Iris Lake		FinalFantasylization_SubzoneRemainsofIrisLake()
--	Lake Falathim				FinalFantasylization_SubzoneLakeFalathim()
--	Moonwell of Purity			FinalFantasylization_SubzoneMoonwellofPurity()
--	Moonwell of Cleansing		FinalFantasylization_SubzoneMoonwellofCleansing()
--	The Mor'shan Rampart		FinalFantasylization_SubzoneTheMorshanRampart()
--	Mystral Lake				FinalFantasylization_SubzoneMystralLake()
--	Night Run					FinalFantasylization_SubzoneNightRun()
--	Nightsong Woods				FinalFantasylization_SubzoneNightsongWoods()
--	The Ruins of Ordil'Aran		FinalFantasylization_SubzoneTheRuinsofOrdilAran()
--	The Ruins of Stardust		FinalFantasylization_SubzoneTheRuinsofStardust()
--	Satyrnaar					FinalFantasylization_SubzoneSatyrnaar()
--	The Shady Nook				FinalFantasylization_SubzoneTheShadyNook()
--	Silverwing Grove			FinalFantasylization_SubzoneSilverwingGrove()
--	Southfury River				FinalFantasylization_SubzoneSouthfuryRiver()
--	The Talondeep Path			FinalFantasylization_SubzoneTheTalondeepPath()
--		Talondeep Pass				FinalFantasylization_SubzoneTalondeepPass()
--	Thistlefur Village			FinalFantasylization_SubzoneThistlefurVillage()
--		Thistlefur Hold				FinalFantasylization_SubzoneThistlefurHold()
--	Thunder Peak				FinalFantasylization_SubzoneThunderPeak()
--	Warsong Lumber Camp			FinalFantasylization_SubzoneWarsongLumberCamp()
--	Xavian						FinalFantasylization_SubzoneXavian()
--	The Zoram Strand			FinalFantasylization_SubzoneTheZoramStrand()
--		Ruuzel's Isle				FinalFantasylization_SubzoneRuuzelsIsle()
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
			FinalFantasylization_KalimdorAshenvaleResting()
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
			FinalFantasylization_KalimdorAshenvaleSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Alliance Town: Astranaar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Astranaar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownAstranaar()
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
	--' Ashenvale Alliance Town: Blackfathom Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackfathom Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownBlackfathomCamp()
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
	--' Ashenvale Alliance Town: Bolyun's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bolyun's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownBolyunsCamp()
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
	--' Ashenvale Alliance Town: Forest Song
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forest Song"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownForestSong()
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
	--' Ashenvale Alliance Town: House of Edune
	--'==========================================================================================
	elseif ( SubZoneName == SZ["House of Edune"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownHouseofEdune()
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
	--' Ashenvale Alliance Town: Maestra's Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Maestra's Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownMaestrasPost()
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
	--' Ashenvale Alliance Town: Orendil's Retreat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Orendil's Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownOrendilsRetreat()
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
	--' Ashenvale Alliance Town: Raynewood Retreat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Raynewood Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownRaynewoodRetreat()
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
	--' Ashenvale Alliance Town: Raynewood Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Raynewood Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownRaynewoodTower()
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
	--' Ashenvale Alliance Town: Silverwing Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Silverwing Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSilverwingOutpost()
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
	--' Ashenvale Alliance Town: Stardust Spire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stardust Spire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownStardustSpire()
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
	--' Ashenvale Alliance Town: The Shrine of Aessina
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shrine of Aessina"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownTheShrineofAessina()
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
	--' Ashenvale Horde Town: Hellscream's Watch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hellscream's Watch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownHellscreamsWatch()
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
	--' Ashenvale Horde Town: Kargathia Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kargathia Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownKargathiaKeep()
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
	--' Ashenvale Horde Town: Silverwind Refuge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Silverwind Refuge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSilverwindRefuge()
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
	--' Ashenvale Horde Town: The Skunkworks
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Skunkworks"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheSkunkworks()
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
	--' Ashenvale Horde Town: Splintertree Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Splintertree Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSplintertreePost()
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
	--' Ashenvale Horde Town: Splintertree Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Splintertree Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSplintertreeMine()
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
	--' Ashenvale Horde Town: Warsong Labor Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Warsong Labor Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownWarsongLaborCamp()
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
	--' Ashenvale Horde Town: Zoram'gar Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zoram'gar Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownZoramgarOutpost()
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
	--' Ashenvale Subzone: Bathran's Haunt
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bathran's Haunt"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBathransHaunt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Blackfathom Deeps
	--'==========================================================================================
	elseif ( MiniMapZoneName == SZ["Blackfathom Deeps"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MiniMapZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackfathomDeeps()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Bloodtooth Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodtooth Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodtoothCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Bough Shadow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bough Shadow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBoughShadow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Demon Fall Canyon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Demon Fall Canyon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDemonFallCanyon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Demon Fall Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Demon Fall Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDemonFallRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Dor'Danil Barrow Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dor'Danil Barrow Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDorDanilBarrowDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Falfarren River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Falfarren River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFalfarrenRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Fallen Sky Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fallen Sky Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFallenSkyLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Felfire Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Felfire Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFelfireHill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Fire Scar Shrine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fire Scar Shrine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFireScarShrine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Greenpaw Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Greenpaw Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGreenpawVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Howling Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Howling Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheHowlingVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Remains of Iris Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Remains of Iris Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRemainsofIrisLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Lake Falathim
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Falathim"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeFalathim()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Moonwell of Purity
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moonwell of Purity"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoonwellofPurity()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Moonwell of Cleansing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moonwell of Cleansing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoonwellofCleansing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Mor'shan Rampart
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Mor'shan Rampart"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMorshanRampart()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Mystral Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mystral Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMystralLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Night Run
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Night Run"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNightRun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Nightsong Woods
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nightsong Woods"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNightsongWoods()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Ruins of Ordil'Aran
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Ruins of Ordil'Aran"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRuinsofOrdilAran()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Ruins of Stardust
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Ruins of Stardust"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRuinsofStardust()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Satyrnaar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Satyrnaar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSatyrnaar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Shady Nook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shady Nook"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShadyNook()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Silverwing Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Silverwing Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSilverwingGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Southfury River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southfury River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthfuryRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Talondeep Path
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Talondeep Path"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTalondeepPath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Talondeep Pass
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
	--' Ashenvale Subzone: Thistlefur Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thistlefur Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThistlefurVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Thistlefur Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thistlefur Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThistlefurHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Thunder Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunder Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThunderPeak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Warsong Lumber Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Warsong Lumber Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWarsongLumberCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Xavian
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Xavian"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneXavian()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: The Zoram Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Zoram Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheZoramStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale Subzone: Ruuzel's Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruuzel's Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuuzelsIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ashenvale END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorAshenvale()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end
