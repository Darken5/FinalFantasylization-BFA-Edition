function FinalFantasylization_EasternKingdomsZones_RuinsofGilneas()
--'==========================================================================================
--' Eastern Kingdoms Zones: Ruins of Gilneas : Undead
--'==========================================================================================
--	Zone: Ruins of Gilneas				FinalFantasylization_EasternKingdomsRuinsofGilneas()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsRuinsofGilneasResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsRuinsofGilneasSwimming()
--
--	Undead:
--		TOWN:
--			Forsaken Forward Command		FinalFantasylization_HordeTownForsakenForwardCommand()
--
--		SUBZONES:
--		7th Legion Submarine			FinalFantasylization_Subzone7thLegionSubmarine()
--		Dreadwatch Outpost				FinalFantasylization_SubzoneDreadwatchOutpost()
--		Emberstone Mine					FinalFantasylization_SubzoneEmberstoneMine()
--		Emberstone Village				FinalFantasylization_SubzoneEmberstoneVillage()
--		Gilneas City					FinalFantasylization_SubzoneGilneasCity()
--			Light's Dawn Cathedral			FinalFantasylization_SubzoneLightsDawnCathedral()
--			Stoneward Prison				FinalFantasylization_SubzoneStonewardPrison()
--		The Greymane Wall				FinalFantasylization_SubzoneTheGreymaneWall()
--		Northern Headlands				FinalFantasylization_SubzoneNorthernHeadlands()
--		Rutsak's Guard					FinalFantasylization_SubzoneRutsaksGuard()
--		Tempest's Reach					FinalFantasylization_SubzoneTempestsReach()
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
			FinalFantasylization_EasternKingdomsRuinsofGilneasResting()
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
			FinalFantasylization_EasternKingdomsRuinsofGilneasSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ruins of Gilneas Horde Town: Forsaken Forward Command
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forsaken Forward Command"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownForsakenForwardCommand()
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
	--' Ruins of Gilneas Subzone: 7th Legion Submarine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["7th Legion Submarine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Subzone7thLegionSubmarine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ruins of Gilneas Subzone: Dreadwatch Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadwatch Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadwatchOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ruins of Gilneas Subzone: Emberstone Mine
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
	--' Ruins of Gilneas Subzone: Emberstone Village
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
	--' Ruins of Gilneas Subzone: Gilneas City
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gilneas City"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGilneasCity()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ruins of Gilneas Subzone: Light's Dawn Cathedral
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Light's Dawn Cathedral"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLightsDawnCathedral()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ruins of Gilneas Subzone: Stoneward Prison
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stoneward Prison"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonewardPrison()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ruins of Gilneas Subzone: The Greymane Wall
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
	--' Ruins of Gilneas Subzone: Northern Headlands
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
	--' Ruins of Gilneas Subzone: Rutsak's Guard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rutsak's Guard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRutsaksGuard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ruins of Gilneas Subzone: Tempest's Reach
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
	--' Ruins of Gilneas END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsRuinsofGilneas()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end