-- attempting to make a simple circle that moves with WASD

local x, y = 400, 300 -- inital position
local speed = 200  -- pixels per sec

function love.update(dt)
    if love.keyboard.isDown("d") then
        x = x + speed * dt -- move right when holding D
    elseif love.keyboard.isDown("a") then
        x = x - speed * dt -- move left when holding A
    end

    if love.keyboard.isDown("s") then 
        y = y + speed * dt -- move down when holding S
    elseif love.keyboard.isDown("w") then
        y = y - speed * dt -- move up when holding W
    end
end

function love.draw()
    love.graphics.setColor(0.6, 0.1, 0.1)
    love.graphics.circle("fill", x, y, 30) -- the circle is filled in with a radius of 30 
end