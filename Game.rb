class Game
  attr_accessor :winner, :players, :turn, :answer, :currentPlayer

  def initialize
    @winner = nil
    @players = []
  end

  def start
    @currentPlayer = @players[0]
    @turn = 0
    puts '----- GAME START -----'
  end

  def addPlayer(player)
    @players << player
  end

  def switchTurns
    @turn = (@turn + 1) % @players.length
    @currentPlayer = @players[turn]
    puts '----- NEW TURN -----'
  end

  def askQuestion
    num1 = rand(10)
    num2 = rand(10)
    @answer = num1 + num2
    puts "#{@currentPlayer.name}: What does #{num1} + #{num2} equal?"
  end

  def getAnswer
    print '> '
    response = gets.chomp
    if response.to_i == @answer
      puts "#{@currentPlayer.name}: YES! You are correct."
    else
      puts "#{@currentPlayer.name}: Seriously? No!"
      @currentPlayer.score -= 1
    end

    if @currentPlayer.score == 0
      gameover
    else
      puts "#{@players[0].name}: #{@players[0].score}/3 vs #{@players[1].name}: #{@players[1].score}/3"
      switchTurns
    end
  end

  def gameover
    @winner = @players[(@turn + 1) % @players.length]
    puts "#{@winner.name} wins with a score of #{winner.score}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'
  end
end
