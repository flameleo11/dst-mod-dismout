------------------------------------------------------------
-- header
------------------------------------------------------------

local require = GLOBAL.require
local modinit = require("modinit")
modinit("dismount")

------------------------------------------------------------
-- main
------------------------------------------------------------

require("tprint")

local trace = print
local trace = function () end
local easing = require("easing")
local Text = require "widgets/text"
local push = table.insert
local tjoin = table.concat

local KEEP_FACE_DIST = 4
local DECAY_TASK_PERIOD = 10
-- TODO: Make these configurable from the prefab
local OBEDIENCE_DECAY_RATE = -1/(TUNING.TOTAL_DAY_TIME * 2)
local FEEDBACK_DECAY_RATE = -1/(TUNING.TOTAL_DAY_TIME * 45)

autodismount = autodismount or {}
autodismount.init_player = autodismount.init_player or {}
autodismount.init_key = autodismount.init_key or {}

autodismount.init_key = autodismount.init_key or {}

-- if (on_event) then
-- ThePlayer:RemoveEventCallback("event", on_event)
--   ThePlayer:ListenForEvent("event", function ()
--     on_event()
--   end)
-- end

------------------------------------------------------------
-- tools
------------------------------------------------------------

-- local GetTime = _G.GetTime
-- local TheNet = _G.TheNet
is_PvP = TheNet:GetDefaultPvpSetting()
SERVER_SIDE = TheNet:GetIsServer()

-- also user when host
CLIENT_SIDE =	TheNet:GetIsClient() or (SERVER_SIDE and not TheNet:IsDedicated())

function IsInGameplay()
  if not ThePlayer then
    return
  end
  trace("IsInGameplay.....", TheFrontEnd:GetActiveScreen().name)
  if not (TheFrontEnd:GetActiveScreen().name == "HUD") then
    return
  end
  return true
end

function IsDST()
  return TheSim:GetGameID() == "DST"
end

function add_ThePlayer_init(fn)
  if IsDST() then
    env.AddPrefabPostInit("world", function(wrld)
      wrld:ListenForEvent("playeractivated", function(wlrd, player)
        if player == ThePlayer then
          fn()
        end
      end)
    end)
  else
    env.AddPlayerPostInit(function(player)
      fn()
    end)
  end
end

------------------------------------------------------------
-- my api
------------------------------------------------------------

-- trace(DynamicPosition(t_pos_me):GetPosition())
function send_mount(doer, target, instant)
	local pos = target:GetPosition();
	local rc = RPC["RightClick"]
	local ac = ACTIONS["MOUNT"].code
	instant = instant or ACTIONS["MOUNT"].instant
  if (SERVER_SIDE) then
    doer.components.rider:Mount(target, instant)
  else
    SendRPCToServer(rc, ac, pos.x, pos.z, target, nil, instant)
  end
  trace("send_mount", SERVER_SIDE)
end

-- trace(DynamicPosition(t_pos_me):GetPosition())
function send_feed(doer, target, invobject, instant)
  local pos = target:GetPosition();
  local rc = RPC["LeftClick"]
  local ac = ACTIONS["FEED"].code
  instant = instant or ACTIONS["FEED"].instant
  if (SERVER_SIDE) then
    target.components.eater:Eat(invobject, doer)
  else
    SendRPCToServer(rc, ac, pos.x, pos.z, target, nil, instant)
  end
  trace("send_mount", SERVER_SIDE)
end


function send_dismount(doer, target, instant)
	local pos = target:GetPosition();
	local rc = RPC["RightClick"]
	local ac = ACTIONS["DISMOUNT"].code
	instant = instant or ACTIONS["DISMOUNT"].instant
  if (SERVER_SIDE) then
    doer.components.rider:Dismount()
  else
    SendRPCToServer(rc, ac, pos.x, pos.z, doer, nil, instant)
  end
  trace("send_dismount", SERVER_SIDE)
end

function auto_mount()
  local target = autodismount.last_target
  if not (target) then
    show_target_nil()
    return
  end
  if not (CheckPlayerAndMountTarget(ThePlayer, target)) then
    return
  end

  if (is_riding()) then
    send_dismount(ThePlayer, target)
  else
    send_mount(ThePlayer, target)
  end
