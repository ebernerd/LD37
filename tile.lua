-- Tile.lua

local tile = {
	x = 0,
	y = 0,
	name = "",
	layer = "middleground",
}
tile.__index = tile

function tile:new( data )
	local data = data or {}
	local self = setmetatable(data,tile)

	if map.level then
		if map.level[self.layer] then
			map.add(self)
			if gamestate == "Game" then
				--collider information
			end
		end
	end

end

function tile:update( dt )
	if gamestate == "Game" then

		if self.onupdate then self.onupate( dt ) end

	end
end

function tile:draw()

	if gamestate == "Game" then

		if self.texture and textures[self.texture] then
			love.graphics.draw( textures[self.texture], self.x, self.y )
		end

	end

end