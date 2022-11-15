require './player'
require './question'

# I/O - This class should POSSIBLY state whose turn it is. 
# NEED: Two player instances and question, everything will be happening here. 
# I think this class should also manage game loop (whose turn it is)
# Methods:
# Needs a method to start the game and assign which player can start
# Needs a method to method to control turn, or in other words trigger a new question to the next player in line.
# Needs a method to subtract life from player if they get question wrong
# Needs a method to print score /lives once player submits answer at end end of turn. 


class Game
  #Upon starting a new game instance set the turn to 0
  def initialize
    @turn = 0
  end
  
  #Start a method called play 
  def play
    self.create_name_and_player_instance

    #Start a loop that ends when one of the players loses all of their lives

    #current player 

    @current_player = @player1

    while @player1.lives > 0 && @player2.lives > 0 do

      self.game_question

      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"

      puts "---New Turn---"

      self.determine_next_player

      puts @current_player.name
     
     end

     self.display_winner

    #First step of loop, make question for a player and ask player, finally validate their answer

    #In validating answer, check and adjust their lives

    # Switch turns to other player and run the loop again.

    # After loop is done determine winner and output the results to the terminal
  end

  # Start off by asking players for their names and establishing player instances
  def create_name_and_player_instance

    puts "Player 1, please enter your name"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name)

    puts "Player 2, please enter your name"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name)

    puts "Okay #{@player1.name} and #{@player2.name}, let's begin!"
    #Upon creating player names and instances, increment turn to 1
    @turn += 1
  end

  #Switch turns method! - CANNOT FORGET if and else need to be wrapped with end
  def determine_next_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  # This method is responsible for creating a new question instance, asking the question, and validating the answer and incrementing the turn
  def game_question
    new_question = Question.new
    new_question.ask_question(@current_player)
    new_question.validate_answer(@current_player)
    
  end

  def check_and_adjust_lives
    if new_question.validate_answer == "Hmmm...not quite the right answer!"
      puts "IT IS WORKING"
    end
  end

  def display_winner
    puts "---Game Over---"
    if @player1.lives == 0
      puts "Congratulations #{@player2.name}, you are the winner!"
    else
      puts "Congratulations #{@player1.name}, you are the winner!"
    end
  end

end

# game = Game.new
# game.create_name_and_player_instance
# game.switch_turns

# game.question
# game.check_and_adjust_lives
# game.switch_turns

#Start a method called play 