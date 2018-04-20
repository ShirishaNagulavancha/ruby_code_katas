class GreatestProductOfAdjacentDigits
  def greatest_product
  number = 1234545673456
  numberarr = []
  arr2=[]
  numberarr = number.to_s.split('')
  numberarr2 = numberarr.to_s.to_i
  arr2 = numberarr.uniq
  puts arr2
    end

end

obj = GreatestProductOfAdjacentDigits.new
obj.greatest_product