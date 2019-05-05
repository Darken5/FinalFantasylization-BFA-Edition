function FinalFantasylization_KalimdorZones_Darkshore()
--'==========================================================================================
--' Kalimdor Zones: Darkshore : Alliance
--'==========================================================================================
--	Zone: Darkshore				FinalFantasylization_KalimdorDarkshore()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorDarkshoreResting()
--		Player is Swimming		FinalFantasylization_KalimdorDarkshoreSwimming()
--
--	TOWNS:
--	Alliance:
--		Auberdine Refugee Camp		FinalFantasylization_AllianceTownAuberdineRefugeeCamp()
--		Grove of the Ancients		FinalFantasylization_AllianceTownGroveoftheAncients()
--		Lor'danel					FinalFantasylization_AllianceTownLordanel()
--
--	SUBZONES:
--	Ameth'Aran					FinalFantasylization_SubzoneAmethAran()
--	Bashal'Aran					FinalFantasylization_SubzoneBashalAran()
--	Bashal'Aran Collapse		FinalFantasylization_SubzoneBashalAranCollapse()
--	Blackwood Camp				FinalFantasylization_SubzoneBlackwoodCamp()
--	Blackwood Den				FinalFantasylization_SubzoneBlackwoodDen()
--	The Blazing Strand			FinalFantasylization_SubzoneTheBlazingStrand()
--	Cliffspring Falls			FinalFantasylization_SubzoneCliffspringFalls()
--	Cliffspring Hollow			FinalFantasylization_SubzoneCliffspringHollow()
--	Cliffspring River			FinalFantasylization_SubzoneCliffspringRiver()
--	Earthshatter Cavern			FinalFantasylization_SubzoneEarthshatterCavern()
--	The Eye of the Vortex		FinalFantasylization_SubzoneTheEyeoftheVortex()
--	The Long Wash				FinalFantasylization_SubzoneTheLongWash()
--	The Master's Glaive			FinalFantasylization_SubzoneTheMastersGlaive()
--	Maw of the Void				FinalFantasylization_SubzoneMawoftheVoid()
--	Mist's Edge					FinalFantasylization_SubzoneMistsEdge()
--	Moontouched Den				FinalFantasylization_SubzoneMoontouchedDen()
--	Nazj'vel					FinalFantasylization_SubzoneNazjvel()
--	Remtravel's Excavation		FinalFantasylization_SubzoneRemtravelsExcavation()
--	Ruins of Auberdine			FinalFantasylization_SubzoneRuinsofAuberdine()
--	Ruins of Lornesta			FinalFantasylization_SubzoneRuinsofLornesta()
--	Ruins of Mathystra			FinalFantasylization_SubzoneRuinsofMathystra()
--	Shatterspear Pass			FinalFantasylization_SubzoneShatterspearPass()
--	Shatterspear Vale			FinalFantasylization_SubzoneShatterspearVale()
--	Shatterspear War Camp		FinalFantasylization_SubzoneShatterspearWarCamp()
--	Tower of Althalaxx			FinalFantasylization_SubzoneTowerofAlthalaxx()
--	Twilight Shore				FinalFantasylization_SubzoneTwilightShore()
--	Twilight Vale				FinalFantasylization_SubzoneTwilightVale()
--	The Veiled Sea				FinalFantasylization_SubzoneTheVeiledSea()
--	Wildbend River				FinalFantasylization_SubzoneWildbendRiver()
--	Withering Thicket			FinalFantasylization_SubzoneWitheringThicket()
--	Wreckage of the Silver Dawning		FinalFantasylization_SubzoneWreckageoftheSilverDawning()
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
			FinalFantasylization_KalimdorDarkshoreResting()
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
			FinalFantasylization_KalimdorDarkshoreSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Alliance Town: Auberdine Refugee Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Auberdine Refugee Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownAuberdineRefugeeCamp()
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
	--' Darkshore Alliance Town: Grove of the Ancients
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grove of the Ancients"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGroveoftheAncients()
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
	--' Darkshore Alliance Town: Lor'danel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lor'danel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownLordanel()
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
	--' Darkshore Subzone: Ameth'Aran
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ameth'Aran"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmethAran()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Bashal'Aran
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bashal'Aran"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBashalAran()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Bashal'Aran Collapse
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bashal'Aran Collapse"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBashalAranCollapse()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Blackwood Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackwood Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackwoodCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Blackwood Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackwood Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackwoodDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: The Blazing Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Blazing Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBlazingStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Cliffspring Falls
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cliffspring Falls"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCliffspringFalls()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Cliffspring Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cliffspring Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCliffspringHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Cliffspring River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cliffspring River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCliffspringRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Earthshatter Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Earthshatter Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEarthshatterCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: The Eye of the Vortex
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Eye of the Vortex"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheEyeoftheVortex()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: The Long Wash
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Long Wash"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheLongWash()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: The Master's Glaive
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Master's Glaive"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMastersGlaive()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Maw of the Void
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Maw of the Void"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMawoftheVoid()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Mist's Edge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mist's Edge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMistsEdge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Moontouched Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moontouched Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoontouchedDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Nazj'vel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nazj'vel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNazjvel()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Remtravel's Excavation
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Remtravel's Excavation"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRemtravelsExcavation()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Ruins of Auberdine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Auberdine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofAuberdine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Ruins of Lornesta
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Lornesta"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofLornesta()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Ruins of Mathystra
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Mathystra"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofMathystra()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Shatterspear Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shatterspear Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShatterspearPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Shatterspear Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shatterspear Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShatterspearVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Shatterspear War Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shatterspear War Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShatterspearWarCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Tower of Althalaxx
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tower of Althalaxx"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTowerofAlthalaxx()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Twilight Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Twilight Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTwilightShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Twilight Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Twilight Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTwilightVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: The Veiled Sea
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
	--' Darkshore Subzone: Wildbend River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wildbend River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWildbendRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Withering Thicket
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Withering Thicket"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWitheringThicket()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore Subzone: Wreckage of the Silver Dawning
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wreckage of the Silver Dawning"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWreckageoftheSilverDawning()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Darkshore END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorDarkshore()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end