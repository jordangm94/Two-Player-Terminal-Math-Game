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

  # Start off by asking players for their names and establishing player instances
  def create_name_and_player_instance

    puts "Player 1, please enter your name"
    @player1_name = gets.chomp
    player1 = Player.new(@player1_name)

    puts "Player 2, please enter your name"
    @player2_name = gets.chomp
    player2 = Player.new(@player1_name)

    puts "Okay #{@player1_name} and #{@player2_name}, let's begin!"
    #Upon creating player names and instances, increment turn to 1
    @turn += 1
  end

  #Switch turns method! - CANNOT FORGET if and else need to be wrapped with end
  def switch_turns
    if @turn.even?
      puts "#{@player2_name}: It is your turn"
    else
      puts "#{@player1_name}: It is your turn"
    end
  end

  def question
    new_question = Question.new
    new_question.ask_question
    new_question.validate_answer
  end

  def subtract_a_life 
    
  end


end

game = Game.new
game.create_name_and_player_instance
game.switch_turns
game.question

