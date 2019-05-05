function FinalFantasylization_EasternKingdomsZones_GilneasCity()
--'==========================================================================================
--' Eastern Kingdoms Zones: Gilneas City : Worgen
--'==========================================================================================
--	Zone: Gilneas City				FinalFantasylization_EasternKingdomsGilneasCity()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsGilneasCityResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsGilneasCitySwimming()
--	
--	SUBZONES:
--	Cathedral Quarter 				FinalFantasylization_GilneasCity_SubzoneCathedralQuarter()
--		Light's Dawn Cathedral		FinalFantasylization_GilneasCity_SubzoneLightsDawnCathedral()
--	Greymane Court					FinalFantasylization_GilneasCity_SubzoneGreymaneCourt()
--	Merchant Square					FinalFantasylization_GilneasCity_SubzoneMerchantSquare()
--	Military District 				FinalFantasylization_GilneasCity_SubzoneMilitaryDistrict()
--		Stoneward Prison			FinalFantasylization_GilneasCity_SubzoneStonewardPrison()
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
			FinalFantasylization_EasternKingdomsGilneasCityResting()
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
			FinalFantasylization_EasternKingdomsGilneasCitySwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas City: Cathedral Quarter
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cathedral Quarter"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_GilneasCity_SubzoneCathedralQuarter()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas City: Light's Dawn Cathedral
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Light's Dawn Cathedral"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_GilneasCity_SubzoneLightsDawnCathedral()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas City: Greymane Court
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Greymane Court"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_GilneasCity_SubzoneGreymaneCourt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas City: Merchant Square
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Merchant Square"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_GilneasCity_SubzoneMerchantSquare()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas City: Military District
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Military District"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_GilneasCity_SubzoneMilitaryDistrict()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas City: Stoneward Prison
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stoneward Prison"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_GilneasCity_SubzoneStonewardPrison()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Gilneas City END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsGilneasCity()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end