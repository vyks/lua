print("start")
local HttpService = game:GetService("HttpService")
 
local URL_ASTROS = "https://yaris.rocks/access/?apikey=UFb85mDpckJBXZuG0I3ejO4vqEKagf67"
-- Make the request to our endpoint URL
local response = HttpService:GetAsync(URL_ASTROS)
 
-- Parse the JSON response
local data = HttpService:JSONDecode(response)

print(data)
