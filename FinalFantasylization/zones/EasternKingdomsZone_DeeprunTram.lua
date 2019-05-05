function FinalFantasylization_EasternKingdomsZones_DeeprunTram()
--'==========================================================================================
--' Eastern Kingdoms Zones: Deeprun Tram : Alliance
--'==========================================================================================
--	Zone: Deeprun Tram		FinalFantasylization_EasternKingdoms_DeeprunTram()
	--'==========================================================================================
	--' Deeprun Tram: Alliance Check
	--'==========================================================================================
	if ( factionEnglish == "Alliance" ) then
	--'==========================================================================================
	--' Deeprun Tram END
	--'==========================================================================================
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName)
			FinalFantasylization_EasternKingdoms_DeeprunTram()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
	--'==========================================================================================
	--' Deeprun Tram: Horde Check
	--'==========================================================================================
	elseif ( factionEnglish == "Horde" ) then
		if FinalFantasylization_CurrentZone ~= MinimapZoneName then
			FinalFantasylization_CurrentZone = MinimapZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. MinimapZoneName)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
	end
end