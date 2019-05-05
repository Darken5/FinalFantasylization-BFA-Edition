function FinalFantasylization_EasternKingdomsZones_Duskwood()
--'==========================================================================================
--' Eastern Kingdoms Zones: Duskwood
--'==========================================================================================
--	Zone: Duskwood				FinalFantasylization_EasternKingdomsDuskwood()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsDuskwoodResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsDuskwoodSwimming()
--
--	TOWNS:
--	Alliance:
--		Darkshire					FinalFantasylization_AllianceTownDarkshire()
--		Darkshire Town Hall			FinalFantasylization_AllianceTownDarkshireTownHall()
--		Scarlet Raven Tavern		FinalFantasylization_AllianceTownScarletRavenTavern()
--		Raven Hill					FinalFantasylization_AllianceTownRavenHill()
--
--	SUBZONES:
--	Addle's Stead					FinalFantasylization_SubzoneAddlesStead()
--	Beggar's Haunt					FinalFantasylization_SubzoneBeggarsHaunt()
--	Brightwood Grove				FinalFantasylization_SubzoneBrightwoodGrove()
--	The Darkened Bank				FinalFantasylization_SubzoneTheDarkenedBank()
--	Forlorn Rowe					FinalFantasylization_SubzoneForlornRowe()
--	The Hushed Bank					FinalFantasylization_SubzoneTheHushedBank()
--	Manor Mistmantle				FinalFantasylization_SubzoneManorMistmantle()
--	Raven Hill Cemetery				FinalFantasylization_SubzoneRavenHillCemetery()
--		Dawning Wood Catacombs			FinalFantasylization_SubzoneDawningWoodCatacombs()
--	Roland's Doom					FinalFantasylization_SubzoneRolandsDoom()
--	The Rotting Orchard				FinalFantasylization_SubzoneTheRottingOrchard()
--	Tranquil Gardens Cemetery		FinalFantasylization_SubzoneTranquilGardensCemetery()
--	Twilight Grove					FinalFantasylization_SubzoneTwilightGrove()
--	Vul'Gol Ogre Mound				FinalFantasylization_SubzoneVulGolOgreMound()
--	The Yorgen Farmstead			FinalFantasylization_SubzoneTheYorgenFarmstead()
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
			FinalFantasylization_EasternKingdomsDuskwoodResting()
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
			FinalFantasylization_EasternKingdomsDuskwoodSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Alliance Town: Darkshire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkshire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDarkshire()
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
	--' Duskwood Alliance Town: Darkshire Town Hall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Darkshire Town Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownDarkshireTownHall()
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
	--' Duskwood Alliance Town: Scarlet Raven Tavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Scarlet Raven Tavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownScarletRavenTavern()
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
	--' Duskwood Alliance Town: Raven Hill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Raven Hill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownRavenHill()
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
	--' Duskwood Subzone: Addle's Stead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Addle's Stead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAddlesStead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Beggar's Haunt
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Beggar's Haunt"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBeggarsHaunt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Brightwood Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Brightwood Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBrightwoodGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: The Darkened Bank
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Darkened Bank"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDarkenedBank()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Forlorn Rowe
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forlorn Rowe"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneForlornRowe()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: The Hushed Bank
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Hushed Bank"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheHushedBank()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Manor Mistmantle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Manor Mistmantle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneManorMistmantle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Raven Hill Cemetery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Raven Hill Cemetery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRavenHillCemetery()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Dawning Wood Catacombs
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dawning Wood Catacombs"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDawningWoodCatacombs()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Roland's Doom
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Roland's Doom"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRolandsDoom()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: The Rotting Orchard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Rotting Orchard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheRottingOrchard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Tranquil Gardens Cemetery
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tranquil Gardens Cemetery"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTranquilGardensCemetery()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Twilight Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Twilight Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTwilightGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: Vul'Gol Ogre Mound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vul'Gol Ogre Mound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVulGolOgreMound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood Subzone: The Yorgen Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Yorgen Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheYorgenFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Duskwood END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsDuskwood()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end