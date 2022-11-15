
class Question

#When new question instance initialized, generate a two random numbers and the answer they equate to. 
#Note: We use @ here to declare instance variables and ensure that these variables are usable across all methods. 
  def initialize
    @random_number_1 = rand(20)
    @random_number_2 = rand(20)
    @answer = @random_number_1 + @random_number_2
  end

  # Ask the user what is the answer to random_number_1 + random_number_2
  # Notice how we passed current_player to this method so that we can address player when asking question
  def ask_question(current_player)
    puts "#{current_player.name}: What is #{@random_number_1} + #{@random_number_2}?"
  end
  
  # Method to take user input, check if it is correct, print the result, and subtract a life if needed. 
  # Note we needed to pass current_player again so we could address user in statement AND subtract life from player instance
  def validate_answer(current_player)
    player_answer = gets.chomp.to_i #Add to_i here to ensure that input is converted to integer.
    if player_answer == @answer
      puts "#{current_player.name}: Excellent you are correct!"
    else
      puts "#{current_player.name}: Hmmm...not quite the right answer!"
      current_player.lose_lives
      # Here we will subtract from player lives!
    end
  end
end
