# BeerSong lyrics as Code
class BeerSong
  VERSE = '%<id>s of beer on the wall,' \
          " %<id>s of beer.\n" \
          'Take one down and pass it around,' \
          " %<next_id>s of beer on the wall.\n".freeze
  BOTTLE = 'bottle'.freeze

  def verse(id)
    format(VERSE, id: _n_bottle_s(id),
                  next_id: _n_bottle_s(id - 1))
  end

  private

  def _n_bottle_s(id)
    return "#{id} #{BOTTLE}" if id < 2
    "#{id} #{BOTTLE}s"
  end
end
