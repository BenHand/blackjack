class Deck

  def initialize
    @cards = Array.new
      suits = [:hearts, :diamonds, :spades, :clubs]
      suits.each do |suit|
        (2..10).each do |value|
          @cards << Card.new(suit, value)
        end
        @cards << Card.new(suit, "J") #J
        @cards << Card.new(suit, "Q") #Q
        @cards << Card.new(suit, "K") #K
        @cards << Card.new(suit, "A") #A
      end
    @cards = @cards.shuffle
  end

  def deal
    @cards.pop
  end

  def count
    @cards.count
  end
end
