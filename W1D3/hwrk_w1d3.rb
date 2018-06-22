# Recursion Homework

# For tonight's exercises, we are going to write several recursive functions.  Here's how you should approach each problem:
#   1. Read the problem statement to make sure you fully understand the problem
#   2. Identify the base case(s)
#   3. Determine the inductive step
#   4. Write the function
#   5. Run the provided test cases to verify you have a working solution

## Exercise 1 - `sum_to`

# Write a function `sum_to(n)` that uses recursion to calculate the sum from 1 to n (inclusive of n).

# ```ruby
#   # Test Cases
#   sum_to(5)  # => returns 15
#   sum_to(1)  # => returns 1
#   sum_to(9)  # => returns 45
#   sum_to(-8)  # => returns nil
# ```

def sum_to(n)
  return n if n == 1
  n + sum_to(n-1)
end

## Exercise 2 - `add_numbers`

# Write a function `add_numbers(nums_array)` that takes in an array of Fixnums and returns the sum of those numbers.  Write this method recursively.
#
# ```ruby
#   # Test Cases
#   add_numbers([1,2,3,4]) # => returns 10
#   add_numbers([3]) # => returns 3
#   add_numbers([-80,34,7]) # => returns -39
#   add_numbers([]) # => returns nil
# ```

def add_numbers(nums_array)
  #if array has >1 element, then take first element and then ...
  return nums_array.first if nums_array.length <= 1
  nums_array.first + add_numbers(nums_array[1..-1])
end
# ## Exercise 3 - Gamma Function
#
# Let's write a method that will solve Gamma Function recursively.  The Gamma Function is defined `Γ(n) = (n-1)!`.
#
# ```ruby
#   # Test Cases
#   gamma_fnc(0)  # => returns nil
#   gamma_fnc(1)  # => returns 1
#   gamma_fnc(4)  # => returns 6
#   gamma_fnc(8)  # => returns 5040
# ```
def gamma_fnc(number)
  n = number - 1
  def factorial(n)
    return 1 if n <= 1
    n * factorial(n-1)
  end
  factorial(n)
end
# ## Exercise 4 - Ice Cream Shop
#
# Write a function `ice_cream_shop(flavors, favorite)` that takes in an array of ice cream flavors available at the
# ice cream shop, as well as the user's favorite ice cream flavor. Recursively
# find out whether or not the shop offers their favorite flavor.
#
# ```ruby
#   # Test Cases
#   ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
#   ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
#   ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
#   ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
#   ice_cream_shop([], 'honey lavender')  # => returns false
# ```
def ice_cream_shop(flavors, favorite)
  return true if flavors.first == favorite
  ice_cream_shop(flavors[1..-1],favorite) until flavors.first == nil
end
# ## Exercise 5 - Reverse
#
# Write a function `reverse(string)` that takes in a string and returns it reversed.
#
# ```ruby
#   # Test Cases
#   reverse("house") # => "esuoh"
#   reverse("dog") # => "god"
#   reverse("atom") # => "mota"
#   reverse("q") # => "q"
#   reverse("id") # => "di"
#   reverse("") # => ""
# ```
def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string[0..-2])
end

def quick_sort(arr)
  return arr if arr.length <= 1
  pivot_arr = [arr.first]
  left = arr[1..-1].select { |el| el < arr.first }
  right = arr[1..-1].select { |el| el >= arr.first }
  quick_sort(left) + pivot_arr + quick_sort(right)
end
