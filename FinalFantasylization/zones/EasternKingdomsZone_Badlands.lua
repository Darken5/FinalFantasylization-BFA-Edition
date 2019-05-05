function FinalFantasylization_EasternKingdomsZones_Badlands()
--'==========================================================================================
--' Eastern Kingdoms Zones: Badlands
--'==========================================================================================
--	Zone: Badlands				FinalFantasylization_EasternKingdomsBadlands()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsBadlandsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsBadlandsSwimming()
--
--	TOWNS:
--	Alliance:
--		Dragon's Mouth				FinalFantasylization_AllianceTownDragonsMouth()
--		Dustwind Dig				FinalFantasylization_AllianceTownDustwindDig()
--	Horde:
--		Bloodwatcher Point			FinalFantasylization_HordeTownBloodwatcherPoint()
--		New Kargath					FinalFantasylization_HordeTownNewKargath()
--	Neutral:
--		Fuselight					FinalFantasylization_NeutralTownFuselight()
--		Fuselight-by-the-Sea		FinalFantasylization_NeutralTownFuselightbytheSea()
--	
--	SUBZONES:
--	Agmond's End				FinalFantasylization_SubzoneAgmondsEnd()
--	Angor Fortress				FinalFantasylization_SubzoneAngorFortress()
--	Apocryphan's Rest			FinalFantasylization_SubzoneApocryphansRest()
--	Camp Boff					FinalFantasylization_SubzoneCampBoff()
--	Camp Cagg					FinalFantasylization_SubzoneCampCagg()
--	Camp Kosh					FinalFantasylization_SubzoneCampKosh()
--	Crypt						FinalFantasylization_SubzoneCrypt()
--	Dustbelch Grotto			FinalFantasylization_SubzoneDustbelchGrotto()
--	The Dustbowl				FinalFantasylization_SubzoneTheDustbowl()
--	Dustwind Gulch				FinalFantasylization_SubzoneDustwindGulch()
--	Hammertoe's Digsite			FinalFantasylization_SubzoneHammertoesDigsite()
--	The Hidden Clutch			FinalFantasylization_SubzoneTheHiddenClutch()
--	Lethlor Ravine				FinalFantasylization_SubzoneLethlorRavine()
--	The Maker's Terrace			FinalFantasylization_SubzoneTheMakersTerrace()
--	Mirage Flats				FinalFantasylization_SubzoneMirageFlats()
--	Rhea's Camp					FinalFantasylization_SubzoneRheasCamp()
--	Ruins of Kargath			FinalFantasylization_SubzoneRuinsofKargath()
--	Scar of the Worldbreaker	FinalFantasylization_SubzoneScaroftheWorldbreaker()
--	Tomb of the Watchers		FinalFantasylization_SubzoneTomboftheWatchers()
--	Uldaman						FinalFantasylization_SubzoneUldaman()
--		Uldaman Entrance			FinalFantasylization_SubzoneUldamanEntrance()
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
			FinalFantasylization_EasternKingdomsBadlandsResting()
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
			FinalFantasylization_EasternKingdomsBadlandsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Alliance Town: Dragon's Mouth
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dragon's Mouth"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDragonsMouth()
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
	--' Badlands Alliance Town: Dustwind Dig
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dustwind Dig"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDustwindDig()
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
	--' Badlands Horde Town: Bloodwatcher Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bloodwatcher Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownBloodwatcherPoint()
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
	--' Badlands Horde Town: New Kargath
	--'==========================================================================================
	elseif ( SubZoneName == SZ["New Kargath"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownNewKargath()
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
	--' Badlands Neutral Town: Fuselight
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fuselight"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownFuselight()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Neutral Town: Fuselight-by-the-Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fuselight-by-the-Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownFuselightbytheSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Agmond's End
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Agmond's End"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAgmondsEnd()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Angor Fortress
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Angor Fortress"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAngorFortress()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Apocryphan's Rest
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Apocryphan's Rest"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneApocryphansRest()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Camp Boff
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Boff"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCampBoff()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Camp Cagg
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Cagg"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCampCagg()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Camp Kosh
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Kosh"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCampKosh()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Crypt
	--'==========================================================================================
	elseif ( MinimapZoneName == SZ["Crypt"] ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = MinimapZoneName
			FinalFantasylization_SubzoneCrypt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Dustbelch Grotto
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dustbelch Grotto"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDustbelchGrotto()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: The Dustbowl
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Dustbowl"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDustbowl()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Dustwind Gulch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dustwind Gulch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDustwindGulch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Hammertoe's Digsite
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hammertoe's Digsite"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneHammertoesDigsite()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: The Hidden Clutch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Hidden Clutch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheHiddenClutch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Lethlor Ravine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lethlor Ravine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLethlorRavine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: The Maker's Terrace
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Maker's Terrace"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheMakersTerrace()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Mirage Flats
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mirage Flats"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMirageFlats()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Rhea's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rhea's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRheasCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Ruins of Kargath
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Kargath"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofKargath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Scar of the Worldbreaker
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scar of the Worldbreaker"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneScaroftheWorldbreaker()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Tomb of the Watchers
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tomb of the Watchers"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTomboftheWatchers()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Uldaman
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Uldaman"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneUldaman()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands Subzone: Uldaman Entrance
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Uldaman Entrance"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneUldamanEntrance()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Badlands END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsBadlands()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end