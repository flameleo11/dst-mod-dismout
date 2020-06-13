local v = "--aaaaaaaaaaaa---tttttttt-----555-----"


 ThePlayer.components.actionqueuer
print(v, ThePlayer.replica.rider)
print(package.path)
print(package.cache)


package.loaded["t4"] = nil


--[[
package.loaded["tprint"] = nil; require "tprint";

 ThePlayer.components.actionqueuer
 ThePlayer.components.talker:Say("Unable to craft: ")
 ThePlayer.replica.rider

ThePlayer.components.rider
 ThePlayer.replica.rider

 print(t_rider.StartTracking)
 print(t_rider:IsRiding())


t_inst = TheInput:GetWorldEntityUnderMouse();print(t_inst);


t_inst

local act = BufferedAction(ThePlayer, t_inst, ACTIONS.DEPLOY, active_item, pos)
local playercontroller = self.inst.components.playercontroller
if playercontroller.deployplacer then
    act.rotation = playercontroller.deployplacer.Transform:GetRotation()
end
self:SendActionAndWait(act, true)

t_org_ACTIONS = ACTIONS
t_b_show_action = false
ACTIONS = setmetatable({}, {__index = function (t, k) print("..........ACTIONS[k]...", k) return t_org_ACTIONS[k] end})
t_org_SendRPCToServer = SendRPCToServer
SendRPCToServer = function (...) print("-----------<<SendRPCToServer>>>>>", ...) return t_org_SendRPCToServer(...) end

]]
 t_b_show_action = false;t_org_ACTIONS = ACTIONS;ACTIONS = setmetatable({}, {__index = function (t, k) if (t_b_show_action) then print("..........ACTIONS[k]...", k) end return t_org_ACTIONS[k] end})
t_org_SendRPCToServer = SendRPCToServer;
t_b_show_SendRPCToServer=true;
SendRPCToServer = function (...) if (t_b_show_SendRPCToServer) then print("-----------<<SendRPCToServer>>>>>", ...) end return t_org_SendRPCToServer(...) end



t_history = {}
t_arr_mask = {}


SendRPCToServer = function (...)
local arr = {...}

if (arr[1] == 41) then
print(100, arr[0])
print(111, arr[1])
print(222, arr[2])
print(333, arr[3])
print(444, arr[4])
print(555, arr[5])
print(666, arr[6])
print(777, arr[7])
print(888, arr[8])
print(999, arr[9])
	print("-----------<<SendRPCToServer>>>>>", ...)
end
return t_org_SendRPCToServer(...)
end


    local pos = act:GetActionPoint() or
me 403.88 238.16
beef 404.88 238.16
print(DynamicPosition(t_pos))
print(DynamicPosition(t_pos_me).x)
print(DynamicPosition(t_pos_me).z)
print(t_pos_me.x,t_pos_me.z)
print(DynamicPosition(t_pos_me):GetPosition())
print(t_pos_me)

    ThePlayer:GetPosition()
    t_pos = t_inst:GetPosition();print(t_pos)
    t_pos_me = ThePlayer:GetPosition(); print(t_pos_me)
import
t_inst = TheInput:GetWorldEntityUnderMouse();print(t_inst);

_M.send_mount(ThePlayer, t_inst)
_M.send_dismount(ThePlayer, t_inst)

print(_M.autodismount.inited)
print(_M.autodismount.task)
print(_M.autodismount.last_target)

print(_M.autodismount.inited, _M.autodismount.last_target,_M.autodismount.task)


autodismount.last_target
_M.import("dismount")

 ThePlayer.components.health
print(v, ThePlayer.replica.health)
print(111, ThePlayer.components.health, ThePlayer.replica.health)
ThePlayer.replica.health:IsDead()
ThePlayer:HasTag("playerghost")

ThePlayer.HasTagd

aaa111
t_inst = TheInput:GetWorldEntityUnderMouse();print(t_inst);

print(222, t_inst.components.health, t_inst.replica.health)
print(t_inst.replica.health:IsDead())
print(t_inst:HasTag("playerghost"))
print(_M.CheckPlayerAndMountTarget(ThePlayer, t_inst))
_M.autodismount.last_target = t_inst
t_inst = autodismount.last_target

