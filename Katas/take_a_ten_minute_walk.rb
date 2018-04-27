# You live in the city of Cartesia where all roads are laid out in a perfect grid.
# You arrived ten minutes too early to an appointment, so you decided to take the opportunity to go for a short walk.
# The city provides its citizens with a Walk Generating App on their phones -- everytime you press the button it sends you an array of one-letter strings representing directions to walk (eg. ['n', 's', 'w', 'e']).
# You always walk only a single block in a direction and you know it takes you one minute to traverse one city block, so create a function that will return true if the walk the app gives you will take you exactly ten minutes (you don't want to be early or late!) and will, of course, return you to your starting point.
# Return false otherwise.
#
# Note: you will always receive a valid array containing a random assortment of direction letters ('n', 's', 'e', or 'w' only).
# It will never give you an empty array (that's not a walk, that's standing still!).


def isValidWalk(walk)
  starting_point = [0, 0]
  distance_travelled = [0, 0]
  if walk.size != 10
    false
  else
    walk.each do |direction|
      distance_travelled = move_player(distance_travelled, direction)
    end
    if distance_travelled == starting_point
      true
    else
      false
    end
  end
end

def move_player(position, direction)
  x, y = position
  if direction == 'w'
    x -= 1

  elsif direction == 'e'
    x += 1

  elsif direction == 's'
    y -= 1

  elsif direction == 'n'
    y += 1
  end
  return x, y
end