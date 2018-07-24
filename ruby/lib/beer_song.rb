# BeerSong lyrics as Code
class BeerSong
  VERSE = '%<id>s bottles of beer on the wall,' \
          " %<id>s bottles of beer.\n" \
          'Take one down and pass it around,' \
          " %<next_id>s bottles of beer on the wall.\n".freeze

  def verse(id)
    format(VERSE, id: id, next_id: id - 1)
  end
end
