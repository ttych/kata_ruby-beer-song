# BeerSong class
class BeerSong
  def verse(nb_beer)
    if nb_beer > 2
      "#{nb_beer} bottles of beer on the wall, #{nb_beer} bottles of beer.\n" \
      'Take one down and pass it around, ' \
      "#{nb_beer - 1} bottles of beer on the wall.\n"
    elsif nb_beer == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\n" \
      "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    end
  end
end
