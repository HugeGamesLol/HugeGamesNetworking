# Huge Games Networking Module
##### Because none of you know how to find remotes smh


**The Module**
```lua
local Networking = loadstring(game:HttpGet("https://raw.githubusercontent.com/HugeGamesLol/HugeGamesNetworking/main/networking.lua"))()
```

**Usage**

- Networking.Invoke() **[Function]**
- Networking.Fire() **[Function]**
- Networking.Remotes **[Table]**


**Example**

```lua
local Networking = loadstring(game:HttpGet("https://raw.githubusercontent.com/HugeGamesLol/HugeGamesNetworking/main/networking.lua"))()
local Coins = Networking.Invoke("Get Coins")
```

**Errors**

If the remote is not found, you will recieve this message
```lua
{["Success"]=false,["Error"]="Could Not Find Remote"}
```

**Final**

Not all remotes are supported Yet.
We will continue to update this list

Please give us Credits in your Scripts xx
- Nyatalie#6965
- https://discord.gg/hugegames
- https://hugegames.io
