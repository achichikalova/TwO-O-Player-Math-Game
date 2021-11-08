class Player
  
  attr_accessor :lives, :turn, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

end