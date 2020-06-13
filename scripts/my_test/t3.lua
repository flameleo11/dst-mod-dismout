local _G = GLOBAL
local require = _G.require
local getfenv = _G.getfenv


local ver = "---===+++++++==--aaaa-666----------444-----"

local env0 = getfenv(0)
local env1 = getfenv(1)



print(ver, env0, env1, _G)


print(ver, 7777)