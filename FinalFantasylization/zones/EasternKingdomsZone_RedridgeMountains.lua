function FinalFantasylization_EasternKingdomsZones_RedridgeMountains()
--'==========================================================================================
--' Eastern Kingdoms Zones: Redridge Mountains
--'==========================================================================================
--	Zone: Redridge Mountains	FinalFantasylization_EasternKingdomsRedridgeMountains()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdomsRedridgeMountainsResting()
--		Player is Swimming		FinalFantasylization_EasternKingdomsRedridgeMountainsSwimming()
--
--	TOWNS:
--	Alliance:
--		Camp Everstill				FinalFantasylization_AllianceTownCampEverstill()
--		Keeshan's Post				FinalFantasylization_AllianceTownKeeshansPost()
--		Lakeshire					FinalFantasylization_AllianceTownLakeshire()
--			Lakeshire Inn				FinalFantasylization_AllianceTownLakeshireInn()
--			Lakeshire Town Hall			FinalFantasylization_AllianceTownLakeshireTownHall()
--
--	SUBZONES:
--	Alther's Mill				FinalFantasylization_SubzoneAlthersMill()
--	Galardell Valley			FinalFantasylization_SubzoneGalardellValley()
--	Lake Everstill				FinalFantasylization_SubzoneLakeEverstill()
--	Lakeridge Highway			FinalFantasylization_SubzoneLakeridgeHighway()
--	Redridge Canyons			FinalFantasylization_SubzoneRedridgeCanyons()
--	Render's Camp				FinalFantasylization_SubzoneRendersCamp()
--		Render's Rock				FinalFantasylization_SubzoneRendersRock()
--	Render's Valley				FinalFantasylization_SubzoneRendersValley()
--	Rethban Caverns				FinalFantasylization_SubzoneRethbanCaverns()
--	Shalewind Canyon			FinalFantasylization_SubzoneShalewindCanyon()
--	Stonewatch					FinalFantasylization_SubzoneStonewatch()
--		Stonewatch Keep				FinalFantasylization_SubzoneStonewatchKeep()
--		Stonewatch Tower			FinalFantasylization_SubzoneStonewatchTower()
--	Stonewatch Falls			FinalFantasylization_SubzoneStonewatchFalls()
--	Three Corners				FinalFantasylization_SubzoneThreeCorners()
--	Tower of Ilgalar			FinalFantasylization_SubzoneTowerofIlgalar()
--	Yowler's Den				FinalFantasylization_SubzoneYowlersDen()
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
			FinalFantasylization_EasternKingdomsRedridgeMountainsResting()
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
			FinalFantasylization_EasternKingdomsRedridgeMountainsSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Alliance Town: Camp Everstill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Camp Everstill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownCampEverstill()
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
	--' Redridge Mountains Alliance Town: Keeshan's Post
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Keeshan's Post"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownKeeshansPost()
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
	--' Redridge Mountains Alliance Town: Lakeshire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lakeshire"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownLakeshire()
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
	--' Redridge Mountains Alliance Town: Lakeshire Inn in Lakeshire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lakeshire Inn"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownLakeshireInn()
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
	--' Redridge Mountains Alliance Town: Lakeshire Town Hall in Lakeshire
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lakeshire Town Hall"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownLakeshireTownHall()
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
	--' Redridge Mountains Subzone: Alther's Mill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Alther's Mill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAlthersMill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Galardell Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Galardell Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGalardellValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Lake Everstill
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lake Everstill"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeEverstill()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Lakeridge Highway
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Lakeridge Highway"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneLakeridgeHighway()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Redridge Canyons
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Redridge Canyons"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRedridgeCanyons()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Render's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Render's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRendersCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Render's Rock in Render's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Render's Rock"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRendersRock()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Render's Valley
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Render's Valley"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRendersValley()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Rethban Caverns
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Rethban Caverns"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneRethbanCaverns()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Shalewind Canyon
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shalewind Canyon"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneShalewindCanyon()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Stonewatch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonewatch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonewatch()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Stonewatch Keep in Stonewatch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonewatch Keep"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonewatchKeep()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Stonewatch Tower in Stonewatch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonewatch Tower"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonewatchTower()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Stonewatch Falls
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stonewatch Falls"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStonewatchFalls()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Three Corners
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Three Corners"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneThreeCorners()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Tower of Ilgalar
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tower of Ilgalar"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTowerofIlgalar()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains Subzone: Yowler's Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Yowler's Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneYowlersDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Redridge Mountains END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_EasternKingdomsRedridgeMountains()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end