class Deck

  def initialize
    @cards = Array.new
      suits = [:hearts, :diamonds, :spades, :clubs]
      suits.each do |suit|
        (2..10).each do |value|
          @cards << Card.new(suit, value)
        end
        @cards << Card.new(suit, 11)
        @cards << Card.new(suit, 12)
        @cards << Card.new(suit, 13)
        @cards << Card.new(suit, 14)
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
