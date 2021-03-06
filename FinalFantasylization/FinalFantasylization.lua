-- FinalFantasylization by Darken5
-- Version 8.1.1
------------------------------------------------------------

-- FinalFantasylization requires this version of FFZlib:
local FinalFantasylizationFFZlibVersionRequired = 1.00
local block = 0
-- How often the OnUpdate code will run (in seconds)
local FinalFantasylization_UpdateInterval = 1.5 

-- LibBabble Zone and SubZone code --
BSZ = LibStub("LibBabble-SubZone-3.0")
BF = LibStub("LibBabble-Faction-3.0")
SZ = BSZ:GetLookupTable()
SZR = BSZ:GetReverseLookupTable()
F = BF:GetLookupTable()
FR = BF:GetReverseLookupTable()
-------------------------------------

local FinalFantasylization_IsPlaying = false

NUM_SOUND_PACKS = 0
for i = 1, GetNumAddOns() do
	local name = GetAddOnInfo(i)
	if strmatch(name, "SoundPack%d*") then
		print (GetAddOnInfo(i))
		NUM_SOUND_PACKS = NUM_SOUND_PACKS + 1
	end
end

LibStub:GetLibrary("LibDataBroker-1.1"):NewDataObject("FinalFantasylization", {
	type = "launcher",
	icon = "Interface\\AddOns\\FinalFantasylization\\Textures\\icon.tga",
	OnClick = function(clickedframe, button)
		ToggleDropDownMenu(1, nil, FinalFantasylizationDropDownMenu, clickedframe, 0, 0)
	end,
})

function FinalFantasylization_OnLoad()
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LEAVING_WORLD") -- Fires when the player logs out or exits a world area.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_ENTERING_WORLD") -- Fired when the player enters the world, enters/leaves an instance, or respawns at a graveyard. Also fires any other time the player sees a loading screen.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_ALIVE") -- This event fires after PLAYER_ENTERING_WORLD
	FinalFantasylizationFrame:RegisterEvent("ZONE_CHANGED") -- Fired when the player enters a new zone. Zones are the smallest named subdivions of the game world and are contained within areas (also called regions). Whenever the text over the minimap changes, this event is fired.
	FinalFantasylizationFrame:RegisterEvent("ZONE_CHANGED_INDOORS") -- Fired when a player enters a new zone within a city.
	FinalFantasylizationFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA") -- Fired when the user enters a new zone and a new area. e.g. moving from Duskwood to Stranglethorn Vale.
	FinalFantasylizationFrame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	FinalFantasylizationFrame:RegisterEvent("PLAYER_ENTER_COMBAT") -- This event fires when the player initiates melee auto-attack.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LEAVE_COMBAT") -- This event fires when the player stops melee auto-attack.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_REGEN_DISABLED") -- Fired whenever you enter combat, as normal regen rates are disabled during combat.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_REGEN_ENABLED") -- Fired after ending combat, as regen rates return to normal. Useful for determining when a player has left combat.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_XP_UPDATE") --Fired when the player's XP is updated (due quest completion or killing).
	FinalFantasylizationFrame:RegisterEvent("PLAYER_PVP_KILLS_CHANGED") -- Fired when you slay another player.
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE") -- Fires when player's faction changes. ie: "Your reputation with Timbermaw Hold has very slightly increased."
	FinalFantasylizationFrame:RegisterEvent("PLAYER_UPDATE_RESTING") -- Fired when the player starts or stops resting, i.e. when entering/leaving inns/major towns.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_CAMPING") -- Fired when the player is camping
	FinalFantasylizationFrame:RegisterEvent("UNIT_AURA") -- Fires when a unit loses or gains a buff or debuff.
	FinalFantasylizationFrame:RegisterEvent("UNIT_HEALTH") -- Fired whenever a units health is affected.
	FinalFantasylizationFrame:RegisterEvent("UNIT_MODEL_CHANGED") -- Fired when the unit's 3d model changes. (Shapeshift, Polymorph, etc...)
	FinalFantasylizationFrame:RegisterEvent("UNIT_SPELLCAST_SENT") -- Fires when a request to cast a spell (on behalf of the player or a unit controlled by the player) is sent to the server
	FinalFantasylizationFrame:RegisterEvent("PLAYER_DEAD") -- Fired when the player has died.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_UNGHOST") -- Fired when the player is alive after being a ghost. Called after one of: Performing a successful corpse run and the player accepts the 'Resurrect Now' box. Accepting a resurrect from another player after releasing from a death. Zoning into an instance where the player is dead. When the player accept a resurrect from a Spirit Healer.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_CONTROL_GAINED") -- Fires after the PLAYER_CONTROL_LOST event, when control has been restored to the player. (Recover from Mindcontrol, Taxi, etc...)
	FinalFantasylizationFrame:RegisterEvent("PLAYER_CONTROL_LOST") -- Fires whenever the player is unable to control the character. Examples are when afflicted by fear or when using a taxi. (Mindcontrol, Taxi, etc...)
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_BG_SYSTEM_NEUTRAL") -- Fired for non faction specific events in the battlegrounds such as the battle start announcement.
	FinalFantasylizationFrame:RegisterEvent("UPDATE_BATTLEFIELD_STATUS") -- Fired whenever joining a queue, leaving a queue, battlefield to join is changed, when you can join a battlefield, or if somebody wins the battleground.
	FinalFantasylizationFrame:RegisterEvent("UPDATE_CHAT_WINDOWS") -- Fired when there's a reason to update the chat windows.
	FinalFantasylizationFrame:RegisterEvent("CHAT_MSG_CHANNEL") -- Fired when the client receives a channel message.
	FinalFantasylizationFrame:RegisterEvent("UPDATE_MOUSEOVER_UNIT") -- Fires whenever you mouse over any NPC or PC
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LEVEL_UP") -- Fires when player levels up
	FinalFantasylizationFrame:RegisterEvent("PLAYER_GAINS_VEHICLE_DATA") -- Fires when the player gains vehicle-related attributes without necessarily entering a vehicle.
	FinalFantasylizationFrame:RegisterEvent("PLAYER_LOSES_VEHICLE_DATA"); -- Fires when the player loses vehicle-related attributes without necessarily having been in a vehicle.
	FinalFantasylizationFrame:RegisterEvent("PET_BATTLE_OPENING_START"); -- Begins the transition between the current UI to the Pet Battle one.
	FinalFantasylizationFrame:RegisterEvent("PET_BATTLE_OVER"); -- Fired when the pet battle is over, and all combat actions have been resolved.
	FinalFantasylizationFrame:RegisterEvent("PET_BATTLE_LEVEL_CHANGED"); -- Fired when a battle pet levels.
	
	hooksecurefunc("JumpOrAscendStart"	, FinalFantasylization_JumpOrAscendStart);

	-- Check the current version of FFZlib.
	if (not FFZlib) or (not FFZlib.Version) or (FFZlib.Version < FinalFantasylizationFFZlibVersionRequired) then
		if DEFAULT_CHAT_FRAME then DEFAULT_CHAT_FRAME:AddMessage("|cfffe8460" .. NeedNewerFFZlibMessage) end
		message(NeedNewerFFZlibMessage)
		return
	end
	
	-- Slash Commands
	SLASH_FinalFantasylizationCMD1 = "/ffsound"
	SLASH_FinalFantasylizationCMD2 = "/ffs"
	SlashCmdList["FinalFantasylizationCMD"] = FinalFantasylization_Command
	
	SLASH_Soundpack1 = "/ffsoundpack"
	SLASH_Soundpack2 = "/ffsp"
	SlashCmdList["Soundpack"] = FinalFantasylization_SPCommand
	
