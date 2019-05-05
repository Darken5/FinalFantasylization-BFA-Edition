function FinalFantasylization_EasternKingdomsZones_Ghostlands()
--'==========================================================================================
--' Eastern Kingdoms Zones: Ghostlands : Horde
--'==========================================================================================
--	Zone: Ghostlands		FinalFantasylization_EasternKingdomsGhostlands()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsGhostlandsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsGhostlandsSwimming()
--
--	TOWNS:
--	Horde:
--		Farstrider Enclave		FinalFantasylization_HordeTownFarstriderEnclave()
--		Sanctum of the Sun		FinalFantasylization_HordeTownSanctumoftheSun()
--		Tranquillien			FinalFantasylization_HordeTownTranquillien()
--
--	SUBZONES:
--	Amani Catacombs			FinalFantasylization_SubzoneAmaniCatacombs()
--	Amani Mountains			FinalFantasylization_SubzoneAmaniMountains()
--	Amani Pass				FinalFantasylization_SubzoneAmaniPass()
--	Andilien Estate			FinalFantasylization_SubzoneAndilienEstate()
--	An'daroth				FinalFantasylization_SubzoneAndaroth()
--	An'owyn					FinalFantasylization_SubzoneAnowyn()
--	An'telas				FinalFantasylization_SubzoneAntelas()
--	Bleeding Ziggurat		FinalFantasylization_SubzoneBleedingZiggurat()
--	Dawnstar Spire			FinalFantasylization_SubzoneDawnstarSpire()
--	*The Dead Scar			FinalFantasylization_SubzoneGhostlandsTheDeadScar()
--	Deatholme				FinalFantasylization_SubzoneDeatholme()
--	Elrendar Crossing		FinalFantasylization_SubzoneElrendarCrossing()
--	Elrendar River			FinalFantasylization_SubzoneElrendarRiver()
--	Goldenmist Village		FinalFantasylization_SubzoneGoldenmistVillage()
--	Hatchet Hills			FinalFantasylization_SubzoneHatchetHills()
--	Howling Ziggurat		FinalFantasylization_SubzoneHowlingZiggurat()
--	Isle of Tribulations	FinalFantasylization_SubzoneIsleofTribulations()
--	Lake Elrendar			FinalFantasylization_SubzoneLakeElrendar()
--	Sanctum of the Moon		FinalFantasylization_SubzoneSanctumoftheMoon()
--	Shalandis Isle			FinalFantasylization_SubzoneShalandisIsle()
--	Suncrown Village		FinalFantasylization_SubzoneSuncrownVillage()
--	Sungraze Peak			FinalFantasylization_SubzoneSungrazePeak()
--	Thalassian Pass			FinalFantasylization_SubzoneThalassianPass()
--	Thalassian Range		FinalFantasylization_SubzoneThalassianRange()
--	Tower of the Damned		FinalFantasylization_SubzoneToweroftheDamned()
--	Underlight Mines		FinalFantasylization_SubzoneUnderlightMines()
--	Windrunner Spire		FinalFantasylization_SubzoneWindrunnerSpire()
--	Windrunner Village		FinalFantasylization_SubzoneWindrunnerVillage()
--	Zeb'Nowa				FinalFantasylization_SubzoneZebNowa()
--	Zeb'Sora				FinalFantasylization_SubzoneZebSora()
--	Zeb'Tela				FinalFantasylization_SubzoneZebTela()
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
			FinalFantasylization_EasternKingdomsGhostlandsResting()
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
			FinalFantasylization_EasternKingdomsGhostlandsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Horde Town: Farstrider Enclave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Farstrider Enclave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownFarstriderEnclave()
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
	--' Ghostlands Horde Town: Sanctum of the Sun
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sanctum of the Sun"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSanctumoftheSun()
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
	--' Ghostlands Horde Town: Tranquillien
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tranquillien"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTranquillien()
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
	--' Ghostlands Subzone: Amani Catacombs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Amani Catacombs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmaniCatacombs()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Amani Mountains
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Amani Mountains"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmaniMountains()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Amani Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Amani Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmaniPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Andilien Estate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Andilien Estate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAndilienEstate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: An'daroth
	--'==========================================================================================
	elseif ( SubZoneName == SZ["An'daroth"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAndaroth()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: An'owyn
	--'==========================================================================================
	elseif ( SubZoneName == SZ["An'owyn"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAnowyn()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: An'telas
	--'==========================================================================================
	elseif ( SubZoneName == SZ["An'telas"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAntelas()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Bleeding Ziggurat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bleeding Ziggurat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBleedingZiggurat()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Dawnstar Spire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dawnstar Spire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDawnstarSpire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: The Dead Scar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dead Scar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGhostlandsTheDeadScar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Deatholme
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deatholme"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeatholme()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Elrendar Crossing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Elrendar Crossing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneElrendarCrossing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Elrendar River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Elrendar River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneElrendarRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Goldenmist Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Goldenmist Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGoldenmistVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Hatchet Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hatchet Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHatchetHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Howling Ziggurat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Howling Ziggurat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHowlingZiggurat()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Isle of Tribulations
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Isle of Tribulations"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIsleofTribulations()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Lake Elrendar
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
	--' Ghostlands Subzone: Sanctum of the Moon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sanctum of the Moon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSanctumoftheMoon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Shalandis Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shalandis Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShalandisIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Suncrown Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Suncrown Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSuncrownVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Sungraze Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sungraze Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSungrazePeak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Thalassian Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thalassian Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThalassianPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Thalassian Range
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thalassian Range"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThalassianRange()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Tower of the Damned
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tower of the Damned"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneToweroftheDamned()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Underlight Mines
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Underlight Mines"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneUnderlightMines()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Windrunner Spire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windrunner Spire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWindrunnerSpire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Windrunner Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windrunner Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWindrunnerVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Zeb'Nowa
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zeb'Nowa"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZebNowa()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Zeb'Sora
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zeb'Sora"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZebSora()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands Subzone: Zeb'Tela
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zeb'Tela"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZebTela()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Ghostlands END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsGhostlands()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end