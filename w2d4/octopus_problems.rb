fish_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

# Find the longest fish in O(n^2) time. Do this by comparing all fish
# lengths to all other fish lengths
def sluggish_octopus(arr)
  biggest_fish = arr.first
  arr.each do |el1|
    arr.each do |el2|
       biggest_fish = el2 if el2.length > el1.length
    end
  end
  biggest_fish
end

# Find the longest fish in O(n log n) time. Hint: You saw a sorting
# algorithm that runs in O(n log n) in the Sorting Demo. Remember that
# Big O is classified by the dominant term.
# Merge sort and quicksort run in O(n log n) time, right?
def dominant_octopus(arr)
  octopus_quicksort(arr).last
end

def octopus_quicksort(arr)
  return arr if arr.count < 2

  pivot = arr.first
  left = arr.select { |el| el.length < pivot.length }
  right = arr.select { |el| el.length > pivot.length }

  octopus_quicksort(left) + [pivot] + octopus_quicksort(right)
end

# Find the longest fish in O(n) time. The octopus can hold on to the
# longest fish that you have found so far while stepping through the
# array only once.
def clever_octopus(arr)
  biggest_fish = arr.first
  arr[1..-1].each do |el|
    biggest_fish = el if el.length > biggest_fish.length
  end
  biggest_fish
end

# Dancing Octopus problems. Return the index of a given direction in the array.
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

# O(n) time
def slow_dance(direction, tiles_array)
  tiles_array.each_with_index do |el, i|
    return i if el == direction
  end
end


# O(1) time
# But it still takes O(n) to create the Hash, right?
def constant_dance(direction, tiles_array)
  tiles_hash = Hash.new

  tiles_array.each_with_index do |el, i|
    tiles_hash[el] = i
  end

  tiles_hash[direction]
end
