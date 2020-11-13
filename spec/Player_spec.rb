require 'player'

describe Player do
  subject(:james) { Player.new('james') }
  subject(:jack) { Player.new('jack') }

  describe 'initialize' do
    it 'initiates an new instance of Player with a name' do
      expect(james.name).to eq 'james'
    end
    it 'gives a new player a default Hit points' do
      expect(james.hit_points).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the other player' do
      expect(james).to receive(:reduce_HP)
      jack.attack(james)
    end
  end


  describe '#reduce_HP' do
    it 'reduces HP by 10 points' do
      expect { james.attack(jack) }.to change { jack.hit_points }.by -10
    end
  end



end
