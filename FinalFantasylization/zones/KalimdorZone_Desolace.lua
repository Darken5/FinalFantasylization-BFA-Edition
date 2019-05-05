function FinalFantasylization_KalimdorZones_Desolaces()
--'==========================================================================================
--' Kalimdor Zones: Desolace
--'==========================================================================================
--	Zone: Desolace			FinalFantasylization_KalimdorDesolace()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorDesolaceResting()
--		Player is Swimming		FinalFantasylization_KalimdorDesolaceSwimming()
--
--	TOWNS:
--	Alliance:
--		Nijel's Point			FinalFantasylization_AllianceTownNijelsPoint()
--		Thargad's Camp			FinalFantasylization_AllianceTownThargadsCamp()
--	Horde:
--		Furien's Post			FinalFantasylization_HordeTownFuriensPost()
--		Shadowprey Village		FinalFantasylization_HordeTownShadowpreyVillage()
--	Neutral
--		Ethel Rethor			FinalFantasylization_NeutralTownEthelRethor()
--		Karnum's Glade			FinalFantasylization_NeutralTownKarnumsGlade()
--		Thunk's Abode			FinalFantasylization_NeutralTownThunksAbode()
--
--	SUBZONES:
--	Bolgan's Hole			FinalFantasylization_SubzoneBolgansHole()
--	Cenarion Wildlands		FinalFantasylization_SubzoneCenarionWildlands()
--	Gelkis Village			FinalFantasylization_SubzoneGelkisVillage()
--	Ghost Walker Post		FinalFantasylization_SubzoneGhostWalkerPost()
--	Kodo Graveyard			FinalFantasylization_SubzoneKodoGraveyard()
--	Magram Territory		FinalFantasylization_SubzoneMagramTerritory()
--	Kormek's Hut			FinalFantasylization_SubzoneKormeksHut()
--	Shok'thokar				FinalFantasylization_SubzoneShokthokar()
--	Mannoroc Coven			FinalFantasylization_SubzoneMannorocCoven()
--	Ranazjar Isle			FinalFantasylization_SubzoneRanazjarIsle()
--	Sar'theris Strand		FinalFantasylization_SubzoneSartherisStrand()
--	Sargeron				FinalFantasylization_SubzoneSargeron()
--	Scrabblescrew's Camp	FinalFantasylization_SubzoneScrabblescrewsCamp()
--	Shadowbreak Ravine		FinalFantasylization_SubzoneShadowbreakRavine()
--	Slitherblade Shore		FinalFantasylization_SubzoneSlitherbladeShore()
--	Tethris Aran			FinalFantasylization_SubzoneTethrisAran()
--	Thunder Axe Fortress	FinalFantasylization_SubzoneThunderAxeFortress()
--	Valley of Bones			FinalFantasylization_SubzoneValleyofBones()
--	Valley of Spears		FinalFantasylization_SubzoneValleyofSpears()
--		Maraudon			FinalFantasylization_SubzoneMaraudon()
--	The Veiled Sea			FinalFantasylization_SubzoneTheVeiledSea()
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
			FinalFantasylization_KalimdorDesolaceResting()
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
			FinalFantasylization_KalimdorDesolaceSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Alliance Town: Nijel's Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nijel's Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownNijelsPoint()
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
	--' Desolace Alliance Town: Thargad's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thargad's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownThargadsCamp()
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
	--' Desolace Horde Town: Furien's Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Furien's Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownFuriensPost()
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
	--' Desolace Horde Town: Shadowprey Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadowprey Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownShadowpreyVillage()
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
	--' Desolace Neutral Town: Ethel Rethor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ethel Rethor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownEthelRethor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Neutral Town: Karnum's Glade
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Karnum's Glade"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownKarnumsGlade()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Neutral Town: Thunk's Abode
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunk's Abode"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownThunksAbode()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Bolgan's Hole
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bolgan's Hole"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBolgansHole()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Cenarion Wildlands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cenarion Wildlands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCenarionWildlands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Gelkis Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gelkis Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGelkisVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Ghost Walker Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ghost Walker Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGhostWalkerPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Kodo Graveyard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kodo Graveyard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKodoGraveyard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Magram Territory
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Magram Territory"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMagramTerritory()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Kormek's Hut
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kormek's Hut"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKormeksHut()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Shok'thokar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shok'thokar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShokthokar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Mannoroc Coven
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mannoroc Coven"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMannorocCoven()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Ranazjar Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ranazjar Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRanazjarIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Sar'theris Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sar'theris Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSartherisStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Sargeron
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sargeron"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSargeron()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Scrabblescrew's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scrabblescrew's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScrabblescrewsCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Shadowbreak Ravine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadowbreak Ravine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShadowbreakRavine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Slitherblade Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Slitherblade Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSlitherbladeShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Tethris Aran
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tethris Aran"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTethrisAran()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Thunder Axe Fortress
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunder Axe Fortress"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThunderAxeFortress()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Valley of Bones
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of Bones"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValleyofBones()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Valley of Spears
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of Spears"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValleyofSpears()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: Maraudon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Maraudon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMaraudon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace Subzone: The Veiled Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Veiled Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheVeiledSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Desolace END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorDesolace()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end