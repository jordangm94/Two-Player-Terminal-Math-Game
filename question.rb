# Important note we must have all things within methods within class,
# that way they can actually be called upon!

class Question
#At the beginning of the question, generate two random numbers. 

  def initialize
    @random_number_1 = rand(20)
    @random_number_2 = rand(20)
    @answer = @random_number_1 + @random_number_2
  end

  # Ask the user what is the answer to random_number_1 + random_number_2
  #Note: Random_number_1 and 2 here must have @ infront of them in order for them to be accessible across
  # all methods within class, if not it will not work. 
  def ask_question(current_player)
    puts "#{current_player.name}: What is #{@random_number_1} + #{@random_number_2}?"
  end
  
  # I/O - Questin class will take in user input after asking question!
  def validate_answer(current_player)
    player_answer = gets.chomp
    # Function to check user input and validate if it is correct or not
    if player_answer == @answer
      puts "#{current_player.name}: Excellent you are correct!"
    else
      puts "#{current_player.name}: Hmmm...not quite the right answer!"
      current_player.lose_lives
      # Here we will subtract from player lives!
    end
  end
end

# Test calls to ensure class and methods are working, these are calls we will have to use in Game
# new_question = Question.new
# new_question.ask_question
# new_question.validate_answer
