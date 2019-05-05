function FinalFantasylization_KalimdorZones_Felwood()
--'==========================================================================================
--' Kalimdor Zones: Felwood
--'==========================================================================================
--	Zone: Felwood			FinalFantasylization_KalimdorFelwood()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorFelwoodResting()
--		Player is Swimming		FinalFantasylization_KalimdorFelwoodSwimming()
--
--	TOWNS:
--	Alliance:
--		Talonbranch Glade		FinalFantasylization_AllianceTownTalonbranchGlade()
--	Horde:
--		Irontree Clearing		FinalFantasylization_HordeTownIrontreeClearing()
--	Neutral
--		Emerald Sanctuary		FinalFantasylization_NeutralTownEmeraldSanctuary()
--		Whisperwind Grove		FinalFantasylization_NeutralTownWhisperwindGrove()
--		Wildheart Point			FinalFantasylization_NeutralTownWildheartPoint()
--
--	SUBZONES:
--	Bloodvenom Falls		FinalFantasylization_SubzoneBloodvenomFalls()
--	Bloodvenom Post			FinalFantasylization_SubzoneBloodvenomPost()
--	Bloodvenom River		FinalFantasylization_SubzoneBloodvenomRiver()
--	Deadwood Village		FinalFantasylization_SubzoneDeadwoodVillage()
--	Felpaw Village			FinalFantasylization_SubzoneFelpawVillage()
--	Irontree Woods			FinalFantasylization_SubzoneIrontreeWoods()
--		Irontree Cavern			FinalFantasylization_SubzoneIrontreeCavern()
--	Jadefire Glen			FinalFantasylization_SubzoneJadefireGlen()
--	Jadefire Run			FinalFantasylization_SubzoneJadefireRun()
--	Jaedenar				FinalFantasylization_SubzoneJaedenar()
--		Shadow Hold				FinalFantasylization_SubzoneShadowHold()
--		Shrine of the Deceiver	FinalFantasylization_SubzoneShrineoftheDeceiver()
--	Morlos'Aran				FinalFantasylization_SubzoneMorlosAran()
--	Ruins of Constellas		FinalFantasylization_SubzoneRuinsofConstellas()
--	Shadowlurk Ridge		FinalFantasylization_SubzoneShadowlurkRidge()
--	Shatter Scar Vale		FinalFantasylization_SubzoneShatterScarVale()
--	Timbermaw Hold			FinalFantasylization_SubzoneTimbermawHold()
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
			FinalFantasylization_KalimdorFelwoodResting()
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
			FinalFantasylization_KalimdorFelwoodSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Alliance Town: Talonbranch Glade
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Talonbranch Glade"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownTalonbranchGlade()
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
	--' Felwood Horde Town: Irontree Clearing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Irontree Clearing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownIrontreeClearing()
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
	--' Felwood Neutral Town: Emerald Sanctuary
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Emerald Sanctuary"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownEmeraldSanctuary()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Neutral Town: Whisperwind Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Whisperwind Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownWhisperwindGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Neutral Town: Wildheart Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wildheart Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownWildheartPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Bloodvenom Falls
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodvenom Falls"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodvenomFalls()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Bloodvenom Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodvenom Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodvenomPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Bloodvenom River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodvenom River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodvenomRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Deadwood Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deadwood Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeadwoodVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Felpaw Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Felpaw Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFelpawVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Irontree Woods
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Irontree Woods"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIrontreeWoods()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Irontree Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Irontree Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIrontreeCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Jadefire Glen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jadefire Glen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJadefireGlen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Jadefire Run
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jadefire Run"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJadefireRun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Jaedenar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jaedenar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJaedenar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Shadow Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadow Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShadowHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Shrine of the Deceiver
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of the Deceiver"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShrineoftheDeceiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Morlos'Aran
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Morlos'Aran"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMorlosAran()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Ruins of Constellas
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Constellas"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofConstellas()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Shadowlurk Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadowlurk Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShadowlurkRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Shatter Scar Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shatter Scar Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShatterScarVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Felwood Subzone: Timbermaw Hold
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
	--' Felwood END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorFelwood()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end