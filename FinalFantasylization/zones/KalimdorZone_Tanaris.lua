function FinalFantasylization_KalimdorZones_Tanaris()
--'==========================================================================================
--' Kalimdor Zones: Tanaris
--'==========================================================================================
--	Zone: Tanaris			FinalFantasylization_KalimdorTanaris()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorTanarisResting()
--		Player is Swimming		FinalFantasylization_KalimdorTanarisSwimming()
--
--	TOWNS:
--	Alliance:
--		Gunstan's Dig					FinalFantasylization_AllianceTownGunstansDig()
--		Steelspark Station				FinalFantasylization_AllianceTownSteelsparkStation()
--	Horde:
--		Dawnrise Expedition				FinalFantasylization_HordeTownDawnriseExpedition()
--		Dunemaul Recruitment Camp		FinalFantasylization_HordeTownDunemaulRecruitmentCamp()
--	Neutral
--		Bootlegger Outpost				FinalFantasylization_NeutralTownBootleggerOutpost()
--		Gadgetzan						FinalFantasylization_NeutralTownGadgetzan()
--			The Road Warrior				FinalFantasylization_NeutralTownTheRoadWarrior()
--
--	SUBZONES:
--	Abyssal Sands				FinalFantasylization_SubzoneAbyssalSands()
--	Broken Pillar				FinalFantasylization_SubzoneBrokenPillar()
--	Caverns of Time				FinalFantasylization_SubzoneCavernsofTime()
--	The Deserted Workshop		FinalFantasylization_SubzoneTheDesertedWorkshop()
--	Dunemaul Compound			FinalFantasylization_SubzoneDunemaulCompound()
--	Eastmoon Ruins				FinalFantasylization_SubzoneEastmoonRuins()
--	The Gaping Chasm			FinalFantasylization_SubzoneTheGapingChasm()
--	Land's End Beach			FinalFantasylization_SubzoneLandsEndBeach()
--	Lost Rigger Cove			FinalFantasylization_SubzoneLostRiggerCove()
--	Noonshade Ruins				FinalFantasylization_SubzoneNoonshadeRuins()
--	The Noxious Lair			FinalFantasylization_SubzoneTheNoxiousLair()
--	Sandsorrow Watch			FinalFantasylization_SubzoneSandsorrowWatch()
--	South Seas					FinalFantasylization_SubzoneSouthSeas()
--	Southbreak Shore			FinalFantasylization_SubzoneSouthbreakShore()
--	Southmoon Ruins				FinalFantasylization_SubzoneSouthmoonRuins()
--	Steamwheedle Port			FinalFantasylization_SubzoneSteamwheedlePort()
--	Thistleshrub Valley			FinalFantasylization_SubzoneThistleshrubValley()
--	Valley of the Watchers		FinalFantasylization_SubzoneValleyoftheWatchers()
--		Ruins of Uldum				FinalFantasylization_SubzoneRuinsofUldum()
--	Waterspring Field			FinalFantasylization_SubzoneWaterspringField()
--	Wavestrider Beach			FinalFantasylization_SubzoneWavestriderBeach()
--		Zalashji's Den				FinalFantasylization_SubzoneZalashjisDen()
--	Zul'Farrak					FinalFantasylization_SubzoneZulFarrak()
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
			FinalFantasylization_KalimdorTanarisResting()
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
			FinalFantasylization_KalimdorTanarisSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Alliance Town: Gunstan's Dig
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gunstan's Dig"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownGunstansDig()
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
	--' Tanaris Alliance Town: Steelspark Station
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Steelspark Station"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownSteelsparkStation()
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
	--' Tanaris Horde Town: Dawnrise Expedition
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dawnrise Expedition"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownDawnriseExpedition()
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
	--' Tanaris Horde Town: Dunemaul Recruitment Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dunemaul Recruitment Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownDunemaulRecruitmentCamp()
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
	--' Tanaris Neutral Town: Bootlegger Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bootlegger Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownBootleggerOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Neutral Town: Gadgetzan
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gadgetzan"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownGadgetzan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Neutral Town: The Road Warrior
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Road Warrior"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownTheRoadWarrior()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Abyssal Sands
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Abyssal Sands"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAbyssalSands()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Broken Pillar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Broken Pillar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBrokenPillar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Caverns of Time
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Caverns of Time"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCavernsofTime()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: The Deserted Workshop
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Deserted Workshop"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDesertedWorkshop()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Dunemaul Compound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dunemaul Compound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDunemaulCompound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Eastmoon Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Eastmoon Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEastmoonRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: The Gaping Chasm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Gaping Chasm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheGapingChasm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Land's End Beach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Land's End Beach"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLandsEndBeach()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Lost Rigger Cove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lost Rigger Cove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLostRiggerCove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Noonshade Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Noonshade Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNoonshadeRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: The Noxious Lair
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Noxious Lair"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheNoxiousLair()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Sandsorrow Watch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sandsorrow Watch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSandsorrowWatch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: South Seas
	--'==========================================================================================
	elseif ( SubZoneName == SZ["South Seas"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthSeas()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Southbreak Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southbreak Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthbreakShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Southmoon Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southmoon Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthmoonRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Steamwheedle Port
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Steamwheedle Port"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSteamwheedlePort()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Thistleshrub Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thistleshrub Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThistleshrubValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Valley of the Watchers
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valley of the Watchers"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValleyoftheWatchers()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Ruins of Uldum
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Uldum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofUldum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Waterspring Field
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Waterspring Field"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWaterspringField()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Wavestrider Beach
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wavestrider Beach"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWavestriderBeach()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Zalashji's Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zalashji's Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZalashjisDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris Subzone: Zul'Farrak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zul'Farrak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZulFarrak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Tanaris END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorTanaris()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end