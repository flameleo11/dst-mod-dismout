require("tprint")

local G = GLOBAL
local trace = print

local push = table.insert
local tjoin = table.concat

local KEEP_FACE_DIST = 4

autodismount = autodismount or {}
------------------------------------------------------------
-- api
------------------------------------------------------------

function IsDST()
  return TheSim:GetGameID() == "DST"
end

function IsClientSim()
  return IsDST() and TheNet:GetIsClient()
end

-- function GetPlayer()
--   if IsDST() then
--     return ThePlayer
--   else
--     return GetPlayer()
--   end
-- end

-- function GetWorld()
--   if IsDST() then
--     return TheWorld
--   else
--     return GetWorld()
--   end
-- end

function AddThePlayerLoginInit(fn)
  if IsDST() then
    env.AddPrefabPostInit("world", function(wrld)
      wrld:ListenForEvent("playeractivated", function(wlrd, player)
        if player == ThePlayer then
          fn(player)
        end
      end)
    end)
  else
    env.AddPlayerPostInit(function(player)
      fn(player)
    end)
  end
end


function GetPlayerComponents(inst)
  inst = inst or ThePlayer
  if IsClientSim() then
    return inst.replica
  end
  return inst.components
end

function GetInstComponents(inst)
  if IsClientSim() then
    return inst.replica
  end
  return inst.components
end

------------------------------------------------------------
-- function
------------------------------------------------------------

function IsInGameplay()
  return ThePlayer ~= nil and TheFrontEnd:GetActiveScreen().name == "HUD"
end

function CalculateBuckDelay(inst2)
  local inst = {
    components = GetInstComponents(inst2);
  }
    local domestication =
        inst.components.domesticatable ~= nil
        and inst.components.domesticatable:GetDomestication()
        or 0;

    local moodmult =
        (   (inst.components.herdmember ~= nil
          and inst.components.herdmember.herd ~= nil
          and inst.components.herdmember.herd.components.mood ~= nil
          and inst.components.herdmember.herd.components.mood:IsInMood())
        or
          (inst.components.mood ~= nil
            and inst.components.mood:IsInMood())   )
        and TUNING.BEEFALO_BUCK_TIME_MOOD_MULT
        or 1;

    local beardmult =
        (inst.components.beard ~= nil and inst.components.beard.bits == 0)
        and TUNING.BEEFALO_BUCK_TIME_NUDE_MULT
        or 1;

    local domesticmult =
        inst.components.domesticatable:IsDomesticated()
        and 1
        or TUNING.BEEFALO_BUCK_TIME_UNDOMESTICATED_MULT;

    local basedelay = Remap(domestication, 0, 1, TUNING.BEEFALO_MIN_BUCK_TIME, TUNING.BEEFALO_MAX_BUCK_TIME)

    return basedelay * moodmult * beardmult * domesticmult
end

function UnitIsAlive(inst)
  if (GetInstComponents(inst).health == nil) then
    return
  end

  if (GetInstComponents(inst).health:IsDead()) then
    return false
  end
  if (inst:HasTag("playerghost")) then
    return false
  end
  return true
end

function CheckPlayerAndMountTarget(inst, target)
  return inst ~= nil
      and target ~= nil
      and UnitIsAlive(inst)
      and UnitIsAlive(target)
      and inst:IsValid()
      and target:IsValid()
      and not (inst:HasTag("playerghost"))
      and target:IsNear(inst, KEEP_FACE_DIST)
end

------------------------------------------------------------
-- on event
------------------------------------------------------------

OnMounted = _f(function (me, data)
  if not data.target then return end
  local buckdelay = CalculateBuckDelay(data.target)
  local predelay = 1
  local delay = buckdelay - predelay


  autodismount.last_target = data.target

  autodismount.task = data.target:DoTaskInTime(delay, function()
    GetPlayerComponents(ThePlayer).rider:Dismount()
    trace("OnMounted....... timer", "rider:Dismount()", delay)
  end)
  trace("OnMounted....... timer", "..............ok")
end)

OnDismounted = _f(function (me, data)
  if autodismount.task then
    autodismount.task:Cancel()
    autodismount.task = nil
    trace("OnDismounted", "cancel")
  end

  autodismount.last_target = data.target
  trace("OnDismounted", "..............ok")
end)

onPressMountKey = _f(function ()
  if not IsInGameplay() then return end

  local rider = GetPlayerComponents(ThePlayer).rider;
  if (rider == nil) then return end
  if (rider:IsRiding()) then
    rider:Dismount()
  else
    -- local target = rider:GetMount()
    local target = autodismount.last_target
    local instant = nil
    if (target and CheckPlayerAndMountTarget(ThePlayer, target)) then
      rider:Mount(target, instant)
    end
  end
end)

-- -- local cfgNotif = GetModConfigData('MAU_notif')
-- -- local cfgForce = GetModConfigData('MAU_force')
-- -- local cfgFilter = GetModConfigData('MAU_filter')
-- -- local cfgHands = GetModConfigData('MAU_hands')

-- if (OnMounted) then
--  ThePlayer:RemoveEventCallback("mounted", OnMounted)
-- end


SendRPCToServer(41, 87, t_pos.x, t_pos.z, t_inst, nil, false)
SendRPCToServer(41, 43, t_pos_me.x, t_pos_me.z, ThePlayer, nil, true)

function name(xxx)
  body
end





function OnPlayerLoad(player)
  trace("--------------111", player, ThePlayer)
  if not IsInGameplay() then return end
  trace("--------------222", ThePlayer)

  if not (player == ThePlayer) then return end

  trace("--------------333", GetPlayerComponents(ThePlayer))


  local enable_auto_dismount = GetModConfigData("AUTO_DISMOUNT")
  local cfg_mount_key = GetModConfigData("MOUNT_KEY")

  if not (cfg_mount_key == "None") then
    local keybind = _G["KEY_"..cfg_mount_key]
    TheInput:AddKeyDownHandler(keybind, onPressMountKey)
  end

  if (enable_auto_dismount) then
    trace("--------------444")

    ThePlayer:ListenForEvent("mounted", OnMounted)
    ThePlayer:ListenForEvent("dismounted", OnDismounted)
  end

end




-- AddSimPostInit(OnSimLoad) -- fires before game init
-- AddGamePostInit(OnGameLoad) -- fires last, unless it is first game launch in DS, then it fires first
AddThePlayerLoginInit(OnPlayerLoad) -- fire last in DST, but first in DS, i think
-- AddClassPostConstruct("widgets/controls", ControlsPostInit)


trace("--dismount--import------main.lua--22--ok")