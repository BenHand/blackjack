require_relative 'player.rb'
require_relative 'deck.rb'
require_relative 'card.rb'

class Blackjack

  def initialize
    @player = Player.new
    @dealer = Player.new
    @shoe = Deck.new
    @player.name = "Player"
    @dealer.name = "Dealer"
  end

  def start
    puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts ">>>>>>>>>>>>>>>>>>>>BlackJack<<<<<<<<<<<<<<<<<<<<<<<"
    puts "    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"
    puts

    loop do
      player_card_one = @shoe.deal
      player_card_two = @shoe.deal
      dealer_card_one = @shoe.deal
      dealer_card_two = @shoe.deal

      puts "#{@player.name} score > #{@player.score}"
      puts player_card_one.display
      puts player_card_two.display
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "#{@dealer.name} score > #{@dealer.score}"
      puts dealer_card_one.display
      # puts dealer_card_two.display #hiding for sake of game
      @player_value = 0
      @dealer_value = 0
      @player_value = player_card_one.value + player_card_two.value
      @dealer_value = dealer_card_one.value + dealer_card_two.value
      puts @player_value, @dealer_value

      # if dealer_value < 21
        while @player_value < 21
          puts "\nHit me? (y/n) >> "
          response = gets.chomp
          if response == 'y'
            player_card_three = @shoe.deal
            puts player_card_three.display
            @player_value += player_card_three.value
            puts @player_value
          end
          break if response != 'y'
        end
        if @player_value > 21
          `say "you lose"`
        end
          # eval_hand(@player_value, @dealer_value)
          puts "Play again? (y/n) >> "
          response = gets.chomp
        break if response != 'y'
    end
    # def eval_hand(player_value, dealer_value)

    #     if player_value > dealer_value
    #       puts "Player wins with #{player_value}!"
    #       @player.score += 1
    #     else
    #       puts "Dealer wins this round with #{dealer_value}"
    #       @dealer.score += 1
    #     end

    # end
  end
end
