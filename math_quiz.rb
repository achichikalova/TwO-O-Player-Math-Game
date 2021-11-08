class MathQuiz
  attr_reader :question
  attr_reader :answer

  def initialize
    first_num = rand(100)
    second_num = rand(100)
    @question = "What does #{first_num} plus #{second_num} equal?"
    @answer = first_num + second_num
  end

end