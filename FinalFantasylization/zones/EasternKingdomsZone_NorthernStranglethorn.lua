function FinalFantasylization_EasternKingdomsZones_NorthernStranglethorn()
--'==========================================================================================
--' Eastern Kingdoms Zones: Northern Stranglethorn
--'==========================================================================================
--	Zone: Northern Stranglethorn				FinalFantasylization_EasternKingdomsNorthernStranglethorn()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsNorthernStranglethornResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsNorthernStranglethornSwimming()
--
--	TOWNS:
--	Alliance:
--		Fort Livingston				FinalFantasylization_AllianceTownFortLivingston()
--		Rebel Camp					FinalFantasylization_AllianceTownRebelCamp()
--	Horde:
--		Bambala						FinalFantasylization_HordeTownBambala()
--		Grom'gol Base Camp			FinalFantasylization_HordeTownGromgolBaseCamp()
--	Neutral:
--		Nesingwary's Expedition		FinalFantasylization_NeutralTownNesingwarysExpedition()
--
--	SUBZONES:
--	Bal'lal Ruins					FinalFantasylization_SubzoneBallalRuins()
--	Balia'mah Ruins					FinalFantasylization_SubzoneBaliamahRuins()
--	The Great Sea					FinalFantasylization_SubzoneTheGreatSea()
--	Kal'ai Ruins					FinalFantasylization_SubzoneKalaiRuins()
--	Kurzen's Compound				FinalFantasylization_SubzoneKurzensCompound()
--	Lake Nazferiti					FinalFantasylization_SubzoneLakeNazferiti()
--	Mizjah Ruins					FinalFantasylization_SubzoneMizjahRuins()
--	Mosh'Ogg Ogre Mound				FinalFantasylization_SubzoneMoshOggOgreMound()
--	Ruins of Zul'Kunda				FinalFantasylization_SubzoneRuinsofZulKunda()
--	Ruins of Zul'Mamwe				FinalFantasylization_SubzoneRuinsofZulMamwe()
--	The Savage Coast				FinalFantasylization_SubzoneTheSavageCoast()
--	The Stockpile					FinalFantasylization_SubzoneTheStockpile()
--	The Sundering					FinalFantasylization_SubzoneTheSundering()
--	Tkashi Ruins					FinalFantasylization_SubzoneTkashiRuins()
--	Venture Co. Base Camp			FinalFantasylization_SubzoneVentureCoBaseCamp()
--	Venture Co. Operations Center	FinalFantasylization_SubzoneVentureCoOperationsCenter()
--	The Vile Reef					FinalFantasylization_SubzoneTheVileReef()
--	Yojamba Isle					FinalFantasylization_SubzoneYojambaIsle()
--	Ziata'jai Ruins					FinalFantasylization_SubzoneZiatajaiRuins()
--	Zul'Gurub						FinalFantasylization_SubzoneZulGurub()
--	Zuuldaia Ruins					FinalFantasylization_SubzoneZuuldaiaRuins()
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
			FinalFantasylization_EasternKingdomsNorthernStranglethornResting()
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
			FinalFantasylization_EasternKingdomsNorthernStranglethornSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Alliance Town: Fort Livingston
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fort Livingston"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownFortLivingston()
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
	--' Northern Stranglethorn Alliance Town: Rebel Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rebel Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownRebelCamp()
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
	--' Northern Stranglethorn Horde Town: Bambala
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bambala"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownBambala()
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
	--' Northern Stranglethorn Horde Town: Grom'gol Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Grom'gol Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownGromgolBaseCamp()
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
	--' Northern Stranglethorn Neutral Town: Nesingwary's Expedition
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nesingwary's Expedition"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownNesingwarysExpedition()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Bal'lal Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bal'lal Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBallalRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Balia'mah Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Balia'mah Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBaliamahRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: The Great Sea
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
	--' Northern Stranglethorn Subzone: Kal'ai Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kal'ai Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKalaiRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Kurzen's Compound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Kurzen's Compound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneKurzensCompound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Lake Nazferiti
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Nazferiti"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeNazferiti()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Mizjah Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mizjah Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMizjahRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Mosh'Ogg Ogre Mound
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Mosh'Ogg Ogre Mound"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoshOggOgreMound()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Ruins of Zul'Kunda
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Zul'Kunda"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofZulKunda()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Ruins of Zul'Mamwe
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ruins of Zul'Mamwe"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRuinsofZulMamwe()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: The Savage Coast
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Savage Coast"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSavageCoast()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: The Stockpile
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Stockpile"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheStockpile()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: The Sundering
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
	--' Northern Stranglethorn Subzone: Tkashi Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tkashi Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTkashiRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Venture Co. Base Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Venture Co. Base Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVentureCoBaseCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Venture Co. Operations Center
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Venture Co. Operations Center"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVentureCoOperationsCenter()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: The Vile Reef
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Vile Reef"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheVileReef()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Yojamba Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Yojamba Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneYojambaIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Ziata'jai Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ziata'jai Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZiatajaiRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Zul'Gurub
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zul'Gurub"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZulGurub()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn Subzone: Zuuldaia Ruins
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Zuuldaia Ruins"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneZuuldaiaRuins()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Northern Stranglethorn END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsNorthernStranglethorn()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end