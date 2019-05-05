function FinalFantasylization_KalimdorZones_UnGoroCrater()
--'==========================================================================================
--' Kalimdor Zones: Un'Goro Crater
--'==========================================================================================
--	Zone: Un'Goro Crater			FinalFantasylization_KalimdorUnGoroCrater()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorUnGoroCraterResting()
--		Player is Swimming		FinalFantasylization_KalimdorUnGoroCraterSwimming()
--
--	TOWNS:
--	Neutral:
--		Marshal's Stand			FinalFantasylization_NeutralTownMarshalsStand()
--		Mossy Pile				FinalFantasylization_NeutralTownMossyPile()
--
--	SUBZONES:
--	Fire Plume Ridge			FinalFantasylization_SubzoneFirePlumeRidge()
--	Fungal Rock					FinalFantasylization_SubzoneFungalRock()
--	Golakka Hot Springs			FinalFantasylization_SubzoneGolakkaHotSprings()
--	Ironstone Plateau			FinalFantasylization_SubzoneIronstonePlateau()
--	Lakkari Tar Pits			FinalFantasylization_SubzoneLakkariTarPits()
--	Marshal's Refuge			FinalFantasylization_SubzoneMarshalsRefuge()
--	The Marshlands				FinalFantasylization_SubzoneTheMarshlands()
--	The Roiling Gardens			FinalFantasylization_SubzoneTheRoilingGardens()
--	The Screaming Reaches		FinalFantasylization_SubzoneTheScreamingReaches()
--	The Shaper's Terrace		FinalFantasylization_SubzoneTheShapersTerrace()
--	The Slithering Scar			FinalFantasylization_SubzoneTheSlitheringScar()
--	Terror Run					FinalFantasylization_SubzoneTerrorRun()
--	Waygate 					FinalFantasylization_SubzoneWaygate()
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
			FinalFantasylization_KalimdorUnGoroCraterResting()
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
			FinalFantasylization_KalimdorUnGoroCraterSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Neutral Town: Marshal's Stand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Marshal's Stand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownMarshalsStand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Neutral Town: Mossy Pile
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mossy Pile"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownMossyPile()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Fire Plume Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fire Plume Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFirePlumeRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Fungal Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fungal Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFungalRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Golakka Hot Springs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Golakka Hot Springs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGolakkaHotSprings()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Ironstone Plateau
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ironstone Plateau"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIronstonePlateau()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Lakkari Tar Pits
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lakkari Tar Pits"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakkariTarPits()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Marshal's Refuge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Marshal's Refuge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMarshalsRefuge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: The Marshlands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Marshlands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMarshlands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: The Roiling Gardens
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Roiling Gardens"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRoilingGardens()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: The Screaming Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Screaming Reaches"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheScreamingReaches()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: The Shaper's Terrace
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shaper's Terrace"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShapersTerrace()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: The Slithering Scar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Slithering Scar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSlitheringScar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Terror Run
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Terror Run"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTerrorRun()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater Subzone: Waygate
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Waygate"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWaygate()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Un'Goro Crater END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorUnGoroCrater()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end