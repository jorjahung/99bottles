class Bottles
  def initialize
  end

  def verse(number)
    <<-VERSE
#{first_line(number)}
#{second_line(number - 1)}
    VERSE
  end

  def first_line(number)
    "#{number_or_no_more(number)} #{bottle_or_bottles(number)} of beer on the wall, #{number_or_no_more(number)} #{bottle_or_bottles(number)} of beer."
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
end
