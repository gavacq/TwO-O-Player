class Player
  attr_accessor :name, :score
  def initialize(name)
    @name = name
  end

  def createQuestion
    puts "new question"
  end

  def getAnswer
    print "> "
    answer = gets.chomp
    puts "answer was : #{answer}"
  end
end