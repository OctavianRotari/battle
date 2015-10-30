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

  describe '#receive_attack' do
    it 'reduces the hp by 10' do
      expect{player_one.receive_attack}.to change{player_one.hitpoints}.by(-10)
    end
  end
end
