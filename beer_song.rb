# BeerSong class
class BeerSong
  VERSE = "%s of beer on the wall, %s of beer.\n" \
          "%s, %s of beer on the wall.\n"

  def verse(nb_beer)
    case nb_beer
    when 1..100

      VERSE % [bottles(nb_beer),
               bottles(nb_beer),
               action(nb_beer),
               bottles(nb_beer - 1)]

    # when 2
    #   "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    #   "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    # when 1
    #   "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    #   "Take it down and pass it around, no more bottles of beer on the wall.\n"
    when 0
      "No more bottles of beer on the wall, no more bottles of beer.\n" \
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def verses(nba, nbb)
    verse(nba) + "\n" + verse(nbb)
  end

  def bottles(nb_beer)
    if nb_beer > 0
      "#{nb_beer} bottle#{nb_beer > 1 ? 's' : ''}"
    else
      'no more bottles'
    end
  end

  def action(nb_beer)
    if nb_beer > 1
      'Take one down and pass it around'
    else
      'Take it down and pass it around'
    end
  end
end
