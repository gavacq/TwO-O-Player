require './Game'
require './Player'

game = Game.new
p1 = Player.new('P1')
pp p1
p2 = Player.new('P2')
pp p2

p1.createQuestion
p1.getAnswer

i = 0
while game.running
  pp game
  sleep 0.5
  i += 1
  game.gameover if i > 5
end

puts 'gameover'
