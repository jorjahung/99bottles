class Bottles
  attr_accessor :number
  def initialize
    @number = nil
  end

  def song
    verses(99,0)
  end

  def verses(start, stop)
    count = start
    song = []

    while count >= stop
      song << verse(count)
      count -= 1
    end

    song.join("\n")
  end

  def verse(number)
    @number = number
    "#{first_line}\n" + "#{go_to_the_store?}\n"
  end

  private

  def first_line
    "#{number_or_no_more} #{bottle_or_bottles} of beer on the wall, #{number_or_no_more} #{bottle_or_bottles} of beer.".capitalize
  end

  def second_line
    "Take #{one_or_it} down and pass it around, #{number_or_no_more} #{bottle_or_bottles} of beer on the wall."
  end

  def bottle_or_bottles
    number != 1 ? 'bottles' : 'bottle'
  end

  def one_or_it
    number == 0 ? 'it' : 'one'
  end

  def number_or_no_more
    number == 0 ? 'no more' : number
  end

  def go_to_the_store?
    @number -= 1

    if number == -1
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      second_line
    end
  end
end
