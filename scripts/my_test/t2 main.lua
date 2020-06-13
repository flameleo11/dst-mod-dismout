require("tprint")

xpcall(function ()  -- xpcall start

autodismount = autodismount or {}

local KEEP_FACE_DIST = 4
local trace = print


_G.tprint = tprint

local function IsDST()
  return GLOBAL.TheSim:GetGameID() == "DST"
end

local function IsClientSim()
  return IsDST() and GLOBAL.TheNet:GetIsClient()
end

local function GetPlayer()
  if IsDST() then
    return GLOBAL.ThePlayer
  else
    return GLOBAL.GetPlayer()
  end
end

local function GetWorld()
  if IsDST() then
    return GLOBAL.TheWorld
  else
    return GLOBAL.GetWorld()
  end
end

local function AddPlayerPostInit(fn)
  if IsDST() then
    env.AddPrefabPostInit("world", function(wrld)
      wrld:ListenForEvent("playeractivated", function(wlrd, player)
        if player == GLOBAL.ThePlayer then
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
  inst = inst or _G.ThePlayer
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

function OnMounted(me, data)
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
end

function OnDismounted(me, data)
  if autodismount.task then
    autodismount.task:Cancel()
    autodismount.task = nil
    trace("OnDismounted", "cancel")
  end

  autodismount.last_target = data.target
  trace("OnDismounted", "..............ok")
end

-- -- local cfgNotif = GetModConfigData('MAU_notif')
-- -- local cfgForce = GetModConfigData('MAU_force')
-- -- local cfgFilter = GetModConfigData('MAU_filter')
-- -- local cfgHands = GetModConfigData('MAU_hands')

function IsInGameplay()
  return ThePlayer ~= nil and TheFrontEnd:GetActiveScreen().name == "HUD"
end

function CalculateBuckDelay(inst2)
  local inst = {
    components = GetInstComponents(inst2);
  }
    local domestication =
        components.domesticatable ~= nil
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

-- if (OnMounted) then
--  ThePlayer:RemoveEventCallback("mounted", OnMounted)
-- end

-- AddComponentPostInit("rider", function(self, inst)
--     local PlacerOnUpdate = self.OnUpdate
--     self.OnUpdate = function(self, ...)
--         self.disabled = ActionQueuer.action_thread ~= nil
--         PlacerOnUpdate(self, ...)
--     end
-- end)

local function OnPlayerLoad(player)
  trace("--------------111", player, ThePlayer)
  if not IsInGameplay() then return end
  trace("--------------222", ThePlayer)

  if not (player == ThePlayer) then return end

  trace("--------------333", GetPlayerComponents(ThePlayer))


  local enable_auto_dismount = GetModConfigData("AUTO_DISMOUNT")
  local cfg_mount_key = GetModConfigData("MOUNT_KEY")

  if not (cfg_mount_key == "None") then
    local keybind = _G["KEY_"..cfg_mount_key]
    TheInput:AddKeyDownHandler(keybind, _f(function()
      if not IsInGameplay() then return end

      local rider = GetPlayerComponents(ThePlayer).rider;
      if (rider == nil) then return end

      if (rider:IsRiding()) then
        rider:Dismount()
      else
        -- local target = rider:GetMount()
        local target = autodismount.last_target
        local instant = nil
        -- todo check target death

        if (target and CheckPlayerAndMountTarget(ThePlayer, target)) then
          rider:Mount(target, instant)
        end
      end

    end))
  end


  if (enable_auto_dismount) then
    trace("--------------444")

    ThePlayer:ListenForEvent("mounted", OnMounted)
    ThePlayer:ListenForEvent("dismounted", OnDismounted)
  end

end

-- AddSimPostInit(OnSimLoad) -- fires before game init
-- AddGamePostInit(OnGameLoad) -- fires last, unless it is first game launch in DS, then it fires first
AddPlayerPostInit(OnPlayerLoad) -- fire last in DST, but first in DS, i think
-- AddClassPostConstruct("widgets/controls", ControlsPostInit)



trace("-----------dismount -----------, ok")

end, function (...) print("[my error] in main:", ...) end) -- xpcall end