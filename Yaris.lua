print("start")
local HttpService = game:GetService("HttpService")
 
local URL_ASTROS = "https://yaris.rocks/access/?apikey=YIxphSr2ekwf1U0tvbWH"
-- Make the request to our endpoint URL
local response = HttpService:GetAsync(URL_ASTROS)
 
-- Parse the JSON response
local data = HttpService:JSONDecode(response)

print(data)
