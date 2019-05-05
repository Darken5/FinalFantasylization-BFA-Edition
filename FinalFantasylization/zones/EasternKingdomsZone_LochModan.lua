function FinalFantasylization_EasternKingdomsZones_LochModan()
--'==========================================================================================
--' Eastern Kingdoms Zones: Loch Modan : Alliance
--'==========================================================================================
--	Zone: Loch Modan			FinalFantasylization_EasternKingdomsLochModan()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsLochModanResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsLochModanSwimming()
--
--	TOWNS:
--	Alliance:
--		Algaz Station				FinalFantasylization_AllianceTownAlgazStation()
--		The Farstrider Lodge		FinalFantasylization_AllianceTownTheFarstriderLodge()
--		Thelsamar					FinalFantasylization_AllianceTownThelsamar()
--			Stoutlager Inn				FinalFantasylization_AllianceTownStoutlagerInn()
--
--	SUBZONES:
--	Dun Algaz					FinalFantasylization_SubzoneDunAlgaz()
--	Grizzlepaw Ridge			FinalFantasylization_SubzoneGrizzlepawRidge()
--	Ironband's Excavation Site	FinalFantasylization_SubzoneIronbandsExcavationSite()
--		Ironwing Cavern				FinalFantasylization_SubzoneIronwingCavern()
--	The Loch					FinalFantasylization_SubzoneTheLoch()
--		Twilight Camp				FinalFantasylization_SubzoneTwilightCamp()
--	Mo'grosh Stronghold			FinalFantasylization_SubzoneMogroshStronghold()
--	North Gate Pass				FinalFantasylization_SubzoneNorthGatePass()
--	Silver Stream Mine			FinalFantasylization_SubzoneSilverStreamMine()
--	South Gate Pass				FinalFantasylization_SubzoneSouthGatePass()
--	Stonesplinter Valley		FinalFantasylization_SubzoneStonesplinterValley()
--	Stonewrought Dam			FinalFantasylization_SubzoneStonewroughtDam()
--	Valley of Kings				FinalFantasylization_SubzoneValleyofKings()
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
			FinalFantasylization_EasternKingdomsLochModanResting()
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
			FinalFantasylization_EasternKingdomsLochModanSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Alliance Town: Algaz Station
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Algaz Station"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownAlgazStation()
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
	--' Loch Modan Alliance Town: The Farstrider Lodge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Farstrider Lodge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownTheFarstriderLodge()
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
	--' Loch Modan Alliance Town: Thelsamar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thelsamar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownThelsamar()
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
	--' Loch Modan Alliance Town: Stoutlager Inn in Thelsamar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stoutlager Inn"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownStoutlagerInn()
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
	--' Loch Modan Subzone: Dun Algaz
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dun Algaz"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDunAlgaz()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Grizzlepaw Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grizzlepaw Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGrizzlepawRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Ironband's Excavation Site
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ironband's Excavation Site"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIronbandsExcavationSite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Ironwing Cavern in Ironband's Excavation Site
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ironwing Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIronwingCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: The Loch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Loch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheLoch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Twilight Camp in The Loch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Twilight Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTwilightCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Mo'grosh Stronghold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mo'grosh Stronghold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMogroshStronghold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: North Gate Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Gate Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthGatePass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Silver Stream Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Silver Stream Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSilverStreamMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: South Gate Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Gate Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthGatePass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Stonesplinter Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonesplinter Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonesplinterValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Stonewrought Dam
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonewrought Dam"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonewroughtDam()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan Subzone: Valley of Kings
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of Kings"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValleyofKings()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Loch Modan END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsLochModan()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end