
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
		if (key == "_G") then
			print("99999HHHHAAAA", rawget(t, key),
				rawget(_AllModules, key), rawget(_G, key));
		end
		return rawget(t, key)
		 or rawget(_AllModules, key)
		 or rawget(_G, key);
	end
}

local _M = {}
setmetatable(_M, mt)
setfenv(1, _M)

local import = function (path, env)
	if (env) then
	  local env0 = getfenv(0)
	  setfenv(0, env)
	  require(path)
	  setfenv(0, env0)
	else
	  require(path)
	end
end
_M.import = import

local function protect_func(f)
	return function ()
		xpcall(f, function (...)
			print("[my error] in func:", ...)
		end)
	end
end
_M._f = protect_func


------------------------------------------------------------
-- main
------------------------------------------------------------

local ver = "----------99999HHHHAAAA--wwww"


xpcall(function ()
	-- require("tprint")
	-- require("mydata")
	-- -- import("mytest", _M)
	import("main", _M)
	-- require("mydata2")
	-- import("mytest2", _M)

-- G._G.abcxxx = 123;
print("99999HHHHAAAA", G._G == _G)
print("185555811", G._G == _M._G)
print("188666666634443", _G.abcxxx)
-- rawget(_G, "_G").abcxxx222 = 99
rawset(_G, "abcxxx222", 77)
print("188442255", _G.abcxxx222)


	--
	-- print(222, main)
	-- print(111, _G.main)


end, function (...) print(ver, "[my error] in main:", ...) end) -- xpcall end
