# The sum of the squares of the first ten natural numbers is,
#
#                                                         1**2 + 2**2 + ... + 10**2 = 385
# The square of the sum of the first ten natural numbers is,
#
#                                                        (1 + 2 + ... + 10)**2 = 55**2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#
#     Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

#Solution 1
  def sum_square_difference(number)
    difference = square_of_the_sum(number)- sum_of_the_squares(number)
  end
  def sum_of_the_squares(number)
    sum = (number*(number+1)*((2*number)+1))/6

  end
  def square_of_the_sum(number)
    sum = (number*(number+1))/2
    square_of_sum = sum**2

  end

#Solution 2
# def sum_square_difference(number)
#   difference = square_of_the_sum(number)-sum_of_the_squares(number)
# end
# def sum_of_the_squares(number)
#   sum = 0
#   (1..number).each do |number|
#     sum = sum+(number**2)
#   end
#   sum
# end
# def square_of_the_sum(number)
#   sum = 0
#   square_of_sum = 0
#   (1..number).each do |number|
#     sum = sum + number
#     square_of_sum = sum**2
#   end
#   square_of_sum
# end


