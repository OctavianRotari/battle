require 'game'

describe Game do

  subject(:game){ described_class.new(player_1, player_2) }
  let(:player_1){ double :player }
  let(:player_2){ double :player }

  describe '#attack' do
    it 'player 1 attacks player 2 and reduces HP by 10' do
      expect(player_1).to receive(:receive_attack)
      game.attack(player_1)
    end
  end

  describe '#player_1' do
    it "retrieves the player_1" do
      expect(game.player_1).to eq(player_1)
    end
  end

  describe '#player_2' do
    it "retrieves the player_2" do
      expect(game.player_2).to eq(player_2)
    end
  end
end
