require "love.graphics"

local image_w = 876 --This info can be accessed with a Löve2D call
local image_h = 202 --      after the image has been loaded. I'm creating these for readability

return {
  serialization_version = 1.0, -- The version of this serialization process
  sprite_sheet = "assets/ld.png", -- The path to the spritesheet
  sprite_name = "devitt", -- The name of the sprite
  frame_duration = 0.50,

  animations_names = {
       "walk"
   },

   animations = {
        walk = {
        --  love.graphics.newQuad( X, Y, Width, Height, Image_W, Image_H)
           love.graphics.newQuad( 1, 1, 200, 320, image_w, image_h ),
           love.graphics.newQuad( 122, 1, 200, 320, image_w, image_h ),
           love.graphics.newQuad( 244, 1, 200, 320, image_w, image_h ),
           love.graphics.newQuad( 366, 1, 200, 320, image_w, image_h ),
           love.graphics.newQuad( 488, 1, 200, 320, image_w, image_h ),
           love.graphics.newQuad( 610, 1, 200, 320, image_w, image_h ),
           love.graphics.newQuad( 732, 1, 200, 320, image_w, image_h ),
           love.graphics.newQuad( 854, 1, 200, 320, image_w, image_h ),
        }
    }
}
