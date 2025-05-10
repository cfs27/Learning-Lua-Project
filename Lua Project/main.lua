-- attempting to make a simple circle that moves with WASD

local x, y = 400, 300 -- inital position
local speed = 950  -- pixels per sec
local radius = 20

function love.load()
    love.window.setMode(0, 0, {fullscreen = true})
end

function love.keypressed(key)
    if key == "f11" then
        local isFullscreen = love.window.getFullscreen()
        love.window.setFullscreen(not isFullscreen)
    end
end

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
    love.graphics.circle("fill", x, y, 20) -- the circle is filled in with a radius of 27 
end