# BeerSong class
class BeerSong
  VERSE = "%s of beer on the wall, %s of beer.\n" \
          "%s, %s of beer on the wall.\n".freeze

  def verse(nb_beer)
    format(VERSE, bottles(nb_beer).capitalize,
                  bottles(nb_beer),
                  action(nb_beer),
                  bottles(nb_beer - 1))
  end

  def verses(nba, nbb)
    nba.downto(nbb)
       .map { |nb_beer| verse(nb_beer) }
       .join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  def bottles(nb_beer)
    nb_beer = 99 if nb_beer < 0
    "#{nb_beer > 0 ? nb_beer : 'no more'} bottle#{nb_beer == 1 ? '' : 's'}"
  end

  def action(nb_beer)
    if nb_beer > 1
      'Take one down and pass it around'
    elsif nb_beer == 1
      'Take it down and pass it around'
    else
      'Go to the store and buy some more'
    end
  end
end

module BookKeeping
  VERSION = 2
end
