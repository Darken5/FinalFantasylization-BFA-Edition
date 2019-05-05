function FinalFantasylization_MaelstromZones_TheLostIsles()
--'==========================================================================================
--' Maelstrom Zones: The Lost Isles : Goblin
--'==========================================================================================
--	Zone: The Lost Isles			FinalFantasylization_MaelstromTheLostIsles()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_MaelstromTheLostIslesResting()
--		Player is Swimming		FinalFantasylization_MaelstromTheLostIslesSwimming()
--
--	Goblin Start:
--	TOWNS:
--	Alliance Beachhead				FinalFantasylization_Goblin_Start_AllianceBeachhead()
--	Horde Base Camp					FinalFantasylization_Goblin_Start_HordeBaseCamp()
--	Shipwreck Shore					FinalFantasylization_Goblin_Start_ShipwreckShore()
--	Town-In-A-Box					FinalFantasylization_Goblin_Start_TownInABox()
--	Warchief's Lookout				FinalFantasylization_Goblin_Start_WarchiefsLookout()
--	Wild Overlook					FinalFantasylization_Goblin_Start_WildOverlook()
--
--	SUBZONES:
--	Bilgewater Lumber Yard		FinalFantasylization_Goblin_Start_BilgewaterLumberYard()
--	Dire Strait					FinalFantasylization_Goblin_Start_DireStrait()
--	Draka's Fury				FinalFantasylization_Goblin_Start_DrakasFury()
--	Gallywix Docks				FinalFantasylization_Goblin_Start_GallywixDocks()
--	Gallywix Labor Mine			FinalFantasylization_Goblin_Start_GallywixLaborMine()
--	The Great Sea				FinalFantasylization_Goblin_Start_TheGreatSea()
--	Kaja'mite Cavern			FinalFantasylization_Goblin_Start_KajamiteCavern()
--	KTC Oil Platform			FinalFantasylization_Goblin_Start_KTCOilPlatform()
--	Landing Site				FinalFantasylization_Goblin_Start_LandingSite()
--	Lost Caldera				FinalFantasylization_Goblin_Start_LostCaldera()
--	Lost Peak					FinalFantasylization_Goblin_Start_LostPeak()
--	Oomlot Village				FinalFantasylization_Goblin_Start_OomlotVillage()
--	Oostan						FinalFantasylization_Goblin_Start_Oostan()
--	Oostan Nord					FinalFantasylization_Goblin_Start_OostanNord()
--	Oostan Ost					FinalFantasylization_Goblin_Start_OostanOst()
--	Oostan Sor					FinalFantasylization_Goblin_Start_OostanSor()
--	Raptor Rise					FinalFantasylization_Goblin_Start_RaptorRise()
--	Ruins of Vashj'elan			FinalFantasylization_Goblin_Start_RuinsofVashjelan()
--	The Savage Glen				FinalFantasylization_Goblin_Start_TheSavageGlen()
--	Scorched Gully				FinalFantasylization_Goblin_Start_ScorchedGully()
--	Sky Falls					FinalFantasylization_Goblin_Start_SkyFalls()
--	The Slave Pits				FinalFantasylization_Goblin_Start_TheSlavePits()
--	Tranquil Coast				FinalFantasylization_Goblin_Start_TranquilCoast()
--	Vashj'elan Spawning Pool	FinalFantasylization_Goblin_Start_VashjelanSpawningPool()
--	Vengeance Wake				FinalFantasylization_Goblin_Start_VengeanceWake()
--	Verdant Highlands			FinalFantasylization_Goblin_Start_VerdantHighlands()
--	The Vicious Vale			FinalFantasylization_Goblin_Start_TheViciousVale()
--	Volcanoth's Lair			FinalFantasylization_Goblin_Start_VolcanothsLair()
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
			FinalFantasylization_MaelstromTheLostIslesResting()
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
			FinalFantasylization_MaelstromTheLostIslesSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Town: Alliance Beachhead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Alliance Beachhead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_AllianceBeachhead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Town: Horde Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Horde Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_HordeBaseCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Town: Shipwreck Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shipwreck Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_ShipwreckShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Town: Town-In-A-Box
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Town-In-A-Box"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TownInABox()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Town: Warchief's Lookout
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Warchief's Lookout"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_WarchiefsLookout()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Town: Wild Overlook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wild Overlook"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_WildOverlook()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Bilgewater Lumber Yard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bilgewater Lumber Yard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_BilgewaterLumberYard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Dire Strait
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dire Strait"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_DireStrait()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Draka's Fury
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Draka's Fury"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_DrakasFury()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Gallywix Docks
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallywix Docks"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_GallywixDocks()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Gallywix Labor Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gallywix Labor Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_GallywixLaborMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: The Great Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Great Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TheGreatSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Kaja'mite Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kaja'mite Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_KajamiteCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: KTC Oil Platform
	--'==========================================================================================
	elseif ( SubZoneName == SZ["KTC Oil Platform"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_KTCOilPlatform()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Landing Site
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Landing Site"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_LandingSite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Lost Caldera
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lost Caldera"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_LostCaldera()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Lost Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lost Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_LostPeak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Oomlot Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Oomlot Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_OomlotVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Oostan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Oostan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_Oostan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Oostan Nord
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Oostan Nord"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_OostanNord()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Oostan Ost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Oostan Ost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_OostanOst()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Oostan Sor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Oostan Sor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_OostanSor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Raptor Rise
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Raptor Rise"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_RaptorRise()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Ruins of Vashj'elan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Vashj'elan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_RuinsofVashjelan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: The Savage Glen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Savage Glen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TheSavageGlen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Scorched Gully
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scorched Gully"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_ScorchedGully()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Sky Falls
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sky Falls"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_SkyFalls()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: The Slave Pits
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Slave Pits"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TheSlavePits()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Tranquil Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tranquil Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TranquilCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Vashj'elan Spawning Pool
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vashj'elan Spawning Pool"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_VashjelanSpawningPool()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Vengeance Wake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vengeance Wake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_VengeanceWake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Verdant Highlands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Verdant Highlands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_VerdantHighlands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: The Vicious Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Vicious Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_TheViciousVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles: Goblin Starting Area: Volcanoth's Lair
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Volcanoth's Lair"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Goblin_Start_VolcanothsLair()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Lost Isles END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_MaelstromTheLostIsles()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end