class Bottles
  def initialize
  end

  def verse(start, stop: start - 1)
    <<-VERSE
#{first_line(start)}
#{go_to_the_store?(stop)}
    VERSE
  end

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
