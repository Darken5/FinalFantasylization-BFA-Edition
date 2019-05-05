function FinalFantasylization_EasternKingdomsZones_BlastedLands()
--'==========================================================================================
--' Eastern Kingdoms Zones: Blasted Lands
--'==========================================================================================
--	Zone: Blasted Lands				FinalFantasylization_EasternKingdomsBlastedLands()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsBlastedLandsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsBlastedLandsSwimming()
--
--	TOWNS:
--	Alliance:
--		Nethergarde Keep				FinalFantasylization_AllianceTownNethergardeKeep()
--		Shattered Beachhead				FinalFantasylization_AllianceTownShatteredBeachhead()
--		Surwich							FinalFantasylization_AllianceTownSurwich()
--	Horde:
--		Okril'lon Hold					FinalFantasylization_HordeTownOkrillonHold()
--		Shattered Landing				FinalFantasylization_HordeTownShatteredLanding()
--		Sunveil Excursion				FinalFantasylization_HordeTownSunveilExcursion()
--	
--	SUBZONES:
--	Altar of Storms					FinalFantasylization_SubzoneAltarofStorms()
--	The Dark Portal					FinalFantasylization_SubzoneTheDarkPortal()
--	Dreadmaul Furnace				FinalFantasylization_SubzoneDreadmaulFurnace()
--	Dreadmaul Post					FinalFantasylization_SubzoneDreadmaulPost()
--	The Forbidding Sea				FinalFantasylization_SubzoneTheForbiddingSea()
--	Nethergarde Mines				FinalFantasylization_SubzoneNethergardeMines()
--	Nethergarde Supply Camps		FinalFantasylization_SubzoneNethergardeSupplyCamps()
--	The Forge Grounds				FinalFantasylization_SubzoneTheForgeGrounds()
--	The Red Reaches					FinalFantasylization_SubzoneTheRedReaches()
--		Bloodwash Cavern				FinalFantasylization_SubzoneBloodwashCavern()
--		Bloodwash Fighting Pits			FinalFantasylization_SubzoneBloodwashFightingPits()
--		Bloodwash Shrine				FinalFantasylization_SubzoneBloodwashShrine()
--		Rockpool Village				FinalFantasylization_SubzoneRockpoolVillage()
--	Rise of the Defiler				FinalFantasylization_SubzoneRiseoftheDefiler()
--	Serpent's Coil					FinalFantasylization_SubzoneSerpentsCoil()
--	Shattershore					FinalFantasylization_SubzoneShattershore()
--		The Shattered Front				FinalFantasylization_SubzoneTheShatteredFront()
--	The Tainted Forest				FinalFantasylization_SubzoneTheTaintedForest()
--		Maldraz							FinalFantasylization_SubzoneMaldraz()
--	The Tainted Scar				FinalFantasylization_SubzoneTheTaintedScar()
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
			FinalFantasylization_EasternKingdomsBlastedLandsResting()
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
			FinalFantasylization_EasternKingdomsBlastedLandsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Alliance Town: Nethergarde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nethergarde Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownNethergardeKeep()
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
	--' Blasted Lands Alliance Town: Shattered Beachhead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shattered Beachhead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownShatteredBeachhead()
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
	--' Blasted Lands Alliance Town: Surwich
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Surwich"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSurwich()
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
	--' Blasted Lands Horde Town: Okril'lon Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Okril'lon Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownOkrillonHold()
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
	--' Blasted Lands Horde Town: Shattered Landing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shattered Landing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownShatteredLanding()
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
	--' Blasted Lands Horde Town: Sunveil Excursion
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sunveil Excursion"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSunveilExcursion()
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
	--' Blasted Lands Subzone: Altar of Storms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Altar of Storms"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAltarofStorms()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Dark Portal
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dark Portal"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDarkPortal()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Dreadmaul Furnace
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmaul Furnace"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadmaulFurnace()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Dreadmaul Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmaul Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadmaulPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Forbidding Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Forbidding Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheForbiddingSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Nethergarde Mines
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nethergarde Mines"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNethergardeMines()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Nethergarde Supply Camps
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nethergarde Supply Camps"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNethergardeSupplyCamps()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Forge Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Forge Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheForgeGrounds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Red Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Red Reaches"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRedReaches()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Bloodwash Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodwash Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodwashCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Bloodwash Fighting Pits
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodwash Fighting Pits"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodwashFightingPits()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Bloodwash Shrine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodwash Shrine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodwashShrine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Rockpool Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rockpool Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRockpoolVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Rise of the Defiler
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rise of the Defiler"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRiseoftheDefiler()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Serpent's Coil
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Serpent's Coil"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSerpentsCoil()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Shattershore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shattershore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShattershore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Shattered Front
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shattered Front"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShatteredFront()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Tainted Forest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Tainted Forest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTaintedForest()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: Maldraz
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Maldraz"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMaldraz()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands Subzone: The Tainted Scar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Tainted Scar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTaintedScar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Blasted Lands END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsBlastedLands()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end