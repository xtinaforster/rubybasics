#final exercises
=begin

#1
x = [1,2,3,4,5]
x.each do |a|
  a + 1
end
#this returns just the array, each will always return (in an array) that array it was called on 



#2
#Write a while loop that takes input from the user, performs an action, and only stops when the user types "STOP". Each loop can get info from the user.

#what i did 
puts "Give me a number"
x = gets.chomp.to_i
while x < 20 do
    puts x * 2
    puts "Do you want to do that again"
    answer = gets.chomp
    if answer == "STOP"
    break
  end
end

#Solution given 
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end




#exercise 3

#write a method that counts down to zero using recursion 
#mysolution
def countdown(number)
  puts number
  if number > 0
    countdown(number -1)
  end
end
countdown(-3)

#Given Solution
def count_to_zero(number)
  if number <= 0
    puts number
  else
    puts number
    count_to_zero(number-1)
  end
end

count_to_zero(10)
count_to_zero(20)
count_to_zero(-3)

=end

