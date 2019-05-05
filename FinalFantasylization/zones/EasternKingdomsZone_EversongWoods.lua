function FinalFantasylization_EasternKingdomsZones_EversongWoods()
--'==========================================================================================
--' Eastern Kingdoms Zones: Eversong Woods : Horde
--'==========================================================================================
--	Zone: Eversong Woods		FinalFantasylization_EasternKingdomsEversongWoods()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsEversongWoodsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsEversongWoodsSwimming()
--
--	TOWNS:
--	Blood Elf Start:
--		Sunstrider Isle				FinalFantasylization_BloodElf_Start_SunstriderIsle()
--			Falthrien Academy			FinalFantasylization_BloodElf_Start_FalthrienAcademy()
--			Shrine of Dath'Remar		FinalFantasylization_BloodElf_Start_ShrineofDathRemar()
--			The Sunspire				FinalFantasylization_BloodElf_Start_TheSunspire()
--	Horde:
--		Fairbreeze Village			FinalFantasylization_HordeTownFairbreezeVillage()
--		Falconwing Square			FinalFantasylization_HordeTownFalconwingSquare()
--		Farstrider Retreat			FinalFantasylization_HordeTownFarstriderRetreat()
--		Saltheril's Haven			FinalFantasylization_HordeTownSaltherilsHaven()
--		Thuron's Livery				FinalFantasylization_HordeTownThuronsLivery()
--
--	SUBZONES:
--	Azurebreeze Coast			FinalFantasylization_SubzoneAzurebreezeCoast()
--	*The Dead Scar				FinalFantasylization_SubzoneEversongWoodsTheDeadScar()
--	Duskwither Grounds			FinalFantasylization_SubzoneDuskwitherGrounds()
--	Duskwither Spire			FinalFantasylization_SubzoneDuskwitherSpire()
--	East Sanctum				FinalFantasylization_SubzoneEastSanctum()
--	Elrendar Falls				FinalFantasylization_SubzoneElrendarFalls()
--	Golden Strand				FinalFantasylization_SubzoneGoldenStrand()
--	Goldenbough Pass			FinalFantasylization_SubzoneGoldenboughPass()
--	Huntress of the Sun			FinalFantasylization_SubzoneHuntressoftheSun()
--	Lake Elrendar				FinalFantasylization_SubzoneLakeElrendar()
--	The Living Wood				FinalFantasylization_SubzoneTheLivingWood()
--	North Sanctum				FinalFantasylization_SubzoneNorthSanctum()
--	Ruins of Silvermoon			FinalFantasylization_SubzoneRuinsofSilvermoon()
--		Commons Hall				FinalFantasylization_SubzoneCommonsHall()
--		Dawning Lane				FinalFantasylization_SubzoneDawningLane()
--		Feth's Way					FinalFantasylization_SubzoneFethsWay()
--		Skulking Row				FinalFantasylization_SubzoneSkulkingRow()
--	Runestone Falithas			FinalFantasylization_SubzoneRunestoneFalithas()
--	Runestone Shan'dor			FinalFantasylization_SubzoneRunestoneShandor()
--	Sunsail Anchorage			FinalFantasylization_SubzoneSunsailAnchorage()
--	The Scorched Grove			FinalFantasylization_SubzoneTheScorchedGrove()
--	The Shepherd's Gate			FinalFantasylization_SubzoneTheShepherdsGate()
--	Stillwhisper Pond			FinalFantasylization_SubzoneStillwhisperPond()
--	Tor'Watha					FinalFantasylization_SubzoneTorWatha()
--	Tranquil Shore				FinalFantasylization_SubzoneTranquilShore()
--	West Sanctum				FinalFantasylization_SubzoneWestSanctum()
--	Zeb'Watha					FinalFantasylization_SubzoneZebWatha()
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
			FinalFantasylization_EasternKingdomsEversongWoodsResting()
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
			FinalFantasylization_EasternKingdomsEversongWoodsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods: Blood Elf Starting Area: Sunstrider Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sunstrider Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_BloodElf_Start_SunstriderIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods: Blood Elf Starting Area: Falthrien Academy
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Falthrien Academy"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_BloodElf_Start_FalthrienAcademy()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods: Blood Elf Starting Area: Shrine of Dath'Remar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of Dath'Remar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_BloodElf_Start_ShrineofDathRemar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods: Blood Elf Starting Area: The Sunspire
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["The Sunspire"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
				FinalFantasylization_BloodElf_Start_TheSunspire()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. MinimapZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Horde Town: Fairbreeze Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fairbreeze Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownFairbreezeVillage()
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
	--' Eversong Woods Horde Town: Falconwing Square
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Falconwing Square"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownFalconwingSquare()
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
	--' Eversong Woods Horde Town: Farstrider Retreat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Farstrider Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownFarstriderRetreat()
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
	--' Eversong Woods Horde Town: Saltheril's Haven
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Saltheril's Haven"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSaltherilsHaven()
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
	--' Eversong Woods Horde Town: Thuron's Livery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thuron's Livery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownThuronsLivery()
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
	--' Eversong Woods Subzone: Azurebreeze Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Azurebreeze Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAzurebreezeCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: The Dead Scar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dead Scar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEversongWoodsTheDeadScar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Duskwither Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Duskwither Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDuskwitherGrounds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Duskwither Spire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Duskwither Spire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDuskwitherSpire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: East Sanctum
	--'==========================================================================================
	elseif ( SubZoneName == SZ["East Sanctum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEastSanctum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Elrendar Falls
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Elrendar Falls"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneElrendarFalls()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Golden Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Golden Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGoldenStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Goldenbough Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Goldenbough Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGoldenboughPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Huntress of the Sun
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Huntress of the Sun"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHuntressoftheSun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Lake Elrendar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Elrendar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeElrendar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: The Living Wood
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Living Wood"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheLivingWood()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: North Sanctum
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Sanctum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthSanctum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Ruins of Silvermoon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Silvermoon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofSilvermoon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Commons Hall in Ruins of Silvermoon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Commons Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCommonsHall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Dawning Lane in Ruins of Silvermoon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dawning Lane"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDawningLane()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Feth's Way in Ruins of Silvermoon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Feth's Way"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFethsWay()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Skulking Row in Ruins of Silvermoon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Skulking Row"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSkulkingRow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Runestone Falithas
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Runestone Falithas"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRunestoneFalithas()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Runestone Shan'dor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Runestone Shan'dor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRunestoneShandor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Sunsail Anchorage
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sunsail Anchorage"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSunsailAnchorage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: The Scorched Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Scorched Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheScorchedGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: The Shepherd's Gate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shepherd's Gate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShepherdsGate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Stillwhisper Pond
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stillwhisper Pond"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStillwhisperPond()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Tor'Watha
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tor'Watha"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTorWatha()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Tranquil Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tranquil Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTranquilShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: West Sanctum
	--'==========================================================================================
	elseif ( SubZoneName == SZ["West Sanctum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWestSanctum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods Subzone: Zeb'Watha
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zeb'Watha"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZebWatha()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Eversong Woods END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsEversongWoods()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end