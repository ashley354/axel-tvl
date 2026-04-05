function expandHitbox(hitbox)
    if hitbox:IsA('Hitbox') and hitbox.Name == 'Hitbox' then
        hitbox.CanCollide = false  -- Disable collision
        -- Additional logic based on your requirements
    end
end

-- Additional AXEL TVL script functionality can be added here.

-- Invoking example
local hitbox = Instance.new('Hitbox')
expandHitbox(hitbox)