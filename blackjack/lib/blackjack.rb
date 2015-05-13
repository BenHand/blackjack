require_relative 'player'
require_relative 'deck'
require_relative 'card'

class Blackjack

  def initialize
    @player_one = Player.new
    @player_two = Player.new
    @player_one.deck = Deck.new
    @player_two.deck = Deck.new
    @player_one.name = "Player"
    @player_two.name = "Dealer"
  end

  def start
    puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "~~~~~~~~~~~~~~~~~~~~BlackJack~~~~~~~~~~~~~~~~~~~~~~~"
    puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

  end
end
