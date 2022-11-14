# Important note we must have all things within methods within class,
# that way they can actually be called upon!

class Question
#At the beginning of the question, generate two random numbers. 

  # Ask the user what is the answer to random_number_1 + random_number_2
  #Note: Random_number_1 and 2 here must have @ infront of them in order for them to be accessible across
  # all methods within class, if not it will not work. 
  def ask_question 
    @random_number_1 = rand(20)
    @random_number_2 = rand(20)
    puts "What is #{@random_number_1} + #{@random_number_2}?"
  end
  
  # I/O - Questin class will take in user input after asking question!
  def validate_answer
    player_answer = gets.chomp
    # Function to check user input and validate if it is correct or not
    if player_answer == @random_number_1 + @random_number_2
      puts "Excellent you are correct!"
    else
      puts "Hmmm...not quite the right answer!"
      # Here we will subtract from player lives!
    end
  end
end

# Test calls to ensure class and methods are working, these are calls we will have to use in Game
new_question = Question.new
new_question.ask_question
new_question.validate_answer