CheckPlayerAndMountTarget(ThePlayer, target)


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

    local basedelay = Remap(domestication, 0, 1, TUNING.BEEFALO_MIN_BUCK_TIME, TUNING.BEEFALO_MAX_BUCK_TIME)
domestication
mood
beard     t_inst.AnimState:GetBuild()=="beefalo_shaved_build"
IsDomesticated   t_inst.AnimState:GetBuild()=="beefalo_domesticated"

__index

print(t_inst.AnimState:GetSkinBuild())

t_ls(getmetatable(t_inst.AnimState))
打印 userdata
t_ls(getmetatable(t_inst.AnimState).__index)


t_ls(t_inst)
t_ls = function (t) print("---------<<<<<<<<", t) for k,v in pairs(t) do print(k,v) end print(">>>>>>>>----------", t) end basedelay = 50 -800
moodmult = 0.2 or 1
beardmult = 0.2 or 1
beardmult = 1 or 0.3


    return basedelay * moodmult * beardmult * domesticmult
end\


        or (inst.components.mood and inst.components.mood:IsInMood()) then
        animstate:Show("HEAT")
    else
        animstate:Hide("HEAT")
    end

mood
    if (herd and herd.components.mood and herd.components.mood:IsInMood())
        or (inst.components.mood and inst.components.mood:IsInMood()) then
        animstate:Show("HEAT")
    else
        animstate:Hide("HEAT")
    end
123
print(t_inst.AnimState:Show("HEAT"))
print(t_inst.AnimState:Hide("HEAT"))
t_inst.components.domesticatable.domestication = 0.5
self.mount = nil

ThePlayer.components.rider.mount.components.domesticatable.domestication = 0.5
ThePlayer.components.rider.mount.components.domesticatable.domestication = 0.99

[00:52:50]: spawntime	1716.4334228523
[00:52:50]: Physics	dPhysics (0xfaf6200)
[00:52:50]: replica	table: 0x10582650
[00:52:50]: GUID	109961
[00:52:50]: components	table: 0x19f6b110
[00:52:50]: event_listeners	table: 0x1374de00
[00:52:52]: focus lost
t_ls(t_inst.components)
t_ls(t_inst.replica)



function is_alive(inst)
  if not (inst.replica.health) then
  	return false
  end
  if (inst.replica.health:IsDead()) then
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










\
RPC
[02:04:48]:   ["LeftClick"] = 26;
[02:04:48]:   ["AddAllOfActiveItemToSlot"] = 2;
[02:04:48]:   ["MoveItemFromAllOfSlot"] = 31;
[02:04:48]:   ["MovementPredictionDisabled"] = 33;
[02:04:48]:   ["BufferBuild"] = 5;
[02:04:48]:   ["ResurrectButton"] = 39;
[02:04:48]:   ["PutOneOfActiveItemInSlot"] = 38;
[02:04:48]:   ["ControllerUseItemOnSelfFromInvTile"] = 15;
[02:04:48]:   ["PredictWalking"] = 36;
[02:04:48]:   ["RightClick"] = 41;

SendRPCToServer(41, 87, t_pos.x, t_pos.z, t_inst, nil, false)
SendRPCToServer(41, 43, t_pos_me.x, t_pos_me.z, ThePlayer, nil, true)

   }
   ["MOUNT"] = {
     ["str"] = "骑";
     ["ghost_valid"] = false;
     ["id"] = "MOUNT";
     ["instant"] = false;
     ["ghost_exclusive"] = false;
     ["code"] = 87;
     ["rmb"] = true;
     ["encumbered_valid"] = true;
     ["fn"] = "function: 0x15af77a0, defined in (2125-2140)scripts/actions.lua";
     ["priority"] = 1;
     ["mount_valid"] = false;
   }
   ["DISMOUNT"] = {
     ["str"] = "下来";
     ["ghost_valid"] = false;
     ["id"] = "DISMOUNT";
     ["instant"] = true;
     ["ghost_exclusive"] = false;
     ["code"] = 43;
     ["rmb"] = true;
     ["encumbered_valid"] = true;
     ["fn"] = "function: 0x15af77c0, defined in (2142-2147)scripts/actions.lua";
     ["priority"] = 1;
     ["mount_valid"] = true;
   }

        if rightclick then
            SendRPCToServer(
            	RPC.RightClick, act.action.code,
            	pos.x, pos.z,
            	target, act.rotation,
            	true, nil, act.action.canforce, act.action.mod_name)
        else


 SendRPCToServer = function (...) local arr = {...} print(100, arr[0]) print(111, arr[1]) print(222, arr[2]) print(333, arr[3]) print(444, arr[4]) print(555, arr[5]) print(666, arr[6]) print(777, arr[7]) print(888, arr[8]) print(999, arr[9]) if (t_b_show_SendRPCToServer) then print("-----------<<SendRPCToServer>>>>>", ...) end return t_org_SendRPCToServer(...) end



