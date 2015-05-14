class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def display
    puts "~~~~~~~~~"
    puts suit
    puts value
    puts "~~~~~~~~~"
  end

  def actual_value
    case value
    when "J" then 10
    when "Q" then 10
    when "K" then 10
    when "A" then 11
      # puts "A = 1 or 11? (1/11) >> "
      # response = gets.chomp.to_i
      # if response == 1
      #   value = 1
      # else response == 11
      #   value = 11
      # end
    else
      value
    end
  end

end
