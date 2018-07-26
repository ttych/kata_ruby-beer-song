# BeerSong lyrics as Code
class BeerSong
  VERSE_DEFAULT = '%<id>s of beer on the wall,' \
                  " %<id>s of beer.\n" \
                  'Take one down and pass it around,' \
                  " %<next_id>s of beer on the wall.\n".freeze

  VERSE_LAST = '%<id>s of beer on the wall,' \
               " %<id>s of beer.\n" \
               'Take it down and pass it around,' \
               " no more bottles of beer on the wall.\n".freeze

  VERSE_RESET = 'No more bottles of beer on the wall,' \
                " no more bottles of beer.\n" \
                'Go to the store and buy some more,' \
                " 99 bottles of beer on the wall.\n".freeze

  BOTTLE = 'bottle'.freeze

  def verse(id)
    verse = if id.zero?
              VERSE_RESET
            elsif id == 1
              VERSE_LAST
            else
              VERSE_DEFAULT
            end
    format(verse, id: _n_bottle_s(id),
                  next_id: _n_bottle_s(id - 1))
  end

  private

  def _n_bottle_s(id)
    return "#{id} #{BOTTLE}" if id < 2
    "#{id} #{BOTTLE}s"
  end
end