BufferedAction = Class(function(self, doer, target, action, invobject, pos, recipe, distance, forced, rotation)
    self.doer = doer
    self.target = target
    self.initialtargetowner = target ~= nil and target.components.inventoryitem ~= nil and target.components.inventoryitem.owner or nil
    self.action = action
    self.invobject = invobject
    self.doerownsobject = doer ~= nil and invobject ~= nil and invobject.replica.inventoryitem ~= nil and invobject.replica.inventoryitem:IsHeldBy(doer)
    self.pos = pos ~= nil and DynamicPosition(pos) or nil
    self.rotation = rotation
    self.onsuccess = {}
    self.onfail = {}
    self.recipe = recipe
    self.options = {}
    self.distance = distance or action.distance
    self.forced = forced
    self.autoequipped = nil --true if invobject should've been auto-equipped
    self.skin = nil
end)


t_inst = TheInput:GetWorldEntityUnderMouse();print(t_inst);
tprint{t_inst.Network.SetClassifiedTarget}
print(t_inst.components.locomotor.runspeed)
print(ThePlayer.components.locomotor:GetRunSpeed())
animstate:SetBuild
print(t_inst.AnimState.SetBuild)
print(t_inst.AnimState:GetBuild())

print(111, t_inst:HasTag("catchable"))
Rider:GetMount()
_M.import("dismount")
_M.t_onisriding


:HasTag("catchable")
print(111, ThePlayer.replica.rider:GetMount())

t_for_inst(t_inst)
t_for_inst(ThePlayer.components)
t_for_inst(ThePlayer.replica)
t_for_inst(ThePlayer.replica.rider)

print(_M.autodismount.last_target)


self._onisriding = function() self:OnIsRiding(self._isriding:value()) end

t_onisriding = function ()
xpcall(function () print(1111, ThePlayer.replica.rider._isriding:value()) end) end
print(t_onisriding)
ThePlayer:ListenForEvent("isridingdirty", t_onisriding)

print(ThePlayer == ThePlayer.replica.rider.inst)

function t_for_inst(inst) print("-------start-------->>>", inst) for k,v in pairs(inst) do print(k,v) end print("-------end-------->>>", inst) end

print(ThePlayer.replica.rider.classified.riderrunspeed:value())
self.classified.riderrunspeed:value()

()

玩家速度
print(ThePlayer.components.locomotor.runspeed)
print(ThePlayer.components.locomotor.walkspeed)
print(ThePlayer.components.locomotor.runspeed)
xxxx.RunSpeed



print(t_inst.replica.runspeed)
ThePlayer.components.playeractionpicker.


playeractionpicker.GetRightClickActions
ThePlayer.components.playeractionpicker.GetRightClickActions
t_act = ThePlayer.components.actionqueuer:GetAction(t_inst, true)
ThePlayer.components.actionqueuer:SendAction(act, rightclick, target)