--		FinalFantasylizationMapIcon:Show()
	
	-- If they don't have any options set yet (no saved variable), reset them. If they upgraded
	-- from a previous version and are missing one or more options, fill them in with defaults.
	FinalFantasylizationFillMissingOptions()
	
	FinalFantasylization_ClearMusicState()
	
	-- Addon loaded message
	print("|cFF50C0FFFinalFantasylization |cFFFFA500"..GetAddOnMetadata("FinalFantasylization", "Version").."|cFF50C0FF loaded.")
end

------------------------------------------------------------
-- FinalFantasylization Events
------------------------------------------------------------
-- Called when an event that FinalFantasylization cares about is fired.
local startingFunc
local startFinalfantasylization = false
function FinalFantasylization_OnEvent(self, event, ...)
	if event == "PLAYER_ENTERING_WORLD" then
		CoreSavedVariable = (CoreSavedVariable or "ff7")
		startingFunc = _G["SoundPack" .. CoreSavedVariable .. "_SetEnabled"]
		if startingFunc then
			startingFunc(true)
			FinalFantasylization_Msg("Loaded sound pack " .. CoreSavedVariable .. ".")
			startFinalfantasylization = true
		else
			FinalFantasylization_Msg("Can't find sound pack " .. CoreSavedVariable .. ".")
		end
	elseif event =="COMBAT_LOG_EVENT_UNFILTERED" and arg2 == "PARTY_KILL" and arg3 == UnitGUID("player") and FinalFantasylizationOptions.Enabled == true then
		if FinalFantasylization_PlayerIsCombat == true and FinalFantasylizationOptions.Enabled == true then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. TargetKilled)
			FinalFantasylization_KillSound()
			FinalFantasylization_RegenGain = true
		end
	elseif event == "SPELLS_CHANGED" then
	elseif event == "PLAYER_ALIVE" then
	FinalFantasylization_GetMusic()
	elseif event == "PLAYER_REGEN_DISABLED" then
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. EnterCombat)
		if FinalFantasylizationOptions.Enabled == true then
			FinalFantasylization_CombatSound()
			FinalFantasylization_PlayerIsCombat = true
		end
	elseif event == "PLAYER_REGEN_ENABLED" then
		FinalFantasylization_PlayerIsCombat = false
		FinalFantasylization_RegenGain = true
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. LeaveCombat)
		FinalFantasylization_CurrentZone = nil
		FinalFantasylization_CurrentZoneID = nil
	elseif event == "UNIT_AURA" then
	elseif event == "ZONE_CHANGED" then
		FinalFantasylization_GetMusic()
	elseif event == "ZONE_CHANGED_INDOORS" then
		FinalFantasylization_GetMusic()
	elseif event == "ZONE_CHANGED_NEW_AREA" then
		FinalFantasylization_GetMusic()
	elseif event == "PLAYER_UPDATE_RESTING" then
	elseif event == "PLAYER_CAMPING" then
		FinalFantasylization_PlayerCamping()
	elseif event == "CHAT_MSG_COMBAT_FACTION_CHANGE" then
		if FinalFantasylization_PlayerIsCombat == true then
			FinalFantasylization_RegenGain = true
		end
	elseif event == "PLAYER_XP_UPDATE" then
		if FinalFantasylization_PlayerIsCombat == true then
			FinalFantasylization_RegenGain = true
		end
	elseif event == "PLAYER_PVP_KILLS_CHANGED" then
		if FinalFantasylization_PlayerIsCombat == true then
			FinalFantasylization_RegenGain = true
		end
	elseif event == "PLAYER_DEAD" then
	elseif event == "CHAT_MSG_TEXT_EMOTE" then
	elseif event == "PLAYER_LEVEL_UP" then
		if ( FinalFantasylization_RegenGain == true or FinalFantasylization_RegenGain == false ) and FinalFantasylizationOptions.LevelUp == true and FinalFantasylizationOptions.Sound == true then
			FinalFantasylization_RegenGain = false
			FinalFantasylization_LevelUpSong()
		end
	elseif event == "PET_BATTLE_OPENING_START" then
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. EnterPetBattle)
		if FinalFantasylizationOptions.Enabled == true then
			FinalFantasylization_CombatSound()
			FinalFantasylization_PlayerIsPetBattle = true
		end
	elseif event == "PET_BATTLE_OVER" then
		FinalFantasylization_PlayerIsPetBattle = false
		FinalFantasylization_RegenGain = true
		FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. LeavePetBattle)
		FinalFantasylization_CurrentZone = nil
		FinalFantasylization_CurrentZoneID = nil
	elseif event == "PET_BATTLE_LEVEL_CHANGED" then
		if ( FinalFantasylization_RegenGain == true or FinalFantasylization_RegenGain == false ) and FinalFantasylizationOptions.LevelUp == true and FinalFantasylizationOptions.Sound == true then
			FinalFantasylization_RegenGain = false
			FinalFantasylization_LevelUpSong()
		end
	end
--	FinalFantasylization_GetMusic()
end

function FinalFantasylization_ClearMusicState()
	-- PvP Type --
	FinalFantasylization_InContestedArea = false
	FinalFantasylization_InHostileArea = false
	FinalFantasylization_InFriendlyArea = false
	-- Zone
	FinalFantasylization_CurrentZone = nil
	FinalFantasylization_CurrentZoneID = nil
	-- General Events --
	FinalFantasylization_PlayerIsWorlding = false
	FinalFantasylization_PlayerIsSleeping = false
	FinalFantasylization_PlayerIsCombat = false
	FinalFantasylization_PlayerIsPetBattle = false
	FinalFantasylization_PlayerIsPetBattling = false
	FinalFantasylization_PlayerIsFlying = false
	FinalFantasylization_PlayerIsMounted = false
	FinalFantasylization_PlayerIsEscape = false
	FinalFantasylization_PlayerIsBattling = false
	FinalFantasylization_PlayerIsMounting = false
	FinalFantasylization_PlayerIsGhosting = false
	FinalFantasylization_PlayerIsTaxi = false
	FinalFantasylization_PlayerIsDead = false
	FinalFantasylization_PlayerIsHostileMounting = false
	FinalFantasylization_Dies = false
	FinalFantasylization_EventLoad = false
	FinalFantasylization_RegenGain = false
	-- Dungeons Events --
	FinalFantasylization_InInstance = false
	-- Play Music/Sound
	Current_Song = nil
end

function FinalFantasylization_Msg(msg)
	if( DEFAULT_CHAT_FRAME ) then
		FFZlib.Message(FFZlib.Color.White .. (msg))
	end
end

function FinalFantasylization_debugMsg(msg)
	if( DEFAULT_CHAT_FRAME ) and FinalFantasylizationOptions.Debug == true then
		FFZlib.Message(FFZlib.Color.Teal .. (msg))
	end
end

