require 'Rspec'
require_relative '../katas/blocks'

call_by_using_call = by_using_call('So long, take care', 'and thanks for all the fish') do |how_many_fish|
  result = ''
  fishes = %w(one_fish two_fish red_fish blue_fish)
  how_many_fish.times do |index|
    result += wrap_in_tag('li', fishes[index])
  end
  result
end

call_by_using_yeild = by_using_yield('So long, take care', 'and thanks for all the fish') { |how_many_fish|
  result = ''
  fishes = %w(one_fish two_fish red_fish blue_fish)
  how_many_fish.times do |index|
    result += wrap_in_tag('li', fishes[index])
  end
  result
}

describe 'using call methods on blocks' do
  it 'will return text wrapped in html tags using block calls' do
    expect(call_by_using_call).to include('<h1>So long, take care</h1>')
    expect(call_by_using_call).to include('<ul><li>one_fish</li><li>two_fish</li><li>red_fish</li><li>blue_fish</li></ul>')
    expect(call_by_using_call).to include('<h2>and thanks for all the fish</h2>')
  end

  it 'will return text wrapped in html tags using yields' do
    expect(call_by_using_yeild).to include('<h1>So long, take care</h1>')
    expect(call_by_using_yeild).to include('<ul><li>one_fish</li><li>two_fish</li></ul>')
    expect(call_by_using_yeild).to include('<h2>and thanks for all the fish</h2>')
  end
end
