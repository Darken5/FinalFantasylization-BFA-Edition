function FinalFantasylization_EasternKingdomsZones_SwampofSorrows()
--'==========================================================================================
--' Eastern Kingdoms Zones: Swamp of Sorrows
--'==========================================================================================
--	Zone: Swamp of Sorrows				FinalFantasylization_EasternKingdomsSwampofSorrows()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsSwampofSorrowsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsSwampofSorrowsSwimming()
--
--	TOWNS:
--	Alliance:
--		The Harborage		FinalFantasylization_AllianceTownTheHarborage()
--		Marshtide Watch		FinalFantasylization_AllianceTownMarshtideWatch()
--	Horde:
--		Misty Reed Post		FinalFantasylization_HordeTownMistyReedPost()
--		Stonard				FinalFantasylization_HordeTownStonard()
--	Neutral:
--		Bogpaddle			FinalFantasylization_NeutralTownBogpaddle()
--		Sorrowmurk			FinalFantasylization_NeutralTownSorrowmurk()
--
--	SUBZONES:		
--	The Bloodmire				FinalFantasylization_SubzoneTheBloodmire()
--	Fallow Sanctuary			FinalFantasylization_SubzoneFallowSanctuary()
--	The Forbidding Sea			FinalFantasylization_SubzoneTheForbiddingSea()
--	Misty Reed Strand			FinalFantasylization_SubzoneMistyReedStrand()
--	Misty Valley				FinalFantasylization_SubzoneMistyValley()
--	Pool of Tears				FinalFantasylization_SubzonePoolofTears()
--		Temple of Atal'Hakkar		FinalFantasylization_SubzoneTempleofAtalHakkar()
--	Purespring Cavern			FinalFantasylization_SubzonePurespringCavern()
--	The Shifting Mire			FinalFantasylization_SubzoneTheShiftingMire()
--	Splinterspear Junction		FinalFantasylization_SubzoneSplinterspearJunction()
--	Stagalbog					FinalFantasylization_SubzoneStagalbog()
--		Stagalbog Cave				FinalFantasylization_SubzoneStagalbogCave()
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
			FinalFantasylization_EasternKingdomsSwampofSorrowsResting()
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
			FinalFantasylization_EasternKingdomsSwampofSorrowsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Alliance Town: The Harborage
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Harborage"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownTheHarborage()
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
	--' Swamp of Sorrows Alliance Town: Marshtide Watch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Marshtide Watch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownMarshtideWatch()
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
	--' Swamp of Sorrows Horde Town: Misty Reed Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Misty Reed Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownMistyReedPost()
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
	--' Swamp of Sorrows Horde Town: Stonard
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonard"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Horde" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_HordeTownStonard()
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
	--' Swamp of Sorrows Neutral Town: Bogpaddle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bogpaddle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownBogpaddle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Neutral Town: Sorrowmurk
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Sorrowmurk"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_NeutralTownSorrowmurk()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: The Bloodmire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Bloodmire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheBloodmire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Fallow Sanctuary
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fallow Sanctuary"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFallowSanctuary()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: The Forbidding Sea
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
	--' Swamp of Sorrows Subzone: Misty Reed Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Misty Reed Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMistyReedStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Misty Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Misty Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMistyValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Pool of Tears
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pool of Tears"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePoolofTears()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Temple of Atal'Hakkar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Temple of Atal'Hakkar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTempleofAtalHakkar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Purespring Cavern
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Purespring Cavern"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePurespringCavern()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: The Shifting Mire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Shifting Mire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheShiftingMire()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Splinterspear Junction
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Splinterspear Junction"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSplinterspearJunction()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Stagalbog
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stagalbog"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStagalbog()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows Subzone: Stagalbog Cave
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stagalbog Cave"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStagalbogCave()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Swamp of Sorrows END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_EasternKingdomsSwampofSorrows()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end