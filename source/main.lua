import "CoreLibs/sprites"
import "CoreLibs/graphics"

-- don't know why these are needed... yet :)
playdate.display.setRefreshRate(20)

local gfx = playdate.graphics
local spritelib = gfx.sprite
local screenWidth = playdate.display.getWidth()
local screenHeight = playdate.display.getHeight()

gfx.setBackgroundColor(gfx.kColorWhite)
gfx.setColor(gfx.kColorWhite)
gfx.fillRect(0, 0, screenWidth, screenHeight)

-- show the image
local img = spritelib.new()
img:setImage(gfx.image.new('images/ducky'))
img:moveTo(150, 150)
img:addSprite()

function playdate.update()
    -- Call the functions below in playdate.update() to draw sprites and keep
    -- timers updated. (We aren't using timers in this example, but in most
    -- average-complexity games, you will.)

    gfx.sprite.update()
    --playdate.timer.updateTimers()
end