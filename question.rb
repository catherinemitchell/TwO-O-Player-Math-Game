class Question

  attr_reader :answer

   def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
    
   end

   def ask_question(player)
    pp "#{player}: What does #{@num1} plus #{@num2} equal?"
   end

   def check_answer(player_answer)
    if player_answer == @answer
     return true
    else 
      return false
   end
  end
end
