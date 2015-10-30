require 'player'

describe Player do
  subject(:player_one) { described_class.new('Raphael') }
  subject(:player_two) { described_class.new('Leonardo') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(player_one.name).to eq 'Raphael'
    end
  end

  describe '#hitpoints' do
    it 'shows the hitpoints of the player' do
      expect(player_one.hitpoints).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'player 1 attacks player 2 and reduces HP by 10' do
      expect{player_one.attack player_two}.to change{player_two.hitpoints}.by(-10)
    end
  end
end
