function FinalFantasylization_TheBrokenIslesZones_MardumtheShatteredAbyss()
--'==========================================================================================
--' The Broken Isles Zones: Mardum, the Shattered Abyss ( Demon Hunter Start )
--'==========================================================================================
--	Zone: Mardum, the Shattered Abyss			FinalFantasylization_TheBrokenIslesMardumtheShatteredAbyss()
--
--	Zone Events:
--		Player is Resting		FinalFantasylization_TheBrokenIslesMardumtheShatteredAbyssResting()
--		Player is Swimming		FinalFantasylization_TheBrokenIslesMardumtheShatteredAbyssSwimming()
--
--	SUBZONES:
--	Cryptic Hollow			FinalFantasylization_SubzoneCrypticHollow()
--	Despair Ridge			FinalFantasylization_SubzoneDespairRidge()
--	The Doom Fortress		FinalFantasylization_SubzoneTheDoomFortress()
--	The Fel Hammer			FinalFantasylization_SubzoneTheFelHammer()
--	Forge of Corruption		FinalFantasylization_SubzoneForgeofCorruption()
--	Foul Creche				FinalFantasylization_SubzoneFoulCreche()
--	Illidari Foothold		FinalFantasylization_SubzoneIllidariFoothold()
--	Inferno Peak			FinalFantasylization_SubzoneInfernoPeak()
--	Molten Shore			FinalFantasylization_SubzoneMoltenShore()
--	Seat of Command			FinalFantasylization_SubzoneSeatofCommand()
--	Soul Engine				FinalFantasylization_SubzoneSoulEngine()
--	Twisting Nether			FinalFantasylization_SubzoneTwistingNether()
	--'==========================================================================================
	--'	Zone Event: Player is Swimming
	--'==========================================================================================
	if IsSwimming() and FinalFantasylizationOptions.Swim == true then
		if FinalFantasylization_CurrentZone ~= "Swimming" then
			FinalFantasylization_CurrentZone = "Swimming"
			FinalFantasylization_TheBrokenIslesMardumtheShatteredAbyssSwimming()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Cryptic Hollow
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Cryptic Hollow"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneCrypticHollow()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Despair Ridge
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Despair Ridge"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneDespairRidge()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: The Doom Fortress
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Doom Fortress"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheDoomFortress()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: The Fel Hammer
	--'==========================================================================================
	elseif ( SubZoneName == SZ["The Fel Hammer"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTheFelHammer()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Forge of Corruption
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Forge of Corruption"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneForgeofCorruption()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Foul Creche
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Foul Creche"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneFoulCreche()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Illidari Foothold
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Illidari Foothold"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneIllidariFoothold()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Inferno Peak
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Inferno Peak"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneInfernoPeak()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Molten Shore
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Molten Shore"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneMoltenShore()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Seat of Command
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Seat of Command"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSeatofCommand()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Soul Engine
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Soul Engine"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneSoulEngine()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss Subzone: Twisting Nether
	--'==========================================================================================
	elseif ( SubZoneName == SZ["Twisting Nether"] ) then
		if FinalFantasylization_CurrentZone ~= SubZoneName then
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. SubZoneName..", "..ZoneName)
			FinalFantasylization_CurrentZone = SubZoneName
			FinalFantasylization_SubzoneTwistingNether()
		else
			return
		end
		FinalFantasylization_IsPlaying = true
		return
	--'==========================================================================================
	--' Mardum, the Shattered Abyss END
	--'==========================================================================================
	else
		if FinalFantasylization_CurrentZone ~= ZoneName then
			FinalFantasylization_CurrentZone = ZoneName
			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. ZoneName)
			FinalFantasylization_TheBrokenIslesMardumtheShatteredAbyss()
			FinalFantasylization_IsPlaying = true
		else
			return
		end
	end
end