end

function is_riding()
	return ThePlayer.replica.rider._isriding:value()
end

function get_mount()
	return ThePlayer.replica.rider:GetMount();
end

function is_alive(inst)
  local cmp_health = inst.replica.health
          or (inst.replica._ and inst.replica._.health);
  if not (cmp_health) then
    return false
  end
  if (cmp_health:IsDead()) then
    return false
  end
  if (inst:HasTag("playerghost")) then
    return false
  end
  return true
end

function CheckPlayerAndMountTarget(inst, target)
  trace("CheckPlayerAndMountTarget", inst, target)
  if (inst == nil) then
    return false
  end
  if (target == nil) then
    return false
  end
  if not (is_alive(inst)) then
    show_death_mount()
    return false
  end
  if not (is_alive(target)) then
    show_dead_target(target)
    return false
  end
  if not (inst:IsValid()) then
    -- show_invalid_me()
    return false
  end
  if not (target:IsValid()) then
    show_invalid_target(target)
    return false
  end
  if (inst:HasTag("playerghost")) then
    return false
  end
  if not (target:IsNear(inst, KEEP_FACE_DIST)) then
    show_target_too_far(target)
    return false
  end
  show_check_ok(target)
  return true;
  -- return inst ~= nil
  --     and target ~= nil
  --     and is_alive(inst)
  --     and is_alive(target)
  --     and inst:IsValid()
  --     and target:IsValid()
  --     and not (inst:HasTag("playerghost"))
  --     and target:IsNear(inst, KEEP_FACE_DIST)
end

function is_beefalo_in_mood(beefalo)
  return beefalo:HasTag("scarytoprey")
end

function is_beefalo_shaved(beefalo)
  return (beefalo.AnimState:GetBuild()=="beefalo_shaved_build")
end

function is_beefalo_domesticated(beefalo)
  return (beefalo.AnimState:GetBuild()=="beefalo_domesticated")
end

function r_Remap(v, a, b, x, y)
  -- v = (((i - a)/(b - a)) * (y - x)) + x
  local i = (v -x)/(y-x)*(b-a)+a
  return i
end

