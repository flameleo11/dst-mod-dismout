require("tprint")

local G = GLOBAL
local trace = print

local push = table.insert
local tjoin = table.concat

local KEEP_FACE_DIST = 4

local GetTime = _G.GetTime
local TheNet = _G.TheNet
is_PvP = TheNet:GetDefaultPvpSetting()
SERVER_SIDE = TheNet:GetIsServer()
CLIENT_SIDE =	 TheNet:GetIsClient() or (SERVER_SIDE and not TheNet:IsDedicated())

autodismount = autodismount or {}

cfg_auto_dismount = GetModConfigData("AUTO_DISMOUNT")
cfg_mount_key     = GetModConfigData("MOUNT_KEY")


------------------------------------------------------------
-- test
------------------------------------------------------------


-- ThePlayer:ListenForEvent("mounted", function (...)
-- 	print("..>>>>>>>>>>>>..OnMounted....", ...)
-- end)


-- local keybind = _G["KEY_"..cfg_mount_key]
-- TheInput:AddKeyDownHandler(keybind, function (...)
-- 	print("..>>>>>>>>>>>>..onPressMountKey....", cfg_mount_key, ...)
-- end)

-- for k,v in pairs(package.loaded) do print(k,v) end

-- riderrunspeed = net_float(ThePlayer.GUID, "rider.runspeed")
-- riderrunspeed = net_float(ThePlayer.player_classified.GUID, "rider.runspeed")
-- trace(".....riderrunspeed..ok", riderrunspeed:value())

-- local function PostInit (inst)
-- 	local item = inst.entity:GetParent()
-- 	if item == nil or item.replica.equippable == nil then
-- 		return
-- 	end
-- 	inst:ListenForEvent('percentuseddirty', function ()
-- 		AutoUnequip(inst)
-- 	end)
-- end

-- AddPrefabPostInit('inventoryitem_classified', function (inst)
-- 	if not G.TheNet:IsDedicated() then
-- 		inst:DoTaskInTime(0, function ()
-- 			PostInit(inst)
-- 		end)
-- 	end
-- end)

-- AddPrefabPostInit("player_classified",function(inst)
-- 	t_player_classified = inst
-- 	if CLIENT_SIDE then
-- 		inst:ListenForEvent("mounted",function(inst)
-- 			print("......player_classified ....ListenForEvent.....mounted.....")
-- 		end)
-- 	end
-- end)

-- if (t_player_classified) then
-- 	t_player_classified:ListenForEvent("mounted",function(inst)
-- 		print("...2222...player_classified ....ListenForEvent.....mounted.....")
-- 	end)

-- 	for k,v in pairs(_M.t_player_classified) do print(k,v) end
-- end



OnMounted = function (me, data)
  if not data.target then return end
  -- local buckdelay = CalculateBuckDelay(data.target)
  -- local predelay = 1
  -- local delay = buckdelay - predelay


  autodismount.last_target = data.target

  -- autodismount.task = data.target:DoTaskInTime(delay, function()
  --   GetPlayerComponents(ThePlayer).rider:Dismount()
  --   trace("OnMounted....... timer", "rider:Dismount()", delay)
  -- end)
  trace("OnMounted...............ok")
end

OnDismounted = function (me, data)
  if not data.target then return end

  if autodismount.task then
    autodismount.task:Cancel()
    autodismount.task = nil
    trace("OnDismounted", "cancel")
  end

  autodismount.last_target = data.target
  trace("OnDismounted", "..............ok")
end

if (t_onisriding) then
ThePlayer:RemoveEventCallback("isridingdirty", t_onisriding)
end

if (on_isridingdirty) then
ThePlayer:RemoveEventCallback("isridingdirty", on_isridingdirty)
end

on_isridingdirty = _f(function (...)
	print(100, ThePlayer.replica.rider._isriding:value())
	-- tprint(ThePlayer.replica.rider.)
	-- for k,v in pairs(ThePlayer.replica.rider) do
	-- 	print(k,v)
	-- end
	-- for k,v in pairs(ThePlayer.player_classified) do
	-- 	print(k,v)
	-- end
	local b_riding = ThePlayer.replica.rider._isriding:value()
	if (b_riding) then
	  ThePlayer:DoTaskInTime(0, function()
	  	local target =ThePlayer.replica.rider:GetMount();
	  	local data = { target = target };
	  	OnMounted(ThePlayer, data)
	  end)
	else
		local target =ThePlayer.replica.rider:GetMount();
		local data = { target = target };
	  OnDismounted(ThePlayer, data)
	end

-- -- print(555, ThePlayer.player_classified.mountbuckdelay:value())
--   ThePlayer:DoTaskInTime(0, function(target)
-- 		print(222, ThePlayer.player_classified.ridermount:value())
-- 		print(222, ThePlayer.replica.rider:GetMount())
--   end)

-- print(111, ThePlayer.player_classified.ridermount:value())
-- print(111, ThePlayer.replica.rider:GetMount())

end)


-- cfg_auto_dismount = GetModConfigData("AUTO_DISMOUNT")
-- cfg_mount_key     = GetModConfigData("MOUNT_KEY")


function init(player)

  if not (cfg_mount_key == "None") then
    local keybind = _G["KEY_"..cfg_mount_key]
    TheInput:AddKeyDownHandler(keybind, onPressMountKey)
  end

	ThePlayer:ListenForEvent("isridingdirty", t_onisriding)
end



trace(".....import.......dismount.....444...ok", CLIENT_SIDE)
