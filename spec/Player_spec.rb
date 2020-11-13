require 'player'

describe Player do
  describe 'initialize' do
    it 'initiates an new instance of Player with a name' do
      james = Player.new('james')
      expect(james.name).to eq 'james'
    end
  end
end
