function FinalFantasylization_KalimdorZones_BloodmystIsle()
--'==========================================================================================
--' Kalimdor Zones: Bloodmyst Isle
--'==========================================================================================
--	Zone: Bloodmyst Isle	FinalFantasylization_KalimdorBloodmystIsle()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorBloodmystIsleResting()
--		Player is Swimming		FinalFantasylization_KalimdorBloodmystIsleSwimming()
--
--	TOWNS:
--	Alliance:
--		Blood Watch				FinalFantasylization_AllianceTownBloodWatch()
--		Kessel's Crossing		FinalFantasylization_AllianceTownKesselsCrossing()
--		Vindicator's Rest		FinalFantasylization_AllianceTownVindicatorsRest()
--
--	SUBZONES:
--	Amberweb Pass			FinalFantasylization_SubzoneAmberwebPass()
--	Axxarien				FinalFantasylization_SubzoneAxxarien()
--	Beryl Coast				FinalFantasylization_SubzoneBerylCoast()
--	Blacksilt Shore			FinalFantasylization_SubzoneBlacksiltShore()
--	Bladewood				FinalFantasylization_SubzoneBladewood()
--	Bloodcurse Isle			FinalFantasylization_SubzoneBloodcurseIsle()
--	The Bloodcursed Reef	FinalFantasylization_SubzoneTheBloodcursedReef()
--	The Bloodwash			FinalFantasylization_SubzoneTheBloodwash()
--	Bristlelimb Enclave		FinalFantasylization_SubzoneBristlelimbEnclave()
--	The Crimson Reach		FinalFantasylization_SubzoneTheCrimsonReach()
--	The Cryo-Core			FinalFantasylization_SubzoneTheCryoCore()
--	The Foul Pool			FinalFantasylization_SubzoneTheFoulPool()
--	The Hidden Reef			FinalFantasylization_SubzoneTheHiddenReef()
--	The Lost Fold			FinalFantasylization_SubzoneTheLostFold()
--	Middenvale				FinalFantasylization_SubzoneMiddenvale()
--	Mystwood				FinalFantasylization_SubzoneMystwood()
--	Nazzivian				FinalFantasylization_SubzoneNazzivian()
--	Ragefeather Ridge		FinalFantasylization_SubzoneRagefeatherRidge()
--	Ruins of Loreth'Aran	FinalFantasylization_SubzoneRuinsofLorethAran()
--	Talon Stand				FinalFantasylization_SubzoneTalonStand()
--	Tel'athion's Camp		FinalFantasylization_SubzoneTelathionsCamp()
--	The Veiled Sea			FinalFantasylization_SubzoneTheVeiledSea()
--	The Vector Coil			FinalFantasylization_SubzoneTheVectorCoil()
--	Veridian Point			FinalFantasylization_SubzoneVeridianPoint()
--	The Warp Piston			FinalFantasylization_SubzoneTheWarpPiston()
--	Wrathscale Lair			FinalFantasylization_SubzoneWrathscaleLair()
--	Wyrmscar Island			FinalFantasylization_SubzoneWyrmscarIsland()
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
			FinalFantasylization_KalimdorBloodmystIsleResting()
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
			FinalFantasylization_KalimdorBloodmystIsleSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Alliance Town: Blood Watch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blood Watch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownBloodWatch()
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
	--' Bloodmyst Isle Alliance Town: Kessel's Crossing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kessel's Crossing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownKesselsCrossing()
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
	--' Bloodmyst Isle Alliance Town: Vindicator's Rest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vindicator's Rest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownVindicatorsRest()
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
	--' Bloodmyst Isle Subzone: Amberweb Pass
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Amberweb Pass"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmberwebPass()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Axxarien
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Axxarien"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAxxarien()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Beryl Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Beryl Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBerylCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Blacksilt Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blacksilt Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlacksiltShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Bladewood
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bladewood"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBladewood()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Bloodcurse Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodcurse Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodcurseIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Bloodcursed Reef
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Bloodcursed Reef"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBloodcursedReef()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Bloodwash
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Bloodwash"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBloodwash()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Bristlelimb Enclave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bristlelimb Enclave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBristlelimbEnclave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Crimson Reach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Crimson Reach"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCrimsonReach()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Cryo-Core
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Cryo-Core"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCryoCore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Foul Pool
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Foul Pool"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheFoulPool()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Hidden Reef
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Hidden Reef"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheHiddenReef()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Lost Fold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Lost Fold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheLostFold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Middenvale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Middenvale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMiddenvale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Mystwood
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mystwood"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMystwood()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Nazzivian
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nazzivian"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNazzivian()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Ragefeather Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ragefeather Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRagefeatherRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Ruins of Loreth'Aran
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Loreth'Aran"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofLorethAran()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Talon Stand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Talon Stand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTalonStand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Tel'athion's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tel'athion's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTelathionsCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Veiled Sea
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
	--' Bloodmyst Isle Subzone: The Vector Coil
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Vector Coil"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheVectorCoil()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Veridian Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Veridian Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVeridianPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: The Warp Piston
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Warp Piston"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheWarpPiston()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Wrathscale Lair
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wrathscale Lair"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWrathscaleLair()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle Subzone: Wyrmscar Island
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wyrmscar Island"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWyrmscarIsland()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Bloodmyst Isle END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorBloodmystIsle()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end