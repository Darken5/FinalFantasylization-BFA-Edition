function FinalFantasylization_EasternKingdomsZones_Gilneas()
--'==========================================================================================
--' Eastern Kingdoms Zones: Gilneas : Worgen
--'==========================================================================================
--	Zone: Gilneas				FinalFantasylization_EasternKingdomsGilneas()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsGilneasResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsGilneasSwimming()
--
--	TOWNS:
--	Alliance:
--		Duskhaven					FinalFantasylization_AllianceTownDuskhaven()
--		Greymane Manor				FinalFantasylization_AllianceTownGreymaneManor()
--		Keel Harbor					FinalFantasylization_AllianceTownKeelHarbor()
--		Stormglen Village			FinalFantasylization_AllianceTownStormglenVillage()
--
--	SUBZONES:
--	Aderic's Repose				FinalFantasylization_SubzoneAdericsRepose()
--	Allen Farmstead				FinalFantasylization_SubzoneAllenFarmstead()
--	The Bite					FinalFantasylization_SubzoneTheBite()
--	The Blackwald				FinalFantasylization_SubzoneTheBlackwald()
--	The Bradshaw Mill			FinalFantasylization_SubzoneTheBradshawMill()
--	Crowley Orchard				FinalFantasylization_SubzoneCrowleyOrchard()
--	Crowley Stable Grounds		FinalFantasylization_SubzoneCrowleyStableGrounds()
--	Duskmist Shore				FinalFantasylization_SubzoneDuskmistShore()
--	Emberstone Mine				FinalFantasylization_SubzoneEmberstoneMine()
--	Emberstone Village			FinalFantasylization_SubzoneEmberstoneVillage()
--	Forsaken Forward Command	FinalFantasylization_SubzoneForsakenForwardCommand()
--	Galewatch Lighthouse		FinalFantasylization_SubzoneGalewatchLighthouse()
--	The Greymane Wall			FinalFantasylization_SubzoneTheGreymaneWall()
--	Hailwood Marsh				FinalFantasylization_SubzoneHailwoodMarsh()
--	Hammond Farmstead			FinalFantasylization_SubzoneHammondFarmstead()
--	Hayward Fishery				FinalFantasylization_SubzoneHaywardFishery()
--	The Headlands				FinalFantasylization_SubzoneTheHeadlands()
--	King's Gate					FinalFantasylization_SubzoneKingsGate()
--	Koroth's Den				FinalFantasylization_SubzoneKorothsDen()
--	Livery Outpost				FinalFantasylization_SubzoneLiveryOutpost()
--	Northern Headlands			FinalFantasylization_SubzoneNorthernHeadlands()
--	Northgate River				FinalFantasylization_SubzoneNorthgateRiver()
--	Northgate Woods				FinalFantasylization_SubzoneNorthgateWoods()
--	Queen's Gate				FinalFantasylization_SubzoneQueensGate()
--	Rygna's Lair				FinalFantasylization_SubzoneRygnasLair()
--	Stagecoach Crash Site		FinalFantasylization_SubzoneStagecoachCrashSite()
--	Tal'doren					FinalFantasylization_SubzoneTaldoren()
--	Tempest's Reach				FinalFantasylization_SubzoneTempestsReach()
--	Wahl Cottage				FinalFantasylization_SubzoneWahlCottage()
--	Wood's End Cabin			FinalFantasylization_SubzoneWoodsEndCabin()
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
			FinalFantasylization_EasternKingdomsGilneasResting()
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
			FinalFantasylization_EasternKingdomsGilneasSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Alliance Town: Duskhaven
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Duskhaven"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDuskhaven()
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
	--' Gilneas Alliance Town: Greymane Manor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Greymane Manor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGreymaneManor()
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
	--' Gilneas Alliance Town: Keel Harbor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Keel Harbor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownKeelHarbor()
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
	--' Gilneas Alliance Town: Stormglen Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stormglen Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownStormglenVillage()
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
	--' Gilneas Subzone: Aderic's Repose
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Aderic's Repose"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAdericsRepose()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Allen Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Allen Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAllenFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: The Bite
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Bite"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: The Blackwald
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Blackwald"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBlackwald()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: The Bradshaw Mill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Bradshaw Mill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBradshawMill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Crowley Orchard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crowley Orchard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrowleyOrchard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Crowley Stable Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crowley Stable Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrowleyStableGrounds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Duskmist Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Duskmist Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDuskmistShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Emberstone Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Emberstone Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEmberstoneMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Emberstone Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Emberstone Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEmberstoneVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Forsaken Forward Command
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forsaken Forward Command"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneForsakenForwardCommand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Galewatch Lighthouse
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Galewatch Lighthouse"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGalewatchLighthouse()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: The Greymane Wall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Greymane Wall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGreymaneWall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Hailwood Marsh
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hailwood Marsh"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHailwoodMarsh()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Hammond Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hammond Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHammondFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Hayward Fishery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hayward Fishery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHaywardFishery()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: The Headlands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Headlands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheHeadlands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: King's Gate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["King's Gate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKingsGate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Koroth's Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Koroth's Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKorothsDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Livery Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Livery Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLiveryOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Northern Headlands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Northern Headlands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthernHeadlands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Northgate River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Northgate River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthgateRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Northgate Woods
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Northgate Woods"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthgateWoods()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Queen's Gate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Queen's Gate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneQueensGate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Rygna's Lair
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rygna's Lair"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRygnasLair()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Stagecoach Crash Site
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stagecoach Crash Site"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStagecoachCrashSite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Tal'doren
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tal'doren"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTaldoren()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Tempest's Reach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tempest's Reach"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTempestsReach()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Wahl Cottage
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wahl Cottage"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWahlCottage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas Subzone: Wood's End Cabin
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wood's End Cabin"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWoodsEndCabin()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsGilneas()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end