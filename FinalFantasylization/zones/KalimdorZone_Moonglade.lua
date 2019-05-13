function FinalFantasylization_KalimdorZones_Moonglade()
--'==========================================================================================
--' Kalimdor Zones: Moonglade
--'==========================================================================================
--	Zone: Moonglade				FinalFantasylization_KalimdorMoonglade()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorMoongladeResting()
--		Player is Swimming		FinalFantasylization_KalimdorMoongladeSwimming()
--
--	TOWNS:
--	Neutral
--		Nighthaven				FinalFantasylization_NeutralTownNighthaven()
--
--	SUBZONES:
--	Lake Elune'ara				FinalFantasylization_SubzoneLakeEluneara()
--	Shrine of Remulos			FinalFantasylization_SubzoneShrineofRemulos()
--	Stormrage Barrow Dens		FinalFantasylization_SubzoneStormrageBarrowDens()
--	Timbermaw Hold				FinalFantasylization_SubzoneTimbermawHold()
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
			FinalFantasylization_KalimdorMoongladeResting()
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
			FinalFantasylization_KalimdorMoongladeSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Moonglade Neutral Town: Nighthaven
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nighthaven"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownNighthaven()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Moonglade Subzone: Lake Elune'ara
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Elune'ara"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeEluneara()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Moonglade Subzone: Shrine of Remulos
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of Remulos"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShrineofRemulos()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Moonglade Subzone: Stormrage Barrow Dens
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stormrage Barrow Dens"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStormrageBarrowDens()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Moonglade Subzone: Timbermaw Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Timbermaw Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTimbermawHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Moonglade END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorMoonglade()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end