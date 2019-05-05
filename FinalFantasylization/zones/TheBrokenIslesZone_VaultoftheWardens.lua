function FinalFantasylization_TheBrokenIslesZones_VaultoftheWardens()
--'==========================================================================================
--' The Broken Isles Zones: Vault of the Wardens
--'==========================================================================================
--	Zone: Vault of the Wardens			FinalFantasylization_TheBrokenIslesVaultoftheWardens()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_TheBrokenIslesVaultoftheWardensResting()
--		Player is Swimming		FinalFantasylization_TheBrokenIslesVaultoftheWardensSwimming()
--
--	SUBZONES:
--	Fallen Passage			FinalFantasylization_SubzoneFallenPassage()
--	Chamber of Night		FinalFantasylization_SubzoneChamberofNight()
--	The Demon Ward			FinalFantasylization_SubzoneTheDemonWard()
--		Vault of Ice			FinalFantasylization_SubzoneVaultofIce()
--		Vault of Law			FinalFantasylization_SubzoneVaultofLaw()
--		Vault of Mirrors		FinalFantasylization_SubzoneVaultofMirrors()
--	Illidari Ward			FinalFantasylization_SubzoneIllidariWard()
--		Vault of Silence		FinalFantasylization_SubzoneVaultofSilence()
--	Tomb of the Penitent	FinalFantasylization_SubzoneTombofthePenitent()
--	Vault of the Betrayer	FinalFantasylization_SubzoneVaultoftheBetrayer()
--	The Warden's Court		FinalFantasylization_SubzoneTheWardensCourt()
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
			FinalFantasylization_TheBrokenIslesVaultoftheWardensResting()
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
			FinalFantasylization_TheBrokenIslesVaultoftheWardensSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Fallen Passage
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fallen Passage"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFallenPassage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Chamber of Night
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Chamber of Night"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneChamberofNight()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: The Demon Ward
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Demon Ward"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDemonWard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Vault of Ice
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vault of Ice"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVaultofIce()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Vault of Law
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vault of Law"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVaultofLaw()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Vault of Mirrors
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vault of Mirrors"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVaultofMirrors()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Illidari Ward
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Illidari Ward"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIllidariWard()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Vault of Silence
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vault of Silence"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVaultofSilence()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Tomb of the Penitent
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tomb of the Penitent"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTombofthePenitent()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: Vault of the Betrayer
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Vault of the Betrayer"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneVaultoftheBetrayer()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens Subzone: The Warden's Court
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Warden's Court"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheWardensCourt()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Vault of the Wardens END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_TheBrokenIslesVaultoftheWardens()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end