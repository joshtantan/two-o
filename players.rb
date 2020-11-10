class Player
  attr_accessor :turn, :lives

  def initialize(turn)
    @lives = 3
    @turn = turn
  end
end