999	nil
[00:42:01]: -----------<<SendRPCToServer>>>>>	36	361.6731262207	-234.37609863281	false	nil	false
[00:42:01]: 100	nil
[00:42:01]: 111	26
[00:42:01]: 222	98
[00:42:01]: 333	358.74130249023
[00:42:01]: 444	-233.85185241699
[00:42:01]: 555	102097 - sapling
[00:42:01]: 666	true
[00:42:01]: 777	10
[00:42:01]: 888	nil
[00:42:01]: 999	nil
[00:42:01]: -----------<<SendRPCToServer>>>>>	26	98	358.74130249023-233.85185241699	102097 - sapling	true	10	nil	nil
[00:42:15]: focus lost
[00:42:21]: CURL ERROR: (d2fr86khx60an2.cloudfront.net) GnuTLS recv error (-54): Error in the pull function.
[00:42:22]: focus gained
[00:42:31]: RPC = {
[00:42:31]:   ["StartHop"] = 43;
[00:42:31]:   ["ControllerActionButtonDeploy"] = 8;
[00:42:31]:   ["DropItemFromInvTile"] = 20;
[00:42:31]:   ["ControllerUseItemOnSceneFromInvTile"] = 14;
[00:42:31]:   ["DirectWalking"] = 16;
[00:42:31]:   ["CloseWardrobe"] = 6;
[00:42:31]:   ["ControllerActionButtonPoint"] = 9;
[00:42:31]:   ["TakeActiveItemFromAllOfSlot"] = 52;
[00:42:31]:   ["WakeUp"] = 57;
[00:42:31]:   ["UseItemFromInvTile"] = 56;
[00:42:31]:   ["ControllerAttackButton"] = 12;
[00:42:31]:   ["EquipActionItem"] = 21;
[00:42:31]:   ["ControllerAltActionButtonPoint"] = 11;
[00:42:31]:   ["ActionButton"] = 1;
[00:42:31]:   ["EquipActiveItem"] = 22;
[00:42:31]:   ["ToggleController"] = 55;
[00:42:31]:   ["TakeActiveItemFromEquipSlot"] = 53;
[00:42:31]:   ["TakeActiveItemFromHalfOfSlot"] = 54;
[00:42:31]:   ["SwapOneOfActiveItemWithSlot"] = 51;
[00:42:31]:   ["OpenGift"] = 35;
[00:42:31]:   ["MakeRecipeFromMenu"] = 28;
[00:42:31]:   ["PutAllOfActiveItemInSlot"] = 37;
[00:42:31]:   ["MovementPredictionEnabled"] = 34;
[00:42:31]:   ["DoneOpenGift"] = 18;
[00:42:31]:   ["SwapActiveItemWithSlot"] = 49;
[00:42:31]:   ["StopWalking"] = 48;
[00:42:31]:   ["StopHopping"] = 47;
[00:42:31]:   ["StopControl"] = 46;
[00:42:31]:   ["ControllerAltActionButton"] = 10;
[00:42:31]:   ["ControllerUseItemOnItemFromInvTile"] = 13;
[00:42:31]:   ["StopAllControls"] = 45;
[00:42:31]:   ["DragWalking"] = 19;
[00:42:31]:   ["SteerBoat"] = 44;
[00:42:31]:   ["MoveInvItemFromHalfOfSlot"] = 30;
[00:42:31]:   ["InspectButton"] = 24;
[00:42:31]:   ["MakeRecipeAtPoint"] = 27;
[00:42:31]:   ["SetWriteableText"] = 42;
[00:42:31]:   ["Hop"] = 23;
[00:42:31]:   ["LeftClick"] = 26;
[00:42:31]:   ["AddAllOfActiveItemToSlot"] = 2;
[00:42:31]:   ["MoveItemFromAllOfSlot"] = 31;
[00:42:31]:   ["MovementPredictionDisabled"] = 33;
[00:42:31]:   ["BufferBuild"] = 5;
[00:42:31]:   ["ResurrectButton"] = 39;
[00:42:31]:   ["PutOneOfActiveItemInSlot"] = 38;
[00:42:31]:   ["ControllerUseItemOnSelfFromInvTile"] = 15;
[00:42:31]:   ["PredictWalking"] = 36;
[00:42:31]:   ["RightClick"] = 41;
[00:42:31]:   ["MoveItemFromHalfOfSlot"] = 32;
[00:42:31]:   ["DoWidgetButtonAction"] = 17;
[00:42:31]:   ["SwapEquipWithActiveItem"] = 50;
[00:42:31]:   ["MoveInvItemFromAllOfSlot"] = 29;
[00:42:31]:   ["AddOneOfActiveItemToSlot"] = 3;
[00:42:31]:   ["InspectItemFromInvTile"] = 25;
[00:42:31]:   ["ReturnActiveItem"] = 40;
[00:42:31]:   ["AttackButton"] = 4;
[00:42:31]:   ["ControllerActionButton"] = 7;
[00:42:31]: }
[00:42:33]: focus lost



