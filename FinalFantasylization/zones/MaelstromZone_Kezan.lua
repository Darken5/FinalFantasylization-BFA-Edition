function FinalFantasylization_MaelstromZones_Kezan()
--'==========================================================================================
--' Maelstrom Zones: Kezan : Goblin
--'==========================================================================================
--	Zone: Kezan				FinalFantasylization_Maelstrom_Kezan()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_Maelstrom_KezanResting()
--		Player is Swimming		FinalFantasylization_Maelstrom_KezanSwimming()
--
--	Goblin Start:
--		Bilgewater Port			FinalFantasylization_Goblin_Start_BilgewaterPort()
--		Drudgetown				FinalFantasylization_Goblin_Start_Drudgetown()
--		First Bank of Kezan		FinalFantasylization_Goblin_Start_FirstBankofKezan()
--		Gallywix's Villa		FinalFantasylization_Goblin_Start_GallywixsVilla()
--		Gallywix's Yacht		FinalFantasylization_Goblin_Start_GallywixsYacht()
--		Kaja'mine				FinalFantasylization_Goblin_Start_Kajamine()
--		Kajaro Field			FinalFantasylization_Goblin_Start_KajaroField()
--		KTC Headquarters		FinalFantasylization_Goblin_Start_KTCHeadquarters()
--		The Slick				FinalFantasylization_Goblin_Start_TheSlick()
--		South Seas				FinalFantasylization_Goblin_Start_SouthSeas()
--		Swindle Street			FinalFantasylization_Goblin_Start_SwindleStreet()
--		The Pipe				FinalFantasylization_Goblin_Start_ThePipe()
	--'==========================================================================================
	--'	Zone Event: Player is Resting
	--'==========================================================================================
	if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
		if FinalFantasylization_CurrentZone ~= "Sleeping" then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
			FinalFantasylization_CurrentZone = "Sleeping"
			FinalFantasylization_Maelstrom_KezanResting()
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
			FinalFantasylization_Maelstrom_KezanSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Bilgewater Port
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bilgewater Port"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_BilgewaterPort()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Drudgetown
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Drudgetown"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_Drudgetown()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: First Bank of Kezan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["First Bank of Kezan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_FirstBankofKezan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Gallywix's Villa
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallywix's Villa"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_GallywixsVilla()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Gallywix's Yacht
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallywix's Yacht"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_GallywixsYacht()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Kaja'mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kaja'mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_Kajamine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Kajaro Field
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kajaro Field"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_KajaroField()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: KTC Headquarters
	--'==========================================================================================
	elseif ( SubZoneName == SZ["KTC Headquarters"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_KTCHeadquarters()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: The Slick
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Slick"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TheSlick()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: South Seas
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Seas"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_SouthSeas()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: Swindle Street
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Swindle Street"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_SwindleStreet()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan: Goblin Starting Area: The Pipe
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of Trials"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_ThePipe()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Kezan END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_Maelstrom_Kezan()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end