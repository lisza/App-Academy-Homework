# Write a function sum_to(n) that uses recursion to calculate the sum
# from 1 to n (inclusive of n).
def sum_to(n)
  # if n < 2
  #   1
  # else
  #   n + sum_to(n-1)
  # end
  return 1 if n < 2
  n + sum_to(n - 1)
end

# Test Cases
sum_to(5)  # => returns 15
sum_to(1)  # => returns 1
sum_to(9)  # => returns 45
sum_to(-8)  # => returns nil

# Write a function add_numbers(nums_array) that takes in an array of
# Fixnums and returns the sum of those numbers. Write this method
# recursively.
def add_numbers(nums_array)
  return nums_array[0] if nums_array.length < 2
  nums_array[0] + add_numbers(nums_array[1..-1])
end

# Test Cases
add_numbers([1,2,3,4]) # => returns 10
add_numbers([3]) # => returns 3
add_numbers([-80,34,7]) # => returns -39
add_numbers([]) # => returns nil

# Let's write a method that will solve Gamma Function recursively.
# The Gamma Function is defined Γ(n) = (n-1)!.
def gamma_fnc(n)
  return 1 if n < 2
  (n-1) * gamma_fnc(n-1)
end

# Test Cases
gamma_fnc(0)  # => returns nil
gamma_fnc(1)  # => returns 1
gamma_fnc(4)  # => returns 6
gamma_fnc(8)  # => returns 5040

# Write a function ice_cream_shop(flavors, favorite) that takes in an
# array of ice cream flavors available at the ice cream shop, as well
# as the user's favorite ice cream flavor. Recursively find out whether
# or not the shop offers their favorite flavor.
def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors[0] == favorite
  ice_cream_shop(flavors[1..-1], favorite)
end

# Test Cases
ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
ice_cream_shop([], 'honey lavender')  # => returns false

# Write a function reverse(string) that takes in a string and returns
# it reversed.
def reverse(string)
  return string if string.length < 2
  string[-1] + reverse(string[0..-2])
end

# Test Cases
reverse("house") # => "esuoh"
reverse("dog") # => "god"
reverse("atom") # => "mota"
reverse("q") # => "q"
reverse("id") # => "di"
reverse("") # => ""

def quicksort(arr)
  return arr if arr.length < 2
  pivot = arr.first
  left = arr[1..-1].select { |el| el < pivot}
  right = arr[1..-1].select { |el| el >= pivot}
  quicksort(left) + [pivot] + quicksort(right)
end
