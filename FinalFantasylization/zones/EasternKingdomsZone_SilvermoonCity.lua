function FinalFantasylization_EasternKingdomsZones_SilvermoonCity()
--'==========================================================================================
--' Eastern Kingdoms Capital: Silvermoon City : Horde
--'==========================================================================================
--	Zone: SilvermoonCity		FinalFantasylization_EasternKingdoms_SilvermoonCity()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_EasternKingdoms_SilvermoonCityResting()
--		Player is Swimming		FinalFantasylization_EasternKingdoms_SilvermoonCitySwimming()
--
--	SUBZONES:
--	The Bazaar							FinalFantasylization_SilvermoonCity_SubzoneTheBazaar()
--		The Bank of Silvermoon				FinalFantasylization_SilvermoonCity_SubzoneTheBankofSilvermoon()
--		Blades & Axes						FinalFantasylization_SilvermoonCity_SubzoneBladesAxes()
--		General Goods						FinalFantasylization_SilvermoonCity_SubzoneGeneralGoods()
--		Keelen's Trustworthy Tailoring		FinalFantasylization_SilvermoonCity_SubzoneKeelensTrustworthyTailoring()
--		Shields of Silver					FinalFantasylization_SilvermoonCity_SubzoneShieldsofSilver()
--		Silvermoon Finery					FinalFantasylization_SilvermoonCity_SubzoneSilvermoonFinery()
--	Court of the Sun					FinalFantasylization_SilvermoonCity_SubzoneCourtoftheSun()
--		Sunfury Spire						FinalFantasylization_SilvermoonCity_SubzoneSunfurySpire()
--			Inner Sanctum						FinalFantasylization_SilvermoonCity_SubzoneInnerSanctum()
--	Farstriders' Square					FinalFantasylization_SilvermoonCity_SubzoneFarstridersSquare()
--		The Hall of Blood					FinalFantasylization_SilvermoonCity_SubzoneTheHallofBlood()
--		The Rangers' Lodge					FinalFantasylization_SilvermoonCity_SubzoneTheRangersLodge()
--	Murder Row							FinalFantasylization_SilvermoonCity_SubzoneMurderRow()
--		The Sanctum							FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
--	The Royal Exchange					FinalFantasylization_SilvermoonCity_SubzoneTheRoyalExchange()
--		The Hall of Respite					FinalFantasylization_SilvermoonCity_SubzoneTheHallofRespite()
--			Silvermoon Jewelery					FinalFantasylization_SilvermoonCity_SubzoneSilvermoonJewelery()
--		The Reliquary						FinalFantasylization_SilvermoonCity_SubzoneTheReliquary()
--		Royal Exchange Auction House		FinalFantasylization_SilvermoonCity_SubzoneRoyalExchangeAuctionHouse()
--		Royal Exchange Bank					FinalFantasylization_SilvermoonCity_SubzoneRoyalExchangeBank()
--		Silvermoon City Inn					FinalFantasylization_SilvermoonCity_SubzoneSilvermoonCityInn()
--	The Shepherd's Gate					FinalFantasylization_SilvermoonCity_SubzoneTheShepherdsGate()
--	Walk of Elders						FinalFantasylization_SilvermoonCity_SubzoneWalkofElders()
--		Silvermoon Registry					FinalFantasylization_SilvermoonCity_SubzoneSilvermoonRegistry()
--		Velaani's Arcane Goods				FinalFantasylization_SilvermoonCity_SubzoneVelaanisArcaneGoods()
--	Wayfarer's Rest						FinalFantasylization_SilvermoonCity_SubzoneWayfarersRest()
	--'==========================================================================================
	--' Silvermoon City: Horde Check
	--'==========================================================================================
	if ( factionEnglish == "Horde" ) then
	--'==========================================================================================
	--'	Zone Event: Player is Resting - (Will only play if Capital Music is OFF)
	--'==========================================================================================
		if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and FinalFantasylizationOptions.Capital == false and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
			if FinalFantasylization_CurrentZone ~= "Sleeping" then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HordeRest)
				FinalFantasylization_CurrentZone = "Sleeping"
				FinalFantasylization_EasternKingdoms_SilvermoonCityResting()
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
				FinalFantasylization_EasternKingdoms_SilvermoonCitySwimming()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Bazaar
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Bazaar"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheBazaar()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Bank of Silvermoon
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Bank of Silvermoon"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheBankofSilvermoon()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Blades & Axes
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Blades & Axes"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneBladesAxes()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: General Goods
	--'==========================================================================================
		elseif ( SubZoneName == SZ["General Goods"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneGeneralGoods()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Keelen's Trustworthy Tailoring
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Keelen's Trustworthy Tailoring"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneKeelensTrustworthyTailoring()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Shields of Silver
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Shields of Silver"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneShieldsofSilver()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Silvermoon Finery
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Silvermoon Finery"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneSilvermoonFinery()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Court of the Sun
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Court of the Sun"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneCourtoftheSun()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Sunfury Spire
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Sunfury Spire"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneSunfurySpire()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Inner Sanctum
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Inner Sanctum"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneInnerSanctum()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Farstriders' Square
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Farstriders' Square"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneFarstridersSquare()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Hall of Blood
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Hall of Blood"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheHallofBlood()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Rangers' Lodge
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Rangers' Lodge"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheRangersLodge()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Murder Row
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Murder Row"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneMurderRow()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Sanctum
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Sanctum"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheSanctum()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Royal Exchange
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Royal Exchange"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheRoyalExchange()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Hall of Respite
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Hall of Respite"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheHallofRespite()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Silvermoon Jewelery
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Silvermoon Jewelery"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneSilvermoonJewelery()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Reliquary
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Reliquary"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheReliquary()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Royal Exchange Auction House
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Royal Exchange Auction House"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneRoyalExchangeAuctionHouse()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Royal Exchange Bank
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Royal Exchange Bank"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneRoyalExchangeBank()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Silvermoon City Inn
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Silvermoon City Inn"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneSilvermoonCityInn()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: The Shepherd's Gate
	--'==========================================================================================
		elseif ( SubZoneName == SZ["The Shepherd's Gate"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneTheShepherdsGate()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Walk of Elders
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Walk of Elders"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneWalkofElders()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Silvermoon Registry
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Silvermoon Registry"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneSilvermoonRegistry()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Velaani's Arcane Goods
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Velaani's Arcane Goods"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneVelaanisArcaneGoods()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City: Wayfarer's Rest
	--'==========================================================================================
		elseif ( SubZoneName == SZ["Wayfarer's Rest"] ) then
			if FinalFantasylization_CurrentZone ~= SubZoneName then
				FinalFantasylization_CurrentZone = SubZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_SilvermoonCity_SubzoneWayfarersRest()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
			return
	--'==========================================================================================
	--' Silvermoon City END
	--'==========================================================================================
		else
			if FinalFantasylization_CurrentZone ~= ZoneName then
				FinalFantasylization_CurrentZone = ZoneName
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
				FinalFantasylization_EasternKingdoms_SilvermoonCity()
			else
				return
			end
			FinalFantasylization_IsPlaying = true
		end
	--'==========================================================================================
	--' Silvermoon City: Alliance Check
	--'==========================================================================================
	elseif ( factionEnglish == "Alliance" ) then
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