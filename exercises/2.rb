# To run this code, be sure your current working directory
# is the same as where this file is located.
# ruby 2.rb

# EXERCISE
# If the numbers add up to 7 or 11, write a message that reads
# "YOU WIN!", if they add up to 2, 3, or 12, write a message
# that reads "YOU LOSE!", otherwise, write a message that
# reads "THE POINT IS {number}"

# HINTS
# We can specify multiple conditions with || (OR) and && (AND)
# if dinner == "tacos" || dinner == "pizza"

d1 = rand(1...6)
d2 = rand(1...6)
rt = d1+d2

puts "Your first roll is #{d1}"
puts "Your second roll is #{d2}"
puts "Your total is #{rt}"

if rt == 7 || rt == 11
    puts "YOU WIN!"
elsif rt == 2 || rt == 3 || rt == 12
    puts "YOU LOSE!"
else
    puts "THE POINT IS #{rt}"
end