SendRPCToServer = function (...) print("-----------<<SendRPCToServer>>>>>", ...) return t_org_SendRPCToServer(...) end
function ActionQueuer:SendAction(act, rightclick, target)
    DebugPrint("Sending action:", act)
    local playercontroller = self.inst.components.playercontroller
    if playercontroller.ismastersim then
        self.inst.components.combat:SetTarget(nil)
        playercontroller:DoAction(act)
        return
    end
    local pos = act:GetActionPoint() or self.inst:GetPosition()
    local controlmods = 10 --force stack and force attack
    if playercontroller.locomotor then
        act.preview_cb = function()
            if rightclick then
                SendRPCToServer(RPC.RightClick, act.action.code, pos.x, pos.z, target, act.rotation, true, nil, nil, act.action.mod_name)
            else
                SendRPCToServer(RPC.LeftClick, act.action.code, pos.x, pos.z, target, true, controlmods, nil, act.action.mod_name)
            end
        end
        playercontroller:DoAction(act)
    else
        if rightclick then
            SendRPCToServer(
            	RPC.RightClick, act.action.code,
            	pos.x, pos.z,
            	target, act.rotation,
            	true, nil, act.action.canforce, act.action.mod_name)
        else
            SendRPCToServer(RPC.LeftClick, act.action.code, pos.x, pos.z, target, true, controlmods, act.action.canforce, act.action.mod_name)
        end
    end
end


        local act = BufferedAction(self.inst, nil, ACTIONS.DEPLOY, active_item, pos)
        local playercontroller = self.inst.components.playercontroller
        if playercontroller.deployplacer then
            act.rotation = playercontroller.deployplacer.Transform:GetRotation()
        end
        self:SendActionAndWait(act, true)
        if not playercontroller.ismastersim and not CompareDeploySpacing(active_item, DEPLOYSPACING.NONE) then
            while inventoryitem and inventoryitem:CanDeploy(pos, nil, self.inst) do
                Sleep(self.action_delay)
                if self.inst:HasTag("idle") then
                    self:SendActionAndWait(act, true)
                end
            end
        end


        TheInput.AddKeyUpHandle


local ver = "--bbbbb---tttttttt-----444-----"

local env0 = getfenv(0)
local env1 = getfenv(1)



print(ver, env0, env1, _G)


print(ver, 11111)

print(ThePlayer.replica.rider)

print(ThePlayer.replica.rider.Mount)

print(ThePlayer.replica.rider.IsRiding)

print(ThePlayer.replica.rider.Dismount)




 -- ThePlayer.components.actionqueuerd
 -- ThePlayer.components.talker:Say("Unable to craft: ")
 -- ThePlayer.replica.rider


  ThePlayer.components.talker:Say("Unable to craft: ")


 ThePlayer.components.actionqueuer


 ThePlayer.replica.inventory

playercliasssfied
 riderrunspeed



AddPrefabPostInit("player_classified", function(player_classified)
    player_classified:ListenForEvent("wormholetraveldirty", function()
        local entrance = GetWormhole()
        if entrance and not WormholePositionExists(entrance.pos) then
            _G.ThePlayer:DoTaskInTime(3, function()
                local exit = GetWormhole()
                if exit and not WormholePositionExists(exit.pos) then
                    SaveWormholePair(entrance, exit)
                end
            end)
        end
    end)


    --Rider variables
    inst.ridermount = net_entity(inst.GUID, "rider.mount")
    inst.ridersaddle = net_entity(inst.GUID, "rider.saddle")
    inst.isridermounthurt = net_bool(inst.GUID, "rider.mounthurt", "ismounthurtdirty")
    inst.riderrunspeed = net_float(inst.GUID, "rider.runspeed")
    inst.riderfasteronroad = net_bool(inst.GUID, "rider.fasteronroad")
    inst.riderrunspeed:set(TUNING.BEEFALO_RUN_SPEED.DEFAULT) --V2C: just pick the most likely value to be the default for pristine state

riderrunspeed = net_float(ThePlayer.player_classified.GUID, "rider.runspeed")



    --MapExplorer variables
    inst.learnmapevent = net_event(inst.GUID, "MapExplorer.learnmap")

    --Repair variables
    inst.repairevent = net_event(inst.GUID, "repair.repair")
