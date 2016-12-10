--Yet another editor. Woo.

editor = {
	mx = 0,
	my = 0,
	selected = 0,

	speed = 200,

	tilesize = 32,
}

function editor.update( dt )
	if gamestate == "Editor" then

		local x = ( love.mouse.getX( ) + camera.x )
		local y = ( love.mouse.getY( ) + camera.y )
		editor.mx = math.ceil( x / editor.tilesize ) * editor.tilesize - editor.tilesize
		editor.my = math.ceil( y / editor.tilesize ) * editor.tilesize - editor.tilesize

		if love.keyboard.isDown( "w" ) then
			camera.y = camera.y - editor.speed*dt
		elseif love.keyboard.isDown( "s" ) then
			camera.y = camera.y + editor.speed*dt
		end
		if love.keyboard.isDown( "a" ) then
			camera.x = camera.x - editor.speed*dt
		elseif love.keyboard.isDown( "d" ) then
			camera.x = camera.x + editor.speed*dt
		end

		if love.mouse.isDown(1) then
			
		end

	end
end

function editor.draw()
	if gamestate == "Editor" then

		love.graphics.print("test",0,0)

		love.graphics.setColor( 255, 255, 255 )
		love.graphics.rectangle( "line", editor.mx, editor.my, editor.tilesize, editor.tilesize )

	end
end