-- Processes a FinalFantasylization slash command.
function FinalFantasylization_Command(Command)
	local Lower = strlower(Command)
	if Lower == "" or Lower == nil then
		FinalFantasylizationUI_Show()
	elseif Lower == EnabledCommand then
		FinalFantasylization_Options("Enabled", true)
	elseif Lower == DisabledCommand then
		FinalFantasylization_Options("Enabled", false)
	elseif Lower == DebugCommand then
		if FinalFantasylizationOptions.Debug == false then
			FinalFantasylization_Options("Debug", true)
		else
			FinalFantasylization_Options("Debug", false)
		end
	elseif Lower == MusicCommand then
		if FinalFantasylizationOptions.Music == false then
			FinalFantasylization_Options("Music", true)
		else
			FinalFantasylization_Options("Music", false)
		end
	elseif Lower == SoundCommand then
		if FinalFantasylizationOptions.Sound == false then
			FinalFantasylization_Options("Sound", true)
		else
			FinalFantasylization_Options("Sound", false)
		end
	elseif Lower == DungeonCommand then
		if FinalFantasylizationOptions.Dungeon == false then
			FinalFantasylization_Options("Dungeon", true)
		else
			FinalFantasylization_Options("Dungeon", false)
		end
	elseif Lower == MountCommand then
		if FinalFantasylizationOptions.Mount == false then
			FinalFantasylization_Options("Mount", true)
		else
			FinalFantasylization_Options("Mount", false)
		end
	elseif Lower == SleepCommand then
		if FinalFantasylizationOptions.Sleep == false then
			FinalFantasylization_Options("Sleep", true)
		else
			FinalFantasylization_Options("Sleep", false)
		end
	elseif Lower == SwimCommand then
		if FinalFantasylizationOptions.Swim == false then
			FinalFantasylization_Options("Swim", true)
		else
			FinalFantasylization_Options("Swim", false)
		end
	elseif Lower == DeadCommand then
		if FinalFantasylizationOptions.Dead == false then
			FinalFantasylization_Options("Dead", true)
		else
			FinalFantasylization_Options("Dead", false)
		end
	elseif Lower == FlightCommand then
		if FinalFantasylizationOptions.Flight == false then
			FinalFantasylization_Options("Flight", true)
		else
			FinalFantasylization_Options("Flight", false)
		end
	elseif Lower == CapitalCommand then
		if FinalFantasylizationOptions.Capital == false then
			FinalFantasylization_Options("Capital", true)
		else
			FinalFantasylization_Options("Capital", false)
		end
	elseif Lower == CombatCommand then
		if FinalFantasylizationOptions.Combat == false then
			FinalFantasylization_Options("Combat", true)
		else
			FinalFantasylization_Options("Combat", false)
		end
	elseif Lower == FanfareCommand then
		if FinalFantasylizationOptions.Fanfare == false then
			FinalFantasylization_Options("Fanfare", true)
		else
			FinalFantasylization_Options("Fanfare", false)
		end
	elseif Lower == LevelUpCommand then
		if FinalFantasylizationOptions.LevelUp == false then
			FinalFantasylization_Options("LevelUp", true)
		else
			FinalFantasylization_Options("LevelUp", false)
		end
		elseif Lower == RaidCommand then
		if FinalFantasylizationOptions.Raid == false then
			FinalFantasylization_Options("Raid", true)
		else
			FinalFantasylization_Options("Raid", false)
		end
	elseif Lower == ChocoboKwehCommand then
		if FinalFantasylizationOptions.ChocoboKweh == false then
			FinalFantasylization_Options("ChocoboKweh", true)
		else
			FinalFantasylization_Options("ChocoboKweh", false)
		end
	elseif Lower == BattlegroundCommand then
		if FinalFantasylizationOptions.Battleground == false then
			FinalFantasylization_Options("Battleground", true)
		else
			FinalFantasylization_Options("Battleground", false)
		end
	elseif Lower == TestCommand then
		uiMapID = C_Map.GetBestMapForUnit("player");
		uiMapInfo = C_Map.GetMapInfo(uiMapID);
		ZoneName = uiMapInfo.name
		ZoneName2 = GetRealZoneText();
		MinimapZoneName = GetMinimapZoneText();
		SubZoneName = GetSubZoneText();
		local realm = GetRealmName();
		local factionEnglish, factionLocale = UnitFactionGroup("player"); --'Horde, Alliance
		local pvpType, isFFA, faction = GetZonePVPInfo(); --'("friendly";"contested";"hostile";"sanctuary") (1;nil) ("Alliance";"Horde")
		local inInstance, instanceType = IsInInstance();
		local classification = UnitClassification("target"); --'classification: "worldboss", "rareelite", "elite", "rare", "normal" or "trivial"
		FFZlib.Message(FFZlib.Color.Grey..TestMessage1..FFZlib.Color.Crimson.."| "..realm.." |")
		FFZlib.Message(FFZlib.Color.Grey..TestMessage2..FFZlib.Color.Crimson.."| "..factionEnglish.." |")
		if ZoneName2 ~= nil then
			FFZlib.Message(FFZlib.Color.Grey..TestMessage3..FFZlib.Color.Crimson.."| "..ZoneName.. " | or | "..ZoneName2.." |")
		else
			FFZlib.Message(FFZlib.Color.Grey..TestMessage3..FFZlib.Color.Crimson.."| "..ZoneName.. " |, ZoneName2 = nil")
		end
		FFZlib.Message(FFZlib.Color.Grey..TestMessage8..FFZlib.Color.Crimson.."| "..uiMapID.." |")
		FFZlib.Message(FFZlib.Color.Grey..TestMessage4..FFZlib.Color.Crimson.."| "..instanceType.." |")
		FFZlib.Message(FFZlib.Color.Grey..TestMessage5..FFZlib.Color.Crimson.."| "..SubZoneName.." |")
		FFZlib.Message(FFZlib.Color.Grey..TestMessage6..FFZlib.Color.Crimson.."| "..MinimapZoneName.." |")
		FFZlib.Message(FFZlib.Color.Grey..TestMessage7..FFZlib.Color.Crimson.."| "..classification.." |")
	else
		FinalFantasylizationUsage()
	end	
end

function FinalFantasylization_SPCommand(Command)
	local Lower = strlower(Command)
	if Lower == "" or Lower == nil then
		FinalFantasylizationUISP_Show()
	else
		SwitchTo(Lower)
	end
end

function SwitchTo(soundPackID)
	soundPackID = (soundPackID)
	local func = _G["SoundPack" .. soundPackID .. "_SetEnabled"]
	if func then
		func(true)
		startingFunc = func
		FinalFantasylization_ClearMusicState()
		StopMusic()
		FinalFantasylization_debugMsg(FFZlib.Color.Red .. "SwitchTo...")
		FinalFantasylization_GetMusic()
		print("Loaded sound pack " .. soundPackID .. ".")
	elseif startingFunc then
		startingFunc(true)
		print("Can't find sound pack " .. soundPackID .. ".")
		print(CoreSavedVariable .. " still loaded.")
	else
		print("Can't find sound pack " .. soundPackID .. ".")
	end
end

function FinalFantasylization_Options(Type, Value)
	FFZlib.Assert(Value == true or Value == false, "New value should be true or false.")
	FinalFantasylizationOptions[Type] = Value
	FFZlib.Message(FFZlib.Color.Yellow .. _G[Type .. tostring(Value) .. "Message"])
	if Value == true then
		FinalFantasylization_ClearMusicState()
		FinalFantasylization_OnUpdate(self, elapsed)
	elseif Value == false then
		StopMusic()
		FinalFantasylization_ClearMusicState()
	end
end

-- Displays FinalFantasylization usage information.
function FinalFantasylizationUsage()
	FFZlib.Message(" ")
	FFZlib.MultilineMessage(Usage, FFZlib.Color.green)
	FFZlib.Message(" ")
end

function FinalFantasylizationSoundpackUsage()
	FFZlib.Message(" ")
	FFZlib.MultilineMessage(SoundpackUsage, FFZlib.Color.green)
	FFZlib.Message(" ")
