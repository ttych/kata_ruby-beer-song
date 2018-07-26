require 'book_keeping'

# BeerSong lyrics as Code
class BeerSong
  VERSE = "%<bottles_cap>s of beer on the wall, %<bottles>s of beer.\n" \
          "%<action>s, %<next_bottles>s of beer on the wall.\n".freeze
  VERSE_ACTION_EMPTY = 'Go to the store and buy some more'.freeze
  VERSE_ACTION_TAKE = 'Take %<count>s down and pass it around'.freeze
  BOTTLE = 'bottle'.freeze

  def verse(id)
    format(VERSE,
           bottles_cap: _n_bottle_s(id).capitalize,
           bottles: _n_bottle_s(id),
           action: _action(id),
           next_bottles: _n_bottle_s(id - 1))
  end

  def verses(id_start, id_end)
    id_start.downto(id_end)
            .map { |index| verse(index) }
            .join("\n")
  end

  def lyrics
    verses(99, 0)
  end

  private

  def _n_bottle_s(count)
    count = 99 if count.negative?
    return "no more #{BOTTLE}s" if count.zero?
    "#{count} #{BOTTLE}#{'s' if count > 1}"
  end

  def _action(count)
    return VERSE_ACTION_EMPTY if count.zero?
    format(VERSE_ACTION_TAKE,
           count: count == 1 ? 'it' : 'one')
  end
end
