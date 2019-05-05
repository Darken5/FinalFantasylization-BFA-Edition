function FinalFantasylization_EasternKingdomsZones_HillsbradFoothills()
--'==========================================================================================
--' Eastern Kingdoms Zones: Hillsbrad Foothills
--'==========================================================================================
--	Zone: Hillsbrad Foothills	FinalFantasylization_EasternKingdomsHillsbradFoothills()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsHillsbradFoothillsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsHillsbradFoothillsSwimming()
--
--	TOWNS:
--	Alliance:
--		Corrahn's Dagger		FinalFantasylization_AllianceTownCorrahnsDagger()
--		Gavin's Naze			FinalFantasylization_AllianceTownGavinsNaze()
--		Sofera's Naze			FinalFantasylization_AllianceTownSoferasNaze()
--		The Headland			FinalFantasylization_AllianceTownTheHeadland()
--		Purgation Isle			FinalFantasylization_AllianceTownPurgationIsle()
--	Horde
--		Eastpoint Tower			FinalFantasylization_HordeTownEastpointTower()
--		Ruins of Southshore		FinalFantasylization_HordeTownRuinsofSouthshore()
--		Sludgeguard Tower		FinalFantasylization_HordeTownSludgeguardTower()
--		Southpoint Gate			FinalFantasylization_HordeTownSouthpointGate()
--		Strahnbrad				FinalFantasylization_HordeTownStrahnbrad()
--		Tarren Mill				FinalFantasylization_HordeTownTarrenMill()
--		The Sludge Fields		FinalFantasylization_HordeTownTheSludgeFields()
--	Neutral:
--		Brazie Farmstead		FinalFantasylization_NeutralTownBrazieFarmstead()
--
--	SUBZONES:
--	Alterac Mountains		FinalFantasylization_SubzoneAlteracMountains()
--		Chillwind Point			FinalFantasylization_SubzoneChillwindPoint()
--		Crushridge Hold			FinalFantasylization_SubzoneCrushridgeHold()
--		Dandred's Fold			FinalFantasylization_SubzoneDandredsFold()
--		Gallows' Corner			FinalFantasylization_SubzoneGallowsCorner()
--		Growless Cave			FinalFantasylization_SubzoneGrowlessCave()
--		Ravenholdt Manor		FinalFantasylization_SubzoneRavenholdtManor()
--		Ruins of Alterac		FinalFantasylization_SubzoneRuinsofAlterac()
--		Slaughter Hollow		FinalFantasylization_SubzoneSlaughterHollow()
--		The Uplands				FinalFantasylization_SubzoneTheUplands()
--	Azurelode Mine			FinalFantasylization_SubzoneAzurelodeMine()
--	Dalaran Crater			FinalFantasylization_SubzoneDalaranCrater()
--	Darrow Hill				FinalFantasylization_SubzoneDarrowHill()
--	Dun Garok				FinalFantasylization_SubzoneDunGarok()
--	Durnholde Keep			FinalFantasylization_SubzoneDurnholdeKeep()
--	Eastern Strand			FinalFantasylization_SubzoneEasternStrand()
--	Lordamere Lake			FinalFantasylization_SubzoneLordamereLake()
--	Misty Shore				FinalFantasylization_SubzoneMistyShore()
--	Nethander Stead			FinalFantasylization_SubzoneNethanderStead()
--	Thoradin's Wall			FinalFantasylization_SubzoneThoradinsWall()
--	Western Strand			FinalFantasylization_SubzoneWesternStrand()
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
			FinalFantasylization_EasternKingdomsHillsbradFoothillsResting()
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
			FinalFantasylization_EasternKingdomsHillsbradFoothillsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Alliance Town: Corrahn's Dagger
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Corrahn's Dagger"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownCorrahnsDagger()
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
	--' Hillsbrad Foothills Alliance Town: Gavin's Naze
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gavin's Naze"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGavinsNaze()
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
	--' Hillsbrad Foothills Alliance Town: Sofera's Naze
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sofera's Naze"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSoferasNaze()
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
	--' Hillsbrad Foothills Alliance Town: The Headland
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Headland"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownTheHeadland()
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
	--' Hillsbrad Foothills Alliance Town: Purgation Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Purgation Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownPurgationIsle()
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
	--' Hillsbrad Foothills Horde Town: Eastpoint Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Eastpoint Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownEastpointTower()
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
	--' Hillsbrad Foothills Horde Town: Ruins of Southshore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Southshore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRuinsofSouthshore()
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
	--' Hillsbrad Foothills Horde Town: Sludgeguard Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sludgeguard Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSludgeguardTower()
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
	--' Hillsbrad Foothills Horde Town: Southpoint Gate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southpoint Gate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSouthpointGate()
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
	--' Hillsbrad Foothills Horde Town: Strahnbrad
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Strahnbrad"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownStrahnbrad()
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
	--' Hillsbrad Foothills Horde Town: Tarren Mill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tarren Mill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTarrenMill()
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
	--' Hillsbrad Foothills Horde Town: The Sludge Fields
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sludge Fields"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheSludgeFields()
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
	--' Hillsbrad Foothills Neutral Town: Brazie Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brazie Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownBrazieFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Alterac Mountains
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Alterac Mountains"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAlteracMountains()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Chillwind Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chillwind Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneChillwindPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Crushridge Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crushridge Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrushridgeHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Dandred's Fold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dandred's Fold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDandredsFold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Gallows' Corner
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallows' Corner"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGallowsCorner()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Growless Cave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Growless Cave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGrowlessCave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Ravenholdt Manor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ravenholdt Manor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRavenholdtManor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Ruins of Alterac
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Alterac"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofAlterac()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Slaughter Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Slaughter Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSlaughterHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: The Uplands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Uplands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheUplands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Azurelode Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Azurelode Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAzurelodeMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Dalaran Crater
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dalaran Crater"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDalaranCrater()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Darrow Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darrow Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDarrowHill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Dun Garok
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dun Garok"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDunGarok()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Durnholde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Durnholde Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDurnholdeKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Eastern Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Eastern Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEasternStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Lordamere Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lordamere Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLordamereLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Misty Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Misty Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMistyShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Nethander Stead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nethander Stead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNethanderStead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Thoradin's Wall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thoradin's Wall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThoradinsWall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills Subzone: Western Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Western Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWesternStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Hillsbrad Foothills END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsHillsbradFoothills()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end