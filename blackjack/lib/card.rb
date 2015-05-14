class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def display
    puts "~~~~~~~~~~~~~~~~~~~"
    puts suit
    puts value
    puts "~~~~~~~~~~~~~~~~~~~"
  end

  # def display_value
  #   case value
  #   when "J" then 10
  #   when "Q" then 10
  #   when "K" then 10
  #   when "A"
  #     puts "A = 1 or 11? (1/11) >> "
  #     @ace_value = gets.to_i
  #   else
  #     value
  #   end
  # end

end
