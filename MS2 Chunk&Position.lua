local chunk = "%i,%i,%i"
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

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
chunkfinder()

print('\n\nCurrent Chunk: '..string.format(chunk,chunkx,chunky,chunkz)..'\nCurrent Position: '..string.format(chunk,pos.X,pos.Y,pos.Z)..'\n\n')
