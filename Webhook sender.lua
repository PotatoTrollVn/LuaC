local HttpService = game:GetService("HttpService")

-- Replace with your Discord webhook URL
local webhookUrl = "https://discord.com/api/webhooks/your_webhook_id/your_webhook_token"

-- Function to send a message to Discord webhook
local function sendToDiscord(message)
    local data = {
        ["content"] = message,
        ["username"] = "Roblox Bot",  -- Optional: Custom username
        ["avatar_url"] = "https://example.com/avatar.png"  -- Optional: Custom avatar
    }

    local headers = {
        ["Content-Type"] = "application/json"
    }

    local success, response = pcall(function()
        return HttpService:PostAsync(webhookUrl, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson, false, headers)
    end)

    if success then
        print("Message sent to Discord successfully!")
    else
        warn("Failed to send message to Discord: " .. response)
    end
end

-- Example usage
sendToDiscord("Hello from Roblox!")