function guess_tamed_by_buckdelay(beefalo, timeout)
  -- todo debug, state not equal , wrong predict
  local le_buckdelay = timeout

  local moodmult = is_beefalo_in_mood(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_MOOD_MULT
      or 1;

  local beardmult = is_beefalo_shaved(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_NUDE_MULT
      or 1;

  local domesticmult = is_beefalo_domesticated(beefalo)
      and 1
      or TUNING.BEEFALO_BUCK_TIME_UNDOMESTICATED_MULT;

  local basedelay = le_buckdelay / (moodmult * beardmult * domesticmult)
  local le_tamed = r_Remap(basedelay, 0, 1, TUNING.BEEFALO_MIN_BUCK_TIME, TUNING.BEEFALO_MAX_BUCK_TIME)

  return le_tamed
end

function CalculateBuckDelay(beefalo, le_tamed)
  local domestication = le_tamed

  local moodmult = is_beefalo_in_mood(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_MOOD_MULT
      or 1;

  local beardmult = is_beefalo_shaved(beefalo)
      and TUNING.BEEFALO_BUCK_TIME_NUDE_MULT
      or 1;

  local domesticmult = is_beefalo_domesticated(beefalo)
      and 1
      or TUNING.BEEFALO_BUCK_TIME_UNDOMESTICATED_MULT;

  local basedelay = Remap(domestication, 0, 1, TUNING.BEEFALO_MIN_BUCK_TIME, TUNING.BEEFALO_MAX_BUCK_TIME)
  return basedelay * moodmult * beardmult * domesticmult
end

-- todo(beefalo)
-- predict by (show me) data
-- attack decay tamed
-- listen beefalo hunger delta, 不太好获取
-- domestication show me tamed 或者自己根据规则预测
-- 上一次的buckdelay时间 预测计算 tamed
-- return autodismount.le_tamed

function round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

function debug_msg(...)
  local arr = {}
  for i,v in ipairs({...}) do
    arr[i] = tostring(v)
  end
  local msg = tjoin(arr, "\n")
  if (ThePlayer and ThePlayer.components and ThePlayer.components.talker) then
    ThePlayer.components.talker:Say(msg)
  end
  trace(msg)
end

-- _M.import("dismount");_M.show_msg_api("msg")
function show_msg_api(msg)
  -- debug hot reload
  if (TheFrontEnd.showmsg) then
    TheFrontEnd.overlayroot:RemoveChild(TheFrontEnd.showmsg)
    TheFrontEnd.showmsg:Kill()
    TheFrontEnd.showmsg = nil
  end

  if (autodismount.update_msg_task) then
    autodismount.update_msg_task:Cancel()
    autodismount.update_msg_task = nil
  end

  local text = TheFrontEnd.showmsg
print(111, text)
  if not (text) then
print(222, text)
    text = Text(TALKINGFONT, 28)
    text:Hide()
    text:SetPosition(200, 180, 0)
    text:SetVAnchor(ANCHOR_MIDDLE)
    text:SetHAnchor(ANCHOR_MIDDLE)
    TheFrontEnd.showmsg = text
    TheFrontEnd.overlayroot:AddChild(text)
print(333, text)
  end

  text:Hide()
  text:SetString(msg)

  local fade_time = 0
  local fade_total = 2
  local dt = 1/10

  on_text_timeover = _f(function (text, dt)
    text:Hide()
    autodismount.update_msg_task:Cancel()
    autodismount.update_msg_task = nil
  end)

  text:Show()
  autodismount.update_msg_task = ThePlayer:DoTaskInTime(fade_total, function()
    on_text_timeover(text, dt)
  end, 0)


print(666, text, fade_time)


end

function show_msg(...)
  local arr = {}
  for i,v in ipairs({...}) do
    arr[i] = tostring(v)
  end
  local msg = tjoin(arr, "\n")
  if (TheFrontEnd and TheFrontEnd.ShowTitle) then
    -- TheFrontEnd:ShowTitle("", msg)
    show_msg_api(msg)
  else
    if (ThePlayer and ThePlayer.components and ThePlayer.components.talker) then
      ThePlayer.components.talker:Say(msg)
    end
  end
  trace(msg)
  -- ThePlayer.components.talker:Say(msg)
end


function num_sign_str(num)
  local str = tostring(num)
  if (num >= 0) then
    return "+"..str
  end
  -- "defualt with a minus sign"
  return str
end

function do_delta_tamed(beefalo, delta)

  local old = get_target_tamed(beefalo) or 0
  local new = math.max(math.min(old + delta, 1), 0)
  set_target_tamed(beefalo, new)

  if not(old == new) then
    -- todo by global event
    beefalo:PushEvent("le_tamed_delta",
      { old = old, new = new });
    show_tamed_delta(beefalo, delta)
    return true
  end
end

  -- todo beefalo is_riding
function tamed_trigger_fn(beefalo)
  -- return beefalo.components.hunger:GetPercent() > 0
  --     or beefalo.components.rideable:IsBeingRidden() == true
  return is_riding()
end

function pause_tamed_decay(inst)
  autodismount.tamed_paused = true;
end

function is_tamed_decay_paused(beefalo)
  -- if (beefalo:findNear(saltlicker, KEEP_FACE_DIST)) then
  --   return
  -- end
  -- inst.components.sleeper:IsAsleep()
  -- inst.components.sleeper:IsAsleep();
  --   inst.components.domesticatable:PauseDomesticationDecay
  --   (inst.components.saltlicker.salted or );
  -- pause_tamed_decay(inst)
end

function CalculateLoss(currenttime, lastgaintime)
    -- you don't lose full domestication right away, only after ignoring the critter for a while
    local delta = currenttime - lastgaintime
    local ratio = math.min(delta/(TUNING.BEEFALO_DOMESTICATION_MAX_LOSS_DAYS * TUNING.TOTAL_DAY_TIME), 1.0)
    return TUNING.BEEFALO_DOMESTICATION_LOSE_DOMESTICATION * ratio
end

-- todo remove autodismount.update_task unless beefalo death
update_tamed = _f(function (beefalo)
-- trace("111", update_tamed, beefalo)
  if not (is_beefalo_valid(beefalo)) then
    if (autodismount.update_task) then
      autodismount.update_task:Cancel()
      autodismount.update_task = nil
    end
    return
  end

  if tamed_trigger_fn(beefalo) then
      autodismount.last_tamed_gain = GetTime()
      do_delta_tamed(beefalo, TUNING.BEEFALO_DOMESTICATION_GAIN_DOMESTICATION * DECAY_TASK_PERIOD)
  elseif not autodismount.tamed_paused then
      do_delta_tamed(beefalo, CalculateLoss(GetTime(), autodismount.last_tamed_gain) * DECAY_TASK_PERIOD)
  end
end)

-- if self.obedience <= self.minobedience
--     and self.inst.components.hunger:GetPercent() <= 0
--     and self.domestication <= 0 then
function is_beefalo_valid(beefalo)
  -- check death
  if not (is_alive(beefalo) and beefalo:IsValid()) then
    return false
  end
  return true
end

function CheckAndStartTask(beefalo)
  if not (is_beefalo_valid(beefalo)) then
    return
  end
  if (autodismount.update_task) then
    return
  end
  autodismount.update_task = beefalo:DoPeriodicTask(
    DECAY_TASK_PERIOD, function ()
      update_tamed(beefalo)
    end, 0);
end


-- todo pause when sleep  and near saltstick
-- autodismount.tamed_paused

------------------------------------------------------------
-- mod
------------------------------------------------------------

function get_target_tamed(target)
  autodismount[target] = autodismount[target] or {}
  local mem = autodismount[target]
  return mem.tamed
end


function get_target_tamed(target)
  autodismount[target] = autodismount[target] or {}
  local mem = autodismount[target]
  return mem.tamed
end

function set_target_tamed(target, tamed)
  autodismount[target] = autodismount[target] or {}
  autodismount[target].tamed = tamed
  autodismount[target].settime = GetTime()
end

function show_tamed_delta(target, delta)
  local name = get_inst_name(target)
  if not (autodismount.b_pause_show_tamed_delta) then
    local num = round(delta, 4)
    -- local msg = "tamed: "..num_sign_str(num*1000).."‰"
    local msg = ("tamed: +%.2f%%"):format(num*100)
    if (delta < 0) then
      num = round(delta, 6)
      -- msg = "tamed: "..num_sign_str(num*1000).."‰"
      msg = ("tamed: %.2f%%"):format(num*100)
    end

    -- todo check saddle and alert player
    if (is_riding()) then
      show_msg(msg)
    else
      show_msg(name, msg)
    end
  end

end


function show_buckdelay(target, name, tamed, buckdelay, isCounting)
  local num1 = round(tamed, 4)
  local num2 = round(buckdelay, 0)

  -- local msg1 = "tamed: "..tostring(num1*100).."%"
  -- local msg2 = "buckdelay: "..tostring(num2).."s"
  -- show_msg("In my experience:", msg1, msg2);

  local msg1 = ("tamed: %.2f%%"):format(num1*100)
  local msg2 = (" (%ss)"):format(num2)
  if (isCounting) then
    -- todo coz, its not every font like
    -- (Monospaced Font: any char has equal width pt)
    local len = #msg1
    -- msg1 = (" "):rep(len)
  end
  show_msg(msg1..msg2);
end

function show_new_beefalo(target, name)
  local x = math.random(1,3)
  local msg = {
    ("Let's try this "..name);
    (name.." seems a new parter.");
    ("I have not tried "..name);
  }
  show_msg(msg[x]);
end

function show_target_nil()
  local arr = {
    ("where is my beefalo ?");
    ("I have no target");
    ("No see a beefalo named nil");
  }
  local x = math.random(1,#arr)
  show_msg(arr[x])
end


function show_death_mount()
  local arr = {
    ("I can't mount as a ghost");
    ("There is no mount for a ghost");
    ("I shall be a death knight, but where is my mount");
  }
  local x = math.random(1,#arr)
  show_msg(arr[x])
end

function show_dead_target(target)
  local name = get_inst_name(target)
  local arr = {
    ("My lovely "..name);
    (name.." is gone");
  }
  local x = math.random(1,#arr)
  show_msg(arr[x])
end


function show_invalid_target(target)
  local name = get_inst_name(target)
  local arr = {
    (name.." has not prepare");
    (name.." must be some problem");
  }
  local x = math.random(1,#arr)
  show_msg(arr[x])
end

function show_target_too_far(target)
  local name = get_inst_name(target)
  local arr = {
    (name.." is too far away me");
    ("I must get close to "..name);
  }
  local x = math.random(1,#arr)
  show_msg(arr[x])
end

function show_check_ok(target)
  local name = get_inst_name(target)
  local arr = {
    "Of course.";
    (name.." is waiting for me");
    "As you wish.";
    (name.." ! Go for the world");
    "Right away.";
  }
  local x = math.random(1,#arr)
  show_msg(arr[x])
end

-- todo add timer
function remove_timer_task(task, name)
  if (task) then
    task:Cancel()
    autodismount[name] = nil
  end
end

function get_inst_name(inst)
  if not (inst) then
    return "noname"
  end
  if (inst.name and inst.GUID) then
    return inst.name..inst.GUID
  end
  return tostring(inst)
end


------------------------------------------------------------
-- on event
------------------------------------------------------------

on_count_down = _f(function (target, name, le_tamed, buckdelay, elapsed_sec)
  trace(buckdelay, elapsed_sec)
  local extra_count = 5
   -- and elapsed_sec < buckdelay + extra_count)
  if not is_riding() then
    remove_timer_task(autodismount.count_task, "count_task")
    return
  end

  if (elapsed_sec > 10) then
    autodismount.b_pause_show_tamed_delta = false
  end

  local predelay = 1
  local delay = buckdelay - predelay
  local num = round(delay, 0) - elapsed_sec
  if (num < 10) then
    autodismount.b_pause_show_tamed_delta = true
    local msg = "buckdelay: "..tostring(num).."s"
    -- show_msg(msg);
    local isCounting = true
    show_buckdelay(target, name, le_tamed, num, isCounting)
  end
  if (elapsed_sec < 5) then
    autodismount.b_pause_show_tamed_delta = true
    local msg = "buckdelay: "..tostring(num).."s"
    -- show_msg(msg);
    local isCounting = true
    show_buckdelay(target, name, le_tamed, num, isCounting)
  end
end)



-- todo on saddle set target
onPressMountKey = _f(function ()
  if not IsInGameplay() then return end
print(111, is_riding())
  if (is_riding()) then
    local curtime = GetTime()
    local timeout = curtime - autodismount.mountup_lasttime
print(222, ride_endtime, autodismount.mountup_lasttime)
print(333, timeout)

    if (timeout < 2) then
print(444, timeout)
      return
    end
print(555)
  end
print(666)
	auto_mount()
end)

OnMounted = _f(function (me, target)
  trace("[dismount] OnMounted")

  if not target then return end
  local name = get_inst_name(target)
  autodismount.b_pause_show_tamed_delta = true

  if not (autodismount[target]) then
    show_new_beefalo(target, name)
  end
  autodismount.mountup_lasttime = GetTime()

  local buckdelay
  local le_tamed = get_target_tamed(target)
  if (le_tamed) then
    buckdelay = CalculateBuckDelay(target, le_tamed)
    CheckAndStartTask(target)
    show_buckdelay(target, name, le_tamed, buckdelay)
  end
  if (buckdelay) then
    remove_timer_task(autodismount.count_task, "count_task")
    local second = 0
    autodismount.count_task = ThePlayer:DoPeriodicTask(1, function()
      on_count_down(target, name, le_tamed, buckdelay, second)
      second = second + 1
    end, 0)
    -- when shift igroe auto press
    -- autodismount.task = ThePlayer:DoTaskInTime(delay, function ()
    --    onPressMountKey()
    --  end)
  end
end)

OnDismounted = _f(function (me, target)
  trace("[dismount] OnDismounted")

  if not target then return end

  autodismount.b_pause_show_tamed_delta = false

  if autodismount.task then
    autodismount.task:Cancel()
    autodismount.task = nil
    trace("autodismount.task", "cancel")
  end

  if (autodismount.mountup_lasttime) then
    local ride_endtime = GetTime()
    local timeout = ride_endtime - autodismount.mountup_lasttime
    autodismount.last_ride_timeout = timeout
    local beefalo = target
    -- todo only when buckdelay
    local tamed = get_target_tamed(target) or 0
    local tamed2 = guess_tamed_by_buckdelay(beefalo, timeout);
    if not (tamed2 >= 0 and tamed2 <= 1) then
      tamed2 = 0
    end
    if not (tamed >= 0 and tamed <= 1) then
      tamed = 0
    end
    set_target_tamed(target, math.max(tamed, tamed2))
  end

end)

on_isridingdirty = _f(function (...)
	local b_riding = is_riding()
  trace("[dismount] on_isridingdirty")

  ThePlayer:DoTaskInTime(0, _f(function()
    if (b_riding) then
      local target = get_mount()
      autodismount.last_target = target;
      OnMounted(ThePlayer, target)
    else
      -- already down mount ,can get mount animal
      local target = autodismount.last_target
      OnDismounted(ThePlayer, target)
    end
  end))

end)


on_second_test = _f(function ()
  -- local msg = "last_target:"..tostring(autodismount.last_target)
  if (1==1) then return end

  local target = autodismount.last_target
  if (target) then
    local tamed = get_target_tamed(target) or 0
    local msg = "tamed:" .. tostring(round(tamed, 2))
    show_msg(msg)
  end

end)


function init_hotkey()
  cfg_auto_dismount = GetModConfigData("AUTO_DISMOUNT")
  cfg_mount_key     = GetModConfigData("MOUNT_KEY")
  if not (cfg_mount_key == "None") then
    local keybind = _G["KEY_"..cfg_mount_key]
    TheInput:AddKeyDownHandler(keybind, function ()
      onPressMountKey()
    end)
  end
end

function init_player()
  ThePlayer:ListenForEvent("isridingdirty", function ()
    on_isridingdirty()
  end)

  ThePlayer:DoPeriodicTask(1, function()
    on_second_test()
  end, 0)
end

function init()
  local GUID = ThePlayer.GUID
	if not (autodismount.init_player[GUID]) then
    autodismount.last_target = nil
    autodismount.init_player[GUID] = true;
		init_player()
	end

	local key = GetModConfigData("MOUNT_KEY")
  if not (autodismount.init_key[key]) then
    autodismount.init_key[key] = true
    init_hotkey(key)
  end

end

add_ThePlayer_init(function ()
	init()
end)

if (TheInput and ThePlayer) then
  init()
end

------------------------------------------------------------
-- reg chat cmd
------------------------------------------------------------

function split_by_space(s)
  local arr = {}
  for w in s:gmatch("%S+") do
    arr[#arr+1] = w
  end
  return arr
end

onChatCmd = _f(function (params, caller)
  local args = {}
  if (params and params.rest and #params.rest > 0) then
    args = split_by_space(params.rest)
  end

  -- local controls = args[1] and "on" or "off"
  tprint(args, "dismount cmd")
end)

onReload = _f(function (params, caller)

end)

AddUserCommand("dismount", {
  prettyname = nil, --default to STRINGS.UI.BUILTINCOMMANDS.BUG.PRETTYNAME
  desc = nil, --default to STRINGS.UI.BUILTINCOMMANDS.BUG.DESC
  permission = COMMAND_PERMISSION.USER,
  slash = true,
  usermenu = false,
  servermenu = false,
  params = {},
  vote = false,
  localfn = function(params, caller)
    onChatCmd(params, caller)
  end,
})

trace("[mod] dismount .... init ok", CLIENT_SIDE)


