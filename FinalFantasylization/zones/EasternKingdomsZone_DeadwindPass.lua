function FinalFantasylization_EasternKingdomsZones_DeadwindPass()
--'==========================================================================================
--' Eastern Kingdoms Zones: Deadwind Pass
--'==========================================================================================
--	Zone: Deadwind Pass				FinalFantasylization_EasternKingdomsDeadwindPass()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsDeadwindPassResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsDeadwindPassSwimming()
--
--	SUBZONES:
--	Abandoned Kirin Tor Camp		FinalFantasylization_SubzoneAbandonedKirinTorCamp()
--	Alturus' Sanctum				FinalFantasylization_SubzoneAlturusSanctum()
--	Ariden's Camp					FinalFantasylization_SubzoneAridensCamp()
--	Forgotten Crypt					FinalFantasylization_SubzoneForgottenCrypt()
--	Deadman's Crossing				FinalFantasylization_SubzoneDeadmansCrossing()
--	Deadwind Ravine					FinalFantasylization_SubzoneDeadwindRavine()
--	Karazhan						FinalFantasylization_SubzoneKarazhan()
--	Karazhan Catacombs				FinalFantasylization_SubzoneKarazhanCatacombs()
--	The Master's Cellar				FinalFantasylization_SubzoneTheMastersCellar()
--	Morgan's Plot					FinalFantasylization_SubzoneMorgansPlot()
--	Sleeping Gorge					FinalFantasylization_SubzoneSleepingGorge()
--	The Vice						FinalFantasylization_SubzoneTheVice()
--		Grosh'gok Compound				FinalFantasylization_SubzoneGroshgokCompound()
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
			FinalFantasylization_EasternKingdomsDeadwindPassResting()
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
			FinalFantasylization_EasternKingdomsDeadwindPassSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Abandoned Kirin Tor Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Abandoned Kirin Tor Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAbandonedKirinTorCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Alturus' Sanctum
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Alturus' Sanctum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAlturusSanctum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Ariden's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ariden's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAridensCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Forgotten Crypt
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forgotten Crypt"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneForgottenCrypt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Deadman's Crossing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deadman's Crossing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeadmansCrossing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Deadwind Ravine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deadwind Ravine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeadwindRavine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Karazhan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Karazhan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKarazhan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Karazhan Catacombs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Karazhan Catacombs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKarazhanCatacombs()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: The Master's Cellar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Master's Cellar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMastersCellar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Morgan's Plot
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Morgan's Plot"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMorgansPlot()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Sleeping Gorge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sleeping Gorge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSleepingGorge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: The Vice
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Vice"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheVice()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass Subzone: Grosh'gok Compound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grosh'gok Compound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGroshgokCompound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Deadwind Pass END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsDeadwindPass()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end