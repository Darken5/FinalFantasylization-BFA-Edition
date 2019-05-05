function FinalFantasylization_KalimdorZones_AzuremystIsle()
--'==========================================================================================
--' Kalimdor Zones: Azuremyst Isle : Draenei
--'==========================================================================================
--	Zone: Azuremyst Isle	FinalFantasylization_KalimdorAzuremystIsle()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_KalimdorAzuremystIsleResting()
--		Player is Swimming		FinalFantasylization_KalimdorAzuremystIsleSwimming()
--
--	TOWNS:
--	Draenei Start:
--		Crash Site					FinalFantasylization_Draenei_Start_CrashSite()
--			Ammen Fields				FinalFantasylization_Draenei_Start_AmmenFields()
--			Ammen Vale					FinalFantasylization_Draenei_Start_AmmenVale()
--			Nestlewood Hills			FinalFantasylization_Draenei_Start_NestlewoodHills()
--			Nestlewood Thicket			FinalFantasylization_Draenei_Start_NestlewoodThicket()
--			Shadow Ridge				FinalFantasylization_Draenei_Start_ShadowRidge()
--			Silverline Lake				FinalFantasylization_Draenei_Start_SilverlineLake()
--	Alliance:
--		Azure Watch				FinalFantasylization_AllianceTownAzureWatch()
--		Odesyus' Landing		FinalFantasylization_AllianceTownOdesyusLanding()
--
--	SUBZONES:
--	Ammen Ford				FinalFantasylization_SubzoneAmmenFord()
--	Bristlelimb Village		FinalFantasylization_SubzoneBristlelimbVillage()
--	Emberglade				FinalFantasylization_SubzoneEmberglade()
--	Fairbridge Strand		FinalFantasylization_SubzoneFairbridgeStrand()
--	Geezle's Camp			FinalFantasylization_SubzoneGeezlesCamp()
--	Menagerie Wreckage		FinalFantasylization_SubzoneMenagerieWreckage()
--	Moongraze Woods			FinalFantasylization_SubzoneMoongrazeWoods()
--	Moonwing Den			FinalFantasylization_SubzoneMoonwingDen()
--	Pod Cluster				FinalFantasylization_SubzonePodCluster()
--	Pod Wreckage			FinalFantasylization_SubzonePodWreckage()
--	The Sacred Grove		FinalFantasylization_SubzoneTheSacredGrove()
--	Silting Shore			FinalFantasylization_SubzoneSiltingShore()
--	Silvermyst Isle			FinalFantasylization_SubzoneSilvermystIsle()
--	Stillpine Hold			FinalFantasylization_SubzoneStillpineHold()
--	The Veiled Sea			FinalFantasylization_SubzoneTheVeiledSea()
--	Tides' Hollow			FinalFantasylization_SubzoneTidesHollow()
--	Traitor's Cove			FinalFantasylization_SubzoneTraitorsCove()
--	Valaar's Berth			FinalFantasylization_SubzoneValaarsBerth()
--	Wildwind Path			FinalFantasylization_SubzoneWildwindPath()
--	Wildwind Peak			FinalFantasylization_SubzoneWildwindPeak()
--	Wrathscale Point		FinalFantasylization_SubzoneWrathscalePoint()
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
			FinalFantasylization_KalimdorAzuremystIsleResting()
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
			FinalFantasylization_KalimdorAzuremystIsleSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle: Draenei Starting Area: Crash Site
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Crash Site"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_Draenei_Start_CrashSite()
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
	--' Azuremyst Isle: Draenei Starting Area: Ammen Fields
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ammen Fields"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Draenei_Start_AmmenFields()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle: Draenei Starting Area: Ammen Vale
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ammen Vale"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Draenei_Start_AmmenVale()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle: Draenei Starting Area: Nestlewood Hills
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nestlewood Hills"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Draenei_Start_NestlewoodHills()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle: Draenei Starting Area: Nestlewood Thicket
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Nestlewood Thicket"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Draenei_Start_NestlewoodThicket()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle: Draenei Starting Area: Shadow Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Shadow Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Draenei_Start_ShadowRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle: Draenei Starting Area: Silverline Lake
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Silverline Lake"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_Draenei_Start_SilverlineLake()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Alliance Town: Azure Watch
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Azure Watch"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownAzureWatch()
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
	--' Azuremyst Isle Alliance Town: Odesyus' Landing
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Odesyus' Landing"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_CurrentZone = SubZoneName
			if ( factionEnglish == "Alliance" ) then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_AllianceTownOdesyusLanding()
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
	--' Azuremyst Isle Subzone: Ammen Ford
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Ammen Ford"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneAmmenFord()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Bristlelimb Village
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Bristlelimb Village"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneBristlelimbVillage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Emberglade
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Emberglade"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneEmberglade()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Fairbridge Strand
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Fairbridge Strand"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFairbridgeStrand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Geezle's Camp
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Geezle's Camp"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneGeezlesCamp()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Menagerie Wreckage
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Menagerie Wreckage"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMenagerieWreckage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Moongraze Woods
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moongraze Woods"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoongrazeWoods()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Moonwing Den
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Moonwing Den"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoonwingDen()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Pod Cluster
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pod Cluster"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePodCluster()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Pod Wreckage
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Pod Wreckage"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzonePodWreckage()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: The Sacred Grove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Sacred Grove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheSacredGrove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Silting Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Silting Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSiltingShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Silvermyst Isle
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Silvermyst Isle"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSilvermystIsle()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Stillpine Hold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Stillpine Hold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneStillpineHold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: The Veiled Sea
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Veiled Sea"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheVeiledSea()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Tides' Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Tides' Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTidesHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Traitor's Cove
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Traitor's Cove"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTraitorsCove()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Valaar's Berth
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Valaar's Berth"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneValaarsBerth()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Wildwind Path
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wildwind Path"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWildwindPath()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Wildwind Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wildwind Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWildwindPeak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle Subzone: Wrathscale Point
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Wrathscale Point"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneWrathscalePoint()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Azuremyst Isle END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_KalimdorAzuremystIsle()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end