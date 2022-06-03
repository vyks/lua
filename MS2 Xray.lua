game.Players.LocalPlayer.Character.HumanoidRootPart.PointLight:Destroy()
print('\n\nDestroyed stupid lighting effect that makes it hard to see!\n')

local chunkx = 0
local chunky = 0
local chunkz = 0

getgenv().active = true
local chunk = "%i,%i,%i"

local function chunkfinder()
    local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

    local fakey = pos.Y/60
    if pos.Y > -30 then
        if pos.Y > 0 then
            fakey = fakey + 1
        else
            fakey = fakey
        end
    else
        fakey = fakey
    end

    chunkx = math.round(pos.X/60)
    chunky = math.abs(fakey)
    chunkz = math.round(pos.Z/60)
end

local function xray()
        while active do
            chunkfinder()
            if chunkx ~= nil or chunky ~= nil or chunkz ~= nil then
                if chunky == -1 then
                    wait()
                else
                    for i, v in pairs(game:GetService("Workspace").Chunks[string.format(chunk,chunkx,chunky,chunkz)]:GetChildren()) do
                        if v.Name == 'hd_stone' then v.Transparency = 0.7
                            elseif v.Name == 'de_stone' then v.Transparency = 0.7
                            elseif v.Name == 'd_stone' then v.Transparency = 0.7 
                            elseif v.Name == 'hde_stone' then v.Transparency = 0.7
                            elseif v.Name == 'dirt' then v.Transparency = 0.7 
                            elseif v.Name == 'stone' then v.Transparency = 0.7 
                            elseif v.Name == 'h_stone' then v.Transparency = 0.7 
                            elseif v.Name == 'm_stone' then v.Transparency = 0.7 
                            elseif v.Name == 'hm_stone' then v.Transparency = 0.7
                            elseif v.Name == 'hh_stone' then v.Transparency = 0.7 
                            elseif v.Name == 'ice' then v.Transparency = 0.7
                            elseif v.Name == 'h_ice' then v.Transparency = 0.7
                        end
                    end
                end
            else
                wait()
            end
        wait()
    end
end
coroutine.wrap(xray)()
