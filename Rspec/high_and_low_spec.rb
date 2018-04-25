require 'rspec'
require_relative '../Katas/high_and_low'

describe " return High and Low in an array" do
  it "should return maximum and minimum values in an array" do
    expect(high_and_low("1 2 3 4 5")).to eq "5 1"
  end
  it "should return maximum and minimum values in an array which contanins negative values" do
    expect(high_and_low("1 2 -3 4 5")).to eq "5 -3"
    expect(high_and_low("1 9 3 4 -5")).to eq "9 -5"
  end
  it "should print an error message if input string is empty" do
    expect(high_and_low(" ")).to eq "There will always be at least one number in the input string"
  end
  it "should return same number as maximum and minimum if array contains only one element" do
    expect(high_and_low("9")).to eq "9 9"
  end

end