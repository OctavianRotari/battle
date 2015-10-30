require 'game'

describe Game do

  subject(:game){ described_class.new }
  let(:player){ double :player }

  describe '#attack' do
    it 'player 1 attacks player 2 and reduces HP by 10' do
      expect(player).to receive(:receive_attack)
      game.attack(player)
    end
  end
end
