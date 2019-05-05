function FinalFantasylization_EasternKingdomsZones_StormwindCity()
--'==========================================================================================
--' Eastern Kingdoms Capital: Stormwind City : Alliance
--'==========================================================================================
--	Zone: Stormwind City		FinalFantasylization_EasternKingdoms_StormwindCity()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdoms_StormwindCityResting()
--		Player is Swimming		FinalFantasylization_EasternKingdoms_StormwindCitySwimming()
--
--	SUBZONES:
--	The Canals							FinalFantasylization_StormwindCity_SubzoneTheCanals()
--	Cathedral Square					FinalFantasylization_StormwindCity_SubzoneCathedralSquare()
--		Cathedral of Light					FinalFantasylization_StormwindCity_SubzoneCathedralofLight()
--	Dwarven District					FinalFantasylization_StormwindCity_SubzoneDwarvenDistrict()
--		Cut-Throat Alley					FinalFantasylization_StormwindCity_SubzoneCutThroatAlley()
--	Mage Quarter						FinalFantasylization_StormwindCity_SubzoneMageQuarter()
--		The Slaughtered Lamb				FinalFantasylization_StormwindCity_SubzoneTheSlaughteredLamb()
--		Wizard's Sanctum					FinalFantasylization_StormwindCity_SubzoneWizardsSanctum()
--	The Old Barracks					FinalFantasylization_StormwindCity_SubzoneTheOldBarracks()
--	Old Town							FinalFantasylization_StormwindCity_SubzoneOldTown()
--		Champions' Hall						FinalFantasylization_StormwindCity_SubzoneChampionsHall()
--		Command Center						FinalFantasylization_StormwindCity_SubzoneCommandCenter()
--		SI:7								FinalFantasylization_StormwindCity_SubzoneSI7()
--	Stormwind City Cemetery				FinalFantasylization_StormwindCity_SubzoneStormwindCityCemetery()
--	Stormwind City Outskirts			FinalFantasylization_StormwindCity_SubzoneStormwindCityOutskirts()
--		Lion's Rest							FinalFantasylization_StormwindCity_SubzoneLionsRest()
--		Olivia's Pond						FinalFantasylization_StormwindCity_SubzoneOliviasPond()
--		The Wollerton Stead					FinalFantasylization_StormwindCity_SubzoneTheWollertonStead()
--		The Eastern Earthshrine				FinalFantasylization_StormwindCity_SubzoneTheEasternEarthshrine()
--	Stormwind Harbor					FinalFantasylization_StormwindCity_SubzoneStormwindHarbor()
--	Stormwind Keep						FinalFantasylization_StormwindCity_SubzoneStormwindKeep()
--		Petitioner's Chamber				FinalFantasylization_StormwindCity_SubzonePetitionersChamber()
--		Royal Gallery						FinalFantasylization_StormwindCity_SubzoneRoyalGallery()
--		Royal Library						FinalFantasylization_StormwindCity_SubzoneRoyalLibrary()
--		War Room							FinalFantasylization_StormwindCity_SubzoneWarRoom()
--	Stormwind Lake						FinalFantasylization_StormwindCity_SubzoneStormwindLake()
--	Trade District						FinalFantasylization_StormwindCity_SubzoneTradeDistrict()
--		Gryphon Roost						FinalFantasylization_StormwindCity_SubzoneGryphonRoost()
--	Valley of Heroes					FinalFantasylization_StormwindCity_SubzoneValleyofHeroes()
	--'==========================================================================================
	--' Stormwind City: Alliance Check
	--'==========================================================================================
	if ( factionEnglish == "Alliance" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_EasternKingdoms_StormwindCityResting()
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
				FinalFantasylization_EasternKingdoms_StormwindCitySwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: The Canals
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Canals"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneTheCanals()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Cathedral Square
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Cathedral Square"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneCathedralSquare()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Cathedral of Light in Cathedral Square
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Cathedral of Light"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneCathedralofLight()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Dwarven District
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Dwarven District"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneDwarvenDistrict()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Cut-Throat Alley in Dwarven District
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Cut-Throat Alley"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneCutThroatAlley()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Mage Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Mage Quarter"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneMageQuarter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: The Slaughtered Lamb in Mage Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Slaughtered Lamb"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneTheSlaughteredLamb()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Wizard's Sanctum in Mage Quarter
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Wizard's Sanctum"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneWizardsSanctum()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: The Old Barracks
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Old Barracks"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneTheOldBarracks()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Old Town
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Old Town"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneOldTown()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Champions' Hall in Old Town
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Champions' Hall"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneChampionsHall()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Command Center in Old Town
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Command Center"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneCommandCenter()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: SI:7 in Old Town
	--'==========================================================================================
		elseif ( SubZoneName == SZ["SI:7"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneSI7()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Stormwind City Cemetery
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Stormwind City Cemetery"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneStormwindCityCemetery()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Stormwind City Outskirts
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Stormwind City Outskirts"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneStormwindCityOutskirts()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Lion's Rest in Stormwind City Outskirts
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Lion's Rest"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneLionsRest()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Olivia's Pond in Stormwind City Outskirts
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Olivia's Pond"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneOliviasPond()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: The Wollerton Stead in Stormwind City Outskirts
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Wollerton Stead"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneTheWollertonStead()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: The Eastern Earthshrine in Stormwind City Outskirts
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Eastern Earthshrine"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneTheEasternEarthshrine()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Stormwind Harbor
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Stormwind Harbor"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneStormwindHarbor()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Stormwind Keep
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Stormwind Keep"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneStormwindKeep()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Petitioner's Chamber in Stormwind Keep
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Petitioner's Chamber"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzonePetitionersChamber()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Royal Gallery in Stormwind Keep
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Royal Gallery"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneRoyalGallery()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Royal Library in Stormwind Keep
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Royal Library"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneRoyalLibrary()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: War Room in Stormwind Keep
	--'==========================================================================================
		elseif ( SubZoneName == SZ["War Room"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneWarRoom()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Stormwind Lake
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Stormwind Lake"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneStormwindLake()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Trade District
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Trade District"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneTradeDistrict()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Gryphon Roost in Trade District
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Gryphon Roost"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneGryphonRoost()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City: Valley of Heroes
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Valley of Heroes"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_StormwindCity_SubzoneValleyofHeroes()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Stormwind City END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_EasternKingdoms_StormwindCity()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Stormwind City: Horde Check
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