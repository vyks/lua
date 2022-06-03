local chunk = '0,107,0'
print('\n\nSearching '..chunk..'...\n')
for i, v in pairs(game:GetService("Workspace").Chunks[chunk]:GetChildren()) do
    print(v.Name)
end
print('\n\nSearch Complete!')
