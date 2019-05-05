function FinalFantasylization_EasternKingdomsZones_CapeofStranglethorn()
--'==========================================================================================
--' Eastern Kingdoms Zones: Cape of Stranglethorn
--'==========================================================================================
--	Zone: Cape of Stranglethorn				FinalFantasylization_EasternKingdomsCapeofStranglethorn()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsCapeofStranglethornResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsCapeofStranglethornSwimming()
--
--	TOWNS:
--	Alliance:
--		Explorers' League Digsite		FinalFantasylization_AllianceTownExplorersLeagueDigsite()
--	Horde:
--		Hardwrench Hideaway				FinalFantasylization_HordeTownHardwrenchHideaway()
--	Neutral:
--		Booty Bay						FinalFantasylization_NeutralTownBootyBay()
--			The Salty Sailor Tavern			FinalFantasylization_NeutralTownTheSaltySailorTavern()
--
--	SUBZONES:
--	The Crystal Shore		FinalFantasylization_SubzoneTheCrystalShore()
--	Crystalvein Mine		FinalFantasylization_SubzoneCrystalveinMine()
--	Gurubashi Arena			FinalFantasylization_SubzoneGurubashiArena()
--		The Great Arena			FinalFantasylization_SubzoneTheGreatArena()
--		Battle Ring				FinalFantasylization_SubzoneBattleRing()
--	Jaguero Isle			FinalFantasylization_SubzoneJagueroIsle()
--	Janeiro's Point			FinalFantasylization_SubzoneJaneirosPoint()
--	Mistvale Valley			FinalFantasylization_SubzoneMistvaleValley()
--		Spirit Den				FinalFantasylization_SubzoneSpiritDen()
--	Nek'mani Wellspring		FinalFantasylization_SubzoneNekmaniWellspring()
--	Ruins of Aboraz			FinalFantasylization_SubzoneRuinsofAboraz()
--	Ruins of Jubuwal		FinalFantasylization_SubzoneRuinsofJubuwal()
--	South Seas				FinalFantasylization_SubzoneSouthSeas()
--	Southern Savage Coast	FinalFantasylization_SubzoneSouthernSavageCoast()
--	The Sundering			FinalFantasylization_SubzoneTheSundering()
--	Wild Shore				FinalFantasylization_SubzoneWildShore()
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
			FinalFantasylization_EasternKingdomsCapeofStranglethornResting()
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
			FinalFantasylization_EasternKingdomsCapeofStranglethornSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Alliance Town: Explorers' League Digsite
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Explorers' League Digsite"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownExplorersLeagueDigsite()
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
	--' Cape of Stranglethorn Horde Town: Hardwrench Hideaway
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hardwrench Hideaway"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownHardwrenchHideaway()
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
	--' Cape of Stranglethorn Neutral Town: Booty Bay
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Booty Bay"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownBootyBay()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Neutral Town: The Salty Sailor Tavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Salty Sailor Tavern"] ) and FinalFantasylizationOptions.Sleep == false then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownTheSaltySailorTavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: The Crystal Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Crystal Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCrystalShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Crystalvein Mine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crystalvein Mine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrystalveinMine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Gurubashi Arena
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Gurubashi Arena"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGurubashiArena()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: The Great Arena in Gurubashi Arena
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["The Great Arena"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = MinimapZoneName
			FinalFantasylization_SubzoneTheGreatArena()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Battle Ring in Gurubashi Arena
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Battle Ring"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBattleRing()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Jaguero Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jaguero Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJagueroIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Janeiro's Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Janeiro's Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJaneirosPoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Mistvale Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mistvale Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMistvaleValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Spirit Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Spirit Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSpiritDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Nek'mani Wellspring
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nek'mani Wellspring"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNekmaniWellspring()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Ruins of Aboraz
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Aboraz"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofAboraz()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Ruins of Jubuwal
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Jubuwal"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofJubuwal()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: South Seas
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
	--' Cape of Stranglethorn Subzone: Southern Savage Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Southern Savage Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSouthernSavageCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: The Sundering
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sundering"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSundering()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn Subzone: Wild Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wild Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWildShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Cape of Stranglethorn END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsCapeofStranglethorn()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end