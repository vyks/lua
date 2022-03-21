--[[
This is the example code that could be implemented into your script
pretaining to the whitelist system known as "Yaris".
https://yaris.rocks
https://discord.gg/yaris
]]--

-- Information --
local private_key = "" -- Your private key

local info = http_request({
    Url = 'https://yaris.rocks/api/v1/',
    Method = 'GET',
    Headers = {
        ["yaris-authentication"] = private_key
    }
})
print("\n"..info.Body)

-- Blacklist -> Whitelist --
local HttpService = game:GetService("HttpService")

local private_key = "" -- Your private key

local tag_username = "" -- Can be "tag" or "username"
local TU_info = "" -- The wanted username or tag

local whitelist = http_request({
    Url = 'https://yaris.rocks/api/v1/whitelist',
    Method = 'POST',
    Headers = {
        ["yaris-authentication"] = private_key,
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode({
        [tag_username] = TU_info
    })
})
print("\n"..whitelist.Body)

-- Whitelist -> Blacklist --
local HttpService = game:GetService("HttpService")

local private_key = "" -- Your private key

local tag_username = "" -- Can be "tag" or "username"
local TU_info = "" -- The wanted username or tag
local reason = "" -- Reason for blacklist

local blacklist = http_request({
    Url = 'https://yaris.rocks/api/v1/blacklist',
    Method = 'POST',
    Headers = {
        ["yaris-authentication"] = private_key,
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode({
        [tag_username] = TU_info,
        ["reason"] = reason
    })
})
print("\n"..blacklist.Body)

-- Add --
local HttpService = game:GetService("HttpService")

local private_key = "" -- Your private key

local tag_username = "" -- Can be "tag" or "username".
local TU_info = "" -- The desired username or tag.
local value_password = "" -- Can be "value" for hwid(Hard-ware Identifier) andor ip or "password" for password.
local VP_info = "" -- The needed hwid or ip. The desired password.
local role_info = "" -- The desired role. EX: "Owner", "Developer", etc

local add = http_request({
    Url = 'https://yaris.rocks/api/v1/add',
    Method = 'Post',
    Headers = {
        ["yaris-authentication"] = private_key,
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode({
        [tag_username] = TU_info,
        [value_password] = VP_info,
        ["role"] = role_info
    })
})
print("\n"..add.Body)

-- Remove --
local HttpService = game:GetService("HttpService")

local private_key = "" -- Your private key

local tag_username = "" -- Can be "tag" or "username".
local TU_info = "" -- The desired username or tag.

local remove = http_request({
    Url = 'https://yaris.rocks/api/v1/remove',
    Method = 'Post',
    Headers = {
        ["yaris-authentication"] = private_key,
        ["Content-Type"] = "application/json"
    },
    Body = HttpService:JSONEncode({
        [tag_username] = TU_info
    })
})
print("\n"..remove.Body)
