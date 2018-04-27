require 'rspec'
require_relative '../Katas/take_a_ten_minute_walk'

describe 'Take A Ten Minute Walk' do

  it 'should return true if you return back to your starting point' do
    expect(isValidWalk(['n','s','n','s','n','s','n','s','n','s'])).to eq true
    expect(isValidWalk(['e', 'w', 'e', 'w', 'n', 's', 'n', 's', 'e', 'w'])).to eq true
  end
  it 'should return false if given input string length is not equal to 10' do
    expect(isValidWalk(['w','e','w','e','w','e','w','e','w','e','w','e'])).to eq false
    expect(isValidWalk(['w'])).to eq false
  end
  it "should return false if walk does not bring you back to start" do
    expect(isValidWalk(['n','n','n','s','n','s','n','s','n','s'])).to eq false
    expect(isValidWalk(['n', 'w', 'e', 'w', 'n', 's', 'n', 's', 'e', 'w'])).to eq false
  end

end