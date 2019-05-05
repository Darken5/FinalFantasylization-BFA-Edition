function FinalFantasylization_KalimdorZones_NorthernBarrens()
--'==========================================================================================
--' Kalimdor Zones: Northern Barrens : Horde
--'==========================================================================================
--	Zone: Northern Barrens			FinalFantasylization_KalimdorNorthernBarrens()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorNorthernBarrensResting()
--		Player is Swimming		FinalFantasylization_KalimdorNorthernBarrensSwimming()
--
--	TOWNS:
--	Horde:
--		The Crossroads					FinalFantasylization_HordeTownTheCrossroads()
--		Darsok's Outpost				FinalFantasylization_HordeTownDarsoksOutpost()
--		Dreadmist Camp					FinalFantasylization_HordeTownDreadmistCamp()
--		Far Watch Post					FinalFantasylization_HordeTownFarWatchPost()
--		Grol'dom Farm					FinalFantasylization_HordeTownGroldomFarm()
--		Mor'shan Base Camp				FinalFantasylization_HordeTownMorshanBaseCamp()
--		The Mor'shan Rampart			FinalFantasylization_HordeTownTheMorshanRampart()
--		Nozzlepot's Outpost				FinalFantasylization_HordeTownNozzlepotsOutpost()
--	Neutral:
--		Ratchet							FinalFantasylization_NeutralTownRatchet()
--			Broken Keel Tavern				FinalFantasylization_NeutralTownBrokenKeelTavern()
--
--	SUBZONES:
--	Boulder Lode Mine				FinalFantasylization_SubzoneBoulderLodeMine()
--	Dreadmist Den					FinalFantasylization_SubzoneDreadmistDen()
--	Dreadmist Peak					FinalFantasylization_SubzoneDreadmistPeak()
--	The Dry Hills					FinalFantasylization_SubzoneTheDryHills()
--	The Forgotten Pools				FinalFantasylization_SubzoneTheForgottenPools()
--	Fray Island						FinalFantasylization_SubzoneFrayIsland()
--	Gold Road						FinalFantasylization_SubzoneGoldRoad()
--	The Great Divide				FinalFantasylization_SubzoneTheGreatDivide()
--	The Great Sea					FinalFantasylization_SubzoneTheGreatSea()
--	Lushwater Oasis					FinalFantasylization_SubzoneLushwaterOasis()
--	The Merchant Coast				FinalFantasylization_SubzoneTheMerchantCoast()
--	Shrine of the Fallen Warrior	FinalFantasylization_SubzoneShrineoftheFallenWarrior()
--	The Sludge Fen					FinalFantasylization_SubzoneTheSludgeFen()
--	Southfury River					FinalFantasylization_SubzoneSouthfuryRiver()
--	The Stagnant Oasis				FinalFantasylization_SubzoneTheStagnantOasis()
--	Thorn Hill						FinalFantasylization_SubzoneThornHill()
--	The Tidus Stair					FinalFantasylization_SubzoneTheTidusStair()
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
			FinalFantasylization_KalimdorNorthernBarrensResting()
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
			FinalFantasylization_KalimdorNorthernBarrensSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Horde Town: The Crossroads
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Crossroads"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheCrossroads()
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
	--' Northern Barrens Horde Town: Darsok's Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darsok's Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownDarsoksOutpost()
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
	--' Northern Barrens Horde Town: Dreadmist Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmist Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownDreadmistCamp()
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
	--' Northern Barrens Horde Town: Far Watch Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Far Watch Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownFarWatchPost()
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
	--' Northern Barrens Horde Town: Grol'dom Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grol'dom Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownGroldomFarm()
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
	--' Northern Barrens Horde Town: Mor'shan Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mor'shan Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownMorshanBaseCamp()
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
	--' Northern Barrens Horde Town: The Mor'shan Rampart
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Mor'shan Rampart"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheMorshanRampart()
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
	--' Northern Barrens Horde Town: Nozzlepot's Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nozzlepot's Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownNozzlepotsOutpost()
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
	--' Northern Barrens Neutral Town: Ratchet
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ratchet"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownRatchet()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Neutral Town: Broken Keel Tavern in Ratchet
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Broken Keel Tavern"] ) and FinalFantasylizationOptions.Sleep == false then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownBrokenKeelTavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Boulder Lode Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Boulder Lode Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBoulderLodeMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Dreadmist Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmist Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadmistDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Dreadmist Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmist Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadmistPeak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Dry Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dry Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDryHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Forgotten Pools
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Forgotten Pools"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheForgottenPools()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Fray Island
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fray Island"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrayIsland()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Gold Road
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gold Road"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGoldRoad()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Great Divide
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Great Divide"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGreatDivide()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Great Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Great Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGreatSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Lushwater Oasis
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lushwater Oasis"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLushwaterOasis()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Merchant Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Merchant Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMerchantCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Shrine of the Fallen Warrior
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of the Fallen Warrior"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShrineoftheFallenWarrior()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Sludge Fen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sludge Fen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSludgeFen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Southfury River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southfury River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthfuryRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Stagnant Oasis
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Stagnant Oasis"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheStagnantOasis()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: Thorn Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thorn Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThornHill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens Subzone: The Tidus Stair
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Tidus Stair"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTidusStair()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Barrens END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorNorthernBarrens()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end