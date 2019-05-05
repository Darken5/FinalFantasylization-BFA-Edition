function FinalFantasylization_EasternKingdomsZones_DunMorogh()
--'==========================================================================================
--' Eastern Kingdoms Zones: Dun Morogh : Alliance
--'==========================================================================================
--	Zone: Dun Morogh				FinalFantasylization_EasternKingdomsDunMorogh()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsDunMoroghResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsDunMoroghSwimming()
--
--	TOWNS:
--	Dwarf Start:
--		Coldridge Valley			FinalFantasylization_Dwarf_Start_ColdridgeValley()
--			Anvilmar					FinalFantasylization_Dwarf_Start_Anvilmar()
--			Coldridge Pass				FinalFantasylization_Dwarf_Start_ColdridgePass()
--			Frostmane Hovel				FinalFantasylization_Dwarf_Start_FrostmaneHovel()
--			Whitebeard's Encampment		FinalFantasylization_Dwarf_Start_WhitebeardsEncampment()
--	Gnome Start:
--		Chill Breeze Valley			FinalFantasylization_Gnome_Start_ChillBreezeValley()
--			Brewnall Village			FinalFantasylization_Gnome_Start_BrewnallVillage()
--			Crushcog's Arsenal			FinalFantasylization_Gnome_Start_CrushcogsArsenal()
--			Frostmane Hold				FinalFantasylization_Gnome_Start_FrostmaneHold()
--			Gnomeregan					FinalFantasylization_Gnome_Start_Gnomeregan()
--				The Clockwerk Run			FinalFantasylization_Gnome_Start_TheClockwerkRun()
--				Loading Room				FinalFantasylization_Gnome_Start_LoadingRoom()
--				The Old Dormitory			FinalFantasylization_Gnome_Start_TheOldDormitory()
--				Train Depot					FinalFantasylization_Gnome_Start_TrainDepot()
--				Workshop Entrance			FinalFantasylization_Gnome_Start_WorkshopEntrance()
--			Iceflow Lake				FinalFantasylization_Gnome_Start_IceflowLake()
--			New Tinkertown				FinalFantasylization_Gnome_Start_NewTinkertown()
--			The Toxic Airfield			FinalFantasylization_Gnome_Start_TheToxicAirfield()
--	Alliance:
--		Amberstill Ranch			FinalFantasylization_AllianceTownAmberstillRanch()
--		Gates of Ironforge			FinalFantasylization_AllianceTownGatesofIronforge()
--		Gol'Bolar Quarry			FinalFantasylization_AllianceTownGolBolarQuarry()
--		Ironforge Airfield			FinalFantasylization_AllianceTownIronforgeAirfield()
--		Kharanos					FinalFantasylization_AllianceTownKharanos()
--			Thunderbrew Distillery		FinalFantasylization_AllianceTownThunderbrewDistillery()
--		Misty Pine Refuge			FinalFantasylization_AllianceTownMistyPineRefuge()
--		North Gate Outpost			FinalFantasylization_AllianceTownNorthGateOutpost()
--		Steelgrill's Depot			FinalFantasylization_AllianceTownSteelgrillsDepot()
--		South Gate Outpost			FinalFantasylization_AllianceTownSouthGateOutpost()
--
--	SUBZONES:
--	Bahrum's Post			FinalFantasylization_SubzoneBahrumsPost()
--	Frostmane Front			FinalFantasylization_SubzoneFrostmaneFront()
--	Frostmane Retreat		FinalFantasylization_SubzoneFrostmaneRetreat()
--	The Grizzled Den		FinalFantasylization_SubzoneTheGrizzledDen()
--	Gol'Bolar Quarry Mine	FinalFantasylization_SubzoneGolBolarQuarryMine()
--	Helm's Bed Lake			FinalFantasylization_SubzoneHelmsBedLake()
--	Ironband's Compound		FinalFantasylization_SubzoneIronbandsCompound()
--	The Mountain Den		FinalFantasylization_SubzoneTheMountainDen()
--	North Gate Pass			FinalFantasylization_SubzoneNorthGatePass()
--	Shimmer Ridge			FinalFantasylization_SubzoneShimmerRidge()
--	South Gate Pass			FinalFantasylization_SubzoneSouthGatePass()
--	The Tundrid Hills		FinalFantasylization_SubzoneTheTundridHills()
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
			FinalFantasylization_EasternKingdomsDunMoroghResting()
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
			FinalFantasylization_EasternKingdomsDunMoroghSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Coldridge Valley
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["Coldridge Valley"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
				FinalFantasylization_Dwarf_Start_ColdridgeValley()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. MinimapZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Anvilmar
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["Anvilmar"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
				FinalFantasylization_Dwarf_Start_Anvilmar()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. MinimapZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Coldridge Pass
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["Coldridge Pass"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
				FinalFantasylization_Dwarf_Start_ColdridgePass()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. MinimapZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Frostmane Hovel
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["Frostmane Hovel"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
				FinalFantasylization_Dwarf_Start_FrostmaneHovel()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. MinimapZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Dwarf Starting Area: Whitebeard's Encampment
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["Whitebeard's Encampment"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
				FinalFantasylization_Dwarf_Start_WhitebeardsEncampment()
			elseif ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. MinimapZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh: Gnome Starting Area: Chill Breeze Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chill Breeze Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_ChillBreezeValley()
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
	--' Dun Morogh: Gnome Starting Area: Brewnall Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brewnall Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_BrewnallVillage()
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
	--' Dun Morogh: Gnome Starting Area: Crushcog's Arsenal
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crushcog's Arsenal"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_CrushcogsArsenal()
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
	--' Dun Morogh: Gnome Starting Area: Frostmane Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostmane Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_FrostmaneHold()
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
	--' Dun Morogh: Gnome Starting Area: Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gnomeregan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_Gnomeregan()
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
	--' Dun Morogh: Gnome Starting Area: The Clockwerk Run in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Clockwerk Run"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_TheClockwerkRun()
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
	--' Dun Morogh: Gnome Starting Area: Loading Room in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Loading Room"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_LoadingRoom()
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
	--' Dun Morogh: Gnome Starting Area: The Old Dormitory in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Old Dormitory"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_TheOldDormitory()
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
	--' Dun Morogh: Gnome Starting Area: Train Depot in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Train Depot"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_TrainDepot()
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
	--' Dun Morogh: Gnome Starting Area: Workshop Entrance in Gnomeregan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Workshop Entrance"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_WorkshopEntrance()
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
	--' Dun Morogh: Gnome Starting Area: Iceflow Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Iceflow Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_IceflowLake()
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
	--' Dun Morogh: Gnome Starting Area: New Tinkertown
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Tinkertown"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_NewTinkertown()
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
	--' Dun Morogh: Gnome Starting Area: The Toxic Airfield
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Toxic Airfield"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Gnome_Start_TheToxicAirfield()
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
	--' Dun Morogh Alliance Town: Amberstill Ranch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Amberstill Ranch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownAmberstillRanch()
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
	--' Dun Morogh Alliance Town: Gates of Ironforge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gates of Ironforge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGatesofIronforge()
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
	--' Dun Morogh Alliance Town: Gol'Bolar Quarry
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gol'Bolar Quarry"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGolBolarQuarry()
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
	--' Dun Morogh Alliance Town: Ironforge Airfield
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ironforge Airfield"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownIronforgeAirfield()
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
	--' Dun Morogh Alliance Town: Kharanos
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kharanos"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownKharanos()
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
	--' Dun Morogh Alliance Town: Thunderbrew Distillery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunderbrew Distillery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownThunderbrewDistillery()
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
	--' Dun Morogh Alliance Town: Misty Pine Refuge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Misty Pine Refuge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownMistyPineRefuge()
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
	--' Dun Morogh Alliance Town: North Gate Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Gate Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownNorthGateOutpost()
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
	--' Dun Morogh Alliance Town: Steelgrill's Depot
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Steelgrill's Depot"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSteelgrillsDepot()
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
	--' Dun Morogh Alliance Town: South Gate Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Gate Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSouthGateOutpost()
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
	--' Dun Morogh Subzone: Bahrum's Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bahrum's Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBahrumsPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Frostmane Front
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostmane Front"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrostmaneFront()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Frostmane Retreat
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostmane Retreat"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrostmaneRetreat()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: The Grizzled Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Grizzled Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGrizzledDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Gol'Bolar Quarry Mine
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["Gol'Bolar Quarry Mine"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = MinimapZoneName
			FinalFantasylization_SubzoneGolBolarQuarryMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Helm's Bed Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Helm's Bed Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHelmsBedLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: Ironband's Compound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ironband's Compound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIronbandsCompound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: The Mountain Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Mountain Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMountainDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: North Gate Pass
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
	--' Dun Morogh Subzone: Shimmer Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shimmer Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShimmerRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh Subzone: South Gate Pass
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
	--' Dun Morogh Subzone: The Tundrid Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Tundrid Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTundridHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dun Morogh END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsDunMorogh()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end