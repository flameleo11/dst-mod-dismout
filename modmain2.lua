local require = GLOBAL.require

require("tprint")
local modinit = require("modinit")

modinit("dismount")


import("main")







local G = GLOBAL
local _G = GLOBAL
local require = _G.require
local getfenv = _G.getfenv
local xpcall = _G.xpcall

local require = _G.require
local setfenv = _G.setfenv
local getfenv = _G.getfenv
local rawset = _G.rawset
local rawget = _G.rawget
local setmetatable = _G.setmetatable
local getmetatable = _G.getmetatable
local unpack = _G.unpack or _G.table.unpack

local ver = "---------xxxx----------dismout-------aaa-111:"
local b_debug = true;

------------------------------------------------------------
-- base
------------------------------------------------------------

local _AllModules = getfenv(1)
local mt = {
	__index = function (t, key)
		-- if (key == "_G") then
		-- 	-- print("99999HHHHAAAA", rawget(t, key),
		-- 	rawget(_AllModules, key), rawget(_G, key));
		-- end
		return rawget(t, key)
		 or rawget(_AllModules, key)
		 or rawget(_G, key);
	end
}

local _M = {}
setmetatable(_M, mt)
setfenv(1, _M)


_M._error_proc = function (...)
	print(ver, "[error]", ...)
end

local import = function (path)
  local env0 = getfenv(0)
  setfenv(0, _M)
	xpcall(function ()
  	package.loaded[path] = nil
	  require(path)
	end, _M._error_proc) -- xpcall end
	setfenv(0, env0)
end

local function _protect_func(f)
	return function (...)
		local args = {...}
		local ret = {}
		xpcall(function ()
			ret = {f(unpack(args))}
		end, _M._error_proc)
		return unpack(ret)
	end
end

_M._f = _protect_func;
_M.import = import
_M._M = _M

if (b_debug) then
	rawset(_G, "_M", _M)
	rawset(_G, "_AllModules", _AllModules)
end

------------------------------------------------------------
-- main
------------------------------------------------------------

require("tprint")

_M.import("dismount");


print(ver, "init ok.................")