class BeerSong
	def verse (nb)
		if nb>1
			"#{nb} bottles of beer on the wall, #{nb} bottles of beer.\nTake one down and pass it around, #{nb-1} bottles of beer on the wall.\n"
		else
			"3 bottles of beer on the wall, 3 bottles of beer.\nTake one down and pass it around, 2 bottles of beer on the wall.\n"
		end

	end
end