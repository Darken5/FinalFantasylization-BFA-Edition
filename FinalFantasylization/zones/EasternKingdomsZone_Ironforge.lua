function FinalFantasylization_EasternKingdomsZones_Ironforge()
--'==========================================================================================
--' Eastern Kingdoms Capital: Ironforge : Alliance
--'==========================================================================================
--	Zone: Ironforge		FinalFantasylization_EasternKingdoms_Ironforge()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdoms_IronforgeResting()
--		Player is Swimming		FinalFantasylization_EasternKingdoms_IronforgeSwimming()
--
--	SUBZONES:
--	The Commons					FinalFantasylization_Ironforge_SubzoneTheCommons()
--		The Stonefire Tavern		FinalFantasylization_Ironforge_SubzoneTheStonefireTavern()
--		Vault of Ironforge			FinalFantasylization_Ironforge_SubzoneVaultofIronforge()
--	The Forlorn Cavern			FinalFantasylization_Ironforge_SubzoneTheForlornCavern()
--	Gates of Ironforge		FinalFantasylization_Ironforge_SubzoneGatesofIronforge()
--	The Great Forge				FinalFantasylization_Ironforge_SubzoneTheGreatForge()
--		The High Seat				FinalFantasylization_Ironforge_SubzoneTheHighSeat()
--		Cask 'n' Anvil				FinalFantasylization_Ironforge_SubzoneCasknAnvil()
--	Hall of Explorers			FinalFantasylization_Ironforge_SubzoneHallofExplorers()
--		The Library					FinalFantasylization_Ironforge_SubzoneTheLibrary()
--	The Military Ward			FinalFantasylization_Ironforge_SubzoneTheMilitaryWard()
--		Hall of Arms				FinalFantasylization_Ironforge_SubzoneHallofArms()
--	The Mystic Ward				FinalFantasylization_Ironforge_SubzoneTheMysticWard()
--		Hall of Mysteries			FinalFantasylization_Ironforge_SubzoneHallofMysteries()
--	Old Ironforge				FinalFantasylization_Ironforge_SubzoneOldIronforge()
--	Tinker Town					FinalFantasylization_Ironforge_SubzoneTinkerTown()
--		Deeprun Tram				FinalFantasylization_Ironforge_SubzoneDeeprunTram()
	--'==========================================================================================
	--' Ironforge: Alliance Check
	--'==========================================================================================
	if ( factionEnglish == "Alliance" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_EasternKingdoms_IronforgeResting()
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
				FinalFantasylization_EasternKingdoms_IronforgeSwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The Commons
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Commons"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheCommons()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The Stonefire Tavern
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Stonefire Tavern"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheStonefireTavern()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Vault of Ironforge
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Vault of Ironforge"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneVaultofIronforge()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The Forlorn Cavern
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Forlorn Cavern"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheForlornCavern()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Gates of Ironforge
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Gates of Ironforge"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneGatesofIronforge()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The Great Forge
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Great Forge"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheGreatForge()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The High Seat
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The High Seat"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheHighSeat()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Cask 'n' Anvil
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Cask 'n' Anvil"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneCasknAnvil()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Hall of Explorers
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Hall of Explorers"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneHallofExplorers()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The Library
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Library"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheLibrary()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The Military Ward
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Military Ward"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheMilitaryWard()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Hall of Arms
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Hall of Arms"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneHallofArms()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: The Mystic Ward
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Mystic Ward"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTheMysticWard()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Hall of Mysteries
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Hall of Mysteries"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneHallofMysteries()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Old Ironforge
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Old Ironforge"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneOldIronforge()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Tinker Town
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Tinker Town"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneTinkerTown()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge: Deeprun Tram
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Deeprun Tram"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Ironforge_SubzoneDeeprunTram()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Ironforge END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_EasternKingdoms_Ironforge()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Ironforge: Horde Check
	--'==========================================================================================
	elseif ( factionEnglish == "Horde" ) then
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_HostileTowns() -- Music call for all towns you are hostile in.
		else
			return
		end
		FinalFantasylization_IsPlaying = true
	end
end