def always_going_to_print(user_number)
  puts "Always gonna print: " + ((((user_number + 5) * 2 - 4) / 2 ) - user_number).to_s
end

puts "Give me a number... "
user_number = gets.to_i

always_going_to_print(user_number)
