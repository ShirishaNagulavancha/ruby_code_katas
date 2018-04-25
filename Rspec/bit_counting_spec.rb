require 'rspec'
require_relative '../Katas/bit_counting'

describe 'Bit Counting' do

  it 'should convert the given number into binary and returns the number of bits that are equal to one' do
    expect(count_bits(0)).to eq 0
    expect(count_bits(4)).to eq 1
    expect(count_bits(7)).to eq 3
    expect(count_bits(9)).to eq 2
    expect(count_bits(500)).to eq 6
  end
end