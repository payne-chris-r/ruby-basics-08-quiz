# Assessment :: Ruby Basics


# Question 1
# Complete the method `is_of_age?`. It should accept either strings or numbers in its arguments,
# and should return either `true` or `false` based on whether `age` is less than `minimum_age`.

def is_of_age?(age, minimum_age)
  if age < minimum_age
    false
  else
    true
  end
end

puts is_of_age?(20, 21)

# Question 2
# Complete the method `okay_to_drink?`, which should invoke `is_of_age?` from question one.
# The method should return the following string if `is_of_age?` returns `true`:
#   "Come on in."
# However, if `is_of_age?` returns `false`, `okay_to_drink?` should return this string instead:
#   "I'm sorry, <age> isn't old enough to drink. The minimum age is <drinking_age>."
# <age> and <drinking_age> should be replaced with their corresponding values.

# This question will be graded independently of question one.
# Remember: `p`, `print`, and `puts` don't return their arguments.

def okay_to_drink?(age, drinking_age)
  if (is_of_age?(age, drinking_age) == true)
    puts "Come on in."
  else
    puts "I'm sorry, #{age} isn't old enough to dwwink beews. The min age is #{drinking_age}."
  end
end

puts okay_to_drink?(20, 21)
# Question 3
# Complete the method `ac_monitor`
# Its arguments are:
#  - `current_temp`, the current temperature
#  - `ac_working`, a boolean that indicates if the air conditioner is functioning
#  - `desired_temp`, the temperature that the user wants the room to be
#
# If the air conditioner is working and it's too hot in the room (current temperature is above
# desired temperature) `ac_monitor` should return
#   "Turn on the AC."
# If the AC is working, and it's not too hot, it should return
#   "Just right!"
#
# If the AC isn't working and it's too hot, `ac_monitor` should return
#   "Fix the AC now! It's hot!"
# If the AC is non-functional and it's NOT too hot, `ac_monitor` should return
#   "Fix the AC whenever you have the chance. It's cool."

def ac_monitor (current_temp, ac_working, desired_temp)
  if(current_temp < desired_temp)
    if(ac_working)
      "Just right!"
    else
      "Fix the AC whenever."
    end
  else
    if(ac_working)
      "Turn on the AC."
    else
      "Fix the AC now! It's hot!"
    end
  end
end

puts ac_monitor(45, true, 59)

# Question 4 : "The FizzBuzz Strikes Back"
# Define a method called `fizz_buzz_calculator`, which takes one argument, `num`.
# `fizz_buzz_calculator` should:
# - return "fizz" if `num` is evenly divisible by 3
# - return "buzz" if `num` is evenly divisible by 5
# - return "fizzbuzz" if `num` is evenly divisible by both 3 and 5
# - return the value of `num` if `num` isn't divisible by either 3 or 5

def fizz_buzz_calculator(num)
  if(num % 5 == 0)
    if(num % 3 == 0)
      "fizzbuzz"
    else
      "buzz"
    end
  elsif (num % 3 == 0)
    "fizz"
  else
    "#{num}"
  end
end

puts fizz_buzz_calculator(4)

# Question 5 : "Return of the FizzBuzz"
# Let's create a new method called `fizz_buzz` that uses `fizz_buzz_calculator`.
# `fizz_buzz` should take two arguments, `min`, and `max`.
# When called, `fizz_buzz` should go through every number from `min` to `max`
# and print out the result of `fizz_buzz_calculator` for that number.
# This question will be graded independently of question four.

def fizz_buzz(min,max)
  puts (min..max).map { |i| fizz_buzz_calculator(i) }
end

fizz_buzz(0,20)
