function FinalFantasylization_KalimdorZones_DustwallowMarsh()
--'==========================================================================================
--' Kalimdor Zones: Dustwallow Marsh
--'==========================================================================================
--	Zone: Dustwallow Marsh			FinalFantasylization_KalimdorDustwallowMarsh()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorDustwallowMarshResting()
--		Player is Swimming		FinalFantasylization_KalimdorDustwallowMarshSwimming()
--
--	TOWNS:
--	Alliance:
--		Theramore Isle			FinalFantasylization_AllianceTownTheramoreIsle()
--			Foothold Citadel		FinalFantasylization_AllianceTownFootholdCitadel()
--	Horde:
--		Brackenwall Village		FinalFantasylization_HordeTownBrackenwallVillage()
--	Neutral
--		Mudsprocket				FinalFantasylization_NeutralTownMudsprocket()
--		Tabetha's Farm			FinalFantasylization_NeutralTownTabethasFarm()
--
--	SUBZONES:
--	Alcaz Island			FinalFantasylization_SubzoneAlcazIsland()
--	Blackhoof Village		FinalFantasylization_SubzoneBlackhoofVillage()
--	Bloodfen Burrow			FinalFantasylization_SubzoneBloodfenBurrow()
--	Bluefen					FinalFantasylization_SubzoneBluefen()
--	Darkmist Cavern			FinalFantasylization_SubzoneDarkmistCavern()
--	The Dragonmurk			FinalFantasylization_SubzoneTheDragonmurk()
--		The Den of Flame		FinalFantasylization_SubzoneTheDenofFlame()
--		Stonemaul Ruins			FinalFantasylization_SubzoneStonemaulRuins()
--	Dreadmurk Shore			FinalFantasylization_SubzoneDreadmurkShore()
--	Dustwallow Bay			FinalFantasylization_SubzoneDustwallowBay()
--		Nat's Landing			FinalFantasylization_SubzoneNatsLanding()
--		Tidefury Cove			FinalFantasylization_SubzoneTidefuryCove()
--	The Great Sea			FinalFantasylization_SubzoneTheGreatSea()
--	Lost Point				FinalFantasylization_SubzoneLostPoint()
--	North Point Tower		FinalFantasylization_SubzoneNorthPointTower()
--	The Quagmire			FinalFantasylization_SubzoneTheQuagmire()
--		Beezil's Wreck			FinalFantasylization_SubzoneBeezilsWreck()
--		Direhorn Post			FinalFantasylization_SubzoneDirehornPost()
--	Sentry Point			FinalFantasylization_SubzoneSentryPoint()
--	Shady Rest Inn			FinalFantasylization_SubzoneShadyRestInn()
--	Witch Hill				FinalFantasylization_SubzoneWitchHill()
--		Swamplight Manor		FinalFantasylization_SubzoneSwamplightManor()
--	Wyrmbog					FinalFantasylization_SubzoneWyrmbog()
--		Emberstrife's Den		FinalFantasylization_SubzoneEmberstrifesDen()
--		Onyxia's Lair			FinalFantasylization_SubzoneOnyxiasLair()
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
			FinalFantasylization_KalimdorDustwallowMarshResting()
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
			FinalFantasylization_KalimdorDustwallowMarshSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Alliance Town: Theramore Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Theramore Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownTheramoreIsle()
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
	--' Dustwallow Marsh Alliance Town: Foothold Citadel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Foothold Citadel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownFootholdCitadel()
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
	--' Dustwallow Marsh Horde Town: Brackenwall Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brackenwall Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownBrackenwallVillage()
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
	--' Dustwallow Marsh Neutral Town: Mudsprocket
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mudsprocket"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownMudsprocket()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Neutral Town: Tabetha's Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tabetha's Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownTabethasFarm()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Alcaz Island
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Alcaz Island"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAlcazIsland()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Blackhoof Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Blackhoof Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBlackhoofVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Bloodfen Burrow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodfen Burrow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBloodfenBurrow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Bluefen
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bluefen"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBluefen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Darkmist Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkmist Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDarkmistCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: The Dragonmurk
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dragonmurk"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDragonmurk()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: The Den of Flame
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Den of Flame"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDenofFlame()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Stonemaul Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonemaul Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonemaulRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Dreadmurk Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dreadmurk Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDreadmurkShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Dustwallow Bay
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dustwallow Bay"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDustwallowBay()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Nat's Landing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nat's Landing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNatsLanding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Tidefury Cove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tidefury Cove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTidefuryCove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: The Great Sea
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
	--' Dustwallow Marsh Subzone: Lost Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lost Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLostPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: North Point Tower
	--'==========================================================================================
	elseif ( SubZoneName == SZ["North Point Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthPointTower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: The Quagmire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Quagmire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheQuagmire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Beezil's Wreck
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Beezil's Wreck"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBeezilsWreck()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Direhorn Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Direhorn Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDirehornPost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Sentry Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sentry Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSentryPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Shady Rest Inn
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shady Rest Inn"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShadyRestInn()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Witch Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Witch Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWitchHill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Swamplight Manor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Swamplight Manor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSwamplightManor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Wyrmbog
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wyrmbog"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWyrmbog()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Emberstrife's Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Emberstrife's Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEmberstrifesDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh Subzone: Onyxia's Lair
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Onyxia's Lair"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneOnyxiasLair()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Dustwallow Marsh END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorDustwallowMarsh()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end