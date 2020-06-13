local _G = GLOBAL
local require = _G.require
local getfenv = _G.getfenv
local xpcall = _G.xpcall



local ver = "--===+++++++==--aaaa-4444---2222----333------444-----"

local env0 = getfenv(0)
local env1 = getfenv(1)

print()
a = 123

print(ver, env0, env1, _G)
print(ver, env, env1, _G)


xpcall(function (xxx)
	require("t2")
modimport("scripts/t3.lua")


print(222, ver, env0, env1, _G)
print(222, ver, env, env1, _G)

end, function (...) print(ver, ...) end)