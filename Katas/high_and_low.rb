# return highest and lowest numbers in a given array
# Array should contain atleast on value

def high_and_low(intArr)
  integerArr = intArr.split(' ')
  if integerArr.length >= 1
    highest_number = (integerArr.sort!).last
    lowest_number = (integerArr.sort!).first
    "#{highest_number} #{lowest_number}".to_s
  else
     "There will always be at least one number in the input string"
  end
end


