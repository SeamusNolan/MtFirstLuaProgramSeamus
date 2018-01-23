-- Title: MovingImages
-- Name: Seamus Nolan
-- Course: ICS2O/3C
-- mack the 2 Dog's move 

-- FILL IN YOUR COMMENT HERE
display.setStatusBar(display.HiddenStatusBar)



-- background image with width and height
local backgroundImage = display.newImageRect("Images/Grass.png", 2048, 1536)

-- character image with width and height
local dog1 = display.newImageRect("Images/dog1.png", 200, 200)

-- character image with width and height
local dog2 = display.newImageRect("Images/dog2.png", 200, 200)

local scrollSpeed = 2

local scrollSpeed2 = 4

local dogSound = audio.loadSound ("Sound/DOG.mp3")

local dogSoundChanne1
 
-- set the image to be transparent
dog1.alpha = 1

-- set the image to be transparent
dog2.alpha = 1

-- set the initial x and y position of dog1
dog1.x = 0
dog1.y = display.contentHeight/4

-- set the initial x and y position of dog1
dog2.x = 0
dog2.y = display.contentHeight/2

dogSoundChanne1 = audio.play(dogSound)

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	dog1.x = dog1.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	dog1.alpha = dog1.alpha + 0.01
end

-- MoveShip will be called at program start over and over (30 frames or times per second)
Runtime:addEventListener("enterFrame", MoveShip)

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	dog2.x = dog2.x + scrollSpeed2
	-- change the transparency of the ship every time it moves so that it fades out
	dog2.alpha = dog2.alpha - 0.0001
end

-- MoveShip will be called at program start over and over (30 frames or times per second)
Runtime:addEventListener("enterFrame", MoveShip)