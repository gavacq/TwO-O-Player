require './Game'
require './Player'

p1 = Player.new('P1')
p2 = Player.new('P2')
game = Game.new
game.addPlayer(p1)
game.addPlayer(p2)
game.start

until game.winner
  game.askQuestion
  game.getAnswer
end