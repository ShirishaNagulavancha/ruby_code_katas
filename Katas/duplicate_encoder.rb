class DuplicateEncoder
  def duplicate_encoder(string)
    charArray = string.split(//)
    charArray.each_index do |index|
      (index+1..charArray.length).each do |value|
      if charArray[index] == charArray[value]
        charArray[index] = ')'
      else
        charArray[index] = '('
      end
      end
      end
    puts charArray.join
  end
end

obj = DuplicateEncoder.new
obj.duplicate_encoder("recede")