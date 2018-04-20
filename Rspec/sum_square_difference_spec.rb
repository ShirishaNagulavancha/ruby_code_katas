require 'rspec'
require_relative '../katas/sum_square_difference'

describe 'sum_square_difference' do

  it 'should do give the diference between the sum of the squares of the first n numbers and square of the sum' do

    expect(sum_square_difference(10)).to eq 2640
    expect(sum_square_difference(100)).to eq 25164150

  end
end