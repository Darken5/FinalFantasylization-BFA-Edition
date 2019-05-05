function FinalFantasylization_KalimdorZones_ThousandNeedles()
--'==========================================================================================
--' Kalimdor Zones: Thousand Needles
--'==========================================================================================
--	Zone: Thousand Needles			FinalFantasylization_KalimdorThousandNeedles()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorThousandNeedlesResting()
--		Player is Swimming		FinalFantasylization_KalimdorThousandNeedlesSwimming()
--
--	TOWNS:
--	Horde:
--		Westreach Summit		FinalFantasylization_HordeTownWestreachSummit()
--	Neutral:
--		Fizzle & Pozzik's Speedbarge		FinalFantasylization_NeutralTownFizzleandPozziksSpeedbarge()
--			Speedbarge Bar						FinalFantasylization_NeutralTownSpeedbargeBar()
--		Freewind Post						FinalFantasylization_NeutralTownFreewindPost()
--
--	SUBZONES:
--	Darkcloud Pinnacle			FinalFantasylization_SubzoneDarkcloudPinnacle()
--		Arikara's Needle			FinalFantasylization_SubzoneArikarasNeedle()
--	The Great Lift				FinalFantasylization_SubzoneTheGreatLift()
--	Highperch					FinalFantasylization_SubzoneHighperch()
--	Razorfen Downs				FinalFantasylization_SubzoneRazorfenDowns()
--	The Shimmering Deep			FinalFantasylization_SubzoneTheShimmeringDeep()
--		Mirage Abyss				FinalFantasylization_SubzoneMirageAbyss()
--		Raceway Ruins				FinalFantasylization_SubzoneRacewayRuins()
--		Sunken Dig Site				FinalFantasylization_SubzoneSunkenDigSite()
--	Southsea Holdfast			FinalFantasylization_SubzoneSouthseaHoldfast()
--		The Admiral's Den			FinalFantasylization_SubzoneTheAdmiralsDen()
--	Splithoof Crag				FinalFantasylization_SubzoneSplithoofCrag()
--		Splithoof Hold				FinalFantasylization_SubzoneSplithoofHold()
--	Splithoof Heights			FinalFantasylization_SubzoneSplithoofHeights()
--	Tirth's Haunt				FinalFantasylization_SubzoneTirthsHaunt()
--	Twilight Aerie				FinalFantasylization_SubzoneTwilightAerie()
--	Twilight Bulwark			FinalFantasylization_SubzoneTwilightBulwark()
--	The Twilight Withering		FinalFantasylization_SubzoneTheTwilightWithering()
--	Whitereach Post				FinalFantasylization_SubzoneWhitereachPost()
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
			FinalFantasylization_KalimdorThousandNeedlesResting()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--'	Zone Event: Player is Swimming
	--'==========================================================================================
	elseif IsSubmerged() and FinalFantasylizationOptions.Swim == true then
		if FinalFantasylization_CurrentZone ~= "Swimming" then
			FinalFantasylization_CurrentZone = "Swimming"
			FinalFantasylization_KalimdorThousandNeedlesSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Horde Town: Westreach Summit
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Westreach Summit"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownWestreachSummit()
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
	--' Thousand Needles Neutral Town: Fizzle & Pozzik's Speedbarge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fizzle & Pozzik's Speedbarge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownFizzleandPozziksSpeedbarge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Neutral Town: Speedbarge Bar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Speedbarge Bar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownSpeedbargeBar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Neutral Town: Freewind Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Freewind Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownFreewindPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Darkcloud Pinnacle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkcloud Pinnacle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDarkcloudPinnacle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Arikara's Needle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Arikara's Needle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneArikarasNeedle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: The Great Lift
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Great Lift"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGreatLift()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Highperch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Highperch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHighperch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Razorfen Downs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Razorfen Downs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRazorfenDowns()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: The Shimmering Deep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shimmering Deep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShimmeringDeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Mirage Abyss
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mirage Abyss"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMirageAbyss()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Raceway Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Raceway Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRacewayRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Sunken Dig Site
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sunken Dig Site"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSunkenDigSite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Southsea Holdfast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southsea Holdfast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthseaHoldfast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: The Admiral's Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Admiral's Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheAdmiralsDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Splithoof Crag
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Splithoof Crag"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSplithoofCrag()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Splithoof Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Splithoof Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSplithoofHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Splithoof Heights
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Splithoof Heights"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSplithoofHeights()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Tirth's Haunt
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tirth's Haunt"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTirthsHaunt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Twilight Aerie
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Twilight Aerie"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTwilightAerie()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Twilight Bulwark
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Twilight Bulwark"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTwilightBulwark()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: The Twilight Withering
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Twilight Withering"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTwilightWithering()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles Subzone: Whitereach Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Whitereach Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWhitereachPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Thousand Needles END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorThousandNeedles()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end