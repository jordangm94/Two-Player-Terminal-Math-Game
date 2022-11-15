require './player'
require './question'

# Game class that will the majority of logic for the game
class Game
  
  #Start a method called play, this will be what houses our game loop.
  def play
    #Upon beginning game loop, call method to create player names and instances for player1 and player2
    self.create_name_and_player_instance

    # Set the current_player to player 1 at the beginning of the game
    
    @current_player = @player1
    
    #Start a loop that ends when one of the players loses all of their lives, this is the main game play loop
    while @player1.lives > 0 && @player2.lives > 0 do
      #Call method to ask user a question, receive input, validate input, print a response (right or wrong), and subtract a life if answer was wrong
      self.game_question

      #After user has answered question, display the score
      puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"

      # If both users still have more than 0 lives, game play loop keeps going, if not break out here!
      if  @player1.lives > 0 && @player2.lives > 0
      puts "---New Turn---"

      #Call this method to pass over the play from player 1 to player 2 or vice versa
      # After we have switched players we jump back to the top of the loop and repeat!
      self.determine_next_player
      end
    end
    # Once we have broken out of gameplay loop, that means someone has reached 0 lives, in which now we display winner
    self.display_winner
  end

  # Method that asks players for their names and establishes player instances
  def create_name_and_player_instance

    puts "Player 1, please enter your name"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name)

    puts "Player 2, please enter your name"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name)

    puts "Okay #{@player1.name} and #{@player2.name}, let's begin!"
    #Upon creating player names and instances, increment turn to 1
  end

  #Method to determine the next player or "switch turns" - CANNOT FORGET if and else need to be wrapped with end
  def determine_next_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  # Method for creating a new question instance, asking the question, validating the answer, and adjusting lives
  def game_question
    new_question = Question.new
    new_question.ask_question(@current_player)
    new_question.validate_answer(@current_player)
  end

  # Method that is called once game loop is over and states the winner!

  def display_winner
    puts "---Game Over---"
    if @player1.lives == 0
      puts "Congratulations #{@player2.name}, you are the winner!"
    else
      puts "Congratulations #{@player1.name}, you are the winner!"
    end
  end
end