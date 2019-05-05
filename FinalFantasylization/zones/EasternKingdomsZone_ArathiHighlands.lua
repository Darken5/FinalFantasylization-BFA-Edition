function FinalFantasylization_EasternKingdomsZones_ArathiHighlands()
--'==========================================================================================
--' Eastern Kingdoms Zones: Arathi Highlands
--'==========================================================================================
--	Zone: Arathi Highlands		FinalFantasylization_EasternKingdomsArathiHighlands()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsArathiHighlandsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsArathiHighlandsSwimming()
--
--	TOWNS:
--	Alliance:
--		Faldir's Cove		FinalFantasylization_AllianceTownFaldirsCove()
--		Refuge Pointe		FinalFantasylization_AllianceTownRefugePointe()
--	Horde:
--		Galen's Fall		FinalFantasylization_HordeTownGalensFall()
--		Go'Shek Farm		FinalFantasylization_HordeTownGoShekFarm()
--		Hammerfall			FinalFantasylization_HordeTownHammerfall()
--
--	SUBZONES:
--	Boulder'gor					FinalFantasylization_SubzoneBouldergor()
--		Boulderfist Outpost			FinalFantasylization_SubzoneBoulderfistOutpost()
--	Boulderfist Hall			FinalFantasylization_SubzoneBoulderfistHall()
--	Circle of East Binding		FinalFantasylization_SubzoneCircleofEastBinding()
--	Circle of Inner Binding		FinalFantasylization_SubzoneCircleofInnerBinding()
--	Circle of Outer Binding		FinalFantasylization_SubzoneCircleofOuterBinding()
--	Circle of West Binding		FinalFantasylization_SubzoneCircleofWestBinding()
--	Dabyrie's Farmstead			FinalFantasylization_SubzoneDabyriesFarmstead()
--	The Drowned Reef			FinalFantasylization_SubzoneTheDrownedReef()
--	Drywhisker Gorge			FinalFantasylization_SubzoneDrywhiskerGorge()
--	The Forbidding Sea			FinalFantasylization_SubzoneTheForbiddingSea()
--	Northfold Manor				FinalFantasylization_SubzoneNorthfoldManor()
--	Stromgarde Keep				FinalFantasylization_SubzoneStromgardeKeep()
--		Crypt						FinalFantasylization_SubzoneCrypt()
--		The Sanctum					FinalFantasylization_SubzoneTheSanctum()
--		The Tower of Arathor		FinalFantasylization_SubzoneTheTowerofArathor()
--	Thandol Span				FinalFantasylization_SubzoneThandolSpan()
--	Thoradin's Wall				FinalFantasylization_SubzoneThoradinsWall()
--	Witherbark Village			FinalFantasylization_SubzoneWitherbarkVillage()
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
			FinalFantasylization_EasternKingdomsArathiHighlandsResting()
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
			FinalFantasylization_EasternKingdomsArathiHighlandsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Alliance Town: Faldir's Cove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Faldir's Cove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownFaldirsCove()
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
	--' Arathi Highlands Alliance Town: Refuge Pointe
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Refuge Pointe"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownRefugePointe()
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
	--' Arathi Highlands Horde Town: Galen's Fall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Galen's Fall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownGalensFall()
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
	--' Arathi Highlands Horde Town: Go'Shek Farm
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Go'Shek Farm"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownGoShekFarm()
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
	--' Arathi Highlands Horde Town: Hammerfall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Hammerfall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownHammerfall()
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
	--' Arathi Highlands Subzone: Boulder'gor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Boulder'gor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBouldergor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Boulderfist Outpost in Boulder'gor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Boulderfist Outpost"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBoulderfistOutpost()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Boulderfist Hall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Boulderfist Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBoulderfistHall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Circle of East Binding
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Circle of East Binding"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCircleofEastBinding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Circle of Inner Binding
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Circle of Inner Binding"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCircleofInnerBinding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Circle of Outer Binding
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Circle of Outer Binding"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCircleofOuterBinding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Circle of West Binding
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Circle of West Binding"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCircleofWestBinding()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Dabyrie's Farmstead
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Dabyrie's Farmstead"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDabyriesFarmstead()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: The Drowned Reef
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Drowned Reef"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDrownedReef()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Drywhisker Gorge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Drywhisker Gorge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDrywhiskerGorge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: The Forbidding Sea
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
	--' Arathi Highlands Subzone: Northfold Manor
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Northfold Manor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneNorthfoldManor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Stromgarde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stromgarde Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStromgardeKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Crypt in Stromgarde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crypt"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrypt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: The Sanctum in Stromgarde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sanctum"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSanctum()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: The Tower of Arathor in Stromgarde Keep
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Tower of Arathor"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheTowerofArathor()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Thandol Span
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thandol Span"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThandolSpan()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Thoradin's Wall
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Thoradin's Wall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThoradinsWall()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands Subzone: Witherbark Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Witherbark Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWitherbarkVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Arathi Highlands END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsArathiHighlands()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end