# Write a function that takes an (unsigned) integer as input, and returns the number of bits that are equal to one in the binary representation of that number.
#
#     Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

def count_bits(n)
  result = []
  count = 0
  number = n
  while n>=1
    result.push n%2
    n = n/2
  end
  result.each do |number|
    if number == 1
      count += 1
    end
  end
  count
end