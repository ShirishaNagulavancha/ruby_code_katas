require 'rspec'
require_relative '../Katas/delete_nth_occurance'

describe 'My behaviour' do

  it 'should delete nth occurance' do

    expect(delete_nth([20,37,20,21], 1)).to eq [20,37,21]
    expect(delete_nth([1,1,3,3,7,2,2,2,2], 3)).to eq [1, 1, 3, 3, 7, 2, 2, 2]

  end
end