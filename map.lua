map = {

	layers = {
		background = love.graphics.newSpriteBatch(5500),
		middleground = love.graphics.newSpriteBatch(5500),
		foreground = love.graphics.newSpriteBatch(5500),
	},

	world = { }
}

tileset = love.graphics.newImage("assets/img/tileset.png")
tileset:setFilter( "nearest", "nearest" )

local textureChart = {
	[1] = { "", "", "", "", "", "", "", "", "", "" },
	[2] = { "", "", "", "", "", "", "", "", "", "" },
	[3] = { "", "", "", "", "", "", "", "", "", "" },
	[4] = { "", "", "", "", "", "", "", "", "", "" },
	[5] = { "", "", "", "", "", "", "", "", "", "" },
	[6] = { "", "", "", "", "", "", "", "", "", "" },
	[7] = { "", "", "", "", "", "", "", "", "", "" },
	[8] = { "", "", "", "", "", "", "", "", "", "" },
	[9] = { "", "", "", "", "", "", "", "", "", "" },
	[10] = { "", "", "", "", "", "", "", "", "", "" },
}

function map.load()
	textureQuads = {}

	for y, b in pairs( textureChart ) do
		for x, k in pairs( b ) do
			textureQuads[ k ] = love.graphics.newQuad( (x-1)*50, (y-1)*50, 50, 50, tileset:getWidth(), tileset:getHeight())
		end
	end

end

local function updateSpriteBatch()
	
	for i, v in pairs( map.layers ) do
		v:clear()
	end
	for i, v in pairs( map.world ) do
		map.layers[ v.layer ]:add( textureQuads[ v.texture ], v.x, v.y, 0, 1, 1 )
	end

end

function map.add( item )
	if item.layer and map.layers[item.layer] then
		table.insert(map.world, item)
	end
end
