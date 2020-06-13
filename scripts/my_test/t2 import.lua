
import("tprint")

local t = {aaa=111, "bbb"}
tprint(t)

print(pcall, table, getfenv(1), _G)
tprint(io)
-- tprint(package)
print(rawget(_G, "load"))
print(rawget(_G, "loadfile"))
print(package.path)
print(package.cpath)
print(222, rawget(_G, "GetModConfigData"), GetModConfigData)
tprint{888, import, require}
-- print(1122, "haha", _G, GLOBAL)

-- local keybind = _G["KEY_"..GetModConfigData("ridekey")]

-- -- local cfgNotif = GetModConfigData('MAU_notif')
-- -- local cfgForce = GetModConfigData('MAU_force')
-- -- local cfgFilter = GetModConfigData('MAU_filter')
-- -- local cfgHands = GetModConfigData('MAU_hands')

-- local function IsInGameplay()
-- 	return G.ThePlayer ~= nil and G.TheFrontEnd:GetActiveScreen().name == "HUD"
-- end

-- local function _P(f)
-- 	return function ()
-- 	-- print(666, print, string, table, pcall)
-- 	-- if (G.pcall and print) then
-- 	-- 	G.pcall(f, print)
-- 	-- else
-- 	-- 	f()
-- 	-- end
-- 		pcall(f, print)
-- 	end
-- end

-- G.TheInput:AddKeyDownHandler(keybind, _P(function()
-- 	-- if not IsInGameplay() then return end
-- 	-- if (print) then
-- 	-- 	print(111, "keydown", keybind, G.ThePlayer, G, G.pcall)
-- 	-- end
-- 	-- if (G.print) then
-- 	-- 	G.print(222, "keydown", keybind, G.ThePlayer, G, G.pcall)
-- 	-- end
-- 	-- if (G.test) then
-- 	-- 	G.test()
-- 	-- end
-- 	tprint(test)
-- 	tprint(string)

-- end))



-- -- local function Unequip (inst)

-- -- 	if inst.replica.equippable:IsEquipped() then
-- -- 		G.ThePlayer.replica.inventory:ControllerUseItemOnSelfFromInvTile(inst)
-- -- 	end

-- -- 	if cfgForce
-- -- 		and not inst.replica.equippable:IsEquipped()
-- -- 		and inst.unequiptask ~= nil
-- -- 	then
-- -- 		inst.unequiptask:Cancel()
-- -- 		inst.unequiptask = nil
-- -- 	end

-- -- end


-- -- local function AutoUnequip (inst)

-- -- 	local item = inst.entity:GetParent()

-- -- 	local slot = item.replica.equippable:EquipSlot()

-- -- 	if (not item.replica.inventoryitem:IsHeldBy(G.ThePlayer))
-- -- 		or (not item.replica.equippable:IsEquipped())
-- -- 		or (cfgHands and slot == G.EQUIPSLOTS.HANDS)
-- -- 		or (cfgFilter and G.NONREFILLABLE[item.prefab])
-- -- 		or (inst.percentused:value() > 1)
-- -- 	then
-- -- 		return
-- -- 	end

-- -- 	if cfgForce then
-- -- 		item.unequiptask = item:DoPeriodicTask(0, function ()
-- -- 			Unequip(item)
-- -- 		end)
-- -- 	end

-- -- 	Unequip(item)

-- -- 	if cfgNotif and G.ThePlayer.components.talker then
-- -- 		G.ThePlayer.components.talker:Say(
-- -- 			notification:format(item.name or slot..' slot item')
-- -- 		)
-- -- 	end

-- -- end


-- -- local function PostInit (inst)

-- -- 	local item = inst.entity:GetParent()

-- -- 	if item == nil or item.replica.equippable == nil then
-- -- 		return
-- -- 	end

-- -- 	inst:ListenForEvent('percentuseddirty', function ()
-- -- 		AutoUnequip(inst)
-- -- 	end)

-- -- end


-- -- AddPrefabPostInit('inventoryitem_classified', function (inst)
-- -- 	if not G.TheNet:IsDedicated() then
-- -- 		inst:DoTaskInTime(0, function ()
-- -- 			PostInit(inst)
-- -- 		end)
-- -- 	end
-- -- end)


