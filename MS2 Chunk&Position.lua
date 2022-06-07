local chunk = "%i,%i,%i"
local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position

local function chunkfinder()
    local pos = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    chunkx = math.round(pos.X/60)
    chunkz = math.round(pos.Z/60)

    local fakey = pos.Y/60
    if pos.Y > -30 then
        if pos.Y > 0 then
            fakey = fakey + 1
            chunky = math.abs(fakey)
            chunky = chunky * -1
        else
            fakey = fakey
            chunky = math.abs(fakey)
        end
    else
        fakey = fakey
        chunky = math.abs(fakey)
    end
end
chunkfinder()

print('\n\nCurrent Chunk: '..string.format(chunk,chunkx,chunky,chunkz)..'\nCurrent Position: '..string.format(chunk,pos.X,pos.Y,pos.Z)..'\n\n')
