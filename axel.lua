local function expandHitbox(player)
    pcall(function()
        if not player.Character then return end
        if player == LocalPlayer then return end
        
        storeOriginalSizes(player)
        
        for _, part in ipairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") and HITBOX_ORIGINAL_SIZES[part] then
                local originalSize = HITBOX_ORIGINAL_SIZES[part].Size
                part.Size = originalSize * HITBOX_SIZE
                part.CanCollide = false
            end
        end
    end)
end