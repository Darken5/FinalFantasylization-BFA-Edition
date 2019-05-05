function FinalFantasylization_EasternKingdomsZones_TheHinterlands()
--'==========================================================================================
--' Eastern Kingdoms Zones: The Hinterlands
--'==========================================================================================
--	Zone: The Hinterlands			FinalFantasylization_EasternKingdomsTheHinterlands()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsTheHinterlandsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsTheHinterlandsSwimming()
--
--	TOWNS:
--	Alliance:
--		Aerie Peak				FinalFantasylization_AllianceTownAeriePeak()
--		Stormfeather Outpost	FinalFantasylization_AllianceTownStormfeatherOutpost()
--	Horde
--		Hiri'watha Research Station		FinalFantasylization_HordeTownHiriwathaResearchStation()
--		Revantusk Village				FinalFantasylization_HordeTownRevantuskVillage()
--
--	SUBZONES:
--	Wildhammer Keep			FinalFantasylization_SubzoneWildhammerKeep()
--	Agol'watha				FinalFantasylization_SubzoneAgolwatha()
--	Altar of Zul			FinalFantasylization_SubzoneAltarofZulp()
--	Bogen's Ledge			FinalFantasylization_SubzoneBogensLedge()
--	The Creeping Ruin		FinalFantasylization_SubzoneTheCreepingRuin()
--	Featherbeard's Hovel	FinalFantasylization_SubzoneFeatherbeardsHovel()
--	The Forbidding Sea		FinalFantasylization_SubzoneTheForbiddingSea()
--	Jintha'Alor				FinalFantasylization_SubzoneJinthaAlor()
--	Overlook Cliffs			FinalFantasylization_SubzoneOverlookCliffs()
--	Plaguemist Ravine		FinalFantasylization_SubzonePlaguemistRavine()
--	Quel'Danil Lodge		FinalFantasylization_SubzoneQuelDanilLodge()
--	Seradane				FinalFantasylization_SubzoneSeradane()
--	Shaol'watha				FinalFantasylization_SubzoneShaolwatha()
--	Shadra'Alor				FinalFantasylization_SubzoneShadraAlor()
--	Shindigger's Camp		FinalFantasylization_SubzoneShindiggersCamp()
--	Skulk Rock				FinalFantasylization_SubzoneSkulkRock()
--	Valorwind Lake			FinalFantasylization_SubzoneValorwindLake()
--	Zun'watha				FinalFantasylization_SubzoneZunwatha()
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
			FinalFantasylization_EasternKingdomsTheHinterlandsResting()
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
			FinalFantasylization_EasternKingdomsTheHinterlandsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Alliance Town: Aerie Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Aerie Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownAeriePeak()
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
	--' The Hinterlands Alliance Town: Stormfeather Outpost
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stormfeather Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownStormfeatherOutpost()
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
	--' The Hinterlands Horde Town: Hiri'watha Research Station
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hiri'watha Research Station"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownHiriwathaResearchStation()
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
	--' The Hinterlands Horde Town: Revantusk Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Revantusk Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownRevantuskVillage()
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
	--' The Hinterlands Subzone: Wildhammer Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wildhammer Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWildhammerKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Agol'watha
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Agol'watha"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAgolwatha()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Altar of Zul
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Altar of Zul"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAltarofZulp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Bogen's Ledge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bogen's Ledgep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBogensLedge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: The Creeping Ruin
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Creeping Ruin"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheCreepingRuin()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Featherbeard's Hovel
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Featherbeard's Hovel"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFeatherbeardsHovel()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: The Forbidding Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Forbidding Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheForbiddingSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Jintha'Alor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Jintha'Alor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneJinthaAlor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Overlook Cliffs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Overlook Cliffs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneOverlookCliffs()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Plaguemist Ravine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Plaguemist Ravine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePlaguemistRavine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Quel'Danil Lodge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Quel'Danil Lodge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneQuelDanilLodge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Seradane
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Seradane"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSeradane()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Shaol'watha
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shaol'watha"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShaolwatha()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Shadra'Alor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadra'Alor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShadraAlor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Shindigger's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shindigger's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShindiggersCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Skulk Rock
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Skulk Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSkulkRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Valorwind Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valorwind Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValorwindLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands Subzone: Zun'watha
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zun'watha"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZunwatha()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' The Hinterlands END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsHinterlands()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end