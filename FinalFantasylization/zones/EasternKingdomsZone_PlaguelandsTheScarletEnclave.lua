function FinalFantasylization_EasternKingdomsZones_PlaguelandsTheScarletEnclave()
--'==========================================================================================
--' Eastern Kingdoms Zones: Plaguelands: The Scarlet Enclave : Death Knight Start
--'==========================================================================================
--	Zone: Plaguelands: The Scarlet Enclave				FinalFantasylization_EasternKingdomsPlaguelandsTheScarletEnclave()
--
--	Zone Events:
--		Player is Swimming		FinalFantasylization_EasternKingdomsPlaguelandsTheScarletEnclaveSwimming()
--
--	SUBZONES:
--		Acherus: The Ebon Hold			FinalFantasylization_DeathKnight_Start_AcherusTheEbonHold()
--			Hall of Command				FinalFantasylization_DeathKnight_Start_HallofCommand()
--			The Heart of Acherus		FinalFantasylization_DeathKnight_Start_TheHeartofAcherus()
--		Browman Mill					FinalFantasylization_DeathKnight_Start_BrowmanMill()
--		Crypt of Remembrance			FinalFantasylization_DeathKnight_Start_CryptofRemembrance()
--		Death's Breach					FinalFantasylization_DeathKnight_Start_DeathsBreach()
--		Havenshire						FinalFantasylization_DeathKnight_Start_Havenshire()
--			Havenshire Farms				FinalFantasylization_DeathKnight_Start_HavenshireFarms()
--			Havenshire Lumber Mill			FinalFantasylization_DeathKnight_Start_HavenshireLumberMill()
--			Havenshire Mine					FinalFantasylization_DeathKnight_Start_HavenshireMine()
--			Havenshire Stables				FinalFantasylization_DeathKnight_Start_HavenshireStables()
--		King's Harbor					FinalFantasylization_DeathKnight_Start_KingsHarbor()
--		Light's Hope Chapel				FinalFantasylization_DeathKnight_Start_LightsHopeChapel()
--		Light's Point					FinalFantasylization_DeathKnight_Start_LightsPoint()
--			Light's Point Tower				FinalFantasylization_DeathKnight_Start_LightsPointTower()
--		New Avalon						FinalFantasylization_DeathKnight_Start_NewAvalon()
--			Chapel of the Crimson Flame		FinalFantasylization_DeathKnight_Start_ChapeloftheCrimsonFlame()
--			New Avalon Forge				FinalFantasylization_DeathKnight_Start_NewAvalonForge()
--			New Avalon Orchard				FinalFantasylization_DeathKnight_Start_NewAvalonOrchard()
--			New Avalon Town Hall			FinalFantasylization_DeathKnight_Start_NewAvalonTownHall()
--			Scarlet Hold					FinalFantasylization_DeathKnight_Start_ScarletHold()
--			Scarlet Tavern					FinalFantasylization_DeathKnight_Start_ScarletTavern()
--		The Noxious Glade				FinalFantasylization_DeathKnight_Start_TheNoxiousGlade()
--		Pestilent Scar				FinalFantasylization_DeathKnight_Start_PestilentScar()
--		Scarlet Overlook			FinalFantasylization_DeathKnight_Start_ScarletOverlook()
--		Tyr's Hand						FinalFantasylization_DeathKnight_Start_TyrsHand()
--			The Scarlet Basilica			FinalFantasylization_DeathKnight_Start_TheScarletBasilica()
--			Tyr's Hand Abbey				FinalFantasylization_DeathKnight_Start_TyrsHandAbbey()
--				Hall of Arms					FinalFantasylization_DeathKnight_Start_HallofArms()
--				Library Wing					FinalFantasylization_DeathKnight_Start_LibraryWing()
--				Main Hall						FinalFantasylization_DeathKnight_Start_MainHall()
	--'==========================================================================================
	--'	Zone Event: Player is Swimming
	--'==========================================================================================
	if IsSwimming() and FinalFantasylizationOptions.Swim == true then
		if FinalFantasylization_CurrentZone ~= "Swimming" then
			FinalFantasylization_CurrentZone = "Swimming"
			FinalFantasylization_EasternKingdomsPlaguelandsTheScarletEnclaveSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Acherus: The Ebon Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Acherus: The Ebon Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_AcherusTheEbonHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Hall of Command
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hall of Command"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_HallofCommand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - The Heart of Acherus
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Heart of Acherus"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_TheHeartofAcherus()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Browman Mill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Browman Mill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_BrowmanMill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Crypt of Remembrance
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crypt of Remembrance"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_CryptofRemembrance()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Death's Breach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Death's Breach"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_DeathsBreach()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Havenshire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Havenshire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_Havenshire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Havenshire Farms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Havenshire Farms"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_HavenshireFarms()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Havenshire Lumber Mill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Havenshire Lumber Mill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_HavenshireLumberMill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Havenshire Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Havenshire Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_HavenshireMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Havenshire Stables
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Havenshire Stables"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_HavenshireStables()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - King's Harbor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["King's Harbor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_KingsHarbor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Light's Hope Chapel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Light's Hope Chapel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_LightsHopeChapel()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Light's Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Light's Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_LightsPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Light's Point Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Light's Point Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_LightsPointTower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - New Avalon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Avalon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_NewAvalon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Chapel of the Crimson Flame
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chapel of the Crimson Flame"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_ChapeloftheCrimsonFlame()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - New Avalon Forge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Avalon Forge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_NewAvalonForge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - New Avalon Orchard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Avalon Orchard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_NewAvalonOrchard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - New Avalon Town Hall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Avalon Town Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_NewAvalonTownHall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Scarlet Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_ScarletHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Scarlet Tavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Tavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_ScarletTavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - The Noxious Glade
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Noxious Glade"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_TheNoxiousGlade()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Pestilent Scar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pestilent Scar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_PestilentScar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Scarlet Overlook
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Overlook"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_ScarletOverlook()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Tyr's Hand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tyr's Hand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_TyrsHand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - The Scarlet Basilica
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Scarlet Basilica"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_TheScarletBasilica()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Tyr's Hand Abbey
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tyr's Hand Abbey"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_TyrsHandAbbey()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Hall of Arms
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hall of Arms"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_HallofArms()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Library Wing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Library Wing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_LibraryWing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave - Death Knight Starting Area - Main Hall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Main Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_DeathKnight_Start_MainHall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Plaguelands: The Scarlet Enclave END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsPlaguelandsTheScarletEnclave()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end