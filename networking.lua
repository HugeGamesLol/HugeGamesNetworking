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
Networking.Invoke = function(Remote, ...)
    local R = r(Remote)
    if R then
        syn.set_thread_identity(2)
        Lib.Network.Invoke(R,...)
        syn.set_thread_identity(7)
    else
        return {["Success"]=false,["Error"]="Could Not Find Remote"}
    end
end

Networking.Fire = function(Remote, ...)
    local R = r(Remote)
    if R then
        syn.set_thread_identity(2)
        Lib.Network.Fire(R,...)
        syn.set_thread_identity(7)
    else
        return {["Success"]=false,["Error"]="Could Not Find Remote"}
    end
end

return Networking.Remotes = Remotes
