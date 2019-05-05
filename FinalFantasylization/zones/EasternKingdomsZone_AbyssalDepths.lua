function FinalFantasylization_EasternKingdomsZones_AbyssalDepths()
--'==========================================================================================
--' Eastern Kingdoms Zones: Abyssal Depths
--'==========================================================================================
--	Zone: Abyssal Depths	FinalFantasylization_EasternKingdomsAbyssalDepths()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsAbyssalDepthsResting()
--
--	TOWNS:
--	Alliance:
--		Darkbreak Cove			FinalFantasylization_AllianceTownDarkbreakCove()
--	Horde:
--		Tenebrous Cavern		FinalFantasylization_HordeTownTenebrousCavern()
--	
--	SUBZONES:
--	Abandoned Reef			FinalFantasylization_SubzoneAbandonedReef()
--	Abyssal Breach			FinalFantasylization_SubzoneAbyssalBreach()
--		The Abyssal Maw			FinalFantasylization_SubzoneTheAbyssalMaw()
--	The Cerebrillum			FinalFantasylization_SubzoneTheCerebrillum()
--	Coldlight Chasm			FinalFantasylization_SubzoneColdlightChasm()
--	Deepfin Ridge			FinalFantasylization_SubzoneDeepfinRidge()
--	Fireplume Trench		FinalFantasylization_SubzoneFireplumeTrench()
--	Korthun's End			FinalFantasylization_SubzoneKorthunsEnd()
--	L'ghorek				FinalFantasylization_SubzoneLghorek()
--	The Lightless Reaches	FinalFantasylization_SubzoneTheLightlessReaches()
--	Nightmare Depths		FinalFantasylization_SubzoneNightmareDepths()
--	The Overlook			FinalFantasylization_SubzoneTheOverlook()
--	Promontory Point		FinalFantasylization_SubzonePromontoryPoint()
--	The Scalding Chasm		FinalFantasylization_SubzoneTheScaldingChasm()
--	Seabrush				FinalFantasylization_SubzoneSeabrush()
--	Sira'kess Front			FinalFantasylization_SubzoneSirakessFront()
--	Thermal Vents			FinalFantasylization_SubzoneThermalVents()
--	Underlight Canyon		FinalFantasylization_SubzoneUnderlightCanyon()
--	The Undershell			FinalFantasylization_SubzoneTheUndershell()
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
			FinalFantasylization_EasternKingdomsArathiHighlandsResting()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Alliance Town: Darkbreak Cove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkbreak Cove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDarkbreakCove()
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
	--' Abyssal Depths Horde Town: Tenebrous Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tenebrous Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownTenebrousCavern()
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
	--' Abyssal Depths Subzone: Abandoned Reef
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Abandoned Reef"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAbandonedReef()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Abyssal Breach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Abyssal Breach"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAbyssalBreach()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: The Abyssal Maw in Abyssal Breach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Abyssal Maw"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheAbyssalMaw()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: The Cerebrillum
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Cerebrillum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCerebrillum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Coldlight Chasm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Coldlight Chasm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneColdlightChasm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Deepfin Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deepfin Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeepfinRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Fireplume Trench
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fireplume Trench"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFireplumeTrench()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Korthun's End
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Korthun's End"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKorthunsEnd()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: L'ghorek
	--'==========================================================================================
	elseif ( SubZoneName == SZ["L'ghorek"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLghorek()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: The Lightless Reaches
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Lightless Reaches"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheLightlessReaches()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Nightmare Depths
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nightmare Depths"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNightmareDepths()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: The Overlook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Overlook"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheOverlook()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Promontory Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Promontory Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePromontoryPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: The Scalding Chasm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Scalding Chasm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheScaldingChasm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Seabrush
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Seabrush"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSeabrush()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Sira'kess Front
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sira'kess Front"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSirakessFront()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Thermal Vents
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thermal Vents"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThermalVents()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: Underlight Canyon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Underlight Canyon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneUnderlightCanyon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths Subzone: The Undershell
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Undershell"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheUndershell()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Abyssal Depths END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsAbyssalDepths()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end