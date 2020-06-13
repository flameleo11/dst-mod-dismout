
4:     if TheNet:GetIsMasterSimulation() then
4:     if TheNet:GetIsMasterSimulation() then
8: local TileBG = require ("widgets/tilebg"..((TheNet ~= nil and TheNet:GetServerGameMode() == "quagmire") and "_quagmire" or ""))
8: local TileBG = require ("widgets/tilebg"..((TheNet ~= nil and TheNet:GetServerGameMode() == "quagmire") and "_quagmire" or ""))
9:         (TheNet:GetPVPEnabled() or not inst:HasTag("player")) and
9:         (TheNet:GetPVPEnabled() or not inst:HasTag("player")) and
9:     elseif userid == TheNet:GetUserID() then
9:     elseif userid == TheNet:GetUserID() then
9:     if TheNet:IsDedicated() then
9:     if TheNet:IsDedicated() then
10:     if not TheNet:IsDedicated() then
10:     if not TheNet:IsDedicated() then
11:         locale = LOC.GetLocaleByCode( TheNet:GetDefaultServerLanguage() )
11:         locale = LOC.GetLocaleByCode( TheNet:GetDefaultServerLanguage() )
11:     if not TheNet:GetPVPEnabled() then
11:     if not TheNet:GetPVPEnabled() then
12:     local status = TheNet:GetChildProcessStatus()
12:     local status = TheNet:GetChildProcessStatus()
13:  local hasError = TheNet:GetChildProcessError() or self.errorStartingServers
13:  local hasError = TheNet:GetChildProcessError() or self.errorStartingServers
14:         if TheNet:GetIsServer() then
14:         if TheNet:GetIsServer() then
15:     TheNet:JoinServerResponse(true) -- cancel join
15:     TheNet:JoinServerResponse(true) -- cancel join
16:     local status = TheNet:GetChildProcessStatus()
16:     local status = TheNet:GetChildProcessStatus()
16:     TheNet:Disconnect(false)
16:     TheNet:Disconnect(false)
17:  local hasError = TheNet:GetChildProcessError() or self.errorStartingServers
17:  local hasError = TheNet:GetChildProcessError() or self.errorStartingServers
18:  local sessionid = TheNet:GetSessionIdentifier()
18:  local sessionid = TheNet:GetSessionIdentifier()
19:      local ClientObjs = TheNet:GetClientTable()
19:      local ClientObjs = TheNet:GetClientTable()
19:    name = TheNet:GetServerName()
19:    name = TheNet:GetServerName()
19:     for i, v in ipairs(TheNet:GetClientTable() or {}) do
19:     for i, v in ipairs(TheNet:GetClientTable() or {}) do
20:    desc = tostring(TheNet:GetServerDescription())
20:    desc = tostring(TheNet:GetServerDescription())
20:     return TheNet:IsOnlineMode()
20:     return TheNet:IsOnlineMode()
21:     local canpvp = not inst:HasTag("player") or TheNet:GetPVPEnabled()
21:     local canpvp = not inst:HasTag("player") or TheNet:GetPVPEnabled()
22:     self.current_eventid = string.upper(TheNet:GetServerGameMode())
22:     self.current_eventid = string.upper(TheNet:GetServerGameMode())
22:     self.isquagmireshop = TheNet:GetServerGameMode() == "quagmire" or nil
22:     self.isquagmireshop = TheNet:GetServerGameMode() == "quagmire" or nil
22:     self.mouse_enabled = IsNotConsole() and not TheNet:IsDedicated()
22:     self.mouse_enabled = IsNotConsole() and not TheNet:IsDedicated()
23:     if not TheNet:IsDedicated() then
23:     if not TheNet:IsDedicated() then
23:     local pingVal = TheNet:GetAveragePing()--self.owner)
23:     local pingVal = TheNet:GetAveragePing()--self.owner)
24:     if not TheNet:IsDedicated() then
24:     if not TheNet:IsDedicated() then
24:     local entity = Ents[guid] or TheNet:GetClientTableForUser(userid)
24:     local entity = Ents[guid] or TheNet:GetClientTableForUser(userid)
25:      if not Lavaarena_CommunityProgression:IsQueryActive(TheNet:GetUserID()) then
25:      if not Lavaarena_CommunityProgression:IsQueryActive(TheNet:GetUserID()) then
26:  if inst.spider_leader_isplayer and not TheNet:GetPVPEnabled()
26:  if inst.spider_leader_isplayer and not TheNet:GetPVPEnabled()
26:     self.maxslots = GetMaxItemSlots(TheNet:GetServerGameMode())
26:     self.maxslots = GetMaxItemSlots(TheNet:GetServerGameMode())
27:     if TheNet:GetServerGameMode() == "quagmire" then
27:     if TheNet:GetServerGameMode() == "quagmire" then
27:     if TheNet:GetServerGameMode() == "quagmire" then
27:     if TheNet:GetServerGameMode() == "quagmire" then
27:     if TheNet:GetServerGameMode() ~= "quagmire" then
27:     if TheNet:GetServerGameMode() ~= "quagmire" then
27:     local words, emoji_translator = GetAllowedEmojiNames(TheNet:GetUserID())
27:     local words, emoji_translator = GetAllowedEmojiNames(TheNet:GetUserID())
28:  --print("Is offline?", TheNet:IsOnlineMode() or "nil", TheFrontEnd:GetIsOfflineMode() or "nil")
28:  --print("Is offline?", TheNet:IsOnlineMode() or "nil", TheFrontEnd:GetIsOfflineMode() or "nil")
28:     if not TheNet:IsDedicated() then
28:     if not TheNet:IsDedicated() then
28:     if not TheNet:IsDedicated() then
28:     if not TheNet:IsDedicated() then
28:     if not TheNet:IsDedicated() then
28:     if not TheNet:IsDedicated() then
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:             TheNet:SendResumeRequestToServer(TheNet:GetUserID())
30:     if TheNet:GetServerGameMode() == "quagmire" then
30:     if TheNet:GetServerGameMode() == "quagmire" then
30:     self.current_eventid = TheNet:GetServerGameMode()
30:     self.current_eventid = TheNet:GetServerGameMode()
30:     TheNet:SetClientCacheSessionIdentifier(_mastersessionid:value())
30:     TheNet:SetClientCacheSessionIdentifier(_mastersessionid:value())
33:  self.wxp = (TheNet:IsOnlineMode() and Settings.match_results.wxp_data ~= nil) and Settings.match_results.wxp_data[TheNet:GetUserID()] or {}
33:  self.wxp = (TheNet:IsOnlineMode() and Settings.match_results.wxp_data ~= nil) and Settings.match_results.wxp_data[TheNet:GetUserID()] or {}
33:  self.wxp = (TheNet:IsOnlineMode() and Settings.match_results.wxp_data ~= nil) and Settings.match_results.wxp_data[TheNet:GetUserID()] or {}
33:     if TheNet:GetServerGameMode() == "quagmire" then
33:     if TheNet:GetServerGameMode() == "quagmire" then
33:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
33:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
33:     TheNet:StartCloudServerRequestProcess(sessionid, name, description, LOC.GetLocaleCode(), password, claninfo.id, claninfo.only, claninfo.admin, GetFestivalEventInfo().GAME_MODE)
33:     TheNet:StartCloudServerRequestProcess(sessionid, name, description, LOC.GetLocaleCode(), password, claninfo.id, claninfo.only, claninfo.admin, GetFestivalEventInfo().GAME_MODE)
34:    name = TheNet:GetServerName()
34:    name = TheNet:GetServerName()
34:     if not TheNet:IsDedicated() then
34:     if not TheNet:IsDedicated() then
34:     if not TheNet:IsDedicated() then
34:     if not TheNet:IsDedicated() then
35:         if TheNet:IsOnlineMode() or not IsRestrictedCharacter( hero ) then
35:         if TheNet:IsOnlineMode() or not IsRestrictedCharacter( hero ) then
35:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
35:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
35: elseif not TheNet:IsDedicated() then
35: elseif not TheNet:IsDedicated() then
35: if TheNet:GetServerGameMode() == "lavaarena" or TheNet:GetServerGameMode() == "quagmire" then
35: if TheNet:GetServerGameMode() == "lavaarena" or TheNet:GetServerGameMode() == "quagmire" then
35: if TheNet:GetServerGameMode() == "lavaarena" or TheNet:GetServerGameMode() == "quagmire" then
36:         TheNet:SetCheckVersionOnQuery( true )
36:         TheNet:SetCheckVersionOnQuery( true )
36:     if not TheNet:IsDedicated() then
36:     if not TheNet:IsDedicated() then
36:     if not TheNet:IsDedicated() then
36:     if not TheNet:IsDedicated() then
37:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
37:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
38:     if attacker ~= nil and not self:IsFollower(attacker) and self.inst ~= attacker and (attacker.components.minigame_participator == nil or (attacker:HasTag("player") and TheNet:GetPVPEnabled())) then
38:     if attacker ~= nil and not self:IsFollower(attacker) and self.inst ~= attacker and (attacker.components.minigame_participator == nil or (attacker:HasTag("player") and TheNet:GetPVPEnabled())) then
38:     if not TheNet:IsDedicated() then
38:     if not TheNet:IsDedicated() then
38:     if TheNet:GetServerGameMode() == "quagmire" then
38:     if TheNet:GetServerGameMode() == "quagmire" then
38: for i = 1, TheNet:GetServerMaxPlayers() do
38: for i = 1, TheNet:GetServerMaxPlayers() do
38: for i = 1, TheNet:GetServerMaxPlayers() do
38: for i = 1, TheNet:GetServerMaxPlayers() do
39:     if not TheNet:IsDedicated() then
39:     if not TheNet:IsDedicated() then
39:     local cloudServerRequestState = TheNet:GetCloudServerRequestState()
39:     local cloudServerRequestState = TheNet:GetCloudServerRequestState()
39:     local offline = not TheNet:IsOnlineMode()
39:     local offline = not TheNet:IsOnlineMode()
40:  if not TheNet:IsOnlineMode() then
40:  if not TheNet:IsOnlineMode() then
40:     if not TheNet:IsDedicated() then
40:     if not TheNet:IsDedicated() then
40:     if not TheNet:IsDedicated() then
40:     if not TheNet:IsDedicated() then
40:     if not TheNet:IsDedicated() then
40:     if not TheNet:IsDedicated() then
40:     if TheNet:GetServerGameMode() == "lavaarena" then
40:     if TheNet:GetServerGameMode() == "lavaarena" then
41:         if not TheNet:IsDedicated() then
41:         if not TheNet:IsDedicated() then
41:         if not TheNet:IsDedicated() then
41:         if not TheNet:IsDedicated() then
41:     _snapshot:set(TheNet:GetCurrentSnapshot())
41:     _snapshot:set(TheNet:GetCurrentSnapshot())
41:     for i, v in ipairs(TheSim:FindEntities(x, y, z, 4, { "_combat" }, TheNet:GetPVPEnabled() and NO_TAGS_PVP or NO_TAGS)) do
41:     for i, v in ipairs(TheSim:FindEntities(x, y, z, 4, { "_combat" }, TheNet:GetPVPEnabled() and NO_TAGS_PVP or NO_TAGS)) do
41:     if not TheNet:IsDedicated() then
41:     if not TheNet:IsDedicated() then
42:     if not TheNet:IsDedicated() then
42:     if not TheNet:IsDedicated() then
42:     self:SetPartyTable(TheNet:GetPartyTable())
42:     self:SetPartyTable(TheNet:GetPartyTable())
43:     if not TheNet:IsDedicated() then
43:     if not TheNet:IsDedicated() then
43:     if TheNet:GetServerGameMode() == "lavaarena" then
43:     if TheNet:GetServerGameMode() == "lavaarena" then
43:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
43:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
44:                 TheNet:IsOnlineMode() and "Connected" or "Offline",
44:                 TheNet:IsOnlineMode() and "Connected" or "Offline",
44:     if not TheNet:IsDedicated() then
44:     if not TheNet:IsDedicated() then
44:     if not TheNet:IsDedicated() then
44:     if not TheNet:IsDedicated() then
44:     self.dressup = self.proot:AddChild(DressupPanel(self, profile, TheNet:GetClientTableForUser(self.owner_player.userid), function() self:SetPortrait() end, recent_item_types, recent_item_ids))
44:     self.dressup = self.proot:AddChild(DressupPanel(self, profile, TheNet:GetClientTableForUser(self.owner_player.userid), function() self:SetPortrait() end, recent_item_types, recent_item_ids))
44:     TheNet:SearchServers(self.event_id)
44:     TheNet:SearchServers(self.event_id)
45:                 TheNet:GetIsServer() and "as Host" or ""
45:                 TheNet:GetIsServer() and "as Host" or ""
45:             if not TheNet:IsDedicated() and (SaveGameIndex:IsSlotMultiLevel(slotnum) or SaveGameIndex:GetSlotServerData(slotnum).use_cluster_path) then
45:             if not TheNet:IsDedicated() and (SaveGameIndex:IsSlotMultiLevel(slotnum) or SaveGameIndex:GetSlotServerData(slotnum).use_cluster_path) then
46:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
46:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
46:         if not TheNet:IsDedicated() then
46:         if not TheNet:IsDedicated() then
46:     if not TheNet:IsDedicated() then
46:     if not TheNet:IsDedicated() then
46:     local clients = TheNet:GetClientTable() or {}
46:     local clients = TheNet:GetClientTable() or {}
47:    if (#self.players < TheNet:GetServerMaxPlayers()) and not widget.votestart_warned then
47:    if (#self.players < TheNet:GetServerMaxPlayers()) and not widget.votestart_warned then
47:         if not TheNet:IsDedicated() then
47:         if not TheNet:IsDedicated() then
47:     if not TheNet:GetServerIsClientHosted() then
47:     if not TheNet:GetServerIsClientHosted() then
47:     if not TheNet:IsDedicated() then
47:     if not TheNet:IsDedicated() then
47:     if TheNet:GetIsClient() then
47:     if TheNet:GetIsClient() then
48:         TheNet:SetIsWorldSaving(false)
48:         TheNet:SetIsWorldSaving(false)
48:     if TheNet:GetServerGameMode() ~= "quagmire" then
48:     if TheNet:GetServerGameMode() ~= "quagmire" then
48:     if TheNet:GetServerGameMode() ~= "quagmire" then
48:     if TheNet:GetServerGameMode() ~= "quagmire" then
48:     self.show_player_badge = not TheFrontEnd:GetIsOfflineMode() and TheNet:IsOnlineMode()
48:     self.show_player_badge = not TheFrontEnd:GetIsOfflineMode() and TheNet:IsOnlineMode()
48:     TheNet:LoadPermissionLists()
48:     TheNet:LoadPermissionLists()
48:     TheNet:LoadPermissionLists()
48:     TheNet:LoadPermissionLists()
49:    TheNet:SendRemoteExecute(fnstr, x, z)
49:    TheNet:SendRemoteExecute(fnstr, x, z)
49:  local client_table = TheNet:GetClientTableForUser(ThePlayer.userid)
49:  local client_table = TheNet:GetClientTableForUser(ThePlayer.userid)
50:  if TheNet:GetServerEvent() and TheNet:GetServerGameMode() == FESTIVAL_EVENTS.LAVAARENA then
50:  if TheNet:GetServerEvent() and TheNet:GetServerGameMode() == FESTIVAL_EVENTS.LAVAARENA then
50:  if TheNet:GetServerEvent() and TheNet:GetServerGameMode() == FESTIVAL_EVENTS.LAVAARENA then
50:     local offline = not TheNet:IsOnlineMode()
50:     local offline = not TheNet:IsOnlineMode()
51:    self.eventid = TheNet:GetServerGameMode() --Note(Peter):Ahhhhh! we're mixing game mode and event id and server event name, it works though because it's all "lavaarena" due to the c-side being case-insensitive
51:    self.eventid = TheNet:GetServerGameMode() --Note(Peter):Ahhhhh! we're mixing game mode and event id and server event name, it works though because it's all "lavaarena" due to the c-side being case-insensitive
51:  if TheNet:GetServerGameMode() == "lavaarena" then
51:  if TheNet:GetServerGameMode() == "lavaarena" then
51:                 local file = TheNet:GetWorldSessionFile(session_id)
51:                 local file = TheNet:GetWorldSessionFile(session_id)
51:         local gamemode = TheNet:GetServerGameMode()
51:         local gamemode = TheNet:GetServerGameMode()
51:         TheNet:TruncateSnapshots(_world.meta.session_identifier, snapshot)
51:         TheNet:TruncateSnapshots(_world.meta.session_identifier, snapshot)
51:     inst.canhitplayers = not owner:HasTag("player") or TheNet:GetPVPEnabled()
51:     inst.canhitplayers = not owner:HasTag("player") or TheNet:GetPVPEnabled()
51:     local ClientObjs = TheNet:GetClientTable()
51:     local ClientObjs = TheNet:GetClientTable()
52:     if TheNet:IsDedicated() then
52:     if TheNet:IsDedicated() then
53:         local my_userid = TheNet:GetUserID()
53:         local my_userid = TheNet:GetUserID()
53:     if TheNet:IsDedicated() then
53:     if TheNet:IsDedicated() then
53:     return not self.should_show_rank_badge or TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode()
53:     return not self.should_show_rank_badge or TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode()
54:             TheNet:SystemMessage(msg)
54:             TheNet:SystemMessage(msg)
54:         local server_name = TheNet:GetServerName()
54:         local server_name = TheNet:GetServerName()
54:     if not TheNet:IsDedicated() then
54:     if not TheNet:IsDedicated() then
54:     local is_valid_time_to_use_remote = TheNet:GetIsClient() and (TheNet:GetIsServerAdmin() or IsConsole())
54:     local is_valid_time_to_use_remote = TheNet:GetIsClient() and (TheNet:GetIsServerAdmin() or IsConsole())
54:     local is_valid_time_to_use_remote = TheNet:GetIsClient() and (TheNet:GetIsServerAdmin() or IsConsole())
55:     if not TheNet:IsDedicated() then
55:     if not TheNet:IsDedicated() then
55:     if TheNet:GetServerIsClientHosted() and not (TheShard:IsMaster() or TheShard:IsSlave()) then
55:     if TheNet:GetServerIsClientHosted() and not (TheShard:IsMaster() or TheShard:IsSlave()) then
56:             TheNet:Announce(msg, nil, nil, category)
56:             TheNet:Announce(msg, nil, nil, category)
56:         local client = TheNet:GetClientTableForUser(self.targetuserid)
56:         local client = TheNet:GetClientTableForUser(self.targetuserid)
56:     if TheNet:GetServerGameMode() == "quagmire" then
56:     if TheNet:GetServerGameMode() == "quagmire" then
56:     self.username = self.experience_root:AddChild(Text(CHATFONT, 30, TheNet:GetLocalUserName()))
56:     self.username = self.experience_root:AddChild(Text(CHATFONT, 30, TheNet:GetLocalUserName()))
56: if not TheNet:IsDedicated() then
56: if not TheNet:IsDedicated() then
58:      UserCommands.RunUserCommand("playerreadytostart", {ready="true"}, TheNet:GetClientTableForUser(TheNet:GetUserID()))
58:      UserCommands.RunUserCommand("playerreadytostart", {ready="true"}, TheNet:GetClientTableForUser(TheNet:GetUserID()))
58:      UserCommands.RunUserCommand("playerreadytostart", {ready="true"}, TheNet:GetClientTableForUser(TheNet:GetUserID()))
58:             if not TheNet:IsDedicated() then
58:             if not TheNet:IsDedicated() then
58:     if TheNet:GetServerGameMode() == "lavaarena" then
58:     if TheNet:GetServerGameMode() == "lavaarena" then
59:  elseif TheNet:GetServerGameMode() == "quagmire" then
59:  elseif TheNet:GetServerGameMode() == "quagmire" then
59:  self.title = STRINGS.UI.WXPLOBBYPANEL[string.upper(TheNet:GetServerGameMode())][outcome.won and "TITLE_VICTORY" or "TITLE_DEFEAT"]
59:  self.title = STRINGS.UI.WXPLOBBYPANEL[string.upper(TheNet:GetServerGameMode())][outcome.won and "TITLE_VICTORY" or "TITLE_DEFEAT"]
59:         if not TheNet:IsDedicated() then
59:         if not TheNet:IsDedicated() then
59:         if not TheNet:IsDedicated() then
59:         if not TheNet:IsDedicated() then
60:        widget.checked = TheWorld.net ~= nil and TheWorld.net.components.worldcharacterselectlobby:IsPlayerReadyToStart(TheNet:GetUserID()) or false
60:        widget.checked = TheWorld.net ~= nil and TheWorld.net.components.worldcharacterselectlobby:IsPlayerReadyToStart(TheNet:GetUserID()) or false
60:     elseif TheNet:GetServerGameMode() == "quagmire" then
60:     elseif TheNet:GetServerGameMode() == "quagmire" then
61:  if TheNet:GetServerGameMode() == "lavaarena" then
61:  if TheNet:GetServerGameMode() == "lavaarena" then
61:  if TheNet:IsDedicated() then
61:  if TheNet:IsDedicated() then
61:  local ClientObjs = TheNet:GetClientTable()
61:  local ClientObjs = TheNet:GetClientTable()
61:     if not TheNet:IsDedicated() then
61:     if not TheNet:IsDedicated() then
61:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
61:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
62:  if target == nil or (target.components.minigame_participator == nil or (target:HasTag("player") and TheNet:GetPVPEnabled())) then
62:  if target == nil or (target.components.minigame_participator == nil or (target:HasTag("player") and TheNet:GetPVPEnabled())) then
62:         if not TheNet:IsDedicated() then
62:         if not TheNet:IsDedicated() then
62:     if not TheNet:IsDedicated() then
62:     if not TheNet:IsDedicated() then
62:     if TheNet:GetServerGameMode() ~= "quagmire" then
62:     if TheNet:GetServerGameMode() ~= "quagmire" then
63:  local quest_query_successful = Lavaarena_CommunityProgression:GetQuestQuerySuccessful(TheNet:GetUserID())
63:  local quest_query_successful = Lavaarena_CommunityProgression:GetQuestQuerySuccessful(TheNet:GetUserID())
63:     if _netvars.victorystate:value() > 0 and not TheNet:IsDedicated() and ThePlayer ~= nil and ThePlayer:IsValid() then
63:     if _netvars.victorystate:value() > 0 and not TheNet:IsDedicated() and ThePlayer ~= nil and ThePlayer:IsValid() then
63:     if TheNet:GetServerGameMode() ~= "quagmire" then
63:     if TheNet:GetServerGameMode() ~= "quagmire" then
63: DEBUGGER_ENABLED = TheSim:ShouldInitDebugger() and IsNotConsole() and CONFIGURATION ~= "PRODUCTION" and not TheNet:IsDedicated()
63: DEBUGGER_ENABLED = TheSim:ShouldInitDebugger() and IsNotConsole() and CONFIGURATION ~= "PRODUCTION" and not TheNet:IsDedicated()
64:     if TheNet:GetServerGameMode() == "quagmire" then
64:     if TheNet:GetServerGameMode() == "quagmire" then
65:    self.details_root = self.root:AddChild(self:BuildQuestPanel(Lavaarena_CommunityProgression:GetCurrentQuestData(TheNet:GetUserID())))
65:    self.details_root = self.root:AddChild(self:BuildQuestPanel(Lavaarena_CommunityProgression:GetCurrentQuestData(TheNet:GetUserID())))
65:         TheNet:SetIsWorldSaving(false)
65:         TheNet:SetIsWorldSaving(false)
65:     if not TheNet:IsDedicated() then
65:     if not TheNet:IsDedicated() then
65:     if TheNet:GetServerGameMode() == "quagmire" then
65:     if TheNet:GetServerGameMode() == "quagmire" then
65:     if TheNet:GetServerGameMode() ~= "quagmire" then
65:     if TheNet:GetServerGameMode() ~= "quagmire" then
65:     TheNet:CancelCloudServerRequest()
65:     TheNet:CancelCloudServerRequest()
66:                 function() TheNet:SystemMessage(msg) end or
66:                 function() TheNet:SystemMessage(msg) end or
66:     if not TheNet:IsDedicated() then
66:     if not TheNet:IsDedicated() then
66:     if TheNet:GetServerGameMode() == "quagmire" then
66:     if TheNet:GetServerGameMode() == "quagmire" then
66:     TheNet:JoinServerResponse( true ) -- cancel join
66:     TheNet:JoinServerResponse( true ) -- cancel join
67:                 function() TheNet:Announce(msg, nil, nil, category) end,
67:                 function() TheNet:Announce(msg, nil, nil, category) end,
67:     TheNet:Disconnect(false)
67:     TheNet:Disconnect(false)
68:                 (TheNet:GetPVPEnabled() or not (inst.WINDSTAFF_CASTER_ISPLAYER and v:HasTag("player"))) then
68:                 (TheNet:GetPVPEnabled() or not (inst.WINDSTAFF_CASTER_ISPLAYER and v:HasTag("player"))) then
68:         if not TheNet:IsDedicated() then
68:         if not TheNet:IsDedicated() then
68:     if not TheNet:IsDedicated() then
68:     if not TheNet:IsDedicated() then
68:     if TheNet:GetServerGameMode() == "lavaarena" then
68:     if TheNet:GetServerGameMode() == "lavaarena" then
69:     if not TheNet:IsDedicated() then
69:     if not TheNet:IsDedicated() then
69:     if TheNet:GetServerGameMode() == "quagmire" then
69:     if TheNet:GetServerGameMode() == "quagmire" then
69:     if TheNet:IsDedicated() then
69:     if TheNet:IsDedicated() then
70:         if not TheNet:IsDedicated() then
70:         if not TheNet:IsDedicated() then
70:         if not TheNet:IsDedicated() then
70:         if not TheNet:IsDedicated() then
70:         if not TheNet:IsDedicated() then
70:         if not TheNet:IsDedicated() then
70:     if TheNet:GetServerGameMode() == "lavaarena" then
70:     if TheNet:GetServerGameMode() == "lavaarena" then
70:     self.mouse_enabled = enable and IsNotConsole() and not TheNet:IsDedicated()
70:     self.mouse_enabled = enable and IsNotConsole() and not TheNet:IsDedicated()
71:         local current_snapshot = TheNet:GetCurrentSnapshot()
71:         local current_snapshot = TheNet:GetCurrentSnapshot()
71:         TheNet:SetCheckVersionOnQuery( true )
71:         TheNet:SetCheckVersionOnQuery( true )
72:        TheNet:Announce(STRINGS.UI.HUD.REPORT_RESULT_ANNOUCEMENT)
72:        TheNet:Announce(STRINGS.UI.HUD.REPORT_RESULT_ANNOUCEMENT)
72:         local party = TheNet:GetPartyTable()
72:         local party = TheNet:GetPartyTable()
72:     elseif TheNet:GetServerGameMode() == "quagmire" then
72:     elseif TheNet:GetServerGameMode() == "quagmire" then
72:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
72:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
73:     if TheNet:IsDedicated() then
73:     if TheNet:IsDedicated() then
74:    Stats.PushMetricsEvent("toggleservernamefilter", TheNet:GetUserID(), data)
74:    Stats.PushMetricsEvent("toggleservernamefilter", TheNet:GetUserID(), data)
74:             TheNet:SetCurrentSnapshot(snapshot) --Slave call only
74:             TheNet:SetCurrentSnapshot(snapshot) --Slave call only
75:     if not TheNet:IsDedicated() then
75:     if not TheNet:IsDedicated() then
76:    if net.components.worldcharacterselectlobby:IsPlayerReadyToStart(TheNet:GetUserID()) == playerready_checkbox.checked then
76:    if net.components.worldcharacterselectlobby:IsPlayerReadyToStart(TheNet:GetUserID()) == playerready_checkbox.checked then
77:         if not TheNet:IsDedicated() then
77:         if not TheNet:IsDedicated() then
77:     if TheNet:IsDedicated() then
77:     if TheNet:IsDedicated() then
78:     if TheNet:IsDedicated() then
78:     if TheNet:IsDedicated() then
78:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
78:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
78:     local offline = not TheNet:IsOnlineMode()
78:     local offline = not TheNet:IsOnlineMode()
78:     self.server_name = TEMPLATES.LabelTextbox(STRINGS.UI.SERVERCREATIONSCREEN.SERVERNAME, TheNet:GetDefaultServerName(), wide_label_width, wide_input_width, label_height, space_between, NEWFONT, font_size, wide_field_nudge)
78:     self.server_name = TEMPLATES.LabelTextbox(STRINGS.UI.SERVERCREATIONSCREEN.SERVERNAME, TheNet:GetDefaultServerName(), wide_label_width, wide_input_width, label_height, space_between, NEWFONT, font_size, wide_field_nudge)
79:  if TheNet:GetIsServer() then
79:  if TheNet:GetIsServer() then
79:         if TheNet:IsDedicated() then
79:         if TheNet:IsDedicated() then
79:         local PVP_enabled = TheNet:GetPVPEnabled()
79:         local PVP_enabled = TheNet:GetPVPEnabled()
79:     if not TheNet:IsDedicated() then
79:     if not TheNet:IsDedicated() then
79:     if TheNet:IsDedicated() then
79:     if TheNet:IsDedicated() then
79:     local collection_name = self.profile:GetCollectionName() or (subfmt(STRINGS.UI.SKINSSCREEN.TITLE, {name=TheNet:GetLocalUserName()}))
79:     local collection_name = self.profile:GetCollectionName() or (subfmt(STRINGS.UI.SKINSSCREEN.TITLE, {name=TheNet:GetLocalUserName()}))
79:     self.server_name = TEMPLATES.LabelTextbox(STRINGS.UI.SERVERCREATIONSCREEN.SERVERNAME, TheNet:GetDefaultServerName(), wide_label_width, wide_input_width, label_height, space_between, NEWFONT, font_size, wide_field_nudge)
79:     self.server_name = TEMPLATES.LabelTextbox(STRINGS.UI.SERVERCREATIONSCREEN.SERVERNAME, TheNet:GetDefaultServerName(), wide_label_width, wide_input_width, label_height, space_between, NEWFONT, font_size, wide_field_nudge)
79:     TheNet:SearchServers()
79:     TheNet:SearchServers()
79: --      TheNet = instrument_userdata(TheNet)
80:    if TheNet:IsDedicated() then
80:    if TheNet:IsDedicated() then
80:         if not TheNet:IsDedicated() then
80:         if not TheNet:IsDedicated() then
80:     if not TheNet:IsDedicated() then
80:     if not TheNet:IsDedicated() then
80: -- or return instrument_userdata(TheNet) from a getter.
81:     if not TheNet:IsDedicated() then
81:     if not TheNet:IsDedicated() then
81:     if not TheNet:IsDedicated() then
81:     if not TheNet:IsDedicated() then
81:     if TheNet:GetServerGameMode() ~= "quagmire" then
81:     if TheNet:GetServerGameMode() ~= "quagmire" then
81:     if TheNet:IsDedicated() then
81:     if TheNet:IsDedicated() then
82:      Settings.match_results.wxp_data[TheNet:GetUserID()] = {new_xp = self.wxp.new_xp, achievements = self.wxp.achievements}
82:      Settings.match_results.wxp_data[TheNet:GetUserID()] = {new_xp = self.wxp.new_xp, achievements = self.wxp.achievements}
82:             TheNet:Say(chat_string)
82:             TheNet:Say(chat_string)
82:         TheNet:Vote(sel)
82:         TheNet:Vote(sel)
82:     if not TheNet:IsDedicated() then
82:     if not TheNet:IsDedicated() then
82:     if TheNet:IsDedicated() then
82:     if TheNet:IsDedicated() then
82: if TheNet:GetServerGameMode() == "quagmire" then
82: if TheNet:GetServerGameMode() == "quagmire" then
83:      playerready_checkbox.checked = net.components.worldcharacterselectlobby:IsPlayerReadyToStart(TheNet:GetUserID())
83:      playerready_checkbox.checked = net.components.worldcharacterselectlobby:IsPlayerReadyToStart(TheNet:GetUserID())
83:             local name, prefab, colour = TheNet:GetLocalUserName(), nil, GOLD
83:             local name, prefab, colour = TheNet:GetLocalUserName(), nil, GOLD
83:     if not TheNet:IsDedicated() then
83:     if not TheNet:IsDedicated() then
83:     if TheNet:GetServerGameMode() == "quagmire" then
83:     if TheNet:GetServerGameMode() == "quagmire" then
85:         if not TheNet:IsDedicated() then
85:         if not TheNet:IsDedicated() then
85:     local status = TheNet:GetChildProcessStatus()
85:     local status = TheNet:GetChildProcessStatus()
86:  local hasError = TheNet:GetChildProcessError() or self.errorStartingServers
86:  local hasError = TheNet:GetChildProcessError() or self.errorStartingServers
86:         if not TheNet:IsDedicated() then
86:         if not TheNet:IsDedicated() then
86:     if not TheNet:IsDedicated() then
86:     if not TheNet:IsDedicated() then
87:     TheNet:SendWorldResetRequestToServer()
87:     TheNet:SendWorldResetRequestToServer()
88:    Stats.PushMetricsEvent("motd2.failed", TheNet:GetUserID(), {}, "is_only_local_users_data")
88:    Stats.PushMetricsEvent("motd2.failed", TheNet:GetUserID(), {}, "is_only_local_users_data")
88:  if TheNet:GetServerGameMode() == "quagmire" then
88:  if TheNet:GetServerGameMode() == "quagmire" then
88:         if not TheNet:IsDedicated() then
88:         if not TheNet:IsDedicated() then
88:     if TheNet:GetServerGameMode() == "quagmire" then
88:     if TheNet:GetServerGameMode() == "quagmire" then
90:     local advancedtargeting = TheNet:GetServerGameMode() == "lavaarena"
90:     local advancedtargeting = TheNet:GetServerGameMode() == "lavaarena"
91:  --print("Is offline?", TheNet:IsOnlineMode() or "nil", TheFrontEnd:GetIsOfflineMode() or "nil")
91:  --print("Is offline?", TheNet:IsOnlineMode() or "nil", TheFrontEnd:GetIsOfflineMode() or "nil")
91:             TheNet:Say(trailing:len() > 0 and (params.emotename.." "..trailing) or params.emotename, true, true)
91:             TheNet:Say(trailing:len() > 0 and (params.emotename.." "..trailing) or params.emotename, true, true)
91:         local client_objs = TheNet:GetClientTable()
91:         local client_objs = TheNet:GetClientTable()
91:     if TheNet:GetServerGameMode() == "lavaarena" then
91:     if TheNet:GetServerGameMode() == "lavaarena" then
91:     if TheNet:GetServerGameMode() == "quagmire" then
91:     if TheNet:GetServerGameMode() == "quagmire" then
92:     if TheNet:GetServerGameMode() == "quagmire" then
92:     if TheNet:GetServerGameMode() == "quagmire" then
94:     elseif TheNet:GetServerGameMode() == "quagmire" then
94:     elseif TheNet:GetServerGameMode() == "quagmire" then
94:     if TheNet:GetServerGameMode() == "lavaarena" then
94:     if TheNet:GetServerGameMode() == "lavaarena" then
94:     TheNet:SetIsWorldSaving(true)
94:     TheNet:SetIsWorldSaving(true)
95:     if TheNet:GetIsServer() then
95:     if TheNet:GetIsServer() then
95:     if TheNet:IsDedicated() then
95:     if TheNet:IsDedicated() then
96:     if TheNet:GetServerGameMode() == "lavaarena" then
96:     if TheNet:GetServerGameMode() == "lavaarena" then
97:     if not TheNet:IsDedicated() then
97:     if not TheNet:IsDedicated() then
98:                     elseif v.userid == self.owner.userid and TheNet:GetServerIsClientHosted() then
98:                     elseif v.userid == self.owner.userid and TheNet:GetServerIsClientHosted() then
98:                     TheNet:ViewNetProfile(v.netid)
98:                     TheNet:ViewNetProfile(v.netid)
98:     elseif TheNet:GetServerGameMode() == "quagmire" then
98:     elseif TheNet:GetServerGameMode() == "quagmire" then
98:     if attacker ~= nil and not PreventTargetingOnAttacked(inst, attacker, TheNet:GetPVPEnabled() and "bernieowner" or "player") then
98:     if attacker ~= nil and not PreventTargetingOnAttacked(inst, attacker, TheNet:GetPVPEnabled() and "bernieowner" or "player") then
100:                 for i, v in ipairs(TheNet:GetClientTable() or {}) do
100:                 for i, v in ipairs(TheNet:GetClientTable() or {}) do
100:         TheNet:SendWorldRollbackRequestToServer(count)
100:         TheNet:SendWorldRollbackRequestToServer(count)
101:                     if v.userid == targetuserid and (v.performance == nil or TheNet:GetServerIsClientHosted()) then
101:                     if v.userid == targetuserid and (v.performance == nil or TheNet:GetServerIsClientHosted()) then
101:     if SERVER_TERMINATION_TIMER > 0 and TheNet:GetIsServer() then
101:     if SERVER_TERMINATION_TIMER > 0 and TheNet:GetIsServer() then
101:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
101:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
101: --of TheNet:GetClientTable, where the return value is modified
101: --of TheNet:GetClientTable, where the return value is modified
102:         if not TheNet:IsDedicated() then
102:         if not TheNet:IsDedicated() then
103:         local client = TheNet:GetClientTableForUser(self.targetuserid)
103:         local client = TheNet:GetClientTableForUser(self.targetuserid)
105:         if TheNet:IsNetIDPlatformValid(v.netid) then
105:         if TheNet:IsNetIDPlatformValid(v.netid) then
105:         return TheNet:GetClientTableForUser(self.inst.userid)
105:         return TheNet:GetClientTableForUser(self.inst.userid)
105:     TheNet:JoinServerResponse(true) -- cancel join
105:     TheNet:JoinServerResponse(true) -- cancel join
106:             TheNet:ViewNetProfile(self.server_group)
106:             TheNet:ViewNetProfile(self.server_group)
106:     TheNet:Disconnect(false)
106:     TheNet:Disconnect(false)
107:  if not TheNet:IsDedicated() then
107:  if not TheNet:IsDedicated() then
107:     if TheNet:GetServerGameMode() == "quagmire" then
107:     if TheNet:GetServerGameMode() == "quagmire" then
109:    local local_user_id = TheNet:GetUserID()
109:    local local_user_id = TheNet:GetUserID()
109:  if TheNet:GetServerGameMode() == "quagmire" then
109:  if TheNet:GetServerGameMode() == "quagmire" then
109:                 for i, v in ipairs(TheNet:GetClientTable() or {}) do
109:                 for i, v in ipairs(TheNet:GetClientTable() or {}) do
109:         TheNet:SendWorldRollbackRequestToServer(0)
109:         TheNet:SendWorldRollbackRequestToServer(0)
109:     if not TheNet:IsDedicated() and (inst.buff_fx ~= nil and inst.buff_fx.bufftype or 0) ~= inst._bufftype:value() then
109:     if not TheNet:IsDedicated() and (inst.buff_fx ~= nil and inst.buff_fx.bufftype or 0) ~= inst._bufftype:value() then
109:     if not TheNet:IsDedicated() then
109:     if not TheNet:IsDedicated() then
109:     inst.deathclientobj = TheNet:GetClientTableForUser(inst.userid)
109:     inst.deathclientobj = TheNet:GetClientTableForUser(inst.userid)
110:  if (not TheNet:IsOnlineMode()) or
110:  if (not TheNet:IsOnlineMode()) or
110:                     if v.userid == starteruserid and (v.performance == nil or TheNet:GetServerIsClientHosted()) then
110:                     if v.userid == starteruserid and (v.performance == nil or TheNet:GetServerIsClientHosted()) then
111:             _world:PushEvent("master_autosaverupdate", { snapshot = TheNet:GetCurrentSnapshot() })
111:             _world:PushEvent("master_autosaverupdate", { snapshot = TheNet:GetCurrentSnapshot() })
111:             return caller.userid == TheNet:GetUserID() and TheInventory:CheckOwnership(item_type)
111:             return caller.userid == TheNet:GetUserID() and TheInventory:CheckOwnership(item_type)
111:     if TheNet:IsDedicated() then
111:     if TheNet:IsDedicated() then
112:  if TheNet:GetServerGameMode() == "quagmire" then
112:  if TheNet:GetServerGameMode() == "quagmire" then
112:         if not TheNet:IsDedicated() then
112:         if not TheNet:IsDedicated() then
114:         if sendstats.user == TheNet:GetUserID() then
114:         if sendstats.user == TheNet:GetUserID() then
114:     if not TheNet:IsDedicated() then
114:     if not TheNet:IsDedicated() then
114:     if not TheNet:IsDedicated() then
114:     if not TheNet:IsDedicated() then
114:     if not TheNet:IsDedicated() then
114:     if not TheNet:IsDedicated() then
115:     if not TheNet:IsOnlineMode() then
115:     if not TheNet:IsOnlineMode() then
116:         elseif TheNet:GetIsServer() then
116:         elseif TheNet:GetIsServer() then
116:         TheNet:SetIsWorldResetting(false)
116:         TheNet:SetIsWorldResetting(false)
117:             client_metrics = TheNet:GetClientMetricsForUser(sendstats.user)
117:             client_metrics = TheNet:GetClientMetricsForUser(sendstats.user)
117:     if TheNet:IsDedicated() then
117:     if TheNet:IsDedicated() then
117:     local client = TheNet:GetClientTableForUser(self.owner.userid)
117:     local client = TheNet:GetClientTableForUser(self.owner.userid)
118:      local name = TheNet:GetServerName()
118:      local name = TheNet:GetServerName()
119:  if not TheNet:IsDedicated() then
119:  if not TheNet:IsDedicated() then
119:             TheNet:Announce("The sky is falling!")
119:             TheNet:Announce("The sky is falling!")
119:     return (self.ishost and self.prefabname == "" and not TheNet:GetServerIsClientHosted() and "avatar_bg.tex")
119:     return (self.ishost and self.prefabname == "" and not TheNet:GetServerIsClientHosted() and "avatar_bg.tex")
120:      if self.profanityservers[server_id] == nil and (ProfanityFilter:HasProfanity(name) or ProfanityFilter:HasProfanity(TheNet:GetServerDescription())) then
120:      if self.profanityservers[server_id] == nil and (ProfanityFilter:HasProfanity(name) or ProfanityFilter:HasProfanity(TheNet:GetServerDescription())) then
120:  if TheNet:GetServerGameMode() == "quagmire" then
120:  if TheNet:GetServerGameMode() == "quagmire" then
120:  return #self.players == TheNet:GetServerMaxPlayers()
120:  return #self.players == TheNet:GetServerMaxPlayers()
120:         if not TheNet:IsDedicated() then
120:         if not TheNet:IsDedicated() then
120:     if TheNet:IsDedicated() then
120:     if TheNet:IsDedicated() then
120:     self.chatqueue = self.chat_pane:AddChild(LobbyChatQueue(TheNet:GetUserID(), self.chatbox.textbox, function() --[[TODO: put sounds back in!]] end))
120:     self.chatqueue = self.chat_pane:AddChild(LobbyChatQueue(TheNet:GetUserID(), self.chatbox.textbox, function() --[[TODO: put sounds back in!]] end))
121:        self.profanityservers[server_id] = not TheNet:GetIsServerOwner(local_user_id)
121:        self.profanityservers[server_id] = not TheNet:GetIsServerOwner(local_user_id)
121:                      TheNet:ViewNetProfile(v.netid)
121:                      TheNet:ViewNetProfile(v.netid)
121:             TheNet:Announce("Let slip the dogs of war!")
121:             TheNet:Announce("Let slip the dogs of war!")
121:     if not TheNet:IsDedicated() then
121:     if not TheNet:IsDedicated() then
121:     if TheNet:GetServerIsClientHosted() and not (TheShard:IsMaster() or TheShard:IsSlave()) then
121:     if TheNet:GetServerIsClientHosted() and not (TheShard:IsMaster() or TheShard:IsSlave()) then
122:         if not TheNet:IsDedicated() then
122:         if not TheNet:IsDedicated() then
122:         TheNet:Say(chat_string, self.whisper)
122:         TheNet:Say(chat_string, self.whisper)
122:     if not TheNet:IsDedicated() then
122:     if not TheNet:IsDedicated() then
122:     if not TheNet:IsDedicated() then
122:     if not TheNet:IsDedicated() then
122:     if TheNet:GetServerGameMode() == "quagmire" then
122:     if TheNet:GetServerGameMode() == "quagmire" then
122:     if TheNet:IsDedicated() then
122:     if TheNet:IsDedicated() then
123:             TheNet:Announce("End times are almost here.")
123:             TheNet:Announce("End times are almost here.")
123:         if not TheNet:IsDedicated() then
123:         if not TheNet:IsDedicated() then
123:     if TheNet:IsOnlineMode() and apply_skins then
123:     if TheNet:IsOnlineMode() and apply_skins then
124:  local ClientObjs = TheNet:GetClientTable()
124:  local ClientObjs = TheNet:GetClientTable()
124:     if _enabled == (enable == false) and TheNet:GetAutosaverEnabled() then
124:     if _enabled == (enable == false) and TheNet:GetAutosaverEnabled() then
124:     if TheNet:GetServerGameMode() ~= "quagmire" then
124:     if TheNet:GetServerGameMode() ~= "quagmire" then
125:             TheNet:Announce("End times are coming.")
125:             TheNet:Announce("End times are coming.")
126:     if TheNet:GetServerGameMode() == "lavaarena" then
126:     if TheNet:GetServerGameMode() == "lavaarena" then
127:     if not TheNet:IsDedicated() then
127:     if not TheNet:IsDedicated() then
127:     if not TheNet:IsDedicated() then
127:     if not TheNet:IsDedicated() then
127:     self.isquagmire = TheNet:GetServerGameMode() == "quagmire"
127:     self.isquagmire = TheNet:GetServerGameMode() == "quagmire"
128:     elseif TheNet:GetServerGameMode() == "quagmire" then
128:     elseif TheNet:GetServerGameMode() == "quagmire" then
129:  if not TheNet:GetServerIsClientHosted() then
129:  if not TheNet:GetServerIsClientHosted() then
129:  if not TheNet:IsOnlineMode() then
129:  if not TheNet:IsOnlineMode() then
129:  if TheNet:GetIsHosting() then
129:  if TheNet:GetIsHosting() then
129:     if not TheNet:IsDedicated() then
129:     if not TheNet:IsDedicated() then
130:     if TheNet:GetIsServer() then
130:     if TheNet:GetIsServer() then
130:     if TheNet:GetServerGameMode() == "quagmire" then
130:     if TheNet:GetServerGameMode() == "quagmire" then
131:             TheNet:LeaveParty()
131:             TheNet:LeaveParty()
131:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
131:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
132:    if not TheNet:IsDedicated() then
132:    if not TheNet:IsDedicated() then
132:  if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
132:  if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
132:     if not TheNet:IsDedicated() then
132:     if not TheNet:IsDedicated() then
134:                 TheNet:AnnounceDeath(announcement_string, inst.entity)
134:                 TheNet:AnnounceDeath(announcement_string, inst.entity)
134:                 TheNet:UpdatePlayingWithFriends()
134:                 TheNet:UpdatePlayingWithFriends()
134:         TheNet:SendWorldResetRequestToServer()
134:         TheNet:SendWorldResetRequestToServer()
134:     if TheNet:IsDedicated() then
134:     if TheNet:IsDedicated() then
134: --if not TheNet:GetIsClient() then
134: --if not TheNet:GetIsClient() then
135:        session = TheNet:GetSessionIdentifier(),
135:        session = TheNet:GetSessionIdentifier(),
135:  sendstats.special_event = TheNet:GetServerEvent() and TheNet:GetServerGameMode() or nil
135:  sendstats.special_event = TheNet:GetServerEvent() and TheNet:GetServerGameMode() or nil
135:  sendstats.special_event = TheNet:GetServerEvent() and TheNet:GetServerGameMode() or nil
135:     if not IsRecipeValidInGameMode(TheNet:GetServerGameMode(), recname) then
135:     if not IsRecipeValidInGameMode(TheNet:GetServerGameMode(), recname) then
138:         local ClientObjs = TheNet:GetClientTable() or {}
138:         local ClientObjs = TheNet:GetClientTable() or {}
139:     if not TheNet:IsDedicated() then
139:     if not TheNet:IsDedicated() then
139:     local owner = TheNet:GetUserID()
139:     local owner = TheNet:GetUserID()
140:    local local_user_id = TheNet:GetUserID()
140:    local local_user_id = TheNet:GetUserID()
141:        local ClientObjs = TheNet:GetClientTable()
141:        local ClientObjs = TheNet:GetClientTable()
141:         if not TheNet:IsDedicated() then
141:         if not TheNet:IsDedicated() then
141:     if TheNet:IsOnlineMode() then
141:     if TheNet:IsOnlineMode() then
142:      local sessionid = TheNet:GetSessionIdentifier()
142:      local sessionid = TheNet:GetSessionIdentifier()
143:         if not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode() then
143:         if not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode() then
143:     if TheNet:GetServerGameMode() == "lavaarena" then
143:     if TheNet:GetServerGameMode() == "lavaarena" then
144:    TheNet:SendRemoteExecute(fnstr, x, z)
144:    TheNet:SendRemoteExecute(fnstr, x, z)
144:  return TheNet:GetServerListingReadDirty() and TheNet:IsSearchingServers() and (GetTime() - self.startsearchtime) < MAX_INITIAL_SEARCH_TIME
144:  return TheNet:GetServerListingReadDirty() and TheNet:IsSearchingServers() and (GetTime() - self.startsearchtime) < MAX_INITIAL_SEARCH_TIME
144:  return TheNet:GetServerListingReadDirty() and TheNet:IsSearchingServers() and (GetTime() - self.startsearchtime) < MAX_INITIAL_SEARCH_TIME
144:     if not TheNet:IsDedicated() then
144:     if not TheNet:IsDedicated() then
144:     if self.ishost and self.prefabname == "" and not TheNet:GetServerIsClientHosted() then
144:     if self.ishost and self.prefabname == "" and not TheNet:GetServerIsClientHosted() then
145:     elseif TheNet:GetServerGameMode() == "quagmire" then
145:     elseif TheNet:GetServerGameMode() == "quagmire" then
147:    Stats.PushMetricsEvent("motd2.seen", TheNet:GetUserID(), motd_msg, "is_only_local_users_data")
147:    Stats.PushMetricsEvent("motd2.seen", TheNet:GetUserID(), motd_msg, "is_only_local_users_data")
147:  if TheNet:GetIsHosting() then
147:  if TheNet:GetIsHosting() then
147:     local sendstats = BuildContextTable(TheNet:GetUserID())
147:     local sendstats = BuildContextTable(TheNet:GetUserID())
148:         if not TheNet:IsDedicated() then
148:         if not TheNet:IsDedicated() then
148:     if not TheNet:IsDedicated() then
148:     if not TheNet:IsDedicated() then
150:             TheNet:Kick(UserToClientID(params.user) or params.user, caller == nil and TUNING.VOTE_KICK_TIME or nil)
150:             TheNet:Kick(UserToClientID(params.user) or params.user, caller == nil and TUNING.VOTE_KICK_TIME or nil)
152:          Stats.PushMetricsEvent("motd2.clicked", TheNet:GetUserID(), motd_msg, "is_only_local_users_data")
152:          Stats.PushMetricsEvent("motd2.clicked", TheNet:GetUserID(), motd_msg, "is_only_local_users_data")
152:                 TheNet:Talker(line.message, self.inst.entity)
152:                 TheNet:Talker(line.message, self.inst.entity)
152:                 TheNet:ViewNetProfile(v.netid)
152:                 TheNet:ViewNetProfile(v.netid)
152: local _hasfx = not TheNet:IsDedicated()
152: local _hasfx = not TheNet:IsDedicated()
153:         TheNet:SendWorldSaveRequestToMaster()
153:         TheNet:SendWorldSaveRequestToMaster()
154:     if TheNet:IsDedicated() then
154:     if TheNet:IsDedicated() then
155:                         TheNet:TruncateSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, truncate_to_id)
155:                         TheNet:TruncateSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, truncate_to_id)
155:     elseif TheNet:GetChildProcessStatus() > 0 then
155:     elseif TheNet:GetChildProcessStatus() > 0 then
155:     if empty or v.userid == owner or not TheNet:IsNetIDPlatformValid(v.netid) then
155:     if empty or v.userid == owner or not TheNet:IsNetIDPlatformValid(v.netid) then
156:         if TheNet:GetChildProcessStatus() == 3 and TheFrontEnd:GetActiveScreen() == self then
156:         if TheNet:GetChildProcessStatus() == 3 and TheFrontEnd:GetActiveScreen() == self then
156:     if not TheNet:IsDedicated() then
156:     if not TheNet:IsDedicated() then
156:     if TheNet:GetServerGameMode() == "quagmire" then
156:     if TheNet:GetServerGameMode() == "quagmire" then
156:     if TheNet:IsOnlineMode() then
156:     if TheNet:IsOnlineMode() then
157:  TheNet:SetAllowNewPlayersToConnect(false)
157:  TheNet:SetAllowNewPlayersToConnect(false)
157:             chathistory = TheNet:GetPartyChatHistory()
157:             chathistory = TheNet:GetPartyChatHistory()
157:     if not TheNet:IsDedicated() then
157:     if not TheNet:IsDedicated() then
158:                         TheNet:TruncateSnapshots(self.session_id, truncate_to_id)
158:                         TheNet:TruncateSnapshots(self.session_id, truncate_to_id)
158:     TheNet:SetIsMatchStarting(true)
158:     TheNet:SetIsMatchStarting(true)
159:     if TheNet:IsDedicated() then
159:     if TheNet:IsDedicated() then
159:     local owner = TheNet:GetUserID()
159:     local owner = TheNet:GetUserID()
160:     if not TheNet:IsDedicated() then
160:     if not TheNet:IsDedicated() then
161:      if TheNet:GetServerGameMode() == "lavaarena" then
161:      if TheNet:GetServerGameMode() == "lavaarena" then
161:      local starting_items = TUNING.GAMEMODE_STARTING_ITEMS[TheNet:GetServerGameMode()]
161:      local starting_items = TUNING.GAMEMODE_STARTING_ITEMS[TheNet:GetServerGameMode()]
161:         if not TheNet:IsDedicated() then
161:         if not TheNet:IsDedicated() then
162:                 self.serverstate:SetString(subfmt(STRINGS.UI.PLAYERSTATUSSCREEN.LAVAARENA_SERVER_MODE, {mode=GetGameModeString(TheNet:GetServerGameMode()), num = TheWorld.net.components.lavaarenaeventstate:GetCurrentRound()}))
162:                 self.serverstate:SetString(subfmt(STRINGS.UI.PLAYERSTATUSSCREEN.LAVAARENA_SERVER_MODE, {mode=GetGameModeString(TheNet:GetServerGameMode()), num = TheWorld.net.components.lavaarenaeventstate:GetCurrentRound()}))
164:         local current_snapshot = TheNet:GetCurrentSnapshot()
164:         local current_snapshot = TheNet:GetCurrentSnapshot()
164:     TheNet:SendRemoteExecute(fnstr, x, z)
164:     TheNet:SendRemoteExecute(fnstr, x, z)
165:                 local modeStr = GetGameModeString(TheNet:GetServerGameMode()) ~= nil and GetGameModeString(TheNet:GetServerGameMode()).." - " or ""
165:                 local modeStr = GetGameModeString(TheNet:GetServerGameMode()) ~= nil and GetGameModeString(TheNet:GetServerGameMode()).." - " or ""
165:                 local modeStr = GetGameModeString(TheNet:GetServerGameMode()) ~= nil and GetGameModeString(TheNet:GetServerGameMode()).." - " or ""
165:                 TheNet:UpdatePlayingWithFriends()
165:                 TheNet:UpdatePlayingWithFriends()
165:     if not TheNet:IsDedicated() then
165:     if not TheNet:IsDedicated() then
165:     if TheNet:GetIsClient() then
165:     if TheNet:GetIsClient() then
167:     self.blacklist = TheNet:GetBlacklist()
167:     self.blacklist = TheNet:GetBlacklist()
168:         inst.widget:SetTint(unpack(playerListing.userid ~= nil and TheNet:IsVoiceActive(playerListing.userid) and VOICE_ACTIVE_COLOUR or VOICE_IDLE_COLOUR))
168:         inst.widget:SetTint(unpack(playerListing.userid ~= nil and TheNet:IsVoiceActive(playerListing.userid) and VOICE_ACTIVE_COLOUR or VOICE_IDLE_COLOUR))
169:         if show_net_profile and TheNet:IsNetIDPlatformValid(data.netid) then
169:         if show_net_profile and TheNet:IsNetIDPlatformValid(data.netid) then
170:             self.netprofilebutton = self.proot:AddChild(TEMPLATES.IconButton("images/button_icons.xml", "steam.tex", "", false, false, function() if data.netid ~= nil then TheNet:ViewNetProfile(data.netid) end end ))
170:             self.netprofilebutton = self.proot:AddChild(TEMPLATES.IconButton("images/button_icons.xml", "steam.tex", "", false, false, function() if data.netid ~= nil then TheNet:ViewNetProfile(data.netid) end end ))
170:     if not TheNet:IsDedicated() then
170:     if not TheNet:IsDedicated() then
170:     if not TheNet:IsDedicated() then
170:     if not TheNet:IsDedicated() then
171:         return GetMaxItemSlots(TheNet:GetServerGameMode())
171:         return GetMaxItemSlots(TheNet:GetServerGameMode())
171:         TheNet:SetIsWorldResetting(true)
171:         TheNet:SetIsWorldResetting(true)
172:     if not TheNet:IsDedicated() then
172:     if not TheNet:IsDedicated() then
173:  return self.both_queries_active or self.progression_query_active or GetQuestDataTable(self, TheNet:GetUserID()).quest_query_active
173:  return self.both_queries_active or self.progression_query_active or GetQuestDataTable(self, TheNet:GetUserID()).quest_query_active
173:     if TheNet:GetIsServer() then
173:     if TheNet:GetIsServer() then
174:                 TheNet:BanForTime(clientid, seconds)
174:                 TheNet:BanForTime(clientid, seconds)
174:     if TheNet:IsDedicated() then
174:     if TheNet:IsDedicated() then
174:     if TheNet:IsOnlineMode() then
174:     if TheNet:IsOnlineMode() then
175:         _cancelwhenempty = _wasempty and TheNet:IsDedicated()
175:         _cancelwhenempty = _wasempty and TheNet:IsDedicated()
176:                 TheNet:Ban(clientid)
176:                 TheNet:Ban(clientid)
177:                 TheNet:ViewNetProfile(v.netid)
177:                 TheNet:ViewNetProfile(v.netid)
179:     if TheNet:GetIsServer() then
179:     if TheNet:GetIsServer() then
180:             local ents = TheNet:GetPVPEnabled() and
180:             local ents = TheNet:GetPVPEnabled() and
180:     if empty or v.userid == owner or not TheNet:IsNetIDPlatformValid(v.netid) then
180:     if empty or v.userid == owner or not TheNet:IsNetIDPlatformValid(v.netid) then
181:     self.max_players.spinner:SetSelected(TheNet:GetDefaultMaxPlayers())
181:     self.max_players.spinner:SetSelected(TheNet:GetDefaultMaxPlayers())
182:  if TheNet:IsOnlineMode() then
182:  if TheNet:IsOnlineMode() then
184:  return TheNet:GetServerListingReadDirty() and TheNet:IsSearchingServers() and (GetTime() - self.startsearchtime) < MAX_INITAIL_SEARCH_TIME
184:  return TheNet:GetServerListingReadDirty() and TheNet:IsSearchingServers() and (GetTime() - self.startsearchtime) < MAX_INITAIL_SEARCH_TIME
184:  return TheNet:GetServerListingReadDirty() and TheNet:IsSearchingServers() and (GetTime() - self.startsearchtime) < MAX_INITAIL_SEARCH_TIME
184:     self.max_players.spinner:SetSelected(TheNet:GetDefaultMaxPlayers())
184:     self.max_players.spinner:SetSelected(TheNet:GetDefaultMaxPlayers())
185:     local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
185:     local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
185:     local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
186:         if show_net_profile and TheNet:IsNetIDPlatformValid(data.netid) then
186:         if show_net_profile and TheNet:IsNetIDPlatformValid(data.netid) then
186:     local name = subfmt(STRINGS.UI.LOBBYSCREEN.LOADOUT_TITLE, {name = TheNet:GetLocalUserName()})
186:     local name = subfmt(STRINGS.UI.LOBBYSCREEN.LOADOUT_TITLE, {name = TheNet:GetLocalUserName()})
187:                 (self.canonlyuseonlocomotorspvp and (target == doer or TheNet:GetPVPEnabled() or not (target:HasTag("player") and doer:HasTag("player"))))
187:                 (self.canonlyuseonlocomotorspvp and (target == doer or TheNet:GetPVPEnabled() or not (target:HasTag("player") and doer:HasTag("player"))))
187:             self.netprofilebutton = self.proot:AddChild(TEMPLATES.IconButton("images/button_icons.xml", "steam.tex", "", false, false, function() if data.netid ~= nil then TheNet:ViewNetProfile(data.netid) end end ))
187:             self.netprofilebutton = self.proot:AddChild(TEMPLATES.IconButton("images/button_icons.xml", "steam.tex", "", false, false, function() if data.netid ~= nil then TheNet:ViewNetProfile(data.netid) end end ))
188:             snapshot_infos, has_more = TheNet:ListSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, self.online_mode, 10)
188:             snapshot_infos, has_more = TheNet:ListSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, self.online_mode, 10)
188:             TheNet:AnnounceResurrect(announcement_string, inst.entity)
188:             TheNet:AnnounceResurrect(announcement_string, inst.entity)
190:             snapshot_infos, has_more = TheNet:ListSnapshots(self.session_id, self.online_mode, 10)
190:             snapshot_infos, has_more = TheNet:ListSnapshots(self.session_id, self.online_mode, 10)
191:     if not TheNet:IsDedicated() then
191:     if not TheNet:IsDedicated() then
191:     if not TheNet:IsDedicated() then
191:     if not TheNet:IsDedicated() then
191:     local client = TheNet:GetClientTableForUser(user.userid)
191:     local client = TheNet:GetClientTableForUser(user.userid)
192:  if not TheNet:IsDedicated() then
192:  if not TheNet:IsDedicated() then
192:  local client = TheNet:GetClientTableForUser(data.userid)
192:  local client = TheNet:GetClientTableForUser(data.userid)
192:     if not TheNet:IsDedicated() then
192:     if not TheNet:IsDedicated() then
192:     if TheNet:GetServerGameMode() == "quagmire" then
192:     if TheNet:GetServerGameMode() == "quagmire" then
193:     --print ("GetGameModeProperty:", tostring(TheNet:GetServerGameMode()), property, tostring(GetGameMode(TheNet:GetServerGameMode())[property]))
193:     --print ("GetGameModeProperty:", tostring(TheNet:GetServerGameMode()), property, tostring(GetGameMode(TheNet:GetServerGameMode())[property]))
193:     --print ("GetGameModeProperty:", tostring(TheNet:GetServerGameMode()), property, tostring(GetGameMode(TheNet:GetServerGameMode())[property]))
193:     TheNet:SetIsWorldSaving(false) --Reset flag in case it's invalid
193:     TheNet:SetIsWorldSaving(false) --Reset flag in case it's invalid
194:    TheNet:Kick(user_id)
194:    TheNet:Kick(user_id)
194:         inst.widget:SetTint(unpack(self.userid ~= nil and TheNet:IsVoiceActive(self.userid) and VOICE_ACTIVE_COLOUR or VOICE_IDLE_COLOUR))
194:         inst.widget:SetTint(unpack(self.userid ~= nil and TheNet:IsVoiceActive(self.userid) and VOICE_ACTIVE_COLOUR or VOICE_IDLE_COLOUR))
194:     local servers = TheNet:GetServerListings()
194:     local servers = TheNet:GetServerListings()
194:     return GetGameMode(TheNet:GetServerGameMode())[property]
194:     return GetGameMode(TheNet:GetServerGameMode())[property]
195:  if not TheNet:IsDedicated() then
195:  if not TheNet:IsDedicated() then
195:         --TheNet:Announce(string.format(STRINGS.UI.NOTIFICATION.LEFTGAME, player:GetDisplayName()), player.entity, true, "leave_game")
195:         --TheNet:Announce(string.format(STRINGS.UI.NOTIFICATION.LEFTGAME, player:GetDisplayName()), player.entity, true, "leave_game")
195:         self.invitebutton = self.sidebar_root:AddChild(TEMPLATES.Button(STRINGS.UI.LOBBYSCREEN.INVITE, function() TheNet:ViewNetFriends() end))
195:         self.invitebutton = self.sidebar_root:AddChild(TEMPLATES.Button(STRINGS.UI.LOBBYSCREEN.INVITE, function() TheNet:ViewNetFriends() end))
196:                 TheNet:PartyChat(str)
196:                 TheNet:PartyChat(str)
196:                 TheNet:SetPlayerMuted(playerListing.userid, playerListing.isMuted)
196:                 TheNet:SetPlayerMuted(playerListing.userid, playerListing.isMuted)
196:     if not TheNet:IsDedicated() then
196:     if not TheNet:IsDedicated() then
196:     if TheNet:IsNetIDPlatformValid(data.netid) then
196:     if TheNet:IsNetIDPlatformValid(data.netid) then
197:  TheNet:SetLobbyCharacter(data.userid, data.prefab_name, data.skin_base, data.clothing_body, data.clothing_hand, data.clothing_legs, data.clothing_feet)
197:  TheNet:SetLobbyCharacter(data.userid, data.prefab_name, data.skin_base, data.clothing_body, data.clothing_hand, data.clothing_legs, data.clothing_feet)
198:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
198:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
198:         TheNet:StopVote()
198:         TheNet:StopVote()
199:             if TheNet:IsOnlineMode() then
199:             if TheNet:IsOnlineMode() then
200:     local isdedicated = not TheNet:GetServerIsClientHosted()
200:     local isdedicated = not TheNet:GetServerIsClientHosted()
201:     if not TheNet:IsDedicated() then
201:     if not TheNet:IsDedicated() then
201: local _hasfx = not TheNet:IsDedicated()
201: local _hasfx = not TheNet:IsDedicated()
202:                 v.client = TheNet:GetClientTableForUser(v.client.userid)
202:                 v.client = TheNet:GetClientTableForUser(v.client.userid)
203:                         TheNet:TruncateSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, truncate_to_id)
203:                         TheNet:TruncateSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, truncate_to_id)
203:                 local file = TheNet:GetWorldSessionFile(session_id)
203:                 local file = TheNet:GetWorldSessionFile(session_id)
204:         clients = TheNet:GetClientTable()
204:         clients = TheNet:GetClientTable()
204:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
204:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
205:     TheNet:SetIsWorldSaving(false) --Reset flag in case it's invalid
205:     TheNet:SetIsWorldSaving(false) --Reset flag in case it's invalid
206:  local hadPendingConnection = TheNet:HasPendingConnection()
206:  local hadPendingConnection = TheNet:HasPendingConnection()
206:                         TheNet:TruncateSnapshots(self.session_id, truncate_to_id)
206:                         TheNet:TruncateSnapshots(self.session_id, truncate_to_id)
206:         if not TheNet:IsDedicated() then
206:         if not TheNet:IsDedicated() then
207:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
207:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
208:  local hadPendingConnection = TheNet:HasPendingConnection()
208:  local hadPendingConnection = TheNet:HasPendingConnection()
209:     if not TheNet:IsDedicated() then
209:     if not TheNet:IsDedicated() then
211:     if TheNet:GetServerGameMode() == "quagmire" then
211:     if TheNet:GetServerGameMode() == "quagmire" then
212:                 local file = TheNet:GetWorldSessionFile(session_id)
212:                 local file = TheNet:GetWorldSessionFile(session_id)
212:             TheNet:JoinParty(self.invite.partyid)
212:             TheNet:JoinParty(self.invite.partyid)
212: if not (_ismastersim and TheNet:IsDedicated()) then
212: if not (_ismastersim and TheNet:IsDedicated()) then
213:     if TheNet:GetServerGameMode() == "lavaarena" then
213:     if TheNet:GetServerGameMode() == "lavaarena" then
214:     if (target:HasTag("player") and not TheNet:GetPVPEnabled()) or target:HasTag("ghost") or target:HasTag("noauradamage") then
214:     if (target:HasTag("player") and not TheNet:GetPVPEnabled()) or target:HasTag("ghost") or target:HasTag("noauradamage") then
214:     if TheNet:GetServerGameMode() == "lavaarena" then
214:     if TheNet:GetServerGameMode() == "lavaarena" then
215:     elseif TheNet:GetServerGameMode() == "quagmire" then
215:     elseif TheNet:GetServerGameMode() == "quagmire" then
216:     elseif TheNet:GetServerGameMode() == "quagmire" then
216:     elseif TheNet:GetServerGameMode() == "quagmire" then
218:    if not TheNet:IsDedicated() then
218:    if not TheNet:IsDedicated() then
218:             if not TheNet:DeserializeAllLocalUserSessions(session_mapping_cb) then
218:             if not TheNet:DeserializeAllLocalUserSessions(session_mapping_cb) then
218:             if not TheNet:DeserializeAllLocalUserSessions(session_mapping_cb) then
218:             if not TheNet:DeserializeAllLocalUserSessions(session_mapping_cb) then
218:         TheNet:SendWorldResetRequestToServer()
218:         TheNet:SendWorldResetRequestToServer()
219:         for i, client in ipairs(clients or TheNet:GetClientTable()) do
219:         for i, client in ipairs(clients or TheNet:GetClientTable()) do
221:        TheNet:StopSearchingServers()
221:        TheNet:StopSearchingServers()
221:     if not TheNet:IsDedicated() then
221:     if not TheNet:IsDedicated() then
222:                 TheNet:SetPlayerMuted(self.userid, self.isMuted)
222:                 TheNet:SetPlayerMuted(self.userid, self.isMuted)
222:     self.blacklist = TheNet:GetBlacklist()
222:     self.blacklist = TheNet:GetBlacklist()
225:         self.playerready_checkbox:SetText(self:IsServerFull() and STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_READY_TO_START or subfmt(STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_VOTE_TO_START, {num=#self.players, max=TheNet:GetServerMaxPlayers()}))
225:         self.playerready_checkbox:SetText(self:IsServerFull() and STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_READY_TO_START or subfmt(STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_VOTE_TO_START, {num=#self.players, max=TheNet:GetServerMaxPlayers()}))
226:                     TheNet:DiceRoll(sides, dice)
226:                     TheNet:DiceRoll(sides, dice)
226:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
226:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
227:      self.servermods = TheNet:GetServerModNames()
227:      self.servermods = TheNet:GetServerModNames()
230:         self.max_players.spinner:SetSelected(TheNet:GetDefaultMaxPlayers())
230:         self.max_players.spinner:SetSelected(TheNet:GetDefaultMaxPlayers())
230:     if not TheNet:IsDedicated() then
230:     if not TheNet:IsDedicated() then
230:     if not TheNet:IsDedicated() then
230:     if not TheNet:IsDedicated() then
230:     if TheNet:GetServerGameMode() == "quagmire" then
230:     if TheNet:GetServerGameMode() == "quagmire" then
231:      TheNet:StopSearchingServers()
231:      TheNet:StopSearchingServers()
231:     print(TheNet:GetDefaultMaxPlayers())
231:     print(TheNet:GetDefaultMaxPlayers())
232:                     TheNet:DiceRoll(sides, 1)
232:                     TheNet:DiceRoll(sides, 1)
232:         local party = TheNet:GetPartyTable()
232:         local party = TheNet:GetPartyTable()
232:         TheNet:GetPVPEnabled() and
232:         TheNet:GetPVPEnabled() and
234:         if not TheNet:IsDedicated() then
234:         if not TheNet:IsDedicated() then
235:     local servers = TheNet:GetServerListings()
235:     local servers = TheNet:GetServerListings()
235:     TheNet:SetIsWorldResetting(false)
235:     TheNet:SetIsWorldResetting(false)
236:             snapshot_infos, has_more = TheNet:ListSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, self.online_mode, 10)
236:             snapshot_infos, has_more = TheNet:ListSnapshotsInClusterSlot(self.save_slot, "Master", self.session_id, self.online_mode, 10)
236:     local isdedicated = not TheNet:GetServerIsClientHosted()
236:     local isdedicated = not TheNet:GetServerIsClientHosted()
237:      msg.consecutive_match = TheNet:IsConsecutiveMatchForPlayer(data.userid)
237:      msg.consecutive_match = TheNet:IsConsecutiveMatchForPlayer(data.userid)
237:             TheNet:DiceRoll(100, 1)
237:             TheNet:DiceRoll(100, 1)
238:             snapshot_infos, has_more = TheNet:ListSnapshots(self.session_id, self.online_mode, 10)
238:             snapshot_infos, has_more = TheNet:ListSnapshots(self.session_id, self.online_mode, 10)
238:     for i, v in ipairs(TheNet:GetClientTable() or {}) do
238:     for i, v in ipairs(TheNet:GetClientTable() or {}) do
238:     TheNet:SetGameData(DataDumper(game_data, nil, false))
238:     TheNet:SetGameData(DataDumper(game_data, nil, false))
239:     TheNet:SetSeason(inst.state.season)
239:     TheNet:SetSeason(inst.state.season)
240:     if TheNet:GetServerGameMode() == "lavaarena" then
240:     if TheNet:GetServerGameMode() == "lavaarena" then
243:          TheNet:NotifyAuthenticationFailure()
243:          TheNet:NotifyAuthenticationFailure()
244:  if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
244:  if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
245:  if not self.both_queries_active and not self.progression_query_active and not GetQuestDataTable(self, TheNet:GetUserID()).quest_query_active then
245:  if not self.both_queries_active and not self.progression_query_active and not GetQuestDataTable(self, TheNet:GetUserID()).quest_query_active then
246:     if TheNet:GetServerGameMode() == "quagmire" then
246:     if TheNet:GetServerGameMode() == "quagmire" then
247:  if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
247:  if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
247:         local client = TheNet:GetClientTableForUser(targetid)
247:         local client = TheNet:GetClientTableForUser(targetid)
248:          TheNet:NotifyAuthenticationFailure()
248:          TheNet:NotifyAuthenticationFailure()
248:     elseif TheNet:GetServerGameMode() == "quagmire" then
248:     elseif TheNet:GetServerGameMode() == "quagmire" then
249:     if not TheNet:IsDedicated() then
249:     if not TheNet:IsDedicated() then
251:      str = self:IsServerFull() and STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_READY_TO_START or subfmt(STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_VOTE_TO_START, {num=#self.players, max=TheNet:GetServerMaxPlayers()})
251:      str = self:IsServerFull() and STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_READY_TO_START or subfmt(STRINGS.UI.LOBBY_WAITING_FOR_PLAYERS_SCREEN.LOCAL_PLAYER_VOTE_TO_START, {num=#self.players, max=TheNet:GetServerMaxPlayers()})
251:             if not TheNet:IsNetIDPlatformValid(data.netid) then
251:             if not TheNet:IsNetIDPlatformValid(data.netid) then
252:         if TheNet:GetCountryCode() == "CA" then
252:         if TheNet:GetCountryCode() == "CA" then
252:         if TheNet:IsDedicated() then
252:         if TheNet:IsDedicated() then
254:          TheNet:NotifyAuthenticationFailure()
254:          TheNet:NotifyAuthenticationFailure()
254:         elseif TheNet:GetCountryCode() == "US" then
254:         elseif TheNet:GetCountryCode() == "US" then
255:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
255:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
256:         if not TheNet:IsDedicated() then
256:         if not TheNet:IsDedicated() then
258:    Stats.PushMetricsEvent("quickjoin.failed", TheNet:GetUserID(), values)
258:    Stats.PushMetricsEvent("quickjoin.failed", TheNet:GetUserID(), values)
258:          TheNet:NotifyAuthenticationFailure()
258:          TheNet:NotifyAuthenticationFailure()
258:     if TheNet:GetServerGameMode() == "lavaarena" then
258:     if TheNet:GetServerGameMode() == "lavaarena" then
260:  elseif TheNet:GetServerGameMode() == "quagmire" then
260:  elseif TheNet:GetServerGameMode() == "quagmire" then
261:        TheNet:StopSearchingServers()
261:        TheNet:StopSearchingServers()
261:         if not TheNet:IsDedicated() then
261:         if not TheNet:IsDedicated() then
261:     if not TheNet:IsDedicated() and SaveIndex:GetSlotServerData(SaveIndex:GetCurrentSaveSlot()).use_cluster_path then
261:     if not TheNet:IsDedicated() and SaveIndex:GetSlotServerData(SaveIndex:GetCurrentSaveSlot()).use_cluster_path then
262:  --self.details_panel.set_info_btn = self.details_panel:AddChild(TEMPLATES.IconButton("images/button_icons.xml", "steam.tex", "", false, false, function() if data.netid ~= nil then TheNet:ViewNetProfile(data.netid) end end ))
262:  --self.details_panel.set_info_btn = self.details_panel:AddChild(TEMPLATES.IconButton("images/button_icons.xml", "steam.tex", "", false, false, function() if data.netid ~= nil then TheNet:ViewNetProfile(data.netid) end end ))
262:             (TheNet:GetPVPEnabled() or not (self.inst:HasTag("player") and target:HasTag("player")) or (weapon ~= nil and weapon:HasTag("propweapon"))) and
262:             (TheNet:GetPVPEnabled() or not (self.inst:HasTag("player") and target:HasTag("player")) or (weapon ~= nil and weapon:HasTag("propweapon"))) and
263:     if TheNet:IsDedicated() then
263:     if TheNet:IsDedicated() then
264:  if TheNet:GetServerGameMode() == "lavaarena" then
264:  if TheNet:GetServerGameMode() == "lavaarena" then
264:         if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
264:         if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
264:     if TheNet:IsDedicated() then
264:     if TheNet:IsDedicated() then
265:    self.serverstate:SetString(subfmt(STRINGS.UI.PLAYERSTATUSSCREEN.LAVAARENA_SERVER_MODE, {mode=GetGameModeString(TheNet:GetServerGameMode()), num = TheWorld.net.components.lavaarenaeventstate:GetCurrentRound()}))
265:    self.serverstate:SetString(subfmt(STRINGS.UI.PLAYERSTATUSSCREEN.LAVAARENA_SERVER_MODE, {mode=GetGameModeString(TheNet:GetServerGameMode()), num = TheWorld.net.components.lavaarenaeventstate:GetCurrentRound()}))
265:     if not TheNet:IsDedicated() then
265:     if not TheNet:IsDedicated() then
265:     if TheNet:GetServerGameMode() == "lavaarena" then
265:     if TheNet:GetServerGameMode() == "lavaarena" then
267:                 TheNet:ViewNetProfile(w.widgets.playerinfo_btn._netid)
267:                 TheNet:ViewNetProfile(w.widgets.playerinfo_btn._netid)
268:    local modeStr = GetGameModeString(TheNet:GetServerGameMode()) ~= nil and GetGameModeString(TheNet:GetServerGameMode()).." - " or ""
268:    local modeStr = GetGameModeString(TheNet:GetServerGameMode()) ~= nil and GetGameModeString(TheNet:GetServerGameMode()).." - " or ""
268:    local modeStr = GetGameModeString(TheNet:GetServerGameMode()) ~= nil and GetGameModeString(TheNet:GetServerGameMode()).." - " or ""
268:     local owner = TheNet:GetUserID()
268:     local owner = TheNet:GetUserID()
269:  if not TheNet:IsDedicated() then
269:  if not TheNet:IsDedicated() then
270:      TheNet:StopSearchingServers()
270:      TheNet:StopSearchingServers()
271:             TheNet:AnnounceVoteResult(command.hash, nil, true)
271:             TheNet:AnnounceVoteResult(command.hash, nil, true)
272:             TheNet:NotifyAuthenticationFailure()
272:             TheNet:NotifyAuthenticationFailure()
274:     self.server_group = TheNet:GetServerClanID()
274:     self.server_group = TheNet:GetServerClanID()
275:                 TheNet:SendWorldRollbackRequestToServer(params.numsaves ~= nil and tonumber(params.numsaves) or nil)
275:                 TheNet:SendWorldRollbackRequestToServer(params.numsaves ~= nil and tonumber(params.numsaves) or nil)
275:                 TheNet:ViewNetProfile(data.netid)
275:                 TheNet:ViewNetProfile(data.netid)
275:     if player ~= nil and player.userid ~= nil and player.userid:len() > 0 and (player == ThePlayer or TheNet:GetIsServer()) then
275:     if player ~= nil and player.userid ~= nil and player.userid:len() > 0 and (player == ThePlayer or TheNet:GetIsServer()) then
278:             self.viewgroup_button:SetOnClick(function() TheNet:ViewNetProfile(self.server_group) end)
278:             self.viewgroup_button:SetOnClick(function() TheNet:ViewNetProfile(self.server_group) end)
278:             TheNet:NotifyAuthenticationFailure()
278:             TheNet:NotifyAuthenticationFailure()
279:         TheNet:SerializeUserSession(player.userid, data, isnewspawn == true, player.player_classified ~= nil and player.player_classified.entity or nil)
279:         TheNet:SerializeUserSession(player.userid, data, isnewspawn == true, player.player_classified ~= nil and player.player_classified.entity or nil)
279:     if empty or data.userid == owner or not TheNet:IsNetIDPlatformValid(data.netid) then
279:     if empty or data.userid == owner or not TheNet:IsNetIDPlatformValid(data.netid) then
280:     if not TheNet:IsDedicated() then
280:     if not TheNet:IsDedicated() then
282:     TheNet:SetIsMatchStarting(false) --Reset flag in case it's invalid
282:     TheNet:SetIsMatchStarting(false) --Reset flag in case it's invalid
283:     if TheNet:GetServerGameMode() == "quagmire" then
283:     if TheNet:GetServerGameMode() == "quagmire" then
284:         if not TheNet:IsDedicated() then
284:         if not TheNet:IsDedicated() then
284:     if player ~= nil and player.userid ~= nil and player.userid:len() > 0 and (player == ThePlayer or TheNet:GetIsServer()) then
284:     if player ~= nil and player.userid ~= nil and player.userid:len() > 0 and (player == ThePlayer or TheNet:GetIsServer()) then
285:         TheNet:DeleteUserSession(player.userid)
285:         TheNet:DeleteUserSession(player.userid)
288:    local sel_serv = TheNet:GetServerListingFromActualIndex(server.actualindex)
288:    local sel_serv = TheNet:GetServerListingFromActualIndex(server.actualindex)
288:  local hosting = TheNet:GetUserID()
288:  local hosting = TheNet:GetUserID()
290:     TheNet:SerializeWorldSession(data, session_identifier, ENCODE_SAVES, callback)
290:     TheNet:SerializeWorldSession(data, session_identifier, ENCODE_SAVES, callback)
293:      local start_worked = TheNet:JoinServerResponse( false, sel_serv.guid, passworld )
293:      local start_worked = TheNet:JoinServerResponse( false, sel_serv.guid, passworld )
293:                         not TheNet:GetPVPEnabled() and
293:                         not TheNet:GetPVPEnabled() and
293:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
293:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
293:     local clients = TheNet:GetClientTable() or {}
293:     local clients = TheNet:GetClientTable() or {}
296:    Stats.PushMetricsEvent("quickjoin.failed", TheNet:GetUserID(), values)
296:    Stats.PushMetricsEvent("quickjoin.failed", TheNet:GetUserID(), values)
296:         if TheNet:GetIsClient() then
296:         if TheNet:GetIsClient() then
299:      TheNet:NotifyAuthenticationFailure()
299:      TheNet:NotifyAuthenticationFailure()
299:                             max_players = TheNet:GetServerMaxPlayers(),
299:                             max_players = TheNet:GetServerMaxPlayers(),
300:                             password = TheNet:GetServerHasPassword(),
300:                             password = TheNet:GetServerHasPassword(),
301:                             gamemode = TheNet:GetServerGameMode(),
301:                             gamemode = TheNet:GetServerGameMode(),
301:         if not TheNet:IsDedicated() then
301:         if not TheNet:IsDedicated() then
302:        TheNet:SendLobbyCharacterRequestToServer("random")
302:        TheNet:SendLobbyCharacterRequestToServer("random")
302:                             dedicated = not TheNet:GetServerIsClientHosted(),
302:                             dedicated = not TheNet:GetServerIsClientHosted(),
303:                             administrated = TheNet:GetServerHasPresentAdmin(),
303:                             administrated = TheNet:GetServerHasPresentAdmin(),
303:         ClientObjs = TheNet:GetClientTable() or {}
303:         ClientObjs = TheNet:GetClientTable() or {}
304:    TheNet:NotifyAuthenticationFailure()
304:    TheNet:NotifyAuthenticationFailure()
304:                             modded = TheNet:GetServerModsEnabled(),
304:                             modded = TheNet:GetServerModsEnabled(),
304:         inst.ismastersim = TheNet:GetIsMasterSimulation()
304:         inst.ismastersim = TheNet:GetIsMasterSimulation()
305:        TheNet:SendLobbyCharacterRequestToServer(owner.lobbycharacter, skins.base, skins.body, skins.hand, skins.legs, skins.feet)
305:        TheNet:SendLobbyCharacterRequestToServer(owner.lobbycharacter, skins.base, skins.body, skins.hand, skins.legs, skins.feet)
305:                             privacy = (TheNet:GetServerClanID() ~= "" and "CLAN")
305:                             privacy = (TheNet:GetServerClanID() ~= "" and "CLAN")
306:                                     or (TheNet:GetServerLANOnly() and "LAN")
306:                                     or (TheNet:GetServerLANOnly() and "LAN")
306:         if TheNet:GetServerGameMode() == "quagmire" then
306:         if TheNet:GetServerGameMode() == "quagmire" then
307:                                     or (TheNet:GetServerFriendsOnly() and "FRIENDS")
307:                                     or (TheNet:GetServerFriendsOnly() and "FRIENDS")
308:     if not TheNet:IsDedicated() then
308:     if not TheNet:IsDedicated() then
309:                             offline = not TheNet:IsOnlineMode(),
309:                             offline = not TheNet:IsOnlineMode(),
309:             TheNet:AnnounceVoteResult(command.hash, nil, true)
309:             TheNet:AnnounceVoteResult(command.hash, nil, true)
309:     self:SetFriendsList(TheNet:GetFriendsList())
309:     self:SetFriendsList(TheNet:GetFriendsList())
310:                             intention = TheNet:GetServerIntention(),
310:                             intention = TheNet:GetServerIntention(),
310:         if TheNet:IsDedicated() then
310:         if TheNet:IsDedicated() then
311:                             pvp = TheNet:GetServerPVP()
311:                             pvp = TheNet:GetServerPVP()
311:             if not TheNet:IsNetIDPlatformValid(entry.netid) then
311:             if not TheNet:IsNetIDPlatformValid(entry.netid) then
311:     local owner = TheNet:GetUserID()
311:     local owner = TheNet:GetUserID()
312:  Stats.PushMetricsEvent("quickjoin.failed", TheNet:GetUserID(), values)
312:  Stats.PushMetricsEvent("quickjoin.failed", TheNet:GetUserID(), values)
313:  if not self.sorry_popup and (not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode()) then
313:  if not self.sorry_popup and (not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode()) then
313:                 TheNet:SendWorldResetRequestToServer()
313:                 TheNet:SendWorldResetRequestToServer()
313:     local clanid = TheNet:GetServerClanID()
313:     local clanid = TheNet:GetServerClanID()
314:     self.players_number:SetString(tostring(not TheNet:GetServerIsClientHosted() and self.numPlayers - 1 or self.numPlayers).."/"..(TheNet:GetServerMaxPlayers() or "?"))
314:     self.players_number:SetString(tostring(not TheNet:GetServerIsClientHosted() and self.numPlayers - 1 or self.numPlayers).."/"..(TheNet:GetServerMaxPlayers() or "?"))
314:     self.players_number:SetString(tostring(not TheNet:GetServerIsClientHosted() and self.numPlayers - 1 or self.numPlayers).."/"..(TheNet:GetServerMaxPlayers() or "?"))
315:     if TheNet:IsOnlineMode() then
315:     if TheNet:IsOnlineMode() then
316:         sendstats.mpsession.clan_only = TheNet:GetServerClanOnly()
316:         sendstats.mpsession.clan_only = TheNet:GetServerClanOnly()
316:     local serverDescStr = ServerPreferences:IsNameAndDescriptionHidden() and STRINGS.UI.SERVERLISTINGSCREEN.HIDDEN_DESCRIPTION or TheNet:GetServerDescription()
316:     local serverDescStr = ServerPreferences:IsNameAndDescriptionHidden() and STRINGS.UI.SERVERLISTINGSCREEN.HIDDEN_DESCRIPTION or TheNet:GetServerDescription()
317:         --sendstats.clan_admins = TheNet:GetServerClanAdmins() -- not available in the handshake!
317:         --sendstats.clan_admins = TheNet:GetServerClanAdmins() -- not available in the handshake!
317:     if TheNet:GetServerGameMode() == "quagmire" then
317:     if TheNet:GetServerGameMode() == "quagmire" then
318:                 TheNet:ViewNetProfile(data.netid)
318:                 TheNet:ViewNetProfile(data.netid)
318:     TheNet:StopSearchingServers()
318:     TheNet:StopSearchingServers()
319:             TheNet:StartVote(command.hash, userid)
319:             TheNet:StartVote(command.hash, userid)
319:     TheNet:JoinServerResponse( true ) -- cancel join
319:     TheNet:JoinServerResponse( true ) -- cancel join
320:  self.waiting_for_players = self:AddChild(WaitingForPlayers(self, TheNet:GetServerMaxPlayers()))
320:  self.waiting_for_players = self:AddChild(WaitingForPlayers(self, TheNet:GetServerMaxPlayers()))
320:             if not TheNet:GetPVPEnabled() and attacker:HasTag("player") then
320:             if not TheNet:GetPVPEnabled() and attacker:HasTag("player") then
322:          TheNet:ViewNetProfile(w.widgets.playerinfo_btn._netid)
322:          TheNet:ViewNetProfile(w.widgets.playerinfo_btn._netid)
322:     if empty or data.userid == owner or not TheNet:IsNetIDPlatformValid(data.netid) then
322:     if empty or data.userid == owner or not TheNet:IsNetIDPlatformValid(data.netid) then
322:     if not TheNet:IsDedicated() then
322:     if not TheNet:IsDedicated() then
323:  if TheNet:GetDeferredServerShutdownRequested() then
323:  if TheNet:GetDeferredServerShutdownRequested() then
323:             TheNet:NotifyAuthenticationFailure()
323:             TheNet:NotifyAuthenticationFailure()
323:     if not TheNet:IsDedicated() and SaveGameIndex:GetSlotServerData(slotnum).use_cluster_path then
323:     if not TheNet:IsDedicated() and SaveGameIndex:GetSlotServerData(slotnum).use_cluster_path then
323:     if not TheNet:IsDedicated() then
323:     if not TheNet:IsDedicated() then
324:    local sel_serv = TheNet:GetServerListingFromActualIndex(server.actualindex)
324:    local sel_serv = TheNet:GetServerListingFromActualIndex(server.actualindex)
324:         local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", self.data.slots[slotnum].session_id)
324:         local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", self.data.slots[slotnum].session_id)
325:     if TheNet:GetServerGameMode() == "lavaarena" then
325:     if TheNet:GetServerGameMode() == "lavaarena" then
325:     if TheNet:GetServerGameMode() == "lavaarena" then
325:     if TheNet:GetServerGameMode() == "lavaarena" then
326:    TheNet:ServerModSetup(product_id)
326:    TheNet:ServerModSetup(product_id)
326:                 TheNet:ViewNetProfile(group.NET_ID._netid)
326:                 TheNet:ViewNetProfile(group.NET_ID._netid)
327:                 TheNet:SendSlashCmdToServer(unparsecommand(command, params)) -- Caller is the client
327:                 TheNet:SendSlashCmdToServer(unparsecommand(command, params)) -- Caller is the client
327:     elseif TheNet:GetServerGameMode() == "quagmire" then
327:     elseif TheNet:GetServerGameMode() == "quagmire" then
329:      local start_worked = TheNet:JoinServerResponse( false, sel_serv.guid, passworld )
329:      local start_worked = TheNet:JoinServerResponse( false, sel_serv.guid, passworld )
329:    TheNet:ServerModCollectionSetup(collection_id)
329:    TheNet:ServerModCollectionSetup(collection_id)
329:             TheNet:NotifyAuthenticationFailure()
329:             TheNet:NotifyAuthenticationFailure()
330:         local client_obj = TheNet:GetClientTableForUser(self.userid)
330:         local client_obj = TheNet:GetClientTableForUser(self.userid)
332:     if not GetGhostEnabled(TheNet:GetServerGameMode()) then
332:     if not GetGhostEnabled(TheNet:GetServerGameMode()) then
332:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
332:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
333:    local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
333:    local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
333:    local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
333:         local file = TheNet:GetWorldSessionFile(self.data.slots[slotnum].session_id)
333:         local file = TheNet:GetWorldSessionFile(self.data.slots[slotnum].session_id)
333:         local friends = TheNet:GetFriendsList()
333:         local friends = TheNet:GetFriendsList()
334:     if not TheNet:IsNetIDPlatformValid(data.netid) then
334:     if not TheNet:IsNetIDPlatformValid(data.netid) then
336:     if TheNet:GetServerGameMode() == "quagmire" then
336:     if TheNet:GetServerGameMode() == "quagmire" then
338:      TheNet:NotifyAuthenticationFailure()
338:      TheNet:NotifyAuthenticationFailure()
339:  TheNet:BeginServerModSetup()
339:  TheNet:BeginServerModSetup()
339:             for i, v in ipairs(TheNet:GetClientTable() or {}) do
339:             for i, v in ipairs(TheNet:GetClientTable() or {}) do
339:         if TheNet:GetServerGameMode() ~= "quagmire" then
339:         if TheNet:GetServerGameMode() ~= "quagmire" then
340:                 if v.performance == nil or TheNet:GetServerIsClientHosted() then
340:                 if v.performance == nil or TheNet:GetServerIsClientHosted() then
340:     if GetGhostSanityDrain(TheNet:GetServerGameMode()) and not self.player_ghost_immune then
340:     if GetGhostSanityDrain(TheNet:GetServerGameMode()) and not self.player_ghost_immune then
340:     if not TheNet:IsDedicated() then
340:     if not TheNet:IsDedicated() then
343:    TheNet:NotifyAuthenticationFailure()
343:    TheNet:NotifyAuthenticationFailure()
346:      TheNet:SendLobbyCharacterRequestToServer("")
346:      TheNet:SendLobbyCharacterRequestToServer("")
347:         TheNet:ViewNetProfile(self.blacklist[selected_player].netid)
347:         TheNet:ViewNetProfile(self.blacklist[selected_player].netid)
348:     TheNet:StopSearchingServers()
348:     TheNet:StopSearchingServers()
349:     TheNet:JoinServerResponse( true ) -- cancel join
349:     TheNet:JoinServerResponse( true ) -- cancel join
350:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
350:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
352:             if not TheNet:IsNetIDPlatformValid(data.netid) then
352:             if not TheNet:IsNetIDPlatformValid(data.netid) then
352:             TheNet:DeleteSession(session_id)
352:             TheNet:DeleteSession(session_id)
352:     local serverNameStr = ServerPreferences:IsNameAndDescriptionHidden() and STRINGS.UI.SERVERLISTINGSCREEN.HIDDEN_NAME or TheNet:GetServerName()
352:     local serverNameStr = ServerPreferences:IsNameAndDescriptionHidden() and STRINGS.UI.SERVERLISTINGSCREEN.HIDDEN_NAME or TheNet:GetServerName()
354:         if not TheNet:IsDedicated() then
354:         if not TheNet:IsDedicated() then
354:     local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
354:     local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
355:         if not TheNet:IsDedicated() then
355:         if not TheNet:IsDedicated() then
355:         local clients = TheNet:GetClientTable()
355:         local clients = TheNet:GetClientTable()
356:             TheNet:DeleteCluster(slot)
356:             TheNet:DeleteCluster(slot)
357:             local isdedicated = not TheNet:GetServerIsClientHosted()
357:             local isdedicated = not TheNet:GetServerIsClientHosted()
358:             for i, v in ipairs(TheNet:GetClientTable() or {}) do
358:             for i, v in ipairs(TheNet:GetClientTable() or {}) do
363:     if TheNet:IsOnlineMode() then
363:     if TheNet:IsOnlineMode() then
364:     local start_worked = TheNet:StartClient(play_test_ip)
364:     local start_worked = TheNet:StartClient(play_test_ip)
365:  TheNet:DownloadServerMods()
365:  TheNet:DownloadServerMods()
367:     TheNet:SetIsMatchStarting(false)
367:     TheNet:SetIsMatchStarting(false)
369:     local client_table = TheNet:GetClientTable() or {}
369:     local client_table = TheNet:GetClientTable() or {}
370:         if TheNet:GetServerGameMode() == "quagmire" then
370:         if TheNet:GetServerGameMode() == "quagmire" then
370:         if TheNet:GetServerGameMode() == "quagmire" then
370:         if TheNet:GetServerGameMode() == "quagmire" then
373:     if not self.servermods and TheNet:GetServerModsEnabled() then
373:     if not self.servermods and TheNet:GetServerModsEnabled() then
374:         local modsStr = TheNet:GetServerModsDescription()
374:         local modsStr = TheNet:GetServerModsDescription()
374:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
374:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
375:                     TheNet:InviteToParty(v.netid)
375:                     TheNet:InviteToParty(v.netid)
377:     if TheNet:GetIsClient() then
377:     if TheNet:GetIsClient() then
377:     if TheNet:GetServerGameMode() == "quagmire" then
377:     if TheNet:GetServerGameMode() == "quagmire" then
380:     if not TheNet:IsDedicated() then
380:     if not TheNet:IsDedicated() then
381:         TheNet:SetBlacklist(list)
381:         TheNet:SetBlacklist(list)
383:     if not TheNet:IsDedicated() then
383:     if not TheNet:IsDedicated() then
383:     local maxPlayers = TheNet:GetServerMaxPlayers()
383:     local maxPlayers = TheNet:GetServerMaxPlayers()
384:     slotdata.session_id = TheNet:GetSessionIdentifier()
384:     slotdata.session_id = TheNet:GetSessionIdentifier()
385:  if TheNet:GetServerGameMode() == "quagmire" then
385:  if TheNet:GetServerGameMode() == "quagmire" then
389:      inst:DoTaskInTime(0, function() TheNet:SetAllowNewPlayersToConnect(false) end)
389:      inst:DoTaskInTime(0, function() TheNet:SetAllowNewPlayersToConnect(false) end)
391:             TheNet:ServerModsDownloadCompleted(true, "", "")
391:             TheNet:ServerModsDownloadCompleted(true, "", "")
391:             TheNet:SetBlacklist(self.blacklist)
391:             TheNet:SetBlacklist(self.blacklist)
395:     local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
395:     local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
396:     if not InGamePlay() and TheNet:StartClient(ip, port, 0, password) then
396:     if not InGamePlay() and TheNet:StartClient(ip, port, 0, password) then
401:    if userid ~= TheNet:GetUserID() then
401:    if userid ~= TheNet:GetUserID() then
406:             slotdata.server.encode_user_path = TheNet:TryDefaultEncodeUserPath()
406:             slotdata.server.encode_user_path = TheNet:TryDefaultEncodeUserPath()
407:                                                     TheNet:ReportListing(guid, InputDialogScreen:GetText())
407:                                                     TheNet:ReportListing(guid, InputDialogScreen:GetText())
407:     local ClientObjs = TheNet:GetClientTable()
407:     local ClientObjs = TheNet:GetClientTable()
408:         if not TheNet:IsDedicated() then
408:         if not TheNet:IsDedicated() then
410:     elseif TheNet:GetServerIsClientHosted() then
410:     elseif TheNet:GetServerIsClientHosted() then
412:                                 TheNet:ServerModsDownloadCompleted(true, "", "")
412:                                 TheNet:ServerModsDownloadCompleted(true, "", "")
412:             TheNet:Say(chat_string)
412:             TheNet:Say(chat_string)
413:    if TheNet:IsNetIDPlatformValid(data.netid) then
413:    if TheNet:IsNetIDPlatformValid(data.netid) then
414:            {KU = TheNet:GetUserID(), PlaytimeMs = 100000, Custom = { UnlockAchievements = achievements }},
414:            {KU = TheNet:GetUserID(), PlaytimeMs = 100000, Custom = { UnlockAchievements = achievements }},
414:     local maxPlayers = TheNet:GetServerMaxPlayers()
414:     local maxPlayers = TheNet:GetServerMaxPlayers()
418:     if not TheNet:IsDedicated() then
418:     if not TheNet:IsDedicated() then
419:  userid = userid or TheNet:GetUserID()
419:  userid = userid or TheNet:GetUserID()
420:         TheNet:ReportListing(guid, InputDialogScreen:GetText())
420:         TheNet:ReportListing(guid, InputDialogScreen:GetText())
423:                                                     TheNet:ReportListing(guid, InputDialogScreen:GetText())
423:                                                     TheNet:ReportListing(guid, InputDialogScreen:GetText())
424:                                 TheNet:ServerModsDownloadCompleted(false, version_mismatch_msg, "SERVER_MODS_WORKSHOP_VERSION_MISMATCH" )
424:                                 TheNet:ServerModsDownloadCompleted(false, version_mismatch_msg, "SERVER_MODS_WORKSHOP_VERSION_MISMATCH" )
426:  if not worldgen and TheNet:IsDedicated() then
426:  if not worldgen and TheNet:IsDedicated() then
426:         local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
426:         local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
428:                                 TheNet:ServerModsDownloadCompleted(false, msg, "SERVER_MODS_WORKSHOP_ACCESS_DENIED")
428:                                 TheNet:ServerModsDownloadCompleted(false, msg, "SERVER_MODS_WORKSHOP_ACCESS_DENIED")
430:                                 TheNet:ServerModsDownloadCompleted(false, msg, "SERVER_MODS_WORKSHOP_FAILURE")
430:                                 TheNet:ServerModsDownloadCompleted(false, msg, "SERVER_MODS_WORKSHOP_FAILURE")
431:         self.server_name.textbox:SetString(self.slotdata[slotnum] and self.slotdata[slotnum].server_name or subfmt(STRINGS.UI.SERVERCREATIONSCREEN.NEWGAME_FMT, { name = TheNet:GetLocalUserName() }))
431:         self.server_name.textbox:SetString(self.slotdata[slotnum] and self.slotdata[slotnum].server_name or subfmt(STRINGS.UI.SERVERCREATIONSCREEN.NEWGAME_FMT, { name = TheNet:GetLocalUserName() }))
434: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="MILESTONE_6", val=600}, {desc="DURATION", val=235}, {desc="CONSECUTIVE", val=456}, {desc="FRIENDS_BONUS", val=456}, {desc="UNIQUE_CHARACTERS", val=250}, {desc="NO_DEATHS_PLAYER", val=750}, {desc="NO_DEATHS_TEAM", val=750}, {desc="laq_dailywin-dev-001", val=5000}, {desc="laq_dailymatch-dev-001", val=500}, {desc="laq_reviver-dev-001", val=500}} }
434: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="MILESTONE_6", val=600}, {desc="DURATION", val=235}, {desc="CONSECUTIVE", val=456}, {desc="FRIENDS_BONUS", val=456}, {desc="UNIQUE_CHARACTERS", val=250}, {desc="NO_DEATHS_PLAYER", val=750}, {desc="NO_DEATHS_TEAM", val=750}, {desc="laq_dailywin-dev-001", val=5000}, {desc="laq_dailymatch-dev-001", val=500}, {desc="laq_reviver-dev-001", val=500}} }
435:         if TheNet:GetServerGameMode() == "quagmire" then
435:         if TheNet:GetServerGameMode() == "quagmire" then
435:     if not TheNet:IsDedicated() then
435:     if not TheNet:IsDedicated() then
436:                 TheNet:ServerModsDownloadCompleted(false, "You don't have the required mods to play on this server and they don't exist on the Workshop. You will need to download them manually.", "SERVER_MODS_NOT_ON_WORKSHOP" )
436:                 TheNet:ServerModsDownloadCompleted(false, "You don't have the required mods to play on this server and they don't exist on the Workshop. You will need to download them manually.", "SERVER_MODS_NOT_ON_WORKSHOP" )
436:         local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
436:         local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
436:         TheNet:ReportListing(guid, InputDialogScreen:GetText())
436:         TheNet:ReportListing(guid, InputDialogScreen:GetText())
436: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="MILESTONE_1", val=601}, {desc="MILESTONE_2", val=602}, {desc="MILESTONE_3", val=603}, {desc="MILESTONE_4", val=604}, {desc="MILESTONE_5", val=605}, {desc="MILESTONE_6", val=606}, {desc="DURATION", val=235}, {desc="CONSECUTIVE", val=456}, {desc="FRIENDS_BONUS", val=456}, {desc="UNIQUE_CHARACTERS", val=250}, {desc="NO_DEATHS_PLAYER", val=750}, {desc="NO_DEATHS_TEAM", val=750}, {desc="laq_dailywin-dev-001", val=5000}, {desc="laq_dailymatch-dev-001", val=500}, {desc="laq_reviver-dev-001", val=500}} }
436: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="MILESTONE_1", val=601}, {desc="MILESTONE_2", val=602}, {desc="MILESTONE_3", val=603}, {desc="MILESTONE_4", val=604}, {desc="MILESTONE_5", val=605}, {desc="MILESTONE_6", val=606}, {desc="DURATION", val=235}, {desc="CONSECUTIVE", val=456}, {desc="FRIENDS_BONUS", val=456}, {desc="UNIQUE_CHARACTERS", val=250}, {desc="NO_DEATHS_PLAYER", val=750}, {desc="NO_DEATHS_TEAM", val=750}, {desc="laq_dailywin-dev-001", val=5000}, {desc="laq_dailymatch-dev-001", val=500}, {desc="laq_reviver-dev-001", val=500}} }
437:         local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
437:         local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
437: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="DURATION", val=235}, {desc="MILESTONE_4", val=200}, {desc="laq_dailywin-dev-001", val=5000}, {desc="laq_dailymatch-dev-001", val=500}, {desc="laq_reviver-dev-001", val=500}} }
437: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="DURATION", val=235}, {desc="MILESTONE_4", val=200}, {desc="laq_dailywin-dev-001", val=5000}, {desc="laq_dailymatch-dev-001", val=500}, {desc="laq_reviver-dev-001", val=500}} }
438:                     peek_percent = TheNet:GetServerMaxPlayers() > NUM_ROWS and 0.3 or 0
438:                     peek_percent = TheNet:GetServerMaxPlayers() > NUM_ROWS and 0.3 or 0
438:     local party = TheNet:GetPartyTable()
438:     local party = TheNet:GetPartyTable()
440:                             local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP, 10999, -1, serverdata.password)
440:                             local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP, 10999, -1, serverdata.password)
440:         TheNet:ServerModsDownloadCompleted(true, "", "")
440:         TheNet:ServerModsDownloadCompleted(true, "", "")
441:         self.server_name.textbox:SetString(self.slotdata[slotnum] and self.slotdata[slotnum].server_name or subfmt(STRINGS.UI.SERVERCREATIONSCREEN.NEWGAME_FMT, { name = TheNet:GetLocalUserName() }))
441:         self.server_name.textbox:SetString(self.slotdata[slotnum] and self.slotdata[slotnum].server_name or subfmt(STRINGS.UI.SERVERCREATIONSCREEN.NEWGAME_FMT, { name = TheNet:GetLocalUserName() }))
441:         self.server_name.textbox:SetString(subfmt(STRINGS.UI.SERVERCREATIONSCREEN.NEWGAME_FMT, { name = TheNet:GetLocalUserName() }))
441:         self.server_name.textbox:SetString(subfmt(STRINGS.UI.SERVERCREATIONSCREEN.NEWGAME_FMT, { name = TheNet:GetLocalUserName() }))
441:         TheNet:ViewNetProfile(self.blacklist[selected_player].netid)
441:         TheNet:ViewNetProfile(self.blacklist[selected_player].netid)
442:     if not TheNet:IsDedicated() then
442:     if not TheNet:IsDedicated() then
442: if not (_ismastersim and TheNet:IsDedicated()) then
442: if not (_ismastersim and TheNet:IsDedicated()) then
443:     slot.session_id = TheNet:GetSessionIdentifier()
443:     slot.session_id = TheNet:GetSessionIdentifier()
443: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="quag_win_fast", val=2001}, {desc="quag_win_long", val=2002}, {desc="food_001", val=501}, {desc="food_016", val=502}, {desc="food_syrup", val=503}} }
443: -- Settings.match_results.wxp_data[TheNet:GetUserID()] = { new_xp = 7998, match_xp = 5998+500, earned_boxes = 2, details = {{desc="quag_win_fast", val=2001}, {desc="quag_win_long", val=2002}, {desc="food_001", val=501}, {desc="food_016", val=502}, {desc="food_syrup", val=503}} }
444:            {KU = TheNet:GetUserID(), PlaytimeMs = 1000, Custom = { UnlockAchievements = achievements }},
444:            {KU = TheNet:GetUserID(), PlaytimeMs = 1000, Custom = { UnlockAchievements = achievements }},
448:     local ClientObjs = TheNet:GetClientTable()
448:     local ClientObjs = TheNet:GetClientTable()
450:    if TheNet:GetServerGameMode() == "lavaarena" then
450:    if TheNet:GetServerGameMode() == "lavaarena" then
451:     elseif TheNet:GetServerIsClientHosted() then
451:     elseif TheNet:GetServerIsClientHosted() then
453:        KnownModIndex:LoadModConfigurationOptions(modname, not TheNet:GetIsServer())
453:        KnownModIndex:LoadModConfigurationOptions(modname, not TheNet:GetIsServer())
453:         if not (TheNet:GetIsHosting() or TheNet:GetServerFriendsOnly() or TheNet:GetServerLANOnly()) then
453:         if not (TheNet:GetIsHosting() or TheNet:GetServerFriendsOnly() or TheNet:GetServerLANOnly()) then
453:         if not (TheNet:GetIsHosting() or TheNet:GetServerFriendsOnly() or TheNet:GetServerLANOnly()) then
453:         if not (TheNet:GetIsHosting() or TheNet:GetServerFriendsOnly() or TheNet:GetServerLANOnly()) then
453:     local force_shard_path = serverdata ~= nil and serverdata.use_cluster_path and not TheNet:IsDedicated() and "Master" or nil
453:     local force_shard_path = serverdata ~= nil and serverdata.use_cluster_path and not TheNet:IsDedicated() and "Master" or nil
454:         local start_worked = TheNet:JoinServerResponse( false, server_listing.guid, password )
454:         local start_worked = TheNet:JoinServerResponse( false, server_listing.guid, password )
454:     TheNet:AnnounceVoteResult(command.hash, username, passed)
454:     TheNet:AnnounceVoteResult(command.hash, username, passed)
458:     if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
458:     if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
461:                     TheNet:SetServerTags(BuildTagsStringHosting(self, worldoptions))
461:                     TheNet:SetServerTags(BuildTagsStringHosting(self, worldoptions))
463:            {KU = TheNet:GetUserID(), PlaytimeMs = 100000, Custom = { UnlockAchievements = {"scotttestdaily_d1", "wintime_30"} }},
463:            {KU = TheNet:GetUserID(), PlaytimeMs = 100000, Custom = { UnlockAchievements = {"scotttestdaily_d1", "wintime_30"} }},
463:                             local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP, 10999, -1, serverdata.password)
463:                             local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP, 10999, -1, serverdata.password)
463:         TheNet:JoinServerResponse(true)
463:         TheNet:JoinServerResponse(true)
463:     if not TheNet:IsDedicated() then
463:     if not TheNet:IsDedicated() then
468:    if (Settings.match_results.wxp_data ~= nil and Settings.match_results.wxp_data[TheNet:GetUserID()] ~= nil) or Settings.match_results.mvp_cards then
468:    if (Settings.match_results.wxp_data ~= nil and Settings.match_results.wxp_data[TheNet:GetUserID()] ~= nil) or Settings.match_results.mvp_cards then
468:             inst.widget:SetTint(unpack(playerListing.userid ~= nil and TheNet:IsVoiceActive(playerListing.userid) and VOICE_ACTIVE_COLOUR or VOICE_IDLE_COLOUR))
468:             inst.widget:SetTint(unpack(playerListing.userid ~= nil and TheNet:IsVoiceActive(playerListing.userid) and VOICE_ACTIVE_COLOUR or VOICE_IDLE_COLOUR))
469:     local maxPlayers = TheNet:GetServerMaxPlayers()
469:     local maxPlayers = TheNet:GetServerMaxPlayers()
472:     if self.skins_list ~= nil and self.recipe.chooseskin == nil and TheNet:IsOnlineMode() then
472:     if self.skins_list ~= nil and self.recipe.chooseskin == nil and TheNet:IsOnlineMode() then
475:         TheNet:SetBlacklist(list)
475:         TheNet:SetBlacklist(list)
476:      if TheNet:GetServerGameMode() == "lavaarena" then
476:      if TheNet:GetServerGameMode() == "lavaarena" then
478:     self.chatqueue = self.chat_pane:AddChild(LobbyChatQueue(TheNet:GetUserID(), self.chatbox.textbox, function() --[[TODO: put sounds back in!]] end))
478:     self.chatqueue = self.chat_pane:AddChild(LobbyChatQueue(TheNet:GetUserID(), self.chatbox.textbox, function() --[[TODO: put sounds back in!]] end))
482:         elseif control == CONTROL_MENU_MISC_1 and TheNet:IsOnlineMode() then
482:         elseif control == CONTROL_MENU_MISC_1 and TheNet:IsOnlineMode() then
483:         TheNet:ViewNetProfile(self.selected_server.net_group_id)
483:         TheNet:ViewNetProfile(self.selected_server.net_group_id)
483:     if _ismastershard and (TheNet:GetDefaultVoteEnabled() or BRANCH == "dev") then
483:     if _ismastershard and (TheNet:GetDefaultVoteEnabled() or BRANCH == "dev") then
484:                     TheNet:SetServerTags(BuildTagsStringHosting(self, worldoptions))
484:                     TheNet:SetServerTags(BuildTagsStringHosting(self, worldoptions))
485:             TheNet:SetBlacklist(self.blacklist)
485:             TheNet:SetBlacklist(self.blacklist)
486:  local userid = TheNet:GetUserID()
486:  local userid = TheNet:GetUserID()
486:                     if not TheNet:IsDedicated() then
486:                     if not TheNet:IsDedicated() then
487:     if TheNet:IsDedicated() then
487:     if TheNet:IsDedicated() then
489:             TheNet:AnnounceDeath(announcement_string, inst.entity)
489:             TheNet:AnnounceDeath(announcement_string, inst.entity)
496:                     TheNet:SetPlayerMuted(playerListing.userid, playerListing.isMuted)
496:                     TheNet:SetPlayerMuted(playerListing.userid, playerListing.isMuted)
497:     if TheNet:IsOnlineMode() then
497:     if TheNet:IsOnlineMode() then
504:         --TheNet:Announce(string.format(STRINGS.UI.NOTIFICATION.JOINEDGAME, inst:GetDisplayName()), inst.entity, true, "join_game")
504:         --TheNet:Announce(string.format(STRINGS.UI.NOTIFICATION.JOINEDGAME, inst:GetDisplayName()), inst.entity, true, "join_game")
504:         if TheNet:IsOnlineMode() then
504:         if TheNet:IsOnlineMode() then
513:             local gamemode = TheNet:GetServerGameMode()
513:             local gamemode = TheNet:GetServerGameMode()
513:         TheNet:ViewNetProfile(self.selected_server.net_group_id)
513:         TheNet:ViewNetProfile(self.selected_server.net_group_id)
515:  if not TheNet:IsDedicated() then
515:  if not TheNet:IsDedicated() then
522:        or TheNet:IsDedicated() and IS_DEDICATED_SERVER
522:        or TheNet:IsDedicated() and IS_DEDICATED_SERVER
522:     elseif self.server_settings_tab:GetOnlineMode() and (not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode()) then
522:     elseif self.server_settings_tab:GetOnlineMode() and (not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode()) then
524:        if TheNet:GetServerGameMode() == "quagmire" then
524:        if TheNet:GetServerGameMode() == "quagmire" then
530:      GetQuestDataTable(self, TheNet:GetUserID()).quest_query_active = true
530:      GetQuestDataTable(self, TheNet:GetUserID()).quest_query_active = true
537:         if TheNet:GetServerGameMode() ~= "quagmire" then
537:         if TheNet:GetServerGameMode() ~= "quagmire" then
538:      for i = 1, TheNet:GetServerMaxPlayers() do
538:      for i = 1, TheNet:GetServerMaxPlayers() do
544:     if not TheNet:IsDedicated() then
544:     if not TheNet:IsDedicated() then
544:     if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
544:     if TheFrontEnd:GetIsOfflineMode() or not TheNet:IsOnlineMode() then
552:     return self.privacy_type.buttons:GetSelectedData() ~= PRIVACY_TYPE.CLAN or TheNet:IsClanIDValid(self.clan_id.textbox:GetString())
552:     return self.privacy_type.buttons:GetSelectedData() ~= PRIVACY_TYPE.CLAN or TheNet:IsClanIDValid(self.clan_id.textbox:GetString())
554:     return self.privacy_type.buttons:GetSelectedData() ~= PRIVACY_TYPE.CLAN or TheNet:IsClanIDValid(self.clan_id.textbox:GetString())
554:     return self.privacy_type.buttons:GetSelectedData() ~= PRIVACY_TYPE.CLAN or TheNet:IsClanIDValid(self.clan_id.textbox:GetString())
555:            str = str .. (v == tostring(TheNet:GetUserID()) and ",yes" or ",no")
555:            str = str .. (v == tostring(TheNet:GetUserID()) and ",yes" or ",no")
557:     if inst._fx == nil and not TheNet:IsDedicated() then
557:     if inst._fx == nil and not TheNet:IsDedicated() then
560:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
560:                 local file = TheNet:GetWorldSessionFileInClusterSlot(slotnum, "Master", session_id)
561:     return self.privacy_type.buttons:GetSelectedData() ~= PRIVACY_TYPE.CLAN or TheNet:IsClanIDValid(self.clan_id.textbox:GetString())
561:     return self.privacy_type.buttons:GetSelectedData() ~= PRIVACY_TYPE.CLAN or TheNet:IsClanIDValid(self.clan_id.textbox:GetString())
561:     Stats.PushMetricsEvent("PurchasePackScreen.entered", TheNet:GetUserID(), { url = screen_flow_path }, "is_only_local_users_data")
561:     Stats.PushMetricsEvent("PurchasePackScreen.entered", TheNet:GetUserID(), { url = screen_flow_path }, "is_only_local_users_data")
564:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
564:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
568:                 local file = TheNet:GetWorldSessionFile(session_id)
568:                 local file = TheNet:GetWorldSessionFile(session_id)
568:     if not TheNet:IsDedicated() then
568:     if not TheNet:IsDedicated() then
569:     local isdedicated = not TheNet:GetServerIsClientHosted()
569:     local isdedicated = not TheNet:GetServerIsClientHosted()
570:     local clients = TheNet:GetClientTable()
570:     local clients = TheNet:GetClientTable()
573:     elseif self.server_settings_tab:GetOnlineMode() and (not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode()) then
573:     elseif self.server_settings_tab:GetOnlineMode() and (not TheNet:IsOnlineMode() or TheFrontEnd:GetIsOfflineMode()) then
574:             TheNet:AnnounceDeath(announcement_string, inst.entity)
574:             TheNet:AnnounceDeath(announcement_string, inst.entity)
576:  if self.dirty and not TheNet:IsDedicated() then
576:  if self.dirty and not TheNet:IsDedicated() then
581:     local sel_serv = TheNet:GetServerListingFromActualIndex(selected_index_actual)
581:     local sel_serv = TheNet:GetServerListingFromActualIndex(selected_index_actual)
584:    if TheNet:GetServerGameMode() == "quagmire" then
584:    if TheNet:GetServerGameMode() == "quagmire" then
587:     return session_id ~= nil and TheNet:GetWorldSessionFile(session_id) ~= nil
587:     return session_id ~= nil and TheNet:GetWorldSessionFile(session_id) ~= nil
598:                                     if TheNet:GetPVPEnabled() or not (inst:HasTag("badfood") or inst:HasTag("unsafefood") or inst:HasTag("spoiled")) then
598:                                     if TheNet:GetPVPEnabled() or not (inst:HasTag("badfood") or inst:HasTag("unsafefood") or inst:HasTag("spoiled")) then
602:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
602:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
606:    if TheNet:GetServerGameMode() == "quagmire" then
606:    if TheNet:GetServerGameMode() == "quagmire" then
609:  local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
609:  local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
613:                     local shard, snapshot = TheNet:GetPlayerSaveLocationInClusterSlot(slot, slotdata.session_id, online_mode, encode_user_path)
613:                     local shard, snapshot = TheNet:GetPlayerSaveLocationInClusterSlot(slot, slotdata.session_id, online_mode, encode_user_path)
617:         TheNet:SetIsClientInWorld(inst.userid, true)
617:         TheNet:SetIsClientInWorld(inst.userid, true)
618:                             if TheNet:GetPVPEnabled() or not (inst:HasTag("badfood") or inst:HasTag("unsafefood") or inst:HasTag("spoiled")) then
618:                             if TheNet:GetPVPEnabled() or not (inst:HasTag("badfood") or inst:HasTag("unsafefood") or inst:HasTag("spoiled")) then
619:     local sel_serv = TheNet:GetServerListingFromActualIndex(selected_index_actual)
619:     local sel_serv = TheNet:GetServerListingFromActualIndex(selected_index_actual)
620: if not TheNet:IsDedicated() then
620: if not TheNet:IsDedicated() then
623:                             local file = TheNet:GetUserSessionFileInClusterSlot(slot, shard, slotdata.session_id, snapshot, online_mode, encode_user_path)
623:                             local file = TheNet:GetUserSessionFileInClusterSlot(slot, shard, slotdata.session_id, snapshot, online_mode, encode_user_path)
625:                                 TheNet:DeserializeUserSessionInClusterSlot(slot, shard, file, onreadusersession)
625:                                 TheNet:DeserializeUserSessionInClusterSlot(slot, shard, file, onreadusersession)
627:         if not TheNet:GetServerIsClientHosted() then
627:         if not TheNet:GetServerIsClientHosted() then
632:         inst:DoTaskInTime(5, function() TheNet:Announce("World will reload in 35 seconds to complete retrofitting.") end)
632:         inst:DoTaskInTime(5, function() TheNet:Announce("World will reload in 35 seconds to complete retrofitting.") end)
633:         inst:DoTaskInTime(10, function() TheNet:Announce("World will reload in 30 seconds to complete retrofitting.") end)
633:         inst:DoTaskInTime(10, function() TheNet:Announce("World will reload in 30 seconds to complete retrofitting.") end)
634:  if not TheNet:IsDedicated() then
634:  if not TheNet:IsDedicated() then
634:                 local file = TheNet:GetUserSessionFileInClusterSlot(slot, "Master", slotdata.session_id, nil, online_mode, encode_user_path)
634:                 local file = TheNet:GetUserSessionFileInClusterSlot(slot, "Master", slotdata.session_id, nil, online_mode, encode_user_path)
634:         inst:DoTaskInTime(15, function() TheNet:Announce("World will reload in 25 seconds to complete retrofitting.") end)
634:         inst:DoTaskInTime(15, function() TheNet:Announce("World will reload in 25 seconds to complete retrofitting.") end)
635:         inst:DoTaskInTime(20, function() TheNet:Announce("World will reload in 20 seconds to complete retrofitting.") end)
635:         inst:DoTaskInTime(20, function() TheNet:Announce("World will reload in 20 seconds to complete retrofitting.") end)
636:                     TheNet:DeserializeUserSessionInClusterSlot(slot, "Master", file, onreadusersession)
636:                     TheNet:DeserializeUserSessionInClusterSlot(slot, "Master", file, onreadusersession)
636:         inst:DoTaskInTime(25, function() TheNet:Announce("World will reload in 15 seconds to complete retrofitting.") end)
636:         inst:DoTaskInTime(25, function() TheNet:Announce("World will reload in 15 seconds to complete retrofitting.") end)
637:    inst:DoTaskInTime(30, function() TheWorld:PushEvent("ms_save") TheNet:Announce("World will reload in 10 seconds to complete retrofitting.") end)
637:    inst:DoTaskInTime(30, function() TheWorld:PushEvent("ms_save") TheNet:Announce("World will reload in 10 seconds to complete retrofitting.") end)
638:    inst:DoTaskInTime(35, function() TheNet:Announce("World will reload in 5 seconds to complete retrofitting.") end)
638:    inst:DoTaskInTime(35, function() TheNet:Announce("World will reload in 5 seconds to complete retrofitting.") end)
639:    inst:DoTaskInTime(40, function() TheNet:SendWorldRollbackRequestToServer(0) end)
639:    inst:DoTaskInTime(40, function() TheNet:SendWorldRollbackRequestToServer(0) end)
639:                 local file = TheNet:GetUserSessionFile(slotdata.session_id, nil, online_mode, encode_user_path)
639:                 local file = TheNet:GetUserSessionFile(slotdata.session_id, nil, online_mode, encode_user_path)
641:                     TheNet:DeserializeUserSession(file, onreadusersession)
641:                     TheNet:DeserializeUserSession(file, onreadusersession)
649:    TheNet:SendLobbyCharacterRequestToServer("")
649:    TheNet:SendLobbyCharacterRequestToServer("")
651:    local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
651:    local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
651:    local client_obj = TheNet:GetClientTableForUser(TheNet:GetUserID())
651:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
651:     if TheNet:StartServer(start_in_online_mode, slot, SaveGameIndex:GetSlotServerData(slot)) then
655:  local user = {userid=TheNet:GetUserID()}
655:  local user = {userid=TheNet:GetUserID()}
658:  local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
658:  local start_worked = TheNet:StartClient(DEFAULT_JOIN_IP)
661:     elseif not TheNet:IsDedicated() and ThePlayer == nil then
661:     elseif not TheNet:IsDedicated() and ThePlayer == nil then
662:      Stats.PushMetricsEvent("SnowbirdGameOver", TheNet:GetUserID(), { match_xp = self.score }, "is_only_local_users_data")
662:      Stats.PushMetricsEvent("SnowbirdGameOver", TheNet:GetUserID(), { match_xp = self.score }, "is_only_local_users_data")
662:         TheNet:SendResumeRequestToServer(TheNet:GetUserID())
662:         TheNet:SendResumeRequestToServer(TheNet:GetUserID())
662:         TheNet:SendResumeRequestToServer(TheNet:GetUserID())
665:         local this_user_is_dedicated_server = client.performance ~= nil and not TheNet:GetServerIsClientHosted()
665:         local this_user_is_dedicated_server = client.performance ~= nil and not TheNet:GetServerIsClientHosted()
673:     if not TheNet:GetIsServer() then
673:     if not TheNet:GetIsServer() then
687:         inst:DoTaskInTime(5,  function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 25})) end)
687:         inst:DoTaskInTime(5,  function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 25})) end)
688:         inst:DoTaskInTime(10, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 20})) end)
688:         inst:DoTaskInTime(10, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 20})) end)
689:         inst:DoTaskInTime(15, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 15})) end)
689:         inst:DoTaskInTime(15, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 15})) end)
690:    inst:DoTaskInTime(20, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 10})) end)
690:    inst:DoTaskInTime(20, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 10})) end)
692:    inst:DoTaskInTime(25, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 5})) end)
692:    inst:DoTaskInTime(25, function() TheNet:Announce(subfmt(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT, {time = 5})) end)
693:    inst:DoTaskInTime(29, function() TheNet:Announce(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT_NOW) end)
693:    inst:DoTaskInTime(29, function() TheNet:Announce(STRINGS.UI.HUD.RETROFITTING_ANNOUNCEMENT_NOW) end)
694:    inst:DoTaskInTime(30, function() TheNet:SendWorldRollbackRequestToServer(0) end)
694:    inst:DoTaskInTime(30, function() TheNet:SendWorldRollbackRequestToServer(0) end)
696:             TheNet:TruncateSnapshots(TheWorld.meta.session_identifier, -count)
696:             TheNet:TruncateSnapshots(TheWorld.meta.session_identifier, -count)
697:         TheNet:SetIsClientInWorld(inst.userid, false)
697:         TheNet:SetIsClientInWorld(inst.userid, false)
701:     if not TheNet:IsDedicated() then
701:     if not TheNet:IsDedicated() then
708:     table.insert(tagsTable, GetGameModeTag(TheNet:GetDefaultGameMode()))
708:     table.insert(tagsTable, GetGameModeTag(TheNet:GetDefaultGameMode()))
709:                 TheNet:DownloadServerDetails(server.row)
709:                 TheNet:DownloadServerDetails(server.row)
710:     if TheNet:GetDefaultPvpSetting() then
710:     if TheNet:GetDefaultPvpSetting() then
714:     if TheNet:GetDefaultFriendsOnlyServer() then
714:     if TheNet:GetDefaultFriendsOnlyServer() then
716:     if TheNet:GetIsServer() then
716:     if TheNet:GetIsServer() then
718:     if TheNet:GetDefaultLANOnlyServer() then
718:     if TheNet:GetDefaultLANOnlyServer() then
722:     if TheNet:GetDefaultClanID() ~= "" then
722:     if TheNet:GetDefaultClanID() ~= "" then
727:  TheNet:SendLobbyCharacterRequestToServer(self.currentcharacter, skins.base, skins.body, skins.hand, skins.legs, skins.feet)
727:  TheNet:SendLobbyCharacterRequestToServer(self.currentcharacter, skins.base, skins.body, skins.hand, skins.legs, skins.feet)
734:         local client_obj = TheNet:GetClientTableForUser(self.owner.userid)
734:         local client_obj = TheNet:GetClientTableForUser(self.owner.userid)
735:     TheNet:SetServerTags(BuildTagsStringCommon(tagsTable))
735:     TheNet:SetServerTags(BuildTagsStringCommon(tagsTable))
742:     if TheNet:GetIsServer() then
742:     if TheNet:GetIsServer() then
747:     if not TheNet:IsDedicated() then
747:     if not TheNet:IsDedicated() then
749:             server = TheNet:GetServerName(),
749:             server = TheNet:GetServerName(),
759:                 TheNet:DownloadServerDetails(server.row)
759:                 TheNet:DownloadServerDetails(server.row)
761:     if TheNet:GetIsServer() then
761:     if TheNet:GetIsServer() then
766:    TheNet:BeginSession(savedata.meta.session_identifier)
766:    TheNet:BeginSession(savedata.meta.session_identifier)
769:     TheNet:SetWorldGenData(DataDumper(clusteroptions, nil, false))
769:     TheNet:SetWorldGenData(DataDumper(clusteroptions, nil, false))
775:     --     called before this, then TheNet:IsOnlineMode() should
775:     --     called before this, then TheNet:IsOnlineMode() should
779:         intention = TheNet:GetDefaultServerIntention(),
779:         intention = TheNet:GetDefaultServerIntention(),
780:         pvp = TheNet:GetDefaultPvpSetting(),
780:         pvp = TheNet:GetDefaultPvpSetting(),
781:         game_mode = TheNet:GetDefaultGameMode(),
781:         game_mode = TheNet:GetDefaultGameMode(),
782:         online_mode = TheNet:IsOnlineMode(),
782:         online_mode = TheNet:IsOnlineMode(),
783:         encode_user_path = TheNet:GetDefaultEncodeUserPath(),
783:         encode_user_path = TheNet:GetDefaultEncodeUserPath(),
784:             TheNet:SetCheckVersionOnQuery(v.spinner:GetSelectedData())
784:             TheNet:SetCheckVersionOnQuery(v.spinner:GetSelectedData())
785:         max_players = TheNet:GetDefaultMaxPlayers(),
785:         max_players = TheNet:GetDefaultMaxPlayers(),
786:         name = TheNet:GetDefaultServerName(),
786:         name = TheNet:GetDefaultServerName(),
787:         password = TheNet:GetDefaultServerPassword(),
787:         password = TheNet:GetDefaultServerPassword(),
788:          local interface_lang = TheNet:GetLanguageCode()
788:          local interface_lang = TheNet:GetLanguageCode()
788:         description = TheNet:GetDefaultServerDescription(),
788:         description = TheNet:GetDefaultServerDescription(),
789:         server_language = TheNet:GetDefaultServerLanguage(),
789:         server_language = TheNet:GetDefaultServerLanguage(),
790:         TheNet:SearchServers()
790:         TheNet:SearchServers()
791:             (TheNet:GetDefaultFriendsOnlyServer() and PRIVACY_TYPE.FRIENDS) or
791:             (TheNet:GetDefaultFriendsOnlyServer() and PRIVACY_TYPE.FRIENDS) or
792:             (TheNet:GetDefaultLANOnlyServer() and PRIVACY_TYPE.LOCAL) or
792:             (TheNet:GetDefaultLANOnlyServer() and PRIVACY_TYPE.LOCAL) or
793:             (TheNet:GetDefaultClanOnly() and PRIVACY_TYPE.CLAN) or
793:             (TheNet:GetDefaultClanOnly() and PRIVACY_TYPE.CLAN) or
793:         TheNet:SearchLANServers(self.offlinemode)
793:         TheNet:SearchLANServers(self.offlinemode)
794:             TheNet:TruncateSnapshots(save.meta.session_identifier)
794:             TheNet:TruncateSnapshots(save.meta.session_identifier)
796:         TheNet:IncrementSnapshot()
796:         TheNet:IncrementSnapshot()
797:             id = TheNet:GetDefaultClanID(),
797:             id = TheNet:GetDefaultClanID(),
798:             only = TheNet:GetDefaultClanOnly(),
798:             only = TheNet:GetDefaultClanOnly(),
799:             admin = TheNet:GetDefaultClanAdmins(),
799:             admin = TheNet:GetDefaultClanAdmins(),
806:     local start_in_online_mode = not TheNet:IsDedicatedOfflineCluster()
806:     local start_in_online_mode = not TheNet:IsDedicatedOfflineCluster()
807:     local server_started = TheNet:StartServer(start_in_online_mode)
807:     local server_started = TheNet:StartServer(start_in_online_mode)
811:             TheNet:SetCheckVersionOnQuery(v.spinner:GetSelectedData())
811:             TheNet:SetCheckVersionOnQuery(v.spinner:GetSelectedData())
817:         TheNet:SearchServers(self.event_id)
817:         TheNet:SearchServers(self.event_id)
820:         TheNet:SearchLANServers(self.offlinemode)
820:         TheNet:SearchLANServers(self.offlinemode)
821:         if TheNet:GetIsServer() then
821:         if TheNet:GetIsServer() then
822:      if TheNet:IsOnlineMode() then
822:      if TheNet:IsOnlineMode() then
822:             TheNet:TruncateSnapshots(savedata.meta.session_identifier)
822:             TheNet:TruncateSnapshots(savedata.meta.session_identifier)
823:     if TheNet:IsSearchingServers() then
823:     if TheNet:IsSearchingServers() then
826:             if TheNet:GetServerIsClientHosted() then
826:             if TheNet:GetServerIsClientHosted() then
830:                     serverdata.encode_user_path = TheNet:TryDefaultEncodeUserPath()
830:                     serverdata.encode_user_path = TheNet:TryDefaultEncodeUserPath()
834:             TheNet:IncrementSnapshot()
834:             TheNet:IncrementSnapshot()
837:      local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
837:      local online = TheNet:IsOnlineMode() and not TheFrontEnd:GetIsOfflineMode()
839:         if TheNet:GetServerListingReadDirty() == false then
839:         if TheNet:GetServerListingReadDirty() == false then
844:         servers = TheNet:GetServerListings()
844:         servers = TheNet:GetServerListings()
854:     if not TheNet:IsDedicated() then
854:     if not TheNet:IsDedicated() then
856:     if TheNet:IsSearchingServers( PLATFORM ~= "WIN32_RAIL" ) then
856:     if TheNet:IsSearchingServers( PLATFORM ~= "WIN32_RAIL" ) then
863:     if isConnected and not (sawPopup or TheNet:IsDedicated()) then
863:     if isConnected and not (sawPopup or TheNet:IsDedicated()) then
872:         if TheNet:GetServerListingReadDirty() == false then
872:         if TheNet:GetServerListingReadDirty() == false then
873:  TheNet:DoneLoadingMap( )
873:  TheNet:DoneLoadingMap( )
875:  if TheNet:GetIsServer() then
875:  if TheNet:GetIsServer() then
877:         servers = TheNet:GetServerListings()
877:         servers = TheNet:GetServerListings()
883:     local ClientObjs = TheNet:GetClientTable()
883:     local ClientObjs = TheNet:GetClientTable()
886:     elseif TheNet:GetServerIsClientHosted() then
886:     elseif TheNet:GetServerIsClientHosted() then
890:      if TheNet:IsOnlineMode() then
890:      if TheNet:IsOnlineMode() then
902:  elseif not TheNet:IsOnlineMode() then
902:  elseif not TheNet:IsOnlineMode() then
922:     TheNet:SendRPCToServer(code, ...)
922:     TheNet:SendRPCToServer(code, ...)
926:    local interface_lang = TheNet:GetLanguageCode()
926:    local interface_lang = TheNet:GetLanguageCode()
930:     if PLATFORM == "WIN32_RAIL" or TheNet:IsNetOverlayEnabled() then
930:     if PLATFORM == "WIN32_RAIL" or TheNet:IsNetOverlayEnabled() then
946:             if TheNet:CallRPC(fn, sender, data) then
946:             if TheNet:CallRPC(fn, sender, data) then
947:      Stats.PushMetricsEvent("CrowGameOver", TheNet:GetUserID(), { level = self.moves, match_xp = self.score }, "is_only_local_users_data")
947:      Stats.PushMetricsEvent("CrowGameOver", TheNet:GetUserID(), { level = self.moves, match_xp = self.score }, "is_only_local_users_data")
985:  Stats.PushMetricsEvent("joinfromscreen", TheNet:GetUserID(), values)
985:  Stats.PushMetricsEvent("joinfromscreen", TheNet:GetUserID(), values)
993:  Stats.PushMetricsEvent(event, TheNet:GetUserID(), values)
993:  Stats.PushMetricsEvent(event, TheNet:GetUserID(), values)
995:     TheNet:SendModRPCToServer(id_table.namespace, id_table.id, ...)
995:     TheNet:SendModRPCToServer(id_table.namespace, id_table.id, ...)
1023:     if TheNet:GetIsServer() then
1023:     if TheNet:GetIsServer() then
1043:             local start_worked = TheNet:StartClient( Settings.serverIp, Settings.serverPort, nil, Settings.serverPassword, Settings.serverNetId )
1043:             local start_worked = TheNet:StartClient( Settings.serverIp, Settings.serverPort, nil, Settings.serverPassword, Settings.serverNetId )
1046:     local stats = TheNet:GetNetworkStatistics()
1046:     local stats = TheNet:GetNetworkStatistics()
1065:     if not TheNet:GetServerIsDedicated() then
1065:     if not TheNet:GetServerIsDedicated() then
1071:     if TheNet:GetIsHosting() then
1071:     if TheNet:GetIsHosting() then
1082:     if not (TheNet:IsDedicated() or TheNet:GetIsServer() or TheNet:GetIsClient()) then
1082:     if not (TheNet:IsDedicated() or TheNet:GetIsServer() or TheNet:GetIsClient()) then
1082:     if not (TheNet:IsDedicated() or TheNet:GetIsServer() or TheNet:GetIsClient()) then
1082:     if not (TheNet:IsDedicated() or TheNet:GetIsServer() or TheNet:GetIsClient()) then
1090:         TheNet:CleanupSessionCache(host_sessions)
1090:         TheNet:CleanupSessionCache(host_sessions)
1110:     return TheNet:GetItemsBranch() .. TheNet:GetUserID().."entitlement_"..entitlement
1110:     return TheNet:GetItemsBranch() .. TheNet:GetUserID().."entitlement_"..entitlement
1110:     return TheNet:GetItemsBranch() .. TheNet:GetUserID().."entitlement_"..entitlement
1132: if TheNet:IsDedicated() and not TheNet:GetIsServer() and TheNet:IsDedicatedOfflineCluster() then
1132: if TheNet:IsDedicated() and not TheNet:GetIsServer() and TheNet:IsDedicatedOfflineCluster() then
1132: if TheNet:IsDedicated() and not TheNet:GetIsServer() and TheNet:IsDedicatedOfflineCluster() then
1132: if TheNet:IsDedicated() and not TheNet:GetIsServer() and TheNet:IsDedicatedOfflineCluster() then
1137:     for i = 1, GetMaxItemSlots(TheNet:GetServerGameMode()) do
1137:     for i = 1, GetMaxItemSlots(TheNet:GetServerGameMode()) do
1197:     TheNet:Disconnect(true)
1197:     TheNet:Disconnect(true)
1200:     if TheNet:GetIsHosting() then
1200:     if TheNet:GetIsHosting() then
1221:     TheNet:StartVote(smallhash(commandname), userid)
1221:     TheNet:StartVote(smallhash(commandname), userid)
1225:     TheNet:StopVote()
1225:     TheNet:StopVote()
1249:             --TheNet:Announce(string.format(STRINGS.UI.NOTIFICATION.LEFTGAME, player:GetDisplayName()), player.entity, true, "leave_game")
1249:             --TheNet:Announce(string.format(STRINGS.UI.NOTIFICATION.LEFTGAME, player:GetDisplayName()), player.entity, true, "leave_game")
1266:         (TheNet:GetPVPEnabled() or
1266:         (TheNet:GetPVPEnabled() or
12932: if TheNet:GetServerGameMode() == "quagmire" then
12932: if TheNet:GetServerGameMode() == "quagmire" then
1309:        TheNet:JoinServerResponse( true ) -- cancel join
1309:        TheNet:JoinServerResponse( true ) -- cancel join
1310:             TheNet:Disconnect(false)
1310:             TheNet:Disconnect(false)
1314:        TheNet:JoinServerResponse( true ) -- cancel join
1314:        TheNet:JoinServerResponse( true ) -- cancel join
1315:             TheNet:Disconnect(false)
1315:             TheNet:Disconnect(false)
1322:                         (inst:HasTag("castonlocomotorspvp") and (target == doer or TheNet:GetPVPEnabled() or not (target:HasTag("player") and doer:HasTag("player"))))
1322:                         (inst:HasTag("castonlocomotorspvp") and (target == doer or TheNet:GetPVPEnabled() or not (target:HasTag("player") and doer:HasTag("player"))))
1331:     progress.name = progress:AddChild(Text(CHATFONT, 26, TheNet:GetLocalUserName()))
1331:     progress.name = progress:AddChild(Text(CHATFONT, 26, TheNet:GetLocalUserName()))
1335:             TheNet:Disconnect(false)
1335:             TheNet:Disconnect(false)
1362:     if TheNet:GetServerGameMode() == "lavaarena" then
1362:     if TheNet:GetServerGameMode() == "lavaarena" then
1364:     elseif TheNet:GetServerGameMode() == "quagmire" then
1364:     elseif TheNet:GetServerGameMode() == "quagmire" then
1396:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
1396:     inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
1400:     if TheNet:GetServerGameMode() == "lavaarena" then
1400:     if TheNet:GetServerGameMode() == "lavaarena" then
1402:     elseif TheNet:GetServerGameMode() == "quagmire" then
1402:     elseif TheNet:GetServerGameMode() == "quagmire" then
1433:         TheNet:SendSpawnRequestToServer(char, skin_base, clothing_body, clothing_hand, clothing_legs, clothing_feet)
1433:         TheNet:SendSpawnRequestToServer(char, skin_base, clothing_body, clothing_hand, clothing_legs, clothing_feet)
1443:         TheNet:DeleteUserSession(TheNet:GetUserID())
1443:         TheNet:DeleteUserSession(TheNet:GetUserID())
1443:         TheNet:DeleteUserSession(TheNet:GetUserID())
1464:     if TheNet:GetIsServer() then
1464:     if TheNet:GetIsServer() then
1478:         inst.ghostenabled = GetGhostEnabled(TheNet:GetServerGameMode())
1478:         inst.ghostenabled = GetGhostEnabled(TheNet:GetServerGameMode())
1478:     local file = TheNet:GetUserSessionFile(sessionid, userid)
1478:     local file = TheNet:GetUserSessionFile(sessionid, userid)
1481:         TheNet:DeserializeUserSession(file, function(success, str)
1481:         TheNet:DeserializeUserSession(file, function(success, str)
1509:         if TheNet:GetServerGameMode() == "lavaarena" then
1509:         if TheNet:GetServerGameMode() == "lavaarena" then
1528:     if TheNet:GetIsClient() then
1528:     if TheNet:GetIsClient() then
1544:         if not TheNet:IsDedicated() then
1544:         if not TheNet:IsDedicated() then
1559:     elseif TheNet:GetIsServer() then
1559:     elseif TheNet:GetIsServer() then
1560:         TheNet:NotifyLoadingState(loading_state, json.encode(match_results))
1560:         TheNet:NotifyLoadingState(loading_state, json.encode(match_results))
1566:     if not TheShard:IsSlave() and TheNet:GetDefaultVoteEnabled() then
1566:     if not TheShard:IsSlave() and TheNet:GetDefaultVoteEnabled() then
1610:         local gamemode = TheNet:GetServerGameMode()
1610:         local gamemode = TheNet:GetServerGameMode()
1617:     TheNet:StopSearchingServers()
1617:     TheNet:StopSearchingServers()
1634:     TheNet:StopSearchingServers()
1634:     TheNet:StopSearchingServers()
1807:         TheNet:SetCheckVersionOnQuery( true )
1807:         TheNet:SetCheckVersionOnQuery( true )
1835:         TheNet:SetCheckVersionOnQuery( true )
1835:         TheNet:SetCheckVersionOnQuery( true )
2179:                 TheNet:Disconnect(false)
2179:                 TheNet:Disconnect(false)
2192:         elseif control == CONTROL_MENU_MISC_2 and not TheNet:IsSearchingServers(PLATFORM ~= "WIN32_RAIL") then
2192:         elseif control == CONTROL_MENU_MISC_2 and not TheNet:IsSearchingServers(PLATFORM ~= "WIN32_RAIL") then
2236:     if not TheNet:IsSearchingServers(PLATFORM ~= "WIN32_RAIL") then
2236:     if not TheNet:IsSearchingServers(PLATFORM ~= "WIN32_RAIL") then
2251:         active_screen.selected_server = TheNet:GetServerListingFromActualIndex( active_screen.selected_server.actualindex )
2251:         active_screen.selected_server = TheNet:GetServerListingFromActualIndex( active_screen.selected_server.actualindex )
2253:                 TheNet:Disconnect(false)
2253:                 TheNet:Disconnect(false)
2266:         elseif control == CONTROL_MENU_MISC_2 and not TheNet:IsSearchingServers() then
2266:         elseif control == CONTROL_MENU_MISC_2 and not TheNet:IsSearchingServers() then
2310:     if not TheNet:IsSearchingServers() then
2310:     if not TheNet:IsSearchingServers() then
2325:         active_screen.selected_server = TheNet:GetServerListingFromActualIndex( active_screen.selected_server.actualindex )
2325:         active_screen.selected_server = TheNet:GetServerListingFromActualIndex( active_screen.selected_server.actualindex )
2501:                         score = score * (self.inst:HasTag("playerghost") and GetPortalRez(TheNet:GetServerGameMode()) and 1.1 or .9)
2501:                         score = score * (self.inst:HasTag("playerghost") and GetPortalRez(TheNet:GetServerGameMode()) and 1.1 or .9)
Searching 2489 files for "TheNet"
