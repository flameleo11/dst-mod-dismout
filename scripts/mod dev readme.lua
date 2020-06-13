PlayerController.lua
OnLeftClick



local PlayerControllerPostConstruct = function(self)
  local OriginalOnLeftClick = self.OnLeftClick

  self.OnLeftClick = function(self, down)
    -- IsAOETargeting was implemented for The Forge and is only available in DST.
    -- Check if the method exists before calling if to add DS compatibility
    local LocalIsAOET = false
    if self.IsAOETargeting then
      LocalIsAOET = self:IsAOETargeting()
    end


    -- Only intercept if "down" and also if nothing is being placed
    if down and (self.placer_recipe == nil or self.placer == nil) and not LocalIsAOET then
      local act = self:GetLeftMouseAction() or BufferedAction(self.inst, nil, ACTIONS.WALKTO, nil, TheInput:GetWorldPosition())
      local mouseEntity = TheInput:GetWorldEntityUnderMouse()
      local mousePointsAtPlayerOrNil = mouseEntity == nil or mouseEntity == self.inst
      if not CLICK_TO_WALK_ENABLED and act.action == ACTIONS.WALKTO and act.target == nil and mousePointsAtPlayerOrNil then
        return
      end
    end

    return OriginalOnLeftClick(self, down)
  end
end

------------------------------------------------------------
-- 人物列表
------------------------------------------------------------

local arr = {
wilson,
willow,
wolfgang,
wendy,
wx78,
wickerbottom,
woodie,
wes,
waxwell,
wathgrithr,
webber,
winona,
warly,
wortox,
wormwood,
wurt,
}

人物视频

