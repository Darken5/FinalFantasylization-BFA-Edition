function FinalFantasylization_KalimdorZones_Mulgore()
--'==========================================================================================
--' Kalimdor Zones: Mulgore : Horde
--'==========================================================================================
--	Zone: Mulgore				FinalFantasylization_KalimdorMulgore()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorMulgoreResting()
--		Player is Swimming		FinalFantasylization_KalimdorMulgoreSwimming()
--
--	TOWNS:
--	Tauren Start:
--		Red Cloud Mesa				FinalFantasylization_Tauren_Start_RedCloudMesa()
--			The Battleboar Pen			FinalFantasylization_Tauren_Start_TheBattleboarPen()
--			Brambleblade Ravine			FinalFantasylization_Tauren_Start_BramblebladeRavine()
--			Camp Narache				FinalFantasylization_Tauren_Start_CampNarache()
--			Fargaze Mesa				FinalFantasylization_Tauren_Start_FargazeMesa()
--			Thornmantle's Hideout		FinalFantasylization_Tauren_Start_ThornmantlesHideout()
--			The Thornsnarl				FinalFantasylization_Tauren_Start_TheThornsnarl()
--	Horde:
--		Bloodhoof Village			FinalFantasylization_HordeTownBloodhoofVillage()
--		Camp Sungraze				FinalFantasylization_HordeTownCampSungraze()
--
--	SUBZONES:		
--	Bael'dun Digsite			FinalFantasylization_SubzoneBaeldunDigsite()
--	The Golden Plains			FinalFantasylization_SubzoneTheGoldenPlains()
--	The Great Gate				FinalFantasylization_SubzoneTheGreatGate()
--	Kodo Rock					FinalFantasylization_SubzoneKodoRock()
--	Palemane Rock				FinalFantasylization_SubzonePalemaneRock()
--	Ravaged Caravan				FinalFantasylization_SubzoneRavagedCaravan()
--	Red Rocks					FinalFantasylization_SubzoneRedRocks()
--	The Rolling Plains			FinalFantasylization_SubzoneTheRollingPlains()
--	Stonebull Lake				FinalFantasylization_SubzoneStonebullLake()
--	Stonetalon Pass				FinalFantasylization_SubzoneStonetalonPass()
--	Thunderhorn Water Well		FinalFantasylization_SubzoneThunderhornWaterWell()
--	The Venture Co. Mine		FinalFantasylization_SubzoneTheVentureCoMine()
--	Wildmane Water Well			FinalFantasylization_SubzoneWildmaneWaterWell()
--	Windfury Ridge				FinalFantasylization_SubzoneWindfuryRidge()
--	Winterhoof Water Well		FinalFantasylization_SubzoneWinterhoofWaterWell()
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
			FinalFantasylization_KalimdorMulgoreResting()
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
			FinalFantasylization_KalimdorMulgoreSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore: Tauren Starting Area: Red Cloud Mesa
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Red Cloud Mesa"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Tauren_Start_RedCloudMesa()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore: Tauren Starting Area: The Battleboar Pen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Battleboar Pen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Tauren_Start_TheBattleboarPen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore: Tauren Starting Area: Brambleblade Ravine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brambleblade Ravine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Tauren_Start_BramblebladeRavine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore: Tauren Starting Area: Camp Narache
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Narache"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Tauren_Start_CampNarache()
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
	--' Mulgore: Tauren Starting Area: Fargaze Mesa
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fargaze Mesa"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Tauren_Start_FargazeMesa()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore: Tauren Starting Area: Thornmantle's Hideout
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thornmantle's Hideout"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Tauren_Start_ThornmantlesHideout()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore: Tauren Starting Area: The Thornsnarl
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Thornsnarl"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Tauren_Start_TheThornsnarl()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Horde Town: Bloodhoof Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodhoof Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownBloodhoofVillage()
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
	--' Mulgore Horde Town: Camp Sungraze
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Sungraze"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownCampSungraze()
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
	--' Mulgore Subzone: Bael'dun Digsite
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bael'dun Digsite"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBaeldunDigsite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: The Golden Plains
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Golden Plains"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGoldenPlains()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: The Great Gate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Great Gate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGreatGate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Kodo Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kodo Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKodoRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Palemane Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Palemane Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePalemaneRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Ravaged Caravan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ravaged Caravan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRavagedCaravan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Red Rocks
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Red Rocks"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRedRocks()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: The Rolling Plains
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Rolling Plains"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRollingPlains()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Stonebull Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonebull Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonebullLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Stonetalon Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonetalon Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonetalonPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Thunderhorn Water Well
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunderhorn Water Well"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThunderhornWaterWell()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: The Venture Co. Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Venture Co. Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheVentureCoMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Wildmane Water Well
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wildmane Water Well"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWildmaneWaterWell()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Windfury Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Windfury Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWindfuryRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore Subzone: Winterhoof Water Well
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Winterhoof Water Well"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWinterhoofWaterWell()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorMulgore()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end