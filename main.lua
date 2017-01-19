local anim8 = require 'anim8'

debug = true

player = { x = 50, y = 50, speed = 150, img = nil, animation = nil }

function love.load(arg)
  player.img = love.graphics.newImage('assets/ld.png')
  local g = anim8.newGrid(200 , 320, player.img:getWidth(), player.img:getHeight())
  player.animation = anim8.newAnimation(g('1-8',1), 0.1)

end

function love.update(dt)
  if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end

  if love.keyboard.isDown('left','a') then
    if player.x > 0 then -- binds us to the map
      player.x = player.x - (player.speed*dt)
    end
  elseif love.keyboard.isDown('right','d') then
    if player.x < (love.graphics.getWidth() - 200) then
      player.x = player.x + (player.speed*dt)
    end
  end


  player.animation:update(dt)
end

function love.draw(dt)
  player.animation:draw(player.img, player.x, player.y)
end


-- Collision detection taken function from http://love2d.org/wiki/BoundingBox.lua
-- Returns true if two boxes overlap, false if they don't
-- x1,y1 are the left-top coords of the first box, while w1,h1 are its width and height
-- x2,y2,w2 & h2 are the same, but for the second box
function CheckCollision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end
