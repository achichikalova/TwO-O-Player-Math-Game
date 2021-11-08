class MathQuiz
  attr_reader :question
  attr_reader :answer

  def initialize
    first_num = rand(100)
    second_num = rand(100)
    @question = "What is #{first_num} + #{second_num}"
    @answer = first_num + second_num
  end
end