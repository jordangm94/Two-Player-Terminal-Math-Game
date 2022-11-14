require './player'

# I/O - This class should POSSIBLY state whose turn it is. 
# NEED: Two player instances and question, everything will be happening here. 
# I think this class should also manage game loop (whose turn it is)
# Methods:
# Needs a method to start the game and assign which player can start
# Needs a method to method to control turn, or in other words trigger a new question to the next player in line.
# Needs a method to subtract life from player if they get question wrong
# Needs a method to print score /lives once player submits answer at end end of turn. 

class Game

  # Start off by asking players for their names and establishing player instances
  def create_name_and_player_instance

    puts "Player 1, please enter your name"
    @player1_name = gets.chomp
    player1 = Player.new(@player1_name)

    puts "Player 2, please enter your name"
    @player2_name = gets.chomp
    player2 = Player.new(@player1_name)

    puts "Okay #{@player1_name} and #{@player2_name}, let's begin!"
  end

  # Assign the turn to player one! 
  def turn 
    
  end


end

game = Game.new
game.create_name_and_player_instance

