def my_first_method
  puts "This is my first method!"
end

def math_method(num1, num2)
  result = num1 + num2
  puts "#{num1} + #{num2} = " + result.to_s
end

my_first_method
math_method(2, 3)
math_method(4, 5)
math_method(7, 4)
