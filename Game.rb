class Game
  attr_accessor :running

  def initialize
    @running = true
  end

  def gameover
    @running = false
  end
end
