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
      puts "______________________________________________________________________"
      puts "#{@player.name} score > #{@player.score}"
      puts player_card_one.display
      puts player_card_two.display
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "#{@dealer.name} score > #{@dealer.score}"
      puts dealer_card_one.display
      # puts dealer_card_two.display #hiding for sake of game
      @player_value = 0
      @dealer_value = 0
      @player_value = player_card_one.actual_value + player_card_two.actual_value
      @dealer_value = dealer_card_one.actual_value + dealer_card_two.actual_value
      puts @player_value, @dealer_value

    if @dealer_value == 21
        puts "House Wins"
        @dealer.score += 1
        puts "Dealer: #{@dealer.score}, Player: #{@player.score}"
        play_again
        break if @response != 'y'
    end
    if @player_value == 21
        puts "Blackjack! You win!"
        @player.score += 1
        puts "Dealer: #{@dealer.score}, Player: #{@player.score}"
        play_again
        break if @response != 'y'
    end
        while @player_value < 21
          puts "\nHit me? (y/n) >> "
          response = gets.chomp
          if response == 'y'
            player_card_three = @shoe.deal
            puts player_card_three.display
            @player_value += player_card_three.actual_value
            puts @player_value
          end
          break if response != 'y'
        end
        if @player_value > 21
          `say "you lose"`
        end
          play_again
        break if @response != 'y'
    end
  end
    def play_again
          eval_hand(@player_value, @dealer_value)
          puts "Play again? (y/n) >> "
          @response = gets.chomp
    end

    def eval_hand(player_total_value, dealer_total_value)
        if player_total_value > 21
          puts "Player one busted, House wins."
          @dealer.score += 1
        end
        if player_total_value > dealer_total_value
          puts "Player wins with #{@player_value}!"
          @player.score += 1
        else
          puts "Dealer wins this round with #{@dealer_value}"
          @dealer.score += 1
        end

    end
end
