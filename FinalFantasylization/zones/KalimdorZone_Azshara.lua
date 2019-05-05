function FinalFantasylization_KalimdorZones_Azshara()
--'==========================================================================================
--' Kalimdor Zones: Azshara : Horde
--'==========================================================================================
--	Zone: Azshara				FinalFantasylization_KalimdorAzshara()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorAzsharaResting()
--		Player is Swimming		FinalFantasylization_KalimdorAzsharaSwimming()
--
--	TOWNS:
--	Horde:
--		Bilgewater Harbor				FinalFantasylization_HordeTownBilgewaterHarbor()
--		Gallywix Pleasure Palace		FinalFantasylization_HordeTownGallywixPleasurePalace()
--		Northern Rocketway Exchange		FinalFantasylization_HordeTownNorthernRocketwayExchange()
--		Orgrimmar Rear Gate				FinalFantasylization_HordeTownOrgrimmarRearGate()
--		Orgrimmar Rocketway Exchange 	FinalFantasylization_HordeTownOrgrimmarRocketwayExchange()
--		The Secret Lab					FinalFantasylization_HordeTownTheSecretLab()
--		Southern Rocketway Terminus		FinalFantasylization_HordeTownSouthernRocketwayTerminus()
--		Valormok						FinalFantasylization_HordeTownValormok()
--
--	SUBZONES:
--	The Ancient Grove			FinalFantasylization_SubzoneTheAncientGrove()
--	*Arcane Pinnacle				FinalFantasylization_SubzoneArcanePinnacle()
--	Bay of Storms				FinalFantasylization_SubzoneBayofStorms()
--		Hetaera's Clutch			FinalFantasylization_SubzoneHetaerasClutch()
--		Scalebeard's Cave			FinalFantasylization_SubzoneScalebeardsCave()
--	*Bear's Head					FinalFantasylization_SubzoneBearsHead()
--	Bitter Reaches				FinalFantasylization_SubzoneBitterReaches()
--	Blackmaw Hold				FinalFantasylization_SubzoneBlackmawHold()
--	*Darnassian Base Camp		FinalFantasylization_SubzoneDarnassianBaseCamp()
--	Forlorn Ridge				FinalFantasylization_SubzoneForlornRidge()
--	The Great Sea				FinalFantasylization_SubzoneTheGreatSea()
--	Haldarr Encampment			FinalFantasylization_SubzoneHaldarrEncampment()
--	*Hull of the Foebreaker		FinalFantasylization_SubzoneHulloftheFoebreaker()
--	Jagged Reef					FinalFantasylization_SubzoneJaggedReef()
--	Lake Mennar					FinalFantasylization_SubzoneLakeMennar()
--	Legash Encampment			FinalFantasylization_SubzoneLegashEncampment()
--	Mountainfoot Strip Mine		FinalFantasylization_SubzoneMountainfootStripMine()
--	Ravencrest Monument			FinalFantasylization_SubzoneRavencrestMonument()
--	Ruins of Arkkoran			FinalFantasylization_SubzoneRuinsofArkkoran()
--	Ruins of Eldarath			FinalFantasylization_SubzoneRuinsofEldarath()
--		Temple of Zin-Malor			FinalFantasylization_SubzoneTempleofZinMalor()
--	Ruins of Nordressa			FinalFantasylization_SubzoneRuinsofNordressa()
--	The Ruined Reaches			FinalFantasylization_SubzoneTheRuinedReaches()
--		Rethress Sanctum			FinalFantasylization_SubzoneRethressSanctum()
--	Sable Ridge					FinalFantasylization_SubzoneSableRidge()
--	Scalebeard's Cave			FinalFantasylization_SubzoneScalebeardsCave()
--	Shadowsong Shrine			FinalFantasylization_SubzoneShadowsongShrine()
--	The Shattered Strand		FinalFantasylization_SubzoneTheShatteredStrand()
--	Southfury River				FinalFantasylization_SubzoneSouthfuryRiver()
--	Southridge Beach			FinalFantasylization_SubzoneSouthridgeBeach()
--	Storm Cliffs				FinalFantasylization_SubzoneStormCliffs()
--	*Talrendis Point				FinalFantasylization_SubzoneTalrendisPoint()
--	Timbermaw Hold				FinalFantasylization_SubzoneTimbermawHold()
--	Tower of Eldara				FinalFantasylization_SubzoneTowerofEldara()
--	Trial of Fire				FinalFantasylization_SubzoneTrialofFire()
--	Trial of Frost				FinalFantasylization_SubzoneTrialofFrost()
--	Trial of Shadow				FinalFantasylization_SubzoneTrialofShadow()
--	Ursolan						FinalFantasylization_SubzoneUrsolan()
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
			FinalFantasylization_KalimdorAzsharaResting()
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
			FinalFantasylization_KalimdorAzsharaSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Horde Town: Bilgewater Harbor in Bay of Storms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bilgewater Harbor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownBilgewaterHarbor()
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
	--' Azshara Horde Town: Gallywix Pleasure Palace
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallywix Pleasure Palace"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownGallywixPleasurePalace()
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
	--' Azshara Horde Town: Northern Rocketway Exchange
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Northern Rocketway Exchange"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownNorthernRocketwayExchange()
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
	--' Azshara Horde Town: Orgrimmar Rear Gate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Orgrimmar Rear Gate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownOrgrimmarRearGate()
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
	--' Azshara Horde Town: Orgrimmar Rocketway Exchange
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Orgrimmar Rocketway Exchange"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownOrgrimmarRocketwayExchange()
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
	--' Azshara Horde Town: The Secret Lab
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Secret Lab"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheSecretLab()
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
	--' Azshara Horde Town: Southern Rocketway Terminus
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southern Rocketway Terminus"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSouthernRocketwayTerminus()
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
	--' Azshara Horde Town: Valormok
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valormok"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownValormok()
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
	--' Azshara Subzone: The Ancient Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Ancient Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheAncientGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Arcane Pinnacle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Arcane Pinnacle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneArcanePinnacle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Bay of Storms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bay of Storms"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBayofStorms()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Hetaera's Clutch in Bay of Storms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hetaera's Clutch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHetaerasClutch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Scalebeard's Cave in Bay of Storms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scalebeard's Cave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScalebeardsCave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Bear's Head
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bear's Head"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBearsHead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Bitter Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bitter Reaches"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBitterReaches()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Blackmaw Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackmaw Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackmawHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Darnassian Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darnassian Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDarnassianBaseCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Forlorn Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forlorn Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneForlornRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: The Great Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Great Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGreatSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Haldarr Encampment
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Haldarr Encampment"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHaldarrEncampment()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Hull of the Foebreaker
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hull of the Foebreaker"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHulloftheFoebreaker()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Jagged Reef
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jagged Reef"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJaggedReef()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Lake Mennar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Mennar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeMennar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Legash Encampment
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Legash Encampment"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLegashEncampment()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Mountainfoot Strip Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mountainfoot Strip Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMountainfootStripMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Ravencrest Monument
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ravencrest Monument"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRavencrestMonument()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Ruins of Arkkoran
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Arkkoran"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofArkkoran()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Ruins of Eldarath
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Eldarath "] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofEldarath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Temple of Zin-Malor in Ruins of Eldarath
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Temple of Zin-Malor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTempleofZinMalor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Ruins of Nordressa
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Nordressa"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofNordressa()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: The Ruined Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Ruined Reaches"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRuinedReaches()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Rethress Sanctum in The Ruined Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rethress Sanctum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRethressSanctum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Sable Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sable Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSableRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Scalebeard's Cave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scalebeard's Cave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScalebeardsCave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Shadowsong Shrine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadowsong Shrine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShadowsongShrine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: The Shattered Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shattered Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShatteredStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Southfury River
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
	--' Azshara Subzone: Southridge Beach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southridge Beach"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthridgeBeach()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Storm Cliffs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Storm Cliffs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStormCliffs()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Talrendis Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Talrendis Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTalrendisPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Timbermaw Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Timbermaw Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTimbermawHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Tower of Eldara
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tower of Eldara"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTowerofEldara()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Trial of Fire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Trial of Fire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTrialofFire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Trial of Frost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Trial of Frost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTrialofFrost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Trial of Shadow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Trial of Shadow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTrialofShadow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara Subzone: Ursolan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ursolan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneUrsolan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azshara END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorAzshara()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end