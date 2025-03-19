# Lua C for Roblox

**Lua C** is a lightweight and efficient Lua script designed for Roblox developers to easily send messages to Discord webhooks. Perfect for notifications, logging, or integrating Roblox games with Discord!

## Features
- **Simple Integration**: Just plug in your Discord webhook URL and start sending messages.
- **Lightweight**: Minimal code, maximum efficiency.
- **Customizable**: Easily extend functionality for advanced use cases.

## Installation
1. Copy the script below into your Roblox game.
2. Replace `your_webhook_id` and `your_webhook_token` with your Discord webhook URL.

```lua
local HttpService = game:GetService("HttpService")

local webhookUrl = "https://discord.com/api/webhooks/your_webhook_id/your_webhook_token"

local function sendToDiscord(message)
    local data = { content = message }
    local success, response = pcall(function()
        HttpService:PostAsync(webhookUrl, HttpService:JSONEncode(data))
    end)
    if success then
        print("Message sent!")
    else
        warn("Failed: " .. response)
    end
end

-- Example
sendToDiscord("Hello from Roblox!")
