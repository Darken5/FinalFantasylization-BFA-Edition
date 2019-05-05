function FinalFantasylization_KalimdorZones_Winterspring()
--'==========================================================================================
--' Kalimdor Zones: Winterspring
--'==========================================================================================
--	Zone: Winterspring			FinalFantasylization_KalimdorWinterspring()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorWinterspringResting()
--		Player is Swimming		FinalFantasylization_KalimdorWinterspringSwimming()
--
--	TOWNS:
--	Alliance:
--		Starfall Village			FinalFantasylization_AllianceTownStarfallVillage()
--	Neutral
--		Everlook					FinalFantasylization_NeutralTownEverlook()
--			The Laughing Yeti			FinalFantasylization_NeutralTownTheLaughingYeti()
--		Goodgrub Smoking Pit		FinalFantasylization_NeutralTownGoodgrubSmokingPit()
--		Snowden Chalet				FinalFantasylization_NeutralTownSnowdenChalet()
--
--	SUBZONES:
--	Ban'Thallow Barrow Den		FinalFantasylization_SubzoneBanThallowBarrowDen()
--	Caverns of Consumption		FinalFantasylization_SubzoneCavernsofConsumption()
--	Dun Mandarr					FinalFantasylization_SubzoneDunMandarr()
--	Frostfire Hot Springs		FinalFantasylization_SubzoneFrostfireHotSprings()
--	Frostsaber Rock				FinalFantasylization_SubzoneFrostsaberRock()
--	Frostwhisper Gorge			FinalFantasylization_SubzoneFrostwhisperGorge()
--	The Hidden Grove			FinalFantasylization_SubzoneTheHiddenGrove()
--	Ice Thistle Hills			FinalFantasylization_SubzoneIceThistleHills()
--	Lake Kel'Theril				FinalFantasylization_SubzoneLakeKelTheril()
--	Mazthoril					FinalFantasylization_SubzoneMazthoril()
--		Beryl Egress				FinalFantasylization_SubzoneBerylEgress()
--	Moon Horror Den				FinalFantasylization_SubzoneMoonHorrorDen()
--	Owl Wing Thicket			FinalFantasylization_SubzoneOwlWingThicket()
--	The Ruins of Kel'Theril		FinalFantasylization_SubzoneTheRuinsofKelTheril()
--	Timbermaw Post				FinalFantasylization_SubzoneTimbermawPost()
--	Winterfall Village			FinalFantasylization_SubzoneWinterfallVillage()
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
			FinalFantasylization_KalimdorWinterspringResting()
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
			FinalFantasylization_KalimdorWinterspringSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Alliance Town: Starfall Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Starfall Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownStarfallVillage()
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
	--' Winterspring Neutral Town: Everlook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Everlook"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownEverlook()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Neutral Town: The Laughing Yeti
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Laughing Yeti"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownTheLaughingYeti()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Neutral Town: Goodgrub Smoking Pit
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Goodgrub Smoking Pit"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownGoodgrubSmokingPit()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Neutral Town: Snowden Chalet
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Snowden Chalet"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownSnowdenChalet()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Ban'Thallow Barrow Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ban'Thallow Barrow Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBanThallowBarrowDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Caverns of Consumption
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Caverns of Consumption"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCavernsofConsumption()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Dun Mandarr
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dun Mandarr"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDunMandarr()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Frostfire Hot Springs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostfire Hot Springs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrostfireHotSprings()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Frostsaber Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostsaber Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrostsaberRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Frostwhisper Gorge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Frostwhisper Gorge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFrostwhisperGorge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: The Hidden Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Hidden Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheHiddenGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Ice Thistle Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ice Thistle Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIceThistleHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Lake Kel'Theril
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Kel'Theril"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeKelTheril()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Mazthoril
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mazthoril"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMazthoril()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Beryl Egress
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Beryl Egress"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBerylEgress()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Moon Horror Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moon Horror Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoonHorrorDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Owl Wing Thicket
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Owl Wing Thicket"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneOwlWingThicket()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: The Ruins of Kel'Theril
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Ruins of Kel'Theril"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRuinsofKelTheril()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Timbermaw Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Timbermaw Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTimbermawPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring Subzone: Winterfall Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Winterfall Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWinterfallVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Winterspring END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorWinterspring()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end