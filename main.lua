bump = require "bump"
tween = require "tween"
require "camera"
require "editor"
require "map"
loadTextures()

require "tile"

gamestate = "Editor"

function love.load()



end



function love.update( dt )

	editor.update( dt )

end



function love.draw()

	camera:set()
	editor.draw()
	camera:unset()

end



function love.mousepressed( x, y, button )

end



function love.mousereleased( x, y )

end



function love.keypressed( key )

end



function love.keyreleased( key )

end



function love.textinput( t )

end