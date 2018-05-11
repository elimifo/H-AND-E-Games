local composer = require( "composer" )

local scene = composer.newScene()

-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------




-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

-- create()
function scene:create( event )

    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen

    -- Create a tap counter (mechaincal prototype only)
    local tapCount = 1

    local tapText = display.newText( tapCount, display.contentCenterX, 20, native.systemFont, 40 )
    tapText:setFillColor( 0, 0, 0 )
    sceneGroup:insert( tapText )

    -- Create  grow plant button

-- on touch make image
-- sheets

local objectSheet = graphics.newImageSheet( "animation/gamesheet_plant1.png", sheetOptions )

local sheetOptions =
{
width = 4092,
height = 2893,
    numFrames = 4
    sheetContentHeight = 8184,
    sheetContentWidth = 5786
     }

local frame1 = display.newImage( sheet, 1 )
local frame2 = display.newImage( sheet, 2 )
local frame2 = display.newImage( sheet, 3 )
local frame2 = display.newImage( sheet, 4 )

-- make the 2 grow buttons


--plant 2

local group = display.newGroup()
-- make a rounded rectangle
local myRoundedRect = display.newRoundedRect( 60, 60, 50, 50, 12 )
myRoundedRect.strokeWidth = 3
myRoundedRect:setFillColor( 0.5 )
myRoundedRect:setStrokeColor( 1, 0, 0 )
-- add rounded rect to group
group:insert( myRoundedRect )

--text

local myButtonText = display.newText( "plant 1", 60, 60, native.systemFont, 16 )
myButtonText:setFillColor( 1, 0, 0 )
-- add text to group
group:insert( myButtonText )
-- add the group to the sceneGroup
sceneGroup:insert( group )

--plant 1


local group = display.newGroup()

-- make a rounded ractangle

local myRoundedRect = display.newRoundedRect( 160, 460, 250, 50, 12 )
myRoundedRect.strokeWidth = 3
myRoundedRect:setFillColor( 0.5 )
myRoundedRect:setStrokeColor( 1, 0, 0 )
-- add rounded rect to group
group:insert( myRoundedRect )

--text
local myButtonText = display.newText( "plant 2)", 160, 460, native.systemFont, 16 )
myButtonText:setFillColor( 1, 0, 0 )
-- add text to group
group:insert( myButtonText )
-- add the group to the sceneGroup
sceneGroup:insert( group )

--function (grow plant)

function buttonFunction (event)
local frame1 = display.newImage( sheet, 1 )



group:addEventListener( "tap", buttonFunction )


end


    -- create return to skip to end button (WON'T be in the final game, this is just for testing the composer flow)
    -- create a group
    local group = display.newGroup()
    -- make a rounded ractangle
    local myRoundedRect = display.newRoundedRect( 160, 460, 250, 50, 12 )
    myRoundedRect.strokeWidth = 3
    myRoundedRect:setFillColor( 0.5 )
    myRoundedRect:setStrokeColor( 1, 0, 0 )
    -- add rounded rect to group
    group:insert( myRoundedRect )

    -- create text on top of button
    local myButtonText = display.newText( "Skip to end (Development Only)", 160, 460, native.systemFont, 16 )
    myButtonText:setFillColor( 1, 0, 0 )
    -- add text to group
    group:insert( myButtonText )
    -- add the group to the sceneGroup
    sceneGroup:insert( group )

    -- create button function
    function buttonFunction (event)
      -- create the transition effects
      local options = {
          effect = "fade",
          time = 500,
          params = {
          }
      }
      composer.gotoScene( "endgame", options )
    end
    -- attach this function to the button
    group:addEventListener( "tap", buttonFunction )
end


-- show()
function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen

    end
end


-- hide()
function scene:hide( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)

    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen

    end
end


-- destroy()
function scene:destroy( event )

    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view

end


-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------

return scene
