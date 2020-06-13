
------------------------------------------------------------
-- base
------------------------------------------------------------
local GetModConfigData2 = GetModConfigData;
local G = GLOBAL
local _G = GLOBAL

local require = _G.require
local setfenv = _G.setfenv
local getfenv = _G.getfenv
local rawset = _G.rawset
local rawget = _G.rawget
local setmetatable = _G.setmetatable
local getmetatable = _G.getmetatable

local _AllModules = getfenv(1)
local mt = {
	__index = function (t, key)
		return rawget(t, key)
		 or rawget(_AllModules, key)
		 or rawget(_G, key);
	end
}

local _M = {}
setmetatable(_M, mt)
setfenv(1, _M)

_G.import = function (path, env)
	if (env) then
	  local env0 = getfenv(0)
	  setfenv(0, env)
	  require(path)
	  setfenv(0, env0)
	else
	  require(path)
	end
end


------------------------------------------------------------
-- main
------------------------------------------------------------

import("tprint")

tprint{777, import, require}

xpcall(function ()
print(pcall, table, getfenv(1), _G)
tprint(io)
-- tprint(package)
print(rawget(_G, "load"))
print(rawget(_G, "loadfile"))
print(package.path)
print(package.cpath)
print(111, rawget(_G, "GetModConfigData"), GetModConfigData, GetModConfigData2)

	-- require("main")
	import("main", _M)

end, function (...)
	print("[my error]:", ...)
end)


