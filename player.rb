# Player class used to establish player instance. It initializes instance with a name, passed by user, and
# provides player with 3 lives. Also handles subtracting lives, called from question class validate method,
# if user has gotten question wrong. 

class Player
  attr_reader :lives, :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_lives
    @lives -= 1
  end
end