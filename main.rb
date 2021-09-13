require './Game'
require './Player'

game = Game.new
i = 0
puts game.running

while game.running
  pp game
  sleep 0.5
  i += 1
  game.gameover if i > 5
end

puts 'gameover'
