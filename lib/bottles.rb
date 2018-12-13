class Bottles
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
    "#{first_line(number)}\n" + "#{go_to_the_store?(number - 1)}\n"
  end

  private

  def first_line(number)
    "#{number_or_no_more(number)} #{bottle_or_bottles(number)} of beer on the wall, #{number_or_no_more(number)} #{bottle_or_bottles(number)} of beer.".capitalize
  end

  def second_line(number)
    "Take #{one_or_it(number)} down and pass it around, #{number_or_no_more(number)} #{bottle_or_bottles(number)} of beer on the wall."
  end

  def bottle_or_bottles(number)
    number != 1 ? 'bottles' : 'bottle'
  end

  def one_or_it(number)
    number == 0 ? 'it' : 'one'
  end

  def number_or_no_more(number)
    number == 0 ? 'no more' : number
  end

  def go_to_the_store?(number)
    if number == -1
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      second_line(number)
    end
  end
end