end

function FinalFantasylization_PlayMusic( file )
	if( file ~= nil ) then
		if Current_Song ~= file then
			Current_Song = file
			PlayMusic( file, "Master" )
		end
	end
end

function FinalFantasylization_PlayFile( file )
	if( file ~= nil ) then
		PlaySoundFile( file, "Master" )
	end
end

function FinalFantasylization_GetMusic()
	if FinalFantasylizationOptions.Enabled == true and startFinalfantasylization == true then
		uiMapID = C_Map.GetBestMapForUnit("player")
		if uiMapID ~= nil then
			uiMapInfo = C_Map.GetMapInfo(uiMapID)
		else
			return
		end
		ZoneName = uiMapInfo.name
		ZoneName2 = GetRealZoneText();
		MinimapZoneName = GetMinimapZoneText();
		SubZoneName = GetSubZoneText();
		if SubZoneName == ( " " ) or SubZoneName == ( "" ) or SubZoneName == ( nil ) then
			if MinimapZoneName == ( " " ) or MinimapZoneName == ( "" ) or MinimapZoneName == ( nil ) then
				lSubZoneName = nil
			else
				lSubZoneName = SZ[MinimapZoneName]
			end
		else
			lSubZoneName = SZ[SubZoneName]
		end
		factionEnglish, factionLocale = UnitFactionGroup("player"); --'Horde, Alliance
		classification = UnitClassification("target"); --'classification: "worldboss", "rareelite", "elite", "rare", "normal" or "trivial"
		pvpType, isFFA, faction = GetZonePVPInfo(); --'("friendly";"contested";"hostile";"sanctuary") (1;nil) ("Alliance";"Horde")

--'====================================================================================
--'	Sounds
--'====================================================================================
		if FinalFantasylization_PlayerIsCombat == false and FinalFantasylization_PlayerIsPetBattle == false and FinalFantasylization_RegenGain == true and FinalFantasylizationOptions.Fanfare == true and FinalFantasylizationOptions.Sound == true then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Victory)
			FinalFantasylization_Fanfare() -- Battle fanfare call
			FinalFantasylization_RegenGain = false
			StopMusic();
		end

--'====================================================================================
--'	Music
--'====================================================================================
		FinalFantasylization_IsPlaying = false

--#########################################################################################
--#########################################################################################
--##
--##			WORLD EVENTS
--##
--#########################################################################################
--#########################################################################################
		
--'====================================================================================
--'	World Event: Player is Ghost
--'====================================================================================
		if ( UnitIsGhost("player") ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Dead == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsGhosting == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. PlayerGhost)
				FinalFantasylization_PlayerGhost() -- Music call when youre a ghost.
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsGhosting = true
			FinalFantasylization_RegenGain = false
		else
			FinalFantasylization_PlayerIsGhosting = false
		end

--'====================================================================================
--'	World Event: Player is Dead
--'====================================================================================
		if ( UnitIsDead("player") ) and FinalFantasylizationOptions.Dead == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsDead == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. PlayerDie)
				FinalFantasylization_PlayerDie() -- music call for when you die.
			end
			FinalFantasylization_IsPlaying = true
			
			FinalFantasylization_PlayerIsDead = true
			FinalFantasylization_RegenGain = false
		else
			FinalFantasylization_PlayerIsDead = false
		end

--'====================================================================================
--'	World Event: Player is On Taxi "Horde and Alliance Varyiant"
--'====================================================================================
		if ( UnitOnTaxi("player") ) and ( factionEnglish == "Horde" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsTaxi == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. "Horde" .. " " .. Taxi)
				FinalFantasylization_HordeTaxi() -- music call for Taxi. ...
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsTaxi = true
		elseif ( UnitOnTaxi("player") ) and ( factionEnglish == "Alliance" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsTaxi == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. "Alliance" .. " " .. Taxi)
				FinalFantasylization_AllianceTaxi() -- music call for Taxi. ...
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsTaxi = true
		else
			FinalFantasylization_PlayerIsTaxi = false
		end

--'====================================================================================
--'	World Event: Player in Combat, Mounted
--'====================================================================================
		if IsMounted("player") and FinalFantasylization_PlayerIsCombat == true and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Mount == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsEscape == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. MountedEscape)
				FinalFantasylization_MountedEscape()
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsEscape = true
		else
			FinalFantasylization_PlayerIsEscape = false
		end

--'====================================================================================
--'	World Event: Player in Combat
--'====================================================================================
		if FinalFantasylization_PlayerIsCombat == true and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Combat == true and FinalFantasylizationOptions.Music == true and UnitAffectingCombat("player") then
			--FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombat)
			local inInstance, instanceType = IsInInstance();
			if FinalFantasylization_PlayerIsBattling == false then
				if UnitExists("target") then
					local _, _, _, _, _, mobID = strsplit("-", UnitGUID("target"))
					local name = UnitName("target")
					if IsInInstance() then
						if instanceType == "party" then
							if LibStub("LibBossIDs-1.0").BossIDs[mobID] then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatDungeonBoss .. name)
								FinalFantasylization_DungeonBoss()
							else
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatDungeonPVE)
								FinalFantasylization_WorldNormalPVE()
							end
						elseif instanceType == "raid" then
							if LibStub("LibBossIDs-1.0").BossIDs[mobID] then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatRaidBoss .. name)
								FinalFantasylization_RaidBoss()				-- <-- NEW	FinalFantasylization_RaidBoss()
							else
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatRaidPVE)
								FinalFantasylization_WorldNormalPVE()
							end
						elseif instanceType == "pvp" then
							if LibStub("LibBossIDs-1.0").BossIDs[mobID] then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatBGBoss .. name)
								FinalFantasylization_BattlegroundBoss()
							elseif UnitIsPlayer("target") and UnitIsEnemy("player", "target") and UnitHealth("target") > 0 then
								FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatBGPVP)
								FinalFantasylization_BattlegroundPVP()
							end
						end
					elseif LibStub("LibBossIDs-1.0").BossIDs[mobID] then
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldBoss .. name)
						FinalFantasylization_WorldBoss()
					elseif 	UnitIsPlayer("target") and UnitIsEnemy("player", "target") and UnitHealth("target") > 0 then
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldPVP)
						FinalFantasylization_WorldPVP()
					else
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldPVE)
						FinalFantasylization_WorldNormalPVE()
					end		
				else
					if IsInInstance() then
						if instanceType == "party" then
							FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatDungeonPVE)
							FinalFantasylization_WorldNormalPVE()
						elseif instanceType == "raid" then
							FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatRaidPVE)
							FinalFantasylization_WorldNormalPVE()
						end
					else
						FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. InCombatWorldPVE)
						FinalFantasylization_WorldNormalPVE()
					end
				end
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsBattling = true
		else
			FinalFantasylization_PlayerIsBattling = false
		end

--'====================================================================================
--'	World Event: Player in Pet Battle
--'====================================================================================
		if FinalFantasylization_PlayerIsPetBattle == true and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Combat == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsPetBattling == false then
				FinalFantasylization_WorldNormalPVE()
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsPetBattling = true
		else
			FinalFantasylization_PlayerIsPetBattling = false
		end

--'====================================================================================
--'	World Event: Player is Mounted in Hostile Zone
--'====================================================================================
		if IsMounted("player") and ( pvpType == "hostile" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Mount == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsHostileMounting == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. HostileEscape)
				FinalFantasylization_MountedEscape()
			end
			FinalFantasylization_IsPlaying = true 
			FinalFantasylization_PlayerIsHostileMounting = true
		else
			FinalFantasylization_PlayerIsHostileMounting = false
		end

