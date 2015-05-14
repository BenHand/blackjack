require_relative 'player.rb'
require_relative 'deck.rb'
require_relative 'card.rb'

class Blackjack

  def initialize
    @player = Player.new
    @dealer = Player.new
    @player.deck = Deck.new
    @dealer.deck = Deck.new
    @player.name = "Player"
    @dealer.name = "Dealer"
  end

  def start
    puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts ">>>>>>>>>>>>>>>>>>>>BlackJack<<<<<<<<<<<<<<<<<<<<<<<"
    puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"

    player_card_one = @player.draw
    player_card_two = @player.draw
    dealer_card_one = @dealer.draw
    dealer_card_two = @dealer.draw

    puts @player.name
    puts player_card_one.display
    puts player_card_two.display
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts @dealer.name
    puts dealer_card_one.display
    # puts dealer_card_two.display #hiding for sake of game

    player_value = player_card_one.value + player_card_two.value
    dealer_value = dealer_card_one.value + dealer_card_two.value
    puts player_value, dealer_value

    if player_value < 21
      puts "\nHit me? (y/n) >> "
      response = gets.chomp
      if response == 'y'
        player_card_three = @player.draw
        puts player_card_three.display
        player_value += player_card_three.value
        puts player_value
      else
      end
    end
  end
end
