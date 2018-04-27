require 'rspec'
require_relative '../katas/error_handling'

describe 'handling errors in a predictable way' do

  standard_error = Proc.new { raise "A standard error has been raised" }
  zero_division_error = Proc.new { |numerator| numerator/0 }
  no_method_error = Proc.new { |an_object| an_object.method_call_that_does_not_exist() }
  regex_error = Proc.new { Regexp.new('?') }

  it 'will catch standard errors' do
    expect(generate_exception(standard_error)).to include('Just a regular old error')
    puts generate_exception(standard_error)
  end

  it 'will catch zero division errors' do
    expect(generate_exception(zero_division_error)).to include('Math is hard')
    puts generate_exception(zero_division_error)
  end

  it 'will catch no method errors' do
    expect(generate_exception(no_method_error, 'strings are objects')).to include('Hard to call what does not exist')
    puts generate_exception(no_method_error, 'strings are objects')
  end

  it 'will catch regular expression errors' do
    expect(generate_exception(regex_error)).to include('That is not any kind of expression I have ever seen')
    puts generate_exception(regex_error)
  end

end