local push = table.insert
local tjoin = table.concat


print("xxxxxxx22222xxxxxxxxx", _m, test, _M, setfenv, getfenv)
print("xxxxxxx888xxxxxxxx", mydata, test, _M, setfenv, getfenv)

function test24()

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

_G.myfunc = test24
_G.GetInstComponents = GetInstComponents
_G.GetPlayerComponents = GetPlayerComponents


print("xxxxxxx999xxxxxxxxx", myfunc, _G.myfunc , _M, setfenv, getfenv)

return {}

