
def get_full_name(first, *lastnameArray)
     first.to_s+ ' ' + (lastnameArray.flatten.max_by(&:length)).to_s
end


