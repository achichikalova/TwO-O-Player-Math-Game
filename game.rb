class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @player1.turn = true
  end

  # Start the game
  def play
    puts "Welcome to the game! Let's start!"
    while @player1.lives > 0 && @player2.lives > 0
      turn = MathQuiz.new
      @question = turn.question
      @answer = turn.answer
      puts "----- NEW TURN -----"
      if @player1.turn
        puts "Player 1: #{@question}"
      else
        puts "Player 2: #{@question}"
      end
      check
    end
    game_over?
  end

  # Get input from user
  def check
    user_guess = gets.chomp.to_i
    if user_guess == @answer
      puts 'YES! You are correct.'
      if @player1.turn
        @player1.turn = false
        @player2.turn = true
      else 
        @player2.turn = false
        @player1.turn = true
      end
      score
    else
      puts 'Seriously? No!'
      if @player1.turn
        @player1.lives -= 1
        @player1.turn = false
        @player2.turn = true
      else 
        @player2.lives -= 1
        @player2.turn = false
        @player1.turn = true
      end
      score
    end
  end

  # Print the score
  def score
    puts "P1: #{@player1.lives}/3 vs. P2: #{@player2.lives}/3"
  end

  # Check if someone lost all lives
  def game_over?
    @winner = ""
    @left_lives = 0

    if @player1.lives == 0
      @winner = @player2.name
      @left_lives = @player2.lives
      true
    end

    if @player2.lives == 0
      @winner = @player1.name
      @left_lives = @player1.lives
      true
    end

    puts "#{@winner} wins with a score of #{@left_lives}/3"
    puts "-----GAME OVER-----"
    puts "Good Bye!"
  end

end