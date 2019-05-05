function FinalFantasylization_EasternKingdomsZones_Undercity()
--'==========================================================================================
--' Eastern Kingdoms Capital: Undercity : Horde
--'==========================================================================================
--	Zone: Undercity			FinalFantasylization_EasternKingdoms_Undercity()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdoms_UndercityResting()
--		Player is Swimming		FinalFantasylization_EasternKingdoms_UndercitySwimming()
--
--	SUBZONES:
--	Apothecarium			FinalFantasylization_Undercity_SubzoneTheApothecarium()
--	Canals					FinalFantasylization_Undercity_SubzoneCanals()
--	Magic Quarter			FinalFantasylization_Undercity_SubzoneMagicQuarter()
--	Rogues' Quarter			FinalFantasylization_Undercity_SubzoneRoguesQuarter()
--	Royal Quarter			FinalFantasylization_Undercity_SubzoneRoyalQuarter()
--	Ruins of Lordaeron		FinalFantasylization_Undercity_SubzoneRuinsofLordaeron()
--	Sewers					FinalFantasylization_Undercity_SubzoneSewers()
--	Trade Quarter			FinalFantasylization_Undercity_SubzoneTradeQuarter()
--	War Quarter				FinalFantasylization_Undercity_SubzoneWarQuarter()
	--'==========================================================================================
	--' Undercity: Horde Check
	--'==========================================================================================
	if ( factionEnglish == "Horde" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_EasternKingdoms_UndercityResting()
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
				FinalFantasylization_EasternKingdoms_UndercitySwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: The Apothecarium
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Apothecarium"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneTheApothecarium()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Canals
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Canals"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneCanals()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Magic Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Magic Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneMagicQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Rogues' Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Rogues' Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneRoguesQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Royal Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Royal Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneRoyalQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Ruins of Lordaeron
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Ruins of Lordaeron"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneRuinsofLordaeron()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Sewers
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Sewers"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneSewers()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: Trade Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Trade Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneTradeQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity: War Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["War Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Undercity_SubzoneWarQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Undercity END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_EasternKingdoms_Undercity()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Undercity: Alliance Check
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