class Game

   def initialize(player_1, player_2)
     @player_1 = player_1
     @player_2 = player_2
     @current_player = player_1
   end

   def play_game
    @question = Question.new
    
    #ask question
    if @current_player == @player_1
    @question.ask_question("Player 1")
    else
      @question.ask_question("Player 2")
    end
    #get input for question from player
    player_answer = $stdin.gets.chomp.to_i

    #check the answer
    result = @question.check_answer(player_answer)
    #puts result
    #if the answer is correct you output "Yes"
    if result 
      puts "Yes! You are correct"
    else
      puts "Seriously? No!"
      #puts @question.answer
      #if answer is wrong, reduce the current players life
      @current_player.life_lost
    end
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3" 
    puts "----New Turn----"

    if @current_player.lives == 0
      puts "----Game Over---"

      if @player_1.lives == 0 
        puts "Player 2 wins with a score of #{@player_2.lives}/3!"
      else
        puts "Player 1 wins with a score of #{@player_1.lives}/3!"
      end

      return
    end
    #switch players
    @current_player = @current_player == @player_1 ? @player_2 : @player_1
    #puts @current_player.name
    if @current_player.lives > 0
      play_game() 
    end
  end
end

