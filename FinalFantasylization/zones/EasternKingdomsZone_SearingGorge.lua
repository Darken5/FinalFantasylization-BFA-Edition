function FinalFantasylization_EasternKingdomsZones_SearingGorge()
--'==========================================================================================
--' Eastern Kingdoms Zones: Searing Gorge
--'==========================================================================================
--	Zone: Searing Gorge				FinalFantasylization_EasternKingdomsSearingGorge()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsSearingGorgeResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsSearingGorgeSwimming()
--
--	TOWNS:
--	Neutral:
--		Iron Summit			FinalFantasylization_NeutralTownIronSummit()
--		Thorium Advance		FinalFantasylization_NeutralTownThoriumAdvance()
--		Thorium Point		FinalFantasylization_NeutralTownThoriumPoint()
--	
--	SUBZONES:
--	Blackchar Cave			FinalFantasylization_SubzoneBlackcharCave()
--	Blackrock Mountain		FinalFantasylization_SubzoneBlackrockMountain()
--	The Cauldron			FinalFantasylization_SubzoneTheCauldron()
--		The Slag Pit		FinalFantasylization_SubzoneTheSlagPit()
--	Dustfire Valley			FinalFantasylization_SubzoneDustfireValley()
--	Firewatch Ridge			FinalFantasylization_SubzoneFirewatchRidge()
--	Grimesilt Dig Site		FinalFantasylization_SubzoneGrimesiltDigSite()
--	Pyrox Flats				FinalFantasylization_SubzonePyroxFlats()
--	The Sea of Cinders		FinalFantasylization_SubzoneTheSeaofCinders()
--	Stonewrought Pass		FinalFantasylization_SubzoneStonewroughtPass()
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
			FinalFantasylization_EasternKingdomsSearingGorgeResting()
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
			FinalFantasylization_EasternKingdomsSearingGorgeSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Neutral Town: Iron Summit
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Iron Summit"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownIronSummit()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Neutral Town: Thorium Advance
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thorium Advance"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownThoriumAdvance()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Neutral Town: Thorium Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thorium Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownThoriumPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: Blackchar Cave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackchar Cave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackcharCave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: Blackrock Mountain
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackrock Mountain"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackrockMountain()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: The Cauldron
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Cauldron"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCauldron()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: The Slag Pit
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Slag Pit"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSlagPit()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: Dustfire Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dustfire Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDustfireValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: Firewatch Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Firewatch Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFirewatchRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: Grimesilt Dig Site
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grimesilt Dig Site"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGrimesiltDigSite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: Pyrox Flats
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pyrox Flats"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePyroxFlats()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: The Sea of Cinders
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sea of Cinders"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSeaofCinders()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge Subzone: Stonewrought Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonewrought Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonewroughtPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Searing Gorge END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsSearingGorge()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end