class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer)
    @prompt = prompt
    @answer = answer
  end
end

p1 = "What is 2+2? a. 4 b. 3 c. 6"
p2 = "What is 2*2? a. 3 b. 4 c. 6"
p3 = "What is 2^2? a. 6 b. 3 c. 4"

questions = [
  Question.new(p1, "a"),
  Question.new(p2, "b"),
  Question.new(p3, "c")
]

def run_test(questions)
  score = 0
  answer = ""
  for question in questions
    puts question.prompt
    answer = gets.chomp
    if answer == question.answer
      score += 1
    end
  end
  return score
end

puts "Your score is #{run_test(questions)} out of #{questions.length}!"
