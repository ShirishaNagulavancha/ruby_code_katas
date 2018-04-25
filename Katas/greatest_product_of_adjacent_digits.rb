class GreatestProductOfAdjacentDigits
  def greatest_product
  number = 1234545673456
  numberarr = []
  arr2=[]
  numberarr = number.to_s.split('')
  numberarr2 = numberarr.to_s.to_i
  arr2 = numberarr.uniq
  avg = arr2.inject(arr2.inject(0) { |sum, x| sum += x } / arr2.size)
  puts avg
    end

end

obj = GreatestProductOfAdjacentDigits.new
obj.greatest_product