--'====================================================================================
--'	World Event: Player on Flying Mount "Horde and Alliance Varyiant"
--'====================================================================================
		if IsFlying() and ( factionEnglish == "Horde" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsFlying == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Flying .. "(" .. "Horde" .. ")")
				FinalFantasylization_HordeFlying()
			end
			FinalFantasylization_IsPlaying = true 
			FinalFantasylization_PlayerIsFlying = true 
		elseif IsFlying() and ( factionEnglish == "Alliance" ) and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Flight == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsFlying == false then
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Flying .. "(" .. "Alliance" .. ")")
				FinalFantasylization_AllianceFlying()
			end
			FinalFantasylization_IsPlaying = true 
			FinalFantasylization_PlayerIsFlying = true 
		else 
			FinalFantasylization_PlayerIsFlying = false 
		end

--'====================================================================================
--'	World Event: Player is Mounted.. Chocobo!
--'====================================================================================
		if IsMounted("player") and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Mount == true and FinalFantasylizationOptions.Music == true then
			if FinalFantasylization_PlayerIsMounting == false then
				for i=1,40 do
					local spellName, _, _, _, _, _, _, _, _, spellId = UnitBuff("player",i)
					if ( spellName == "Running Wild" ) or ( spellID == 87840 ) then
						return
					end
				end
				FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. Mounted)
				FinalFantasylization_ClearMusicState()
				FinalFantasylization_Mounted()				
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_PlayerIsMounting = true
		else			
			FinalFantasylization_PlayerIsMounting = false
		end

--#########################################################################################
--#########################################################################################
--##
--##			ZONES
--##
--#########################################################################################
--#########################################################################################

	--Remove uiMapInfo.mapType Cosmic, World, and Continent from checks.
		if not ( FinalFantasylization_PlayerIsFlying == true ) and not ( FinalFantasylization_PlayerIsMounting == true ) and not ( FinalFantasylization_PlayerIsHostileMounting == true ) and not ( FinalFantasylization_PlayerIsEscape == true ) and not ( FinalFantasylization_PlayerIsTaxi == true ) and not ( FinalFantasylization_PlayerIsGhosting == true ) and FinalFantasylizationOptions.Music == true then
			if not ( uiMapInfo == nil ) then
				if ( uiMapInfo.mapType == ( 0 ) ) or ( uiMapInfo.mapType == ( 1 ) ) or ( uiMapInfo.mapType == ( 2 ) ) then
					return			
				elseif ( uiMapInfo.mapType == ( 3 ) ) then
					CurrentZoneID = uiMapInfo.mapID
				elseif MapIDfix[uiMapInfo.mapID] == nil then
					FinalFantasylization_debugMsg(FFZlib.Color.Red .. "MapIDfix Error? : ".. FFZlib.Color.Yellow .. uiMapInfo.name .. " : " .. uiMapInfo.mapID) -- for testing purposes this can spam
					CurrentZoneID = uiMapInfo.mapID
				else
					CurrentZoneID = MapIDfix[uiMapInfo.mapID]
				end
				if FFz.Zone[CurrentZoneID] then
					CurrentZoneInfo = FFz.Zone[CurrentZoneID]
				else
					FinalFantasylization_debugMsg(FFZlib.Color.Red .. "Zone Error: ".. FFZlib.Color.Yellow .. "Zone not added! - " .. uiMapInfo.name .. " : " .. uiMapInfo.mapID) -- for testing purposes this can spam
					return
				end
			end

			--'====================================================================================
			--'	Zone Event: Player is Resting
			--'====================================================================================
			if ( IsResting() ) and FinalFantasylizationOptions.Sleep == true and CurrentZoneInfo.Sleep == true and ( pvpType == "friendly" or pvpType == "hostile" or pvpType == "sanctuary" or pvpType == "contested" or pvpType == nil or pvpType == "") then
				if FinalFantasylization_CurrentZone ~= "Sleeping" then
					if lSubZoneName and ( CurrentZoneInfo[lSubZoneName].Faction == factionEnglish ) then
						if factionEnglish == "Alliance" then
							FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. AllianceRest )
						elseif factionEnglish == "Horde" then
							FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. HordeRest )
						end
						FinalFantasylization_Sleeping();
					else
						FinalFantasylization_HostileSong();
					end
					FinalFantasylization_CurrentZone = "Sleeping"
				else
					return
				end
				FinalFantasylization_IsPlaying = true
				return

			--'====================================================================================
			--'	Zone Event: Player is Swimming
			--'====================================================================================
			elseif IsSwimming() and FinalFantasylizationOptions.Swim == true then
				if FinalFantasylization_CurrentZone ~= "Swimming" then
					FinalFantasylization_CurrentZone = "Swimming"
					FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. Swimming )
					if lSubZoneName and CurrentZoneInfo[lSubZoneName].Swim then
						FinalFantasylization_Swimming(CurrentZoneInfo[lSubZoneName].Swim)
					else
						FinalFantasylization_Swimming(CurrentZoneInfo.Swim)
					end
				else
					return
				end
				
				FinalFantasylization_IsPlaying = true
				return
			elseif CurrentZoneInfo[lSubZoneName] then

			--'====================================================================================
			--' Zone Event: Capitals
			--'====================================================================================
				if ( CurrentZoneInfo[lSubZoneName].Type == "Capital" ) and FinalFantasylizationOptions.Capital == true then
					if FinalFantasylization_CurrentZone ~= SubZoneName then
						if ( CurrentZoneInfo.Faction == factionEnglish ) then
							FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn.. "CAPITAL: " .. lSubZoneName .. ", " .. ZoneName)
							FinalFantasylization_PlayMusic( S .. CurrentZoneInfo[lSubZoneName].Music );
							FinalFantasylization_debugMsg( tostring( CurrentZoneInfo[lSubZoneName].Music ) )
						elseif ( CurrentZoneInfo.Faction ~= factionEnglish ) then
							FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileCity .. lSubZoneName .. ", " .. ZoneName .. PlayerInHostile)
							FinalFantasylization_HostileSong()
						end
						FinalFantasylization_CurrentZone = lSubZoneName
					else
						return
					end
					FinalFantasylization_IsPlaying = true
					return
				elseif ( CurrentZoneInfo[lSubZoneName].Type == "Capital" ) and FinalFantasylizationOptions.Capital == false and FinalFantasylizationOptions.Sleep == true then
					if FinalFantasylization_CurrentZone ~= "Sleeping" then
						if ( CurrentZoneInfo[lSubZoneName].Faction == factionEnglish ) then
							FinalFantasylization_Sleeping();
						else
							FinalFantasylization_HostileSong();
						end
						FinalFantasylization_CurrentZone = "Sleeping"
					else
						return
					end
					FinalFantasylization_IsPlaying = true
					return

			--'====================================================================================
			--' Zone Event: Towns
			--'====================================================================================
				elseif ( CurrentZoneInfo[lSubZoneName].Type == "Town" ) then
					if FinalFantasylization_CurrentZone ~= lSubZoneName then
						if CurrentZoneInfo[lSubZoneName].Music then
							FinalFantasylization_PlayMusic( S .. CurrentZoneInfo[lSubZoneName].Music );
							FinalFantasylization_debugMsg( tostring( CurrentZoneInfo[lSubZoneName].Music ) )
						elseif ( CurrentZoneInfo[lSubZoneName].Faction == "Neutral" ) then
							FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn .. "TOWN: " .. lSubZoneName .. ", " .. ZoneName)
							FinalFantasylization_NeutralTowns()
						elseif ( CurrentZoneInfo[lSubZoneName].Faction == factionEnglish ) then
							FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn .. "TOWN: " .. lSubZoneName .. ", " .. ZoneName)
							if ( CurrentZoneInfo[lSubZoneName].Faction == "Horde" ) then
								FinalFantasylization_HordeTowns()
							elseif ( CurrentZoneInfo[lSubZoneName].Faction == "Alliance" ) then
								FinalFantasylization_AllianceTowns()
							else
								FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. "Town Check Error: " .. PlayerIn .. lSubZoneName .. ", " .. ZoneName)
							end
						elseif ( CurrentZoneInfo[lSubZoneName].Faction ~= factionEnglish ) then
							FinalFantasylization_debugMsg(FFZlib.Color.Crimson .. PlayerInHostileTown .. lSubZoneName .. ", " .. ZoneName .. PlayerInHostile)
							FinalFantasylization_HostileSong()						
						end
						FinalFantasylization_CurrentZone = lSubZoneName
					else
						return
					end
					FinalFantasylization_IsPlaying = true
					return

				--'====================================================================================
				--' Subzone
				--'====================================================================================
				elseif ( CurrentZoneInfo[lSubZoneName].Type == "Subzone" ) then
					if FinalFantasylization_CurrentZone ~= lSubZoneName then
						FinalFantasylization_CurrentZone = lSubZoneName
						FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn .. "SUBZONE: " .. SubZoneName .. ", " .. ZoneName)
						if CurrentZoneInfo[lSubZoneName].Music == nil then
							if CurrentZoneInfo.Songs == 1 then
								FinalFantasylization_PlayMusic( S .. CurrentZoneInfo.Music1 );
								FinalFantasylization_debugMsg( "Subzone music nil, playing ZONE: " .. ZoneName .. " music: " ..  tostring( CurrentZoneInfo.Music1 ) )
							else
								local x = math.random(1, CurrentZoneInfo.Songs);
									FinalFantasylization_PlayMusic( S .. CurrentZoneInfo[ tostring( "Music" .. x ) ] );
									FinalFantasylization_debugMsg( "Subzone music nil, playing ZONE: " .. ZoneName .. " music: " ..  tostring( CurrentZoneInfo[ tostring( "Music" .. x ) ] ) )						
							end
						else
							FinalFantasylization_PlayMusic( S .. CurrentZoneInfo[lSubZoneName].Music );
							FinalFantasylization_debugMsg( tostring( CurrentZoneInfo[lSubZoneName].Music ) )
						end
					else
						return
					end
					FinalFantasylization_IsPlaying = true
					return	

				--'====================================================================================
				--' Zone
				--'====================================================================================
				elseif ( CurrentZoneInfo[lSubZoneName].Type == "Zone" ) then
					if FinalFantasylization_CurrentZone ~= ZoneName then
						FinalFantasylization_CurrentZone = ZoneName
						FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn .. "ZONE: " .. ZoneName)
						if CurrentZoneInfo.Songs == 1 then
							FinalFantasylization_PlayMusic( S .. CurrentZoneInfo.Music1 );
							FinalFantasylization_debugMsg( tostring( CurrentZoneInfo.Music1 ) )
						else
							local x = math.random(1, CurrentZoneInfo.Songs);
								FinalFantasylization_PlayMusic( S .. CurrentZoneInfo[ tostring( "Music" .. x ) ] );
								FinalFantasylization_debugMsg( tostring( CurrentZoneInfo[ tostring( "Music" .. x ) ] ) )
						end
						FinalFantasylization_IsPlaying = true
					else
						return
					end
				end
			else
				if lSubZoneName ~= nil and lSubZoneName ~= ZoneName and FinalFantasylization_CurrentZone ~= ZoneName and FinalFantasylizationOptions.Debug == true then
					FinalFantasylization_debugMsg(FFZlib.Color.Red .. "SubZone Error: " .. FFZlib.Color.Orange .. "|-" .. FFZlib.Color.Blue .. lSubZoneName .. FFZlib.Color.Orange ..  "-| " .. FFZlib.Color.Aqua .. "- Not in FinalFantasylization.")
					PlaySound(11466, "Master", false) -- "You are not prepared!" - Illidan Stormrage
				end
				if FinalFantasylization_CurrentZone ~= ZoneName then
					FinalFantasylization_CurrentZone = ZoneName
					FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerIn .. "ZONE: " .. ZoneName)
					if CurrentZoneInfo.Songs == 1 then
						FinalFantasylization_PlayMusic( S .. CurrentZoneInfo.Music1 );
						FinalFantasylization_debugMsg( tostring( CurrentZoneInfo.Music1 ) )
					else
						local x = math.random(1, CurrentZoneInfo.Songs);
							FinalFantasylization_PlayMusic( S .. CurrentZoneInfo[ tostring( "Music" .. x ) ] );
							FinalFantasylization_debugMsg( tostring( CurrentZoneInfo[ tostring( "Music" .. x ) ] ) )
					end
					FinalFantasylization_IsPlaying = true
				else
					return
				end
			end
		end

