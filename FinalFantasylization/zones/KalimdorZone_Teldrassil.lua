function FinalFantasylization_KalimdorZones_Teldrassil()
--'==========================================================================================
--' Kalimdor Zones: Teldrassil
--'==========================================================================================
--	Zone: Teldrassil			FinalFantasylization_KalimdorTeldrassil()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorTeldrassilResting()
--		Player is Swimming		FinalFantasylization_KalimdorTeldrassilSwimming()
--
--	TOWNS:
--	Night Elf Start:
--		Shadowglen					FinalFantasylization_NightElf_Start_Shadowglen()
--			Aldrassil					FinalFantasylization_NightElf_Start_Aldrassil()
--			Shadowthread Cave			FinalFantasylization_NightElf_Start_ShadowthreadCave()
--	Alliance:
--		Dolanaar					FinalFantasylization_AllianceTownDolanaar()
--		Rut'theran Village			FinalFantasylization_AllianceTownRuttheranVillage()
--		Wellspring Hovel			FinalFantasylization_AllianceTownWellspringHovel()
--
--	SUBZONES:
--	Ban'ethil Hollow			FinalFantasylization_SubzoneBanethilHollow()
--		Ban'ethil Barrow Den		FinalFantasylization_SubzoneBanethilBarrowDen()
--		Ban'ethil Barrow Descent	FinalFantasylization_SubzoneBanethilBarrowDescent()
--	The Cleft					FinalFantasylization_SubzoneTheCleft()
--	Fel Rock					FinalFantasylization_SubzoneFelRock()
--	Gnarlpine Hold				FinalFantasylization_SubzoneGnarlpineHold()
--	Lake Al'Ameth				FinalFantasylization_SubzoneLakeAlAmeth()
--	The Oracle Glade			FinalFantasylization_SubzoneTheOracleGlade()
--	Pools of Arlithrien			FinalFantasylization_SubzonePoolsofArlithrien()
--	Starbreeze Village			FinalFantasylization_SubzoneStarbreezeVillage()
--	The Veiled Sea				FinalFantasylization_SubzoneTheVeiledSea()
--	Wellspring Lake				FinalFantasylization_SubzoneWellspringLake()
--	Wellspring River			FinalFantasylization_SubzoneWellspringRiver()
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
			FinalFantasylization_KalimdorTeldrassilResting()
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
			FinalFantasylization_KalimdorTeldrassilSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil: Night Elf Starting Area: Shadowglen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadowglen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_NightElf_Start_Shadowglen()
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
	--' Teldrassil: Night Elf Starting Area: Aldrassil
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Aldrassil"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_NightElf_Start_Aldrassil()
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
	--' Teldrassil: Night Elf Starting Area: Shadowthread Cave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadowthread Cave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NightElf_Start_ShadowthreadCave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Alliance Town: Dolanaar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dolanaar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDolanaar()
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
	--' Teldrassil Alliance Town: Rut'theran Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rut'theran Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownRuttheranVillage()
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
	--' Teldrassil Alliance Town: Wellspring Hovel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wellspring Hovel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownWellspringHovel()
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
	--' Teldrassil Subzone: Ban'ethil Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ban'ethil Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBanethilHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Ban'ethil Barrow Den in Ban'ethil Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ban'ethil Barrow Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBanethilBarrowDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Ban'ethil Barrow Descent in Ban'ethil Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ban'ethil Barrow Descent"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBanethilBarrowDescent()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: The Cleft
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Cleft"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCleft()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Fel Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fel Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFelRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Gnarlpine Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gnarlpine Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGnarlpineHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Lake Al'Ameth
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Al'Ameth"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeAlAmeth()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: The Oracle Glade
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Oracle Glade"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheOracleGlade()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Pools of Arlithrien
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pools of Arlithrien"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePoolsofArlithrien()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Starbreeze Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Starbreeze Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStarbreezeVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: The Veiled Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Veiled Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheVeiledSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Wellspring Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wellspring Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWellspringLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil Subzone: Wellspring River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wellspring River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWellspringRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Teldrassil END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorTeldrassil()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end