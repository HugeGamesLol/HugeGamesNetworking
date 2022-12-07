
local Networking = {}

local Lib = require(game.ReplicatedStorage:WaitForChild("Framework"):WaitForChild("Library"))
local Remotes = game.HttpService:JSONDecode(
	game:HttpGet("https://hugegames.io/hugegamesnetworking/"..game.PlaceVersion)
)

local function r(q)
	for i,v in pairs(Remotes) do
		if string.lower(i)==string.lower(q) then
			return v
		end
	end
end
for i,v in pairs({
	"             ] --/ Huge Games Networking \-- [",
	"  ] -- Note, Not all remotes are supported Yet -- [",
	" ] -- discord.gg/hugegames // Nyatalie#6965 -- ["
})do warn(v) end

Networking.Invoke = function(Remote, ...)
	local R = r(Remote)
	if R then
		return Lib.Network.Invoke(R,...)
	else
		return {["Success"]=false,["Error"]="Could Not Find Remote"}
	end
end

Networking.Fire = function(Remote, ...)
	local R = r(Remote)
	if R then
		return Lib.Network.Fire(R,...)
	else
		return {["Success"]=false,["Error"]="Could Not Find Remote"}
	end
end

Networking.Remotes = Remotes

return Networking
