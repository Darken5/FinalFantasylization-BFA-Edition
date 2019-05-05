function FinalFantasylization_EasternKingdomsZones_BurningSteppes()
--'==========================================================================================
--' Eastern Kingdoms Zones: Burning Steppes
--'==========================================================================================
--	Zone: Burning Steppes		FinalFantasylization_EasternKingdomsBurningSteppes()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsBurningSteppesResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsBurningSteppesSwimming()
--
--	TOWNS:
--	Alliance:
--		Morgan's Vigil				FinalFantasylization_AllianceTownMorgansVigil()
--	Horde:
--		Flame Crest					FinalFantasylization_HordeTownFlameCrest()
--	Neutral:
--		Chiselgrip					FinalFantasylization_NeutralTownChiselgrip()
--		Flamestar Post				FinalFantasylization_NeutralTownFlamestarPost()
--
--	SUBZONES:
--	Altar of Storms				FinalFantasylization_SubzoneAltarofStorms()
--	Blackrock Mountain			FinalFantasylization_SubzoneBlackrockMountain()
--	Blackrock Pass				FinalFantasylization_SubzoneBlackrockPass()
--	Blackrock Stronghold		FinalFantasylization_SubzoneBlackrockStronghold()
--	Black Tooth Hovel			FinalFantasylization_SubzoneBlackToothHovel()
--		The Pillar of Ash			FinalFantasylization_SubzoneThePillarofAsh()
--	Dreadmaul Rock				FinalFantasylization_SubzoneDreadmaulRock()
--		Firegut Furnace				FinalFantasylization_SubzoneFiregutFurnace()
--		The Skull Warren			FinalFantasylization_SubzoneTheSkullWarren()
--	Fields of Honor				FinalFantasylization_SubzoneFieldsofHonor()
--	Redridge Highway			FinalFantasylization_SubzoneRedridgeHighway()
--	Ruins of Thaurissan			FinalFantasylization_SubzoneRuinsofThaurissan()
--	Slither Rock				FinalFantasylization_SubzoneSlitherRock()
--	Terror Wing Path			FinalFantasylization_SubzoneTerrorWingPath()
--	Valley of Ashes				FinalFantasylization_SubzoneValleyofAshes()
--	The Whelping Downs			FinalFantasylization_SubzoneTheWhelpingDowns()
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
			FinalFantasylization_EasternKingdomsBurningSteppesResting()
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
			FinalFantasylization_EasternKingdomsBurningSteppesSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Alliance Town: Morgan's Vigil
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Morgan's Vigil"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownMorgansVigil()
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
	--' Burning Steppes Horde Town: Flame Crest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Flame Crest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownFlameCrest()
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
	--' Burning Steppes Neutral Town: Chiselgrip
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chiselgrip"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownChiselgrip()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Neutral Town: Flamestar Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Flamestar Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownFlamestarPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Altar of Storms
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
	--' Burning Steppes Subzone: Blackrock Mountain
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackrock Mountain"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackrockMountain()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Blackrock Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackrock Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackrockPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Blackrock Stronghold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackrock Stronghold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackrockStronghold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Black Tooth Hovel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Black Tooth Hovel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackToothHovel()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: The Pillar of Ash in Black Tooth Hovel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Pillar of Ash"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThePillarofAsh()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Dreadmaul Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmaul Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadmaulRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Firegut Furnace in Dreadmaul Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Firegut Furnace"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFiregutFurnace()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: The Skull Warren in Dreadmaul Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Skull Warren"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSkullWarren()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Fields of Honor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fields of Honor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFieldsofHonor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Redridge Highway 
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Redridge Highway"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRedridgeHighway()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Ruins of Thaurissan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Thaurissan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofThaurissan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Slither Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Slither Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSlitherRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Terror Wing Path
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Terror Wing Path"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTerrorWingPath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: Valley of Ashes
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of Ashes"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValleyofAshes()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes Subzone: The Whelping Downs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Whelping Downs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheWhelpingDowns()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Burning Steppes END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsBurningSteppes()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end