# Methods:
# Needs a method that starts each player off with 3 lives
# Needs a method to track lives based on how many questions they have gotten right or wrong. 

#Player class is going to be used to establish player instance, using name inputted and lives will
# automatically be set to three. 

class Player
  def initialize(name)
    @name = name
    @lives = 3
  end
  # def check_answer(answer) #This should probably go in the game class! 
  #   if answer == false
  #     @lives - 1
  #   end
end

# Will need a method to track player lives subtracting etc

# jordan = Player.new('Jordan')
# # In order to see details about newly created instance, use p
# p jordan

