require 'Rspec'
require_relative '../Katas/splat_method'


describe 'using methods with splat parameters' do

  before(:each) do
    @first = 'Fred'
  end


  it 'will accept arrays of strings' do
    expect(get_full_name( @first, %w(Flintstone Rubble Smith Bedrock YabbaDabbaDoo))).to eq 'Fred YabbaDabbaDoo'
  end

  it 'will handle no splat params being supplied' do
    expect(get_full_name( @first)).to eq 'Fred '
  end

  it 'will accept any number of params as arguments beyond the first one' do
    expect(get_full_name(@first, 'splat', 'allows', 'any', 'number', 'of', 'params', 'but',
                         'Flintstone', 'is', 'what', 'we', 'want')).to eq 'Fred Flintstone'
  end


  it 'will do something else' do
    expect(get_full_name( @first)).to eq 'Fred '
  end

end