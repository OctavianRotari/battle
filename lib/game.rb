class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player = [player_1, player_2]
  end

  def player_1
    @player.first
  end

  def player_2
    @player.last
  end

  def attack(player)
    player.receive_attack
  end

end
