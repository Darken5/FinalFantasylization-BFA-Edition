function FinalFantasylization_KalimdorZones_ThunderBluff()
--'==========================================================================================
--' Kalimdor Capital: Thunder Bluff : Horde
--'==========================================================================================
--	Zone: Thunder Bluff		FinalFantasylization_Kalimdor_ThunderBluff()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_Kalimdor_ThunderBluffResting()
--		Player is Swimming		FinalFantasylization_Kalimdor_ThunderBluffSwimming()
--
--	SUBZONES:
--	Elder Rise			FinalFantasylization_ThunderBluff_SubzoneElderRise()
--	High Rise			FinalFantasylization_ThunderBluff_SubzoneHighRise()
--	Hunter Rise			FinalFantasylization_ThunderBluff_SubzoneHunterRise()
--	Lower Rise			FinalFantasylization_ThunderBluff_SubzoneLowerRise()
--	Middle Rise			FinalFantasylization_ThunderBluff_SubzoneMiddleRise()
--	Spirit Rise			FinalFantasylization_ThunderBluff_SubzoneSpiritRise()
--		The Pools of Vision		FinalFantasylization_ThunderBluff_SubzoneThePoolsofVision()
	--'==========================================================================================
	--' Thunder Bluff: Horde Check
	--'==========================================================================================
	if ( factionEnglish == "Horde" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_Kalimdor_ThunderBluffResting()
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
				FinalFantasylization_Kalimdor_ThunderBluffSwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff: Elder Rise
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Elder Rise"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_ThunderBluff_SubzoneElderRise()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff: High Rise
	--'==========================================================================================
		elseif ( SubZoneName == SZ["High Rise"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_ThunderBluff_SubzoneHighRise()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff: Hunter Rise
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Hunter Rise"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_ThunderBluff_SubzoneHunterRise()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff: Lower Rise
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Lower Rise"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_ThunderBluff_SubzoneLowerRise()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff: Middle Rise
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Middle Rise"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_ThunderBluff_SubzoneMiddleRise()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff: Spirit Rise
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Spirit Rise"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_ThunderBluff_SubzoneSpiritRise()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff: The Pools of Vision
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Pools of Vision"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_ThunderBluff_SubzoneThePoolsofVision()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Thunder Bluff END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Kalimdor_ThunderBluff()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Thunder Bluff: Alliance Check
	--'==========================================================================================
	elseif ( factionEnglish == "Alliance" ) then
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