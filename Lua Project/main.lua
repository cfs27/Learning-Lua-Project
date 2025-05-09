-- attempting to make a simple circle that moves with WASD

local x, y = 400, 300 -- inital position
local speed = 200  -- pixels per sec
local radius = 27

function love.update(dt)
    local windowWidth = love.graphics.getWidth()
    local windowHeight = love.graphics.getHeight()
-- Window dimensions

-- Movement(now with boundaries at the windowWidth and windowHeight)
    if love.keyboard.isDown("d") then
        x = math.min(x + speed * dt, windowWidth - radius)
    elseif love.keyboard.isDown("a") then
        x = math.max(x - speed * dt, radius)
    end

    if love.keyboard.isDown("s") then 
        y = math.min(y + speed * dt, windowHeight - radius)
    elseif love.keyboard.isDown("w") then
        y = math.max(y - speed * dt, radius)
    end
end

function love.draw()
    love.graphics.setColor(0.6, 0.1, 0.1)
    love.graphics.circle("fill", x, y, 27) -- the circle is filled in with a radius of 27 
end