require 'forwardable'

class Game
extend Forwardable

  def_delegator :player_1, :name, :player1_name
  def_delegator :player_2, :name, :player2_name
  def_delegator :player_1, :hitpoints, :player1_hitpoints
  def_delegator :player_2, :hitpoints, :player2_hitpoints

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
