require 'player'

describe 'Player' do
  subject(:pavi) { Player.new('Pavi') }
  subject(:ash) { Player.new('Ash') }

  describe '#name' do
    it 'returns the name' do
      expect(pavi.name).to eq 'Pavi'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(ash.hit_points).to eq 60
    end
  end

  describe '#attack' do
     it 'damages the player' do
       expect(ash).to receive(:receive_damage)
       pavi.attack(ash)
     end
  end

   describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { ash.receive_damage }.to change { ash.hit_points }.by(-10)
    end
   end
end
