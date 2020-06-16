pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
timer = {
	start_time = time()
	, elapsed_time = 0
	, last_time = time()
	, update = function()
				timer.elapsed_time = time() - timer.last_time
				timer.last_time = time()
			end
	, get_total_time = function()
				return time() - timer.start_time
			end
}

function _update60()

	timer.update()

	cls()
	print( 'start time : ' .. timer.start_time )
	print( 'elapsed time : ' .. timer.elapsed_time )
	print( 'last time : ' .. timer.last_time )
	print( 'total time : ' .. timer.get_total_time() )
	print( 'time : ' .. time() )
	
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
