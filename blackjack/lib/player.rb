class Player
  attr_accessor :deck, :name, :score, :shoe

  def initialize
     @score = 0
  end

  def deal
    deck.deal
  end
end