CHARACTER_VIDEOS =
{
  wilson = {"https://www.youtube.com/watch?v=N0QhvmisGWU&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
  willow = {"https://www.youtube.com/watch?v=TKKXXKtFiQw&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
  wendy = {"https://www.youtube.com/watch?v=7ozRwX35fHE&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
--  wolfgang = {},
--  wx78 = {},
--  wickerbottom = {},
  wes = {"https://www.youtube.com/watch?v=Nf2Stngxj0U&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
  waxwell = {"https://youtu.be/8BUcTVIV5y0"},
  woodie = {"https://www.youtube.com/watch?v=d0r0WfV2y5s&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
--  wathgrithr = {},
--  webber = {},
  winona = {"https://www.youtube.com/watch?v=G-Kn9tgO0mQ&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
    wortox = {"https://www.youtube.com/watch?v=tcYbA7ohJLM&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
    wormwood = {"https://www.youtube.com/watch?v=4hugrMLgDsQ&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
    warly = {"https://www.youtube.com/watch?v=SH1VebvIOSk&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
    wurt = {"https://www.youtube.com/watch?v=jG2euiPFkbg&list=PLXtRs5MEBxEiuAIG26uLmh3yR-ACXBfYW"},
}


------------------------------------------------------------
-- 人物列表
------------------------------------------------------------
key api

TheInput:IsKeyDown(KEY_SHIFT)
KEY_ALT
KEY_CTRL




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
t_inst2 = TheInput:GetWorldEntityUnderMouse();print(t_inst2);
t_inst.sg:GoToState("idle")
t_inst.sg:GoToState("goo")
t_inst.sg:GoToState("bored")


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
mood      t_inst:HasTag("scarytoprey")
beard     t_inst.AnimState:GetBuild()=="beefalo_shaved_build"
IsDomesticated   t_inst.AnimState:GetBuild()=="beefalo_domesticated"

TheSim.FindEntities

/drive_d/SteamLibrary/steamapps/common/Don't Starve Together/data/scripts/tuning.lua
/drive_d/SteamLibrary/steamapps/common/Don't Starve Together/data/scripts/simutil.lua
function FindEntity(inst, radius, fn, musttags, canttags, mustoneoftags)
    if inst ~= nil and inst:IsValid() then
        local x, y, z = inst.Transform:GetWorldPosition()
        --print("FIND", inst, radius, musttags and #musttags or 0, canttags and #canttags or 0, mustoneoftags and #mustoneoftags or 0)
        local ents = TheSim:FindEntities(x, y, z, radius, musttags, canttags, mustoneoftags) -- or we could include a flag to the search?
        for i, v in ipairs(ents) do
            if v ~= inst and v.entity:IsVisible() and (fn == nil or fn(v, inst)) then
                return v
            end
        end
    end
end

/drive_d/SteamLibrary/steamapps/common/Don't Starve Together/data/scripts/networkclientrpc.lua
TheNet.SendRPCToServer
function SendRPCToServer(code, ...)
    assert(RPC_HANDLERS[code] ~= nil)
    TheNet:SendRPCToServer(code, ...)
end


SendRPCToServer(RPC.ControllerAttackButton, true)
SendRPCToServer(RPC.RightClick, act.action.code, pos_x, pos_z, mouseover, act.rotation ~= 0 and act.rotation or nil, isreleased, controlmods, nil, act.action.mod_name, platform, platform ~= nil)
SendRPCToServer(RPC.ControllerActionButtonDeploy, obj, act.pos.local_pt.x, act.pos.local_pt.z, act.rotation ~= 0 and act.rotation or nil, isreleased, act.pos.walkable_platform, act.pos.walkable_platform ~= nil)
SendRPCToServer(RPC.ControllerActionButtonPoint, act.action.code, act.pos.local_pt.x, act.pos.local_pt.z, isreleased, nil, act.action.mod_name, act.pos.walkable_platform, act.pos.walkable_platform ~= nil)
SendRPCToServer(RPC.ControllerAltActionButton, act.action.code, obj, isreleased, nil, act.action.mod_name)
SendRPCToServer(RPC.ControllerUseItemOnItemFromInvTile, buffaction.action.code, item, active_item, buffaction.action.mod_name)
SendRPCToServer(RPC.ControllerUseItemOnSceneFromInvTile, buffaction.action.code, item, buffaction.target, buffaction.action.mod_name)
SendRPCToServer(RPC.ControllerUseItemOnSelfFromInvTile, buffaction.action.code, item, buffaction.action.mod_name)
SendRPCToServer(RPC.DropItemFromInvTile, item, single or nil)
SendRPCToServer(RPC.InspectItemFromInvTile, item)
SendRPCToServer(RPC.LeftClick, act.action.code, pos_x, pos_z, mouseover, isreleased, controlmods, nil, act.action.mod_name, platform, platform ~= nil)
SendRPCToServer(RPC.MakeRecipeAtPoint, recipe.rpc_id, act.pos.local_pt.x, act.pos.local_pt.z, rot, skin_index, act.pos.walkable_platform, act.pos.walkable_platform ~= nil)
SendRPCToServer(RPC.MakeRecipeFromMenu, recipe.rpc_id, skin_index)
SendRPCToServer(RPC.RightClick, act.action.code, pos_x, pos_z, mouseover, act.rotation ~= 0 and act.rotation or nil, nil, controlmods, act.action.canforce, act.action.mod_name, platform, platform ~= nil)
SendRPCToServer(RPC.StartHop, disembark_x, disembark_z, target_platform, target_platform ~= nil)
SendRPCToServer(RPC.UseItemFromInvTile, buffaction.action.code, item, controlmods, buffaction.action.mod_name)
SendRPCToServer(RPC.ControllerActionButton, act.action.code, obj, isreleased, nil, act.action.mod_name)
SendRPCToServer(RPC.ControllerActionButtonDeploy, obj, act.pos.local_pt.x, act.pos.local_pt.z, act.rotation ~= 0 and act.rotation or nil, nil, act.pos.walkable_platform, act.pos.walkable_platform ~= nil)
SendRPCToServer(RPC.ControllerActionButtonPoint, act.action.code, act.pos.local_pt.x, act.pos.local_pt.z, nil, act.action.canforce, act.action.mod_name, act.pos.walkable_platform, act.pos.walkable_platform ~= nil)
SendRPCToServer(RPC.ControllerAltActionButton, act.action.code, obj, nil, act.action.canforce, act.action.mod_name)
SendRPCToServer(RPC.ControllerAltActionButtonPoint, act.action.code, act.pos.local_pt.x, act.pos.local_pt.z, isreleased, nil, isspecial, act.action.mod_name, act.pos.walkable_platform, act.pos.walkable_platform ~= nil)
SendRPCToServer(RPC.ControllerAttackButton, target, isreleased)
SendRPCToServer(RPC.ControllerUseItemOnItemFromInvTile, buffaction.action.code, item, active_item, buffaction.action.mod_name)
SendRPCToServer(RPC.ControllerUseItemOnSceneFromInvTile, buffaction.action.code, item, buffaction.target, buffaction.action.mod_name)
SendRPCToServer(RPC.ControllerUseItemOnSelfFromInvTile, buffaction.action.code, item, buffaction.action.mod_name)
SendRPCToServer(RPC.DropItemFromInvTile, item, single or nil)
SendRPCToServer(RPC.InspectItemFromInvTile, item)
SendRPCToServer(RPC.LeftClick, act.action.code, pos_x, pos_z, mouseover, nil, controlmods, act.action.canforce, act.action.mod_name, platform, platform ~= nil)
SendRPCToServer(RPC.MakeRecipeAtPoint, recipe.rpc_id, pos_x, pos_z, rot, skin_index, platform, platform ~= nil)
SendRPCToServer(RPC.MakeRecipeFromMenu, recipe.rpc_id, skin_index)
SendRPCToServer(RPC.SteerBoat, dir.x, dir.z)
SendRPCToServer(RPC.ToggleController, val)
SendRPCToServer(RPC.UseItemFromInvTile, buffaction.action.code, item, controlmods, buffaction.action.mod_name)
SendRPCToServer(RPC.AttackButton)
SendRPCToServer(RPC.AttackButton, target, force_attack)
SendRPCToServer(RPC.AttackButton, target, force_attack, true)
SendRPCToServer(RPC.ControllerActionButton, act.action.code, obj, nil, act.action.canforce, act.action.mod_name)
SendRPCToServer(RPC.ControllerAltActionButtonPoint, act.action.code, act.pos.local_pt.x, act.pos.local_pt.z, nil, act.action.canforce, isspecial, act.action.mod_name, act.pos.walkable_platform, act.pos.walkable_platform ~= nil)
SendRPCToServer(RPC.ControllerAttackButton, target, nil, act.action.canforce)
SendRPCToServer(RPC.DirectWalking, x, z) -- x and z are directions, not positions, so we don't need it to be platform relative
SendRPCToServer(RPC.DragWalking, pos_x, pos_z, platform, platform ~= nil)
SendRPCToServer(RPC.PredictWalking, pos_x, pos_z, self.directwalking, platform, platform ~= nil)
SendRPCToServer(RPC.StopAllControls)
SendRPCToServer(RPC.StopControl, control)
SendRPCToServer(RPC.StopWalking)
SendRPCToServer(RPC.ActionButton, actioncode, target, isreleased, noforce, action_mod_name)
SendRPCToServer(RPC.InspectButton, action.target)
SendRPCToServer(RPC.ResurrectButton)



local x, y, z = ThePlayer.Transform:GetWorldPosition();print(x,y,z)
local range = TUNING.BEEFALOHERD_RANGE
local ents = TheSim:FindEntities(x, y, z, range, { "herdmember", "beefalo" })

if inst:HasTag("migratory") then
    inst.components.herd:SetMemberTag("beefalo_migratory")
else
    inst.components.herd:SetMemberTag("beefalo")
end


function EnumNearByBeefalo(inst, range, callback)
  local x, y, z = inst.Transform:GetWorldPosition()
  local ents = TheSim:FindEntities(x, y, z, range, { "herdmember", "beefalo" })
  for i, v in ipairs(ents) do
    callback(v)
  end
end

t_callback = function (ent, i)
  if (GetBeefaloHerd(ent) == nil) then
    SelectEntity(ent, color)
  end
end

_M2.EnumNearByBeefalo(ThePlayer, 40, t_callback);

t_inst = TheInput:GetWorldEntityUnderMouse();print(t_inst);

print(t_inst.AnimState:GetSkinBuild())
domesticationdelta

t_inst.components.mood:IsInMood()
t_inst2.AnimState:Show("HEAT")
t_inst2.AnimState:Hide("HEAT")
t_inst2.components.mood
t_herd = t_inst.components.herdmember and t_inst.components.herdmember:GetHerd(); print(t_herd)
t_herd2 = t_inst2.components.herdmember and t_inst2.components.herdmember:GetHerd(); print(t_herd2)

t_inst.components.herdmember


if (herd and herd.components.mood and herd.components.mood:IsInMood())
or (inst.components.mood and inst.components.mood:IsInMood()) then
animstate:Show("HEAT")
else
animstate:Hide("HEAT")
end

t_inst:HasTag("scarytoprey")
 t_inst:GetSkinBuild()
print(t_inst.GetSkinBuild)
print(t_inst:GetSkinBuild())

换皮肤还没找到函数,也不是我的第一需求
还是要破解showme
和加载 beefalo_plus

打字说话
TheNet:Say("jaja")
难道是我要的 debugmsg
必须要有remote执行权限才可以显示出来
TheNet:SystemMessage("xxx")




这可以实现lua监听打字
html 输入
然后映射到游戏内说话

就是这个移动速度
moving speed
locomotor
  caller.components.locomotor:SetExternalSpeedMultiplier(caller, "c_speedmult", speed)

高亮显示 123
t_inst.components.highlight
t_inst:AddComponent("highlight")



local ImageButton = Class(Button,
function(self, atlas, normal,
  focus, disabled,
  down, selected, scale, offset)
local checkbox = checkbox_parent:AddChild(
ImageButton("images/ui.xml", "checkbox_off.tex",
  "checkbox_off_highlight.tex", "checkbox_off_disabled.tex", nil, nil, {1,1}, {0,0}))
self.close_btn = self.proot:AddChild(
ImageButton("images/ui.xml", "button_large.tex",
  "button_large_over.tex", "button_large_disabled.tex"))


显示图片
    -- No point of showing icon if controller connected
    local controller_mode = GLOBAL.TheInput:ControllerAttached()


t_ImageButton = require "widgets/imagebutton";print(t_ImageButton)


t_imb = t_ImageButton("images/icon.xml","icon.tex","icon.tex","icon.tex")

t_imb = t_ImageButton("images/ui.xml", "button_large.tex", "button_large_over.tex", "button_large_disabled.tex")
self.close_btn = self.proot:AddChild()
self.close_btn:SetFont(BUTTONFONT)
self.close_btn:SetText(STRINGS.UI.DEMOOVERDIALOG.QUIT)
self.close_btn:SetScale(0.65)
self.close_btn:SetPosition(0, -320, 0)
self.close_btn:SetOnClick(function() self:GoAway() end)

TheFrontEnd.t_imb = t_ImageButton()
TheFrontEnd.t_imb:SetFont(BUTTONFONT)
TheFrontEnd.t_imb:SetText("xxx")
TheFrontEnd.t_imb:SetScale(0.65)
TheFrontEnd.t_imb:SetPosition(300, 120, 0)
TheFrontEnd.t_imb:SetOnClick(function() print("....111...click") TheNet:Say(".... click") end) TheFrontEnd.t_imb:Hide()
TheFrontEnd.t_imb:SetClickable(true)
TheFrontEnd.t_imb:Show()
TheFrontEnd.t_imb:SetPosition(500, 300, 0)
print(TheFrontEnd.t_imb.MoveToBack)
TheFrontEnd.t_imb:MoveToFront()
TheFrontEnd.t_imb:SetHoverText("123")

t_imb:Kill()
TheFrontEnd.overlayroot:RemoveChild(TheFrontEnd.t_imb)
TheFrontEnd.overlayroot:AddChild(TheFrontEnd.t_imb)
t_imb


    -- HUD Icon
    if not HIDE_HUD_ICON and not controller_mode then
      local ImageButton = CompatibilityImageButton()
      controls.waypoint_icon = controls.top_root:AddChild(
        ImageButton("images/icon.xml","icon.tex","icon.tex","icon.tex")
      )
      local sw, sh = GetScaledScreen(controls)
      local posX = sw/2
      local posY = -sh
      local offX, offY = controls.waypoint_icon:GetSize()

      controls.waypoint_icon:SetTooltip(STRINGS.WAYPOINT.UI.HUD.TOOLTIP ..
        "\n(" .. string.upper(string.char(KEY)) .. ")")
      controls.waypoint_icon:SetPosition(posX - offX/2,posY + offY*1.2,0)
      controls.waypoint_icon:SetNormalScale(.7)
      controls.waypoint_icon:SetFocusScale(.8)
      controls.waypoint_icon:SetOnClick(function()
        if controls.waypoint:IsVisible() then
          controls.waypoint:Hide(true)
        else
          controls.waypoint:Show(true)
        end
      end)
    end



function show_msg_api(msg)
  -- TheFrontEnd:ShowTitle("", msg)
  -- self.percent_text = self:AddChild(Text(TALKINGFONT, 20))
  -- self.percent_text:SetHAlign(ANCHOR_MIDDLE)
  -- self.percent_text:SetPosition(0, -28, 0)

  -- or
  -- local text = TheFrontEnd.showmsg

  --   self.alpha = 0

  --   self.title = Text(TITLEFONT, 100)
  --   self.title:SetPosition(0, -30, 0)
  --   self.title:Hide()
  --   self.title:SetVAnchor(ANCHOR_MIDDLE)
  --   self.title:SetHAnchor(ANCHOR_MIDDLE)
  -- self.overlayroot:AddChild(self.title)

  --   self.subtitle = Text(TITLEFONT, 70)
  --   self.subtitle:SetPosition(0, 70, 0)
  --   self.subtitle:Hide()
  --   self.subtitle:SetVAnchor(ANCHOR_MIDDLE)
  --   self.subtitle:SetHAnchor(ANCHOR_MIDDLE)
  -- self.overlayroot:AddChild(self.subtitle)

  if (TheFrontEnd.showmsg) then
    TheFrontEnd.overlayroot:RemoveChild(TheFrontEnd.showmsg)
    TheFrontEnd.showmsg:Kill()
    TheFrontEnd.showmsg = nil
  end
  if (autodismount.update_msg_task) then
    autodismount.update_msg_task:Cancel()
    autodismount.update_msg_task = nil
  end

  -- if (1) then
  --   print(100, "debug return")
  --   return
  -- end
  local text = TheFrontEnd.showmsg
print(111, text)
  if not (text) then
print(222, text)
    text = Text(TALKINGFONT, 20)
    text:Hide()
    text:SetPosition(0, 70, 0)
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

  update_fade_text = _f(function (text, dt)
    if (fade_time < dt) then
      text:Show()
    end


    fade_time = fade_time + dt
    local alpha = easing.inOutCubic(fade_time, 0.5, 1, fade_total)
    text:SetAlpha(alpha)
print(444, text, fade_time)
    if (fade_time > fade_total) then
print(555, text, fade_time)
      text:Hide()
      autodismount.update_msg_task:Cancel()
      autodismount.update_msg_task = nil
    end
  end)

  autodismount.update_msg_task = ThePlayer:DoPeriodicTask(dt, function()
    update_fade_text(text, dt)
  end, 0)
print(666, text, fade_time)


end


inst:DoTaskInTime(1 + math.random(), OnBuckTime)

print(111, 222, 333)

function StatusAnnouncer:Announce(message)
  if not self.cooldown and not self.cooldowns[message] then
    local whisper = TheInput:IsKeyDown(KEY_CTRL) or TheInput:IsControlPressed(CONTROL_MENU_MISC_3)
    self.cooldown = ThePlayer:DoTaskInTime(1, function() self.cooldown = false end)
    self.cooldowns[message] = ThePlayer:DoTaskInTime(10, function() self.cooldowns[message] = nil end)
    TheNet:Say(STRINGS.LMB .. " " .. message, WHISPER_ONLY or WHISPER ~= whisper)
  end
  return true
end

print(os.getenv("HOME"))

__index

t_inst = TheInput:GetWorldEntityUnderMouse();print(t_inst);
t_ls = function (t) print("---------<<<<<<<<", t) for k,v in pairs(t) do print(k,v) end print(">>>>>>>>----------", t) end
print(t_inst.sg:HasStateTag("idle"))
print(ThePlayer.sg:HasStateTag("idle"))


    local beibao = GLOBAL.EQUIPSLOTS.BACK or GLOBAL.EQUIPSLOTS.BODY  --Shang
    local B = GLOBAL.ThePlayer.replica.inventory:GetEquippedItem(beibao)
ThePlayer.replica.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
   t_bag = ThePlayer.replica.inventory:GetEquippedItem(EQUIPSLOTS.BODY);print(t_inv)
t_item =  t_bag.replica.container:GetItemInSlot(1);print(t_item)
t_item2 =  t_bag.replica.container:GetItemInSlot(2);print(t_item2)
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
  RPC["RightClick"]
    SendRPCToServer(RPC["RightClick"], ACTIONS["FEED"].code, ThePlayer:GetPosition().x, ThePlayer:GetPosition().z, t_item2, nil, ACTIONS["FEED"].instant)
    SendRPCToServer(RPC["LeftClick"], ACTIONS["GIVE"].code, ThePlayer:GetPosition().x, ThePlayer:GetPosition().z, t_inst, nil, ACTIONS["FEED"].instant)

scan over no hostile unit will auto feed

SendRPCToServer(rc, ac, pos.x, pos.z, target, nil, instant)
inventory and container

local inventory = player and player.components.inventory or nil
local backpack = inventory and inventory:GetOverflowContainer() or nil
local inventorySlotCount = inventory and inventory:GetNumSlots() or 0
local backpackSlotCount = backpack and backpack:GetNumSlots() or 0
local removeallinstr = 0
for i = 1, inventorySlotCount do
    local item = inventory:GetItemInSlot(i) or nil
    inventory:RemoveItem(item, true)
    if item ~= nil then
        item:Remove()
    end
end
if removeallinstr == 1 then
    for i = 1, backpackSlotCount do
        local item = backpack:GetItemInSlot(i) or nil
        inventory:RemoveItem(item, true)
        if item ~= nil then
            item:Remove()
        end
    end
end

123

ThePlayer.replica.inventory:NumItems()
 ThePlayer.components.talker:Say(tostring(t_inst.components.thief))
 ThePlayer.components.eater
        act.target.components.eater:CanEat(act.invobject) and

ReceiveRemoteExecute(
  local player = UserToPlayer('KU__9qL15UL')
  if player == nil then
    UserToPlayer("KU__9qL15UL").components.talker:Say("")




player.components.inventory:GiveItem(inst)


t_say = function (x) ThePlayer.components.talker:Say(tostring(x)) end
if (exp) then
  return
end

ThePlayer.replica.inventory:GetEquippedItem(beibao)
ThePlayer.replica.inventory:GetActiveItem()
 t_inv.replica.container:GetItemInSlot(1)
t_say(ThePlayer.replica.inventory:GetActiveItem())
   t_inv = ThePlayer.replica.inventory:GetEquippedItem(EQUIPSLOTS.BODY);print(t_inv)
t_say( t_inv.replica.container:GetItemInSlot(1))
t_inv.replica.container:TakeActiveItemFromAllOfSlot(1)
t_say( t_inv.replica.container:GetItemInSlot(1))

function ActionQueuer:GetNewActiveItem(prefab)
    local inventory = self.inst.replica.inventory
    local body_item = inventory:GetEquippedItem(EQUIPSLOTS.BODY)
    local backpack = body_item and body_item.replica.container
    for _, inv in pairs(backpack and {inventory, backpack} or {inventory}) do
        for slot, item in pairs(inv:GetItems()) do
            if item and item.prefab == prefab then
                inv:TakeActiveItemFromAllOfSlot(slot)
                return item
            end
        end
    end
end

    local B = GLOBAL.ThePlayer.replica.inventory:GetEquippedItem(beibao)
        if B ~= nil then
          for i=1, 4 do
            if not B.replica.container:GetItemInSlot(i) then


function IsWalkButtonDown()
    return ThePlayer.components.playercontroller:IsAnyOfControlsPressed(CONTROL_MOVE_UP, CONTROL_MOVE_DOWN, CONTROL_MOVE_LEFT, CONTROL_MOVE_RIGHT)
end

function ActionQueuer:GetActiveItem()
    return self.inst.replica.inventory:GetActiveItem()
end

function ActionQueuer:GetEquippedItemInHand()
    return self.inst.replica.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
end


ThePlayer.replica.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
t_say(ThePlayer.replica.inventory:GetActiveItem())
t_say(ThePlayer.replica.inventory:GetEquippedItem(EQUIPSLOTS.HANDS))




t_inst.herdmember


t_ani_Hide = t_inst.AnimState.Hide
print(t_ani_Hide, t_inst.AnimState.Hide)

inst:AddTag("scarytoprey")
t_inst:HasTag("scarytoprey")

getmetatable(t_inst.AnimState).__index.Hide = function (self, ...)
print(111, self, ...)
if (self == t_inst.AnimState) then
	print(111, self, ...)
end
return t_ani_Hide(self, ...)
end
getmetatable(t_inst.AnimState).__index.Hide = function (self, ...) if (self == t_inst.AnimState) then print(111, self, ...) end return t_ani_Hide(self, ...) end

t_ls(getmetatable(t_inst.AnimState))
打印 userdata
t_ls(getmetatable(t_inst.AnimState).__index)




t_ls = function (t) print("---------<<<<<<<<", t) for k,v in pairs(t) do print(k,v, type(v)) end print(">>>>>>>>----------", t) end;
t_us = function (t) t_ls(getmetatable(t).__index) end;


t_ls(t_inst.replica._)
t_ls(ThePlayer.replica.health)
t_ls(ThePlayer.replica._.health)
print(ThePlayer.replica.health == ThePlayer.replica._.health)


t_myclsf = ThePlayer.player_classified

t_myclsf.showme_hint2
inst.showme_hint2
			inst:ListenForEvent("showme_hint_dirty2",function(inst)
				inst.showme_hint2 = inst.net_showme_hint2:value()
			end)

	AddPrefabPostInit("player_classified",function(inst)
		inst.showme_hint2 = ""
		inst.net_showme_hint2 = _G.net_string(inst.GUID, "showme_hintbua.", "showme_hint_dirty2")
		if CLIENT_SIDE then
			inst:ListenForEvent("showme_hint_dirty2",function(inst)
				inst.showme_hint2 = inst.net_showme_hint2:value()
			end)
		end
	end)

t_hoverer = function (...) print(123, ...) end

	_M.AddClassPostConstruct("widgets/hoverer",function(hoverer) t_hoverer(hoverer) end)




basedelay = 50 -800 moodmult = 0.2 or 1


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
print(t_inst.showme_hint2);

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

111111111
print(t_inst:HasTag("player"))
print(t_inst:IsInLimbo())

t_inst:ListenForEvent("actioncomponentsdirty", function (...)
  _M.OnActionComponentsDirty(...)
end)
t_inst:ListenForEvent("inherentactionsdirty", function ()
  _M.DeserializeInherentActions()
end)
t_inst:ListenForEvent("inherentsceneactiondirty", function ()
  _M.OnInherentSceneActionDirty()
end)
t_inst:ListenForEvent("inherentscenealtactiondirty", function ()
  _M.OnInherentSceneAltActionDirty()
end)

for _,modname in pairs(ModManager:GetServerModsNames()) do
    inst:ListenForEvent("modactioncomponentsdirty"..modname, function(inst) OnModActionComponentsDirty(inst,modname) end)
end

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




function ActionQueuer:DeployActiveItem(pos, item)
    local active_item = self:GetActiveItem() or self:GetNewActiveItem(item.prefab)
    if not active_item then return false end
    local inventoryitem = active_item.replica.inventoryitem
    if inventoryitem and inventoryitem:CanDeploy(pos, nil, self.inst) then
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
    end
    return true
end

local ver = "--bbbbb---tttttttt-----444-----"

local env0 = getfenv(0)
local env1 = getfenv(1)



print(ver, env0, env1, _G)


print(ver, 11111)

print(ThePlayer.replica.rider)

print(ThePlayer.replica.rider.Mount)

print(ThePlayer.replica.rider.IsRiding)

print(ThePlayer.replica.rider.Dismount)

    local playercontroller = self.inst.components.playercontroller
    if playercontroller.ismastersim then

 SendRPCToServer = function (...) local arr = {...} print(100, arr[0]) print(111, arr[1]) print(222, arr[2]) print(333, arr[3]) print(444, arr[4]) print(555, arr[5]) print(666, arr[6]) print(777, arr[7]) print(888, arr[8]) print(999, arr[9]) if (t_b_show_SendRPCToServer) then print("-----------<<SendRPCToServer>>>>>", ...) end return t_org_SendRPCToServer(...) end



BEEFALO_DOMESTICATION_STARVE_OBEDIENCE = -1/(total_day_time*1),
BEEFALO_DOMESTICATION_FEED_OBEDIENCE = 0.1,
BEEFALO_DOMESTICATION_OVERFEED_OBEDIENCE = -0.3,
BEEFALO_DOMESTICATION_ATTACKED_BY_PLAYER_OBEDIENCE = -1,
BEEFALO_DOMESTICATION_BRUSHED_OBEDIENCE = 0.4,
BEEFALO_DOMESTICATION_SHAVED_OBEDIENCE = -1,

BEEFALO_DOMESTICATION_LOSE_DOMESTICATION = -1/(total_day_time*4),
BEEFALO_DOMESTICATION_GAIN_DOMESTICATION = 1/(total_day_time*20),
BEEFALO_DOMESTICATION_MAX_LOSS_DAYS = 10, -- days
BEEFALO_DOMESTICATION_OVERFEED_DOMESTICATION = -0.01,
BEEFALO_DOMESTICATION_ATTACKED_DOMESTICATION = 0,
BEEFALO_DOMESTICATION_ATTACKED_OBEDIENCE = -0.01,
BEEFALO_DOMESTICATION_ATTACKED_BY_PLAYER_DOMESTICATION = -0.3,
BEEFALO_DOMESTICATION_BRUSHED_DOMESTICATION = (1-(15/20))/15, -- (1-(targetdays/basedays))/targetdays


print(TUNING.BEEFALO_DOMESTICATION_LOSE_DOMESTICATION);
print(TUNING.BEEFALO_DOMESTICATION_GAIN_DOMESTICATION);


t_yan = TheInput:GetWorldEntityUnderMouse();print(t_yan);


 -- ThePlayer.components.actionqueuerd
 -- ThePlayer.components.talker:Say("Unable to craft: ")
 -- ThePlayer.replica.rider

t_str = tostring(TUNING.BEEFALO_DOMESTICATION_WELLFED_DOMESTICATION)
ThePlayer.components.talker:Say(t_str)

t_mount = ThePlayer.components.rider.mount
t_str = tostring(t_mount.components.domesticatable.domestication);ThePlayer.components.talker:Say(t_str)

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
