class Question
  attr_reader :answer

  def initialize
    a = 1 + rand(20)
    b = 1 + rand(20)
    @answer = a + b
    @prompt = "What does #{a} plus #{b} equal?"
  end
end
