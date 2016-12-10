textures = { }
function loadTextures( dir )	
	local dir = dir or ""
	print( "[texturehandler] Beginning texture load in \"/"..dir.."\"..." )
	for i, v in pairs( love.filesystem.getDirectoryItems( "assets/img/") ) do
		if love.filesystem.isDirectory( "assets/img/"..dir.."/"..v ) then
			if dir == "" then
				loadTextures( v )
			else
				loadTextures( dir.."/"..v )
			end
		elseif love.filesystem.isFile( "assets/img/"..dir.."/"..v ) then
			local path = dir.."/"..( v:sub( 1, -5 ) )
			if dir == "" then path = v:sub( 1, -5 ) end
			textures[path] = love.graphics.newImage( "assets/img/"..dir.."/"..v )			
			print( "Loaded \""..dir.."/"..v.."\" successfully into \""..path.."\"" )
		end
	end

end