
local function DomesticationTriggerFn(inst)
    return inst.components.hunger:GetPercent() > 0
        or inst.components.rideable:IsBeingRidden() == true
end
\


local function ToggleDomesticationDecay(inst)
    inst.components.domesticatable:PauseDomesticationDecay
    (inst.components.saltlicker.salted or inst.components.sleeper:IsAsleep());
end

  133          if rider ~= nil and rider:IsRiding() then
  134:             local saddle = rider:GetSaddle()
  135:             local inventoryitem = saddle ~= nil and saddle.replica.inventoryitem or nil
  136              if inventoryitem ~= nil then
  137                  mult = mult * inventoryitem:GetWalkSpeedMult()

/drive_d/SteamLibrary/steamapps/common/Don't Starve Together/data/scripts/components/rideable.lua:
    7  end
    8
    9: local function onsaddle(self, saddle)
   10:     if saddle ~= nil then
   11          self.inst:AddTag("saddled")
   12      else
   ..