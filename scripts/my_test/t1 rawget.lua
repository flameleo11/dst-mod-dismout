
------------------------------------------------------------
-- base
------------------------------------------------------------

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


------------------------------------------------------------
-- main
------------------------------------------------------------

require("tprint")

xpcall(function ()
	print(11, "haha 11")
	print(_G)
	print(_AllModules.GLOBAL)
	-- print(_G.GLOBAL)
	print(GLOBAL)
	print(rawget(_G, "GLOBAL"))

	print(22, "haha 22")

	require("main")

end, function (...)
	print("[my error]:", ...)
end)


