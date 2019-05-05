function FinalFantasylization_KalimdorZones_TheExodar()
--'==========================================================================================
--' Kalimdor Capital: The Exodar : Alliance
--'==========================================================================================
--	Zone: The Exodar		FinalFantasylization_Kalimdor_TheExodar()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_Kalimdor_TheExodarResting()
--		Player is Swimming		FinalFantasylization_Kalimdor_TheExodarSwimming()
--
--	SUBZONES:
--	The Crystal Hall		FinalFantasylization_TheExodar_SubzoneTheCrystalHall()
--	Seat of the Naaru		FinalFantasylization_TheExodar_SubzoneSeatoftheNaaru()
--		The Exobar				FinalFantasylization_TheExodar_SubzoneTheExobar()
--	Trader's Tier			FinalFantasylization_TheExodar_SubzoneTradersTier()
--	The Vault of Lights		FinalFantasylization_TheExodar_SubzoneTheVaultofLights()
	--'==========================================================================================
	--' The Exodar: Alliance Check
	--'==========================================================================================
	if ( factionEnglish == "Alliance" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. AllianceRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_Kalimdor_TheExodarResting()
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
				FinalFantasylization_Kalimdor_TheExodarSwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: The Crystal Hall
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Crystal Hall"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneTheCrystalHall()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: Seat of the Naaru
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Seat of the Naaru"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneSeatoftheNaaru()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: The Exobar in Seat of the Naaru
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Exobar"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneTheExobar()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: Trader's Tier
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Trader's Tier"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneTradersTier()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar: The Vault of Lights
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Vault of Lights"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_TheExodar_SubzoneTheVaultofLights()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' The Exodar END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_KalimdorZones_TheExodar()
			else
				return
			end	
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' The Exodar: Horde Check
	--'==========================================================================================
	elseif ( factionEnglish == "Horde" ) then
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
	end
end