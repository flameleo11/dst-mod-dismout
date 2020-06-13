import("tprint")

local t = {aaa=111, "bbb"}
tprint(t)

print(pcall, table, getfenv(1), _G)
tprint(io)

print(999, rawget(_G, "GetModConfigData"), GetModConfigData)
