function FinalFantasylization_KalimdorZones_Durotar()
--'==========================================================================================
--' Kalimdor Zones: Durotar : Horde
--'==========================================================================================
--	Zone: Durotar					FinalFantasylization_KalimdorDurotar()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorDurotarResting()
--		Player is Swimming		FinalFantasylization_KalimdorDurotarSwimming()
--
--	TOWNS:
--	Orc Start:
--		Valley of Trials				FinalFantasylization_Orc_Start_ValleyofTrials()
--			Burning Blade Coven				FinalFantasylization_Orc_Start_BurningBladeCoven()
--			The Den							FinalFantasylization_Orc_Start_TheDen()
--	Troll Start:
--		Echo Isles						FinalFantasylization_Troll_Start_EchoIsles()
--			Bloodtalon Shore				FinalFantasylization_Troll_Start_BloodtalonShore()
--			Darkspear Isle					FinalFantasylization_Troll_Start_DarkspearIsle()
--				Darkspear Hold					FinalFantasylization_Troll_Start_DarkspearHold()
--				Darkspear Shore					FinalFantasylization_Troll_Start_DarkspearShore()
--				Darkspear Training Grounds		FinalFantasylization_Troll_Start_DarkspearTrainingGrounds()
--			Spitescale Cove					FinalFantasylization_Troll_Start_SpitescaleCove()
--				Spitescale Cavern					FinalFantasylization_Troll_Start_SpitescaleCavern()
--				Zalazane's Fall					FinalFantasylization_Troll_Start_ZalazanesFall()
--	Horde:
--		Razor Hill						FinalFantasylization_HordeTownRazorHill()
--			Razor Hill Barracks				FinalFantasylization_HordeTownRazorHillBarracks()
--		Razor Hill Outskirts			FinalFantasylization_HordeTownRazorHillOutskirts()
--			Razor Hill Watchtower			FinalFantasylization_HordeTownRazorHillWatchtower()
--		Sen'jin Village					FinalFantasylization_HordeTownSenjinVillage()
--		Sen'jin Village Outskirts		FinalFantasylization_HordeTownSenjinVillageOutskirts()
--
--	SUBZONES:
--	Bladefist Bay					FinalFantasylization_SubzoneBladefistBay()
--	Darkspear Strand				FinalFantasylization_SubzoneDarkspearStrand()
--	Deadeye Shore					FinalFantasylization_SubzoneDeadeyeShore()
--	The Dranosh'ar Blockade			FinalFantasylization_SubzoneTheDranosharBlockade()
--	Drygulch Ravine					FinalFantasylization_SubzoneDrygulchRavine()
--	Dustwind Cave					FinalFantasylization_SubzoneDustwindCave()
--	The Great Sea					FinalFantasylization_SubzoneTheGreatSea()
--	Hidden Path						FinalFantasylization_SubzoneHiddenPath()
--	Jaggedswine Farm				FinalFantasylization_SubzoneJaggedswineFarm()
--	Northwatch Foothold				FinalFantasylization_SubzoneNorthwatchFoothold()
--	Razormane Grounds				FinalFantasylization_SubzoneRazormaneGrounds()
--	Razorwind Canyon				FinalFantasylization_SubzoneRazorwindCanyon()
--	Rocktusk Farm					FinalFantasylization_SubzoneRocktuskFarm()
--	Scuttle Coast					FinalFantasylization_SubzoneScuttleCoast()
--	Shrine of the Dormant Flame		FinalFantasylization_SubzoneShrineoftheDormantFlame()
--	Skull Rock						FinalFantasylization_SubzoneSkullRock()
--	Southfury River					FinalFantasylization_SubzoneSouthfuryRiver()
--	Southfury Watershed				FinalFantasylization_SubzoneSouthfuryWatershed()
--	Spirit Rock						FinalFantasylization_SubzoneSpiritRock()
--	Thunder Ridge					FinalFantasylization_SubzoneThunderRidge()
--	Tiragarde Keep					FinalFantasylization_SubzoneTiragardeKeep()
--	Tor'kren Farm					FinalFantasylization_SubzoneTorkrenFarm()
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
			FinalFantasylization_KalimdorDurotarResting()
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
			FinalFantasylization_KalimdorDurotarSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mulgore: Orc Starting Area: Valley of Trials
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of Trials"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Orc_Start_ValleyofTrials()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Orc Starting Area: Burning Blade Coven
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Burning Blade Coven"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Orc_Start_BurningBladeCoven()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Orc Starting Area: The Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Orc_Start_TheDen()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Echo Isles
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Echo Isles"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Troll_Start_EchoIsles()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Bloodtalon Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodtalon Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Troll_Start_BloodtalonShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Darkspear Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkspear Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Troll_Start_DarkspearIsle()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Darkspear Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkspear Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Troll_Start_DarkspearHold()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Darkspear Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkspear Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Troll_Start_DarkspearShore()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Darkspear Training Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkspear Training Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Troll_Start_DarkspearTrainingGrounds()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Spitescale Cove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Spitescale Cove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Troll_Start_SpitescaleCove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Spitescale Cavern in Spitescale Cove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Spitescale Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Troll_Start_SpitescaleCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar: Troll Starting Area: Zalazane's Fall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zalazane's Fall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Troll_Start_ZalazanesFall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Horde Town: Razor Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Razor Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRazorHill()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Horde Town: Razor Hill Barracks in Razor Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Razor Hill Barracks"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRazorHillBarracks()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Horde Town: Razor Hill Outskirts
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Razor Hill Outskirts"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRazorHillOutskirts()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Horde Town: Razor Hill Watchtower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Razor Hill Watchtower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRazorHillWatchtower()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Horde Town: Sen'jin Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sen'jin Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSenjinVillage()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Horde Town: Sen'jin Village Outskirts
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sen'jin Village Outskirts"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownSenjinVillageOutskirts()
			elseif ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. SubZoneName..", "..ZoneName..PlayerInHostile)
				FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
			end
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Bladefist Bay
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bladefist Bay"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBladefistBay()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Darkspear Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkspear Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDarkspearStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Deadeye Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Deadeye Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDeadeyeShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: The Dranosh'ar Blockade
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dranosh'ar Blockade"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDranosharBlockade()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Drygulch Ravine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Drygulch Ravine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDrygulchRavine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Dustwind Cave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dustwind Cave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDustwindCave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: The Great Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Great Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGreatSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Hidden Path
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hidden Path"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHiddenPath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Jaggedswine Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jaggedswine Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJaggedswineFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Northwatch Foothold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Northwatch Foothold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthwatchFoothold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Razormane Grounds
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Razormane Grounds"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRazormaneGrounds()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Razorwind Canyon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Razorwind Canyon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRazorwindCanyon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Rocktusk Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rocktusk Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRocktuskFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Scuttle Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scuttle Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScuttleCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Shrine of the Dormant Flame
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shrine of the Dormant Flame"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShrineoftheDormantFlame()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Skull Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Skull Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSkullRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Southfury River
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southfury River"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthfuryRiver()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Southfury Watershed
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southfury Watershed"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthfuryWatershed()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Spirit Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Spirit Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSpiritRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Thunder Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thunder Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThunderRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Tiragarde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tiragarde Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTiragardeKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar Subzone: Tor'kren Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tor'kren Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTorkrenFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Durotar END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_KalimdorDurotar()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end