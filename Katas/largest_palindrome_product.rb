# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#     Find the largest palindrome made from the product of two 3-digit numbers
class LargestPalindromeProduct

  def largest_palindrome_product
    # start = (10**number_of_digits)-1
    # last = (10**(number_of_digits-1)+1)
    arr1 = (101..999).to_a
    arr2 =  (101..999).to_a
    product = 0
    first_number = arr1.reverse
    second_number = arr2.reverse
    largest_palindrome = 0
    first_number.each do |first|
      second_number.each do |second|
        product = first*second
        if is_palindrome?(product) && largest_palindrome <= product
          largest_palindrome = product
          break
        end
      end

    end
    puts largest_palindrome
  end

  def is_palindrome?(number)
    n = number;
    rev = 0;
    while (number > 0)
      dig = number % 10
      rev = rev * 10 + dig
      number = number / 10
    end
    if n == rev
      true
    else
      false
    end
  end
end


obj = LargestPalindromeProduct.new
obj.largest_palindrome_product