--#########################################################################################
--#########################################################################################
--##
--##			DUNGEONS EVENTS
--##
--#########################################################################################
--#########################################################################################

	-- 5 Man Dungeons
		if IsInInstance() and FinalFantasylization_IsPlaying == false and FinalFantasylizationOptions.Music == true then
			local inInstance, instanceType = IsInInstance();
			
			if instanceType == "party" and FinalFantasylization_InInstance == false and FinalFantasylizationOptions.Dungeon == true then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerInDungeon.. ZoneName)
			-- Vanilla WoW Dungeons
				if ( ZoneName == SZ["Ragefire Chasm"] ) then				-- Ragefire Chasm Instance
					FinalFantasylization_Dungeon_RagefireChasmSong()
				elseif ( ZoneName == SZ["Wailing Caverns"] ) then			-- Wailing Caverns Instance
					FinalFantasylization_Dungeon_WailingCavernsSong()
				elseif ( ZoneName == SZ["The Deadmines"] ) then				-- The Deadmines Instance
					FinalFantasylization_Dungeon_DeadminesSong()
				elseif ( ZoneName == SZ["Shadowfang Keep"] ) then			-- Shadowfang Keep Instance
					FinalFantasylization_Dungeon_ShadowfangKeepSong()
				elseif ( ZoneName == SZ["Blackfathom Deeps"] ) then			-- Blackfathom Deeps Instance
					FinalFantasylization_Dungeon_BlackfathomDeepsSong()
				elseif ( ZoneName == SZ["The Stockade"] ) then				-- Stormwind Stockade Instance (TEST THIS!)
					FinalFantasylization_Dungeon_StormwindStockadeSong()
				elseif ( ZoneName == SZ["Gnomeregan"] ) then				-- Gnomeregan Instance
					FinalFantasylization_Dungeon_GnomereganSong()
				elseif ( ZoneName == SZ["Razorfen Kraul"] ) then			-- Razorfen Kraul Instance
					FinalFantasylization_Dungeon_RazorfenKraulSong()
				elseif ( ZoneName == SZ["Scarlet Monastery"] ) then			-- Scarlet Monastery Instance (TEST if works for all 4)
					FinalFantasylization_Dungeon_ScarletMonasterySong()
				elseif ( ZoneName == SZ["Razorfen Downs"] ) then			-- Razorfen Downs Instance
					FinalFantasylization_Dungeon_RazorfenDownsSong()
				elseif ( ZoneName == SZ["Uldaman"] ) then					-- Uldaman Instance
					FinalFantasylization_Dungeon_UldamanSong()
				elseif ( ZoneName == SZ["Zul'Farrak"] ) then				-- Zul'Farrak Instance
					FinalFantasylization_Dungeon_ZulFarrakSong()
				elseif ( ZoneName == SZ["Maraudon"] ) then					-- Maraudon Instance
					FinalFantasylization_Dungeon_MaraudonSong()
				elseif ( ZoneName == SZ["The Temple of Atal'Hakkar"] ) then	-- The Temple of Atal'Hakkar Instance
					FinalFantasylization_Dungeon_TempleofAtalHakkarSong()
				elseif ( ZoneName == SZ["Blackrock Depths"] ) then			-- Blackrock Depths Instance
					FinalFantasylization_Dungeon_BlackrockDepthsSong()


--				elseif ( ZoneName == Z["Lower Blackrock Spire"] ) then		-- Lower Blackrock Spire Instance
--					FinalFantasylization_Dungeon_LowerBlackrockSpireSong()
--				elseif ( ZoneName == Z["Upper Blackrock Spire"] ) then		-- Upper Blackrock Spire Instance
--					FinalFantasylization_Dungeon_UpperBlackrockSpireSong()


				elseif ( ZoneName == SZ["Dire Maul"] ) then					-- Dire Maul Instance
					FinalFantasylization_Dungeon_DireMaulSong()
				elseif ( ZoneName == SZ["Stratholme"] ) then				-- Stratholme Instance
					FinalFantasylization_Dungeon_StratholmeSong()
				elseif ( ZoneName == SZ["Scholomance"] ) then				-- Scholomance Instance
					FinalFantasylization_Dungeon_ScholomanceSong()

			-- Burning Crusade Dungeons
				elseif ( ZoneName == SZ["Hellfire Ramparts"] ) then			-- Hellfire Ramparts Instance
					FinalFantasylization_Dungeon_HellfireRampartsSong()
				elseif ( ZoneName == SZ["The Blood Furnace"] ) then			-- The Blood Furnace Instance
					FinalFantasylization_Dungeon_BloodFurnaceSong()
				elseif ( ZoneName == SZ["The Slave Pens"] ) then			-- The Slave Pens Instance
					FinalFantasylization_Dungeon_SlavePensSong()
				elseif ( ZoneName == SZ["The Underbog"] ) then				-- The Underbog Instance
					FinalFantasylization_Dungeon_UnderbogSong()
				elseif ( ZoneName == SZ["Mana-Tombs"] ) then				-- Mana-Tombs Instance
					FinalFantasylization_Dungeon_ManaTombsSong()
				elseif ( ZoneName == SZ["Auchenai Crypts"] ) then			-- Auchenai Crypts Instance
					FinalFantasylization_Dungeon_AuchenaiCryptsSong()
				elseif ( ZoneName == SZ["Sethekk Halls"] ) then				-- Sethekk Halls Instance
					FinalFantasylization_Dungeon_SethekkHallsSong()
				elseif ( ZoneName == SZ["The Steamvault"] ) then			-- The Steamvault Instance
					FinalFantasylization_Dungeon_SteamvaultSong()
				elseif ( ZoneName == SZ["The Shattered Halls"] ) then		-- The Shattered Halls Instance
					FinalFantasylization_Dungeon_ShatteredHallsSong()
				elseif ( ZoneName == SZ["Shadow Labyrinth"] ) then			-- Shadow Labyrinth Instance
					FinalFantasylization_Dungeon_ShadowLabyrinthSong()
				elseif ( ZoneName == SZ["Old Hillsbrad Foothills"] ) then	-- The Escape from Durnholde Keep Instance
					FinalFantasylization_Dungeon_EscapefromDurnholdeKeepSong()
				elseif ( ZoneName == SZ["The Mechanar"] ) then				-- The Mechanar Instance
					FinalFantasylization_Dungeon_MechanarSong()
				elseif ( ZoneName == SZ["The Botanica"] ) then				-- The Botanica Instance
					FinalFantasylization_Dungeon_BotanicaSong()
				elseif ( ZoneName == SZ["The Arcatraz"] ) then				-- The Arcatraz Instance
					FinalFantasylization_Dungeon_ArcatrazSong()
				elseif ( ZoneName == SZ["The Black Morass"] ) then			-- Opening the Dark Portal Instance
					FinalFantasylization_Dungeon_OpeningtheDarkPortalSong()
				elseif ( ZoneName == SZ["Magisters' Terrace"] ) then		-- Magisters' Terrace Instance
					FinalFantasylization_Dungeon_MagistersTerraceSong()
				
			-- Wrath of the Lich King Dungeons
				elseif ( ZoneName == SZ["Utgarde Keep"] ) then				-- Utgarde Keep Instance
					FinalFantasylization_Dungeon_UtgardeKeepSong()
				elseif ( ZoneName == SZ["The Nexus"] ) then					-- The Nexus Instance
					FinalFantasylization_Dungeon_TheNexusSong()
				elseif ( ZoneName == SZ["Azjol-Nerub"] ) then				-- Azjol-Nerub Instance
					FinalFantasylization_Dungeon_AzjolNerubSong()
				elseif ( ZoneName == SZ["Ahn'kahet: The Old Kingdom"] ) then	-- Ahn'kahet: The Old Kingdom Instance
					FinalFantasylization_Dungeon_AhnkahetTheOldKingdomSong()
				elseif ( ZoneName == SZ["Drak'Tharon Keep"] ) then			-- Drak'Tharon Keep Instance
					FinalFantasylization_Dungeon_DrakTharonKeepSong()
				elseif ( ZoneName == SZ["The Violet Hold"] ) then			-- The Violet Hold Instance
					FinalFantasylization_Dungeon_VioletHoldSong()
				elseif ( ZoneName == SZ["Gundrak"] ) then					-- Gundrak Instance
					FinalFantasylization_Dungeon_GundrakSong()
				elseif ( ZoneName == SZ["Halls of Stone"] ) then			-- Ulduar: Halls of Stone Instance
					FinalFantasylization_Dungeon_HallsofStoneSong()
				elseif ( ZoneName == SZ["Ulduar: Halls of Stone"] ) then	-- The Oculus Instance
					FinalFantasylization_Dungeon_TheOculusSong()
				elseif ( ZoneName == SZ["Halls of Lightning"] ) then		-- Ulduar: Halls of Lightning Instance
					FinalFantasylization_Dungeon_HallsofLightningSong()
				elseif ( ZoneName == SZ["Utgarde Pinnacle"] ) then			-- Utgarde Pinnacle Instance
					FinalFantasylization_Dungeon_UtgardePinnacleSong()
				elseif ( ZoneName == SZ["The Culling of Stratholme"] ) then	-- The Culling of Stratholme Instance
					FinalFantasylization_Dungeon_TheCullingofStratholmeSong()
				elseif ( ZoneName == SZ["Trial of the Champion"] ) then		-- Trial of the Champion Instance
					FinalFantasylization_Dungeon_TrialoftheChampionSong()
				elseif ( ZoneName == SZ["The Forge of Souls"] ) then		-- The Forge of Souls Instance
					FinalFantasylization_Dungeon_ForgeofSoulsSong()
				elseif ( ZoneName == SZ["Pit of Saron"] ) then				-- Pit of Saron Instance
					FinalFantasylization_Dungeon_PitofSaronSong()
				elseif ( ZoneName == SZ["Halls of Reflection"] ) then		-- Halls of Reflection Instance
					FinalFantasylization_Dungeon_HallsofReflectionSong()
	-- More Instances go here

			-- Debug: Instance Catch-all
				else
					FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. "Instance not in FinalFantasylization")
				end

--#########################################################################################
--#########################################################################################
--##
--##			RAID EVENTS
--##
--#########################################################################################
--#########################################################################################

			elseif instanceType == "raid" and FinalFantasylization_InInstance == false and FinalFantasylizationOptions.Raid == true then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerInRaid.. ZoneName)
				FinalFantasylization_RaidSong()

--#########################################################################################
--#########################################################################################
--##
--##			BATTLEGROUNDS
--##
--#########################################################################################
--#########################################################################################			

			elseif instanceType == "pvp" and FinalFantasylization_InInstance == false and FinalFantasylizationOptions.Battleground == true then
				FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. PlayerInBattleground.. ZoneName)
				if ( ZoneName == SZ["Alterac Valley"] ) then				-- Alterac Valley Battleground
					FinalFantasylization_AlteracValleyBG()
				elseif ( ZoneName == SZ["Arathi Basin"] ) then			-- Arathi Basin Battleground
					FinalFantasylization_ArathiBasinBG()
				elseif ( ZoneName == SZ["Eye of the Storm"] ) then		-- Eye of the Storm Battleground
					FinalFantasylization_EyeoftheStormBG()
				elseif ( ZoneName == SZ["Strand of the Ancients"] ) then	-- Strand of the Ancients Battleground
					FinalFantasylization_StrandsoftheAncientsBG()
				elseif ( ZoneName == SZ["Warsong Gulch"] ) then			-- Warsong Gulch Battleground
					FinalFantasylization_WarsongGulchBG()
				elseif ( ZoneName == SZ["Isle of Conquest"] ) then		-- Isle of Conquest Battleground
					FinalFantasylization_IsleOfConquestBG()
				else
					FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. "Battleground not in FinalFantasylization")
				end
			end
			FinalFantasylization_IsPlaying = true
			FinalFantasylization_InInstance = true
		else
			FinalFantasylization_InInstance = false
		end
	end
end

--#########################################################################################
--#########################################################################################
--##
--##			OTHER EVENTS
--##
--#########################################################################################
--#########################################################################################

--'====================================================================================
--'	Mounted Event: Howl's, Growl's, Roar's and Chocobo Kweh!! 
--'====================================================================================
function FinalFantasylization_JumpOrAscendStart()
	if IsMounted("player") and not UnitOnTaxi("player") and FinalFantasylizationOptions.ChocoboKweh == true and FinalFantasylizationOptions.Sound == true then
		currentSpeed, _, _, _ = GetUnitSpeed("player");
		
		for i=1,40 do
			local spellName, _, _, _, _, _, _, _, _, spellId = UnitBuff("player",i)
			if ( spellName == "Running Wild" ) or ( spellID == 87840 ) then
				if currentSpeed == 0 then
					FinalFantasylization_WorgenHowl();
					FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. "Worgen Howl - " .. spellName .. " - " .. spellID)
				end
				return
			end
		end
			
		local mountcount = C_MountJournal.GetNumDisplayedMounts()
		local mountName = nil
		i = 1
		repeat 
			creatureName, spellID, _, active, _, _, _, _, _, _, _, mountID = C_MountJournal.GetMountInfoByID(i)
			i = i + 1
			if type(creatureName) == "string" then
				mountName = string.lower(creatureName)
			end
		until ( active == true )
		-- Debug
--			FinalFantasylization_debugMsg(FFZlib.Color.Aqua .. creatureName .. ": SpellID = " .. tostring(spellID) .. ", mountID = " .. tostring(mountID) )
		-- Chocobo Kweh
		if string.match(mountName,'strider') then
			FinalFantasylization_ChocoboKweh();
		-- Felsaber Roar
		elseif string.match(mountName,'felsaber') then 
			if currentSpeed == 0 then
				FinalFantasylization_FelsaberRoar();
			end
		end
	end
end

--'====================================================================================
--'	Player Camping
--'====================================================================================
function FinalFantasylization_PlayerCamping()
	if FinalFantasylizationOptions.Enabled == true and startFinalfantasylization == true  and FinalFantasylizationOptions.Music == true then
		if FinalFantasylizationOptions.Debug == true then
			FinalFantasylization_debugMsg(FFZlib.Color.Yellow .. PlayerCamping)
		end
	FinalFantasylization_Camping()
	end
	FinalFantasylization_IsPlaying = true
end

--'====================================================================================
--'		END OF EVENTS
--'====================================================================================

-- Initializes FinalFantasylization after all saved variables have been loaded.

-- Handles timer updates. Called once per video frame.
function FinalFantasylization_OnUpdate(self, elapsed)
	TimeSinceLastUpdate = (TimeSinceLastUpdate or 0) + (elapsed or 0); 	

	if (TimeSinceLastUpdate > FinalFantasylization_UpdateInterval) then
		FinalFantasylization_GetMusic()

		TimeSinceLastUpdate = 0;
	end
end

------------------------------------------------------------
-- FinalFantasylization methods
------------------------------------------------------------
-- Resets all FinalFantasylization options. Used to set the saved variable to a default state.
function FinalFantasylizationResetOptions()
	FinalFantasylizationOptions = {}
	FinalFantasylizationFillMissingOptions()
end

-- Adds default values for any FinalFantasylization options that are missing. This can happen after an upgrade.
function FinalFantasylizationFillMissingOptions()
	if not FinalFantasylizationOptions then FinalFantasylizationOptions = {} end
	
	if FinalFantasylizationOptions.Enabled == nil then FinalFantasylizationOptions.Enabled = true end
	if FinalFantasylizationOptions.Music == nil then FinalFantasylizationOptions.Music = true end
	if FinalFantasylizationOptions.Combat == nil then FinalFantasylizationOptions.Combat = true end
	if FinalFantasylizationOptions.Mount == nil then FinalFantasylizationOptions.Mount = true end
	if FinalFantasylizationOptions.Dungeon == nil then FinalFantasylizationOptions.Dungeon = true end
	if FinalFantasylizationOptions.Raid == nil then FinalFantasylizationOptions.Raid = true end
	if FinalFantasylizationOptions.Battleground == nil then FinalFantasylizationOptions.Battleground = true end
	if FinalFantasylizationOptions.Sleep == nil then FinalFantasylizationOptions.Sleep = true end
	if FinalFantasylizationOptions.Swim == nil then FinalFantasylizationOptions.Swim = true end
	if FinalFantasylizationOptions.Dead == nil then FinalFantasylizationOptions.Dead = true end
	if FinalFantasylizationOptions.Flight == nil then FinalFantasylizationOptions.Flight = true end
	if FinalFantasylizationOptions.Capital == nil then FinalFantasylizationOptions.Capital = true end
	if FinalFantasylizationOptions.Sound == nil then FinalFantasylizationOptions.Sound = true end
	if FinalFantasylizationOptions.Fanfare == nil then FinalFantasylizationOptions.Fanfare = true end
	if FinalFantasylizationOptions.ChocoboKweh == nil then FinalFantasylizationOptions.ChocoboKweh = true end
	if FinalFantasylizationOptions.LevelUp == nil then FinalFantasylizationOptions.LevelUp = true end
	if FinalFantasylizationOptions.Debug == nil then FinalFantasylizationOptions.Debug = false end
end