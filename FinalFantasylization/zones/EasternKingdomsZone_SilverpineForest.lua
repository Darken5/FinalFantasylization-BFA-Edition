function FinalFantasylization_EasternKingdomsZones_SilverpineForest()
--'==========================================================================================
--' Eastern Kingdoms Zones: Silverpine Forest
--'==========================================================================================
--	Zone: Silverpine Forest				FinalFantasylization_EasternKingdomsSilverpineForest()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsSilverpineForestResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsSilverpineForestSwimming()
--
--	TOWNS:
--	Horde:
--		The Forsaken Front					FinalFantasylization_HordeTownTheForsakenFront()
--		Forsaken High Command				FinalFantasylization_HordeTownForsakenHighCommand()
--		Forsaken Rear Guard					FinalFantasylization_HordeTownForsakenRearGuard()
--		The Sepulcher						FinalFantasylization_HordeTownTheSepulcher()
--	
--	SUBZONES:
--	7th Legion Base Camp				FinalFantasylization_Subzone7thLegionBaseCamp()
--	Ambermill *							FinalFantasylization_SubzoneAmbermill()
--	The Battlefront						FinalFantasylization_SubzoneTheBattlefront()
--	Beren's Peril						FinalFantasylization_SubzoneBerensPeril()
--	The Dead Field						FinalFantasylization_SubzoneTheDeadField()
--	The Decrepit Fields					FinalFantasylization_SubzoneTheDecrepitFields()
--	Deep Elem Mine						FinalFantasylization_SubzoneDeepElemMine()
--	Gilneas Liberation Front Base Camp	FinalFantasylization_SubzoneGilneasLiberationFrontBaseCamp()
--	The Greymane Wall					FinalFantasylization_SubzoneTheGreymaneWall()
--	The Ivar Patch						FinalFantasylization_SubzoneTheIvarPatch()
--	Lordamere Lake						FinalFantasylization_SubzoneLordamereLake()
--		The Dawning Isles					FinalFantasylization_SubzoneTheDawningIsles()
--		Fenris Isle							FinalFantasylization_SubzoneFenrisIsle()
--			Fenris Keep							FinalFantasylization_SubzoneFenrisKeep()
--	North Tide's Beachhead				FinalFantasylization_SubzoneNorthTidesBeachhead()
--	North Tide's Hollow					FinalFantasylization_SubzoneNorthTidesHollow()
--	North Tide's Run					FinalFantasylization_SubzoneNorthTidesRun()
--	Olsen's Farthing					FinalFantasylization_SubzoneOlsensFarthing()
--	Pyrewood Village					FinalFantasylization_SubzonePyrewoodVillage()
--		Pyrewood Chapel						FinalFantasylization_SubzonePyrewoodChapel()
--		Pyrewood Inn *						FinalFantasylization_SubzonePyrewoodInn()
--		Pyrewood Town Hall					FinalFantasylization_SubzonePyrewoodTownHall()
--	Shadowfang Keep						FinalFantasylization_SubzoneShadowfangKeep()
--	The Shining Strand					FinalFantasylization_SubzoneTheShiningStrand()
--	The Skittering Dark					FinalFantasylization_SubzoneTheSkitteringDark()
--	South Tide's Run					FinalFantasylization_SubzoneSouthTidesRun()
--	Valgan's Field						FinalFantasylization_SubzoneValgansField()
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
			FinalFantasylization_EasternKingdomsSilverpineForestResting()
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
			FinalFantasylization_EasternKingdomsSilverpineForestSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Horde Town: The Forsaken Front
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Forsaken Front"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheForsakenFront()
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
	--' Silverpine Forest Horde Town: Forsaken High Command
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forsaken High Command"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownForsakenHighCommand()
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
	--' Silverpine Forest Horde Town: Forsaken Rear Guard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forsaken Rear Guard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownForsakenRearGuard()
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
	--' Silverpine Forest Horde Town: The Sepulcher
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sepulcher"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTheSepulcher()
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
	--' Silverpine Forest Subzone: 7th Legion Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["7th Legion Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Subzone7thLegionBaseCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Ambermill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ambermill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmbermill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: The Battlefront
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Battlefront"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBattlefront()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Beren's Peril
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Beren's Peril"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBerensPeril()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: The Dead Field
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dead Field"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDeadField()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: The Decrepit Fields
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Decrepit Fields"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDecrepitFields()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Deep Elem Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deep Elem Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeepElemMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Gilneas Liberation Front Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gilneas Liberation Front Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGilneasLiberationFrontBaseCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: The Greymane Wall
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
	--' Silverpine Forest Subzone: The Ivar Patch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Ivar Patch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheIvarPatch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Lordamere Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lordamere Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLordamereLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: The Dawning Isles in Lordamere Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dawning Isles"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDawningIsles()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Fenris Isle in Lordamere Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fenris Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFenrisIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Fenris Keep on Fenris Isle in Lordamere Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fenris Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFenrisKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: North Tide's Beachhead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Tide's Beachhead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthTidesBeachhead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
--[[	--'==========================================================================================
	--' Silverpine Forest Subzone: North Tide's Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Tide's Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthTidesHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return	]]
	--'==========================================================================================
	--' Silverpine Forest Subzone: North Tide's Run
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Tide's Run"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthTidesRun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Olsen's Farthing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Olsen's Farthing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneOlsensFarthing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Pyrewood Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pyrewood Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePyrewoodVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Pyrewood Chapel in Pyrewood Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pyrewood Chapel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePyrewoodChapel()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Pyrewood Inn in Pyrewood Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pyrewood Inn"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePyrewoodInn()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Pyrewood Town Hall in Pyrewood Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pyrewood Town Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePyrewoodTownHall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Shadowfang Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadowfang Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShadowfangKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: The Shining Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shining Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShiningStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: The Skittering Dark
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Skittering Dark"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSkitteringDark()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: South Tide's Run
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Tide's Run"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthTidesRun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest Subzone: Valgan's Field
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valgan's Field"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValgansField()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Silverpine Forest END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsSilverpineForest()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end