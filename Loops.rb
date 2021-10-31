#loop-example not very practical
=begin
loop do
  puts "This will keep printing until you hit ctrl + c"
end



#Loop example thats useful
i = 0
loop do
  i = i + 1
  puts i
  break    #this causes execution to exit the loop 
end



#conditional_loop
i = 0
loop do
  i = i + 2
  puts i 
  if (i == 10)
    break
  end
end

#next_loop

i = 0
loop do
  i = i + 2
  if i == 4
    next        # skip rest of the code in this iteration
  end
  puts i
  if i == 10
    break
  end
end

loop do
  x = 42
  break
end
puts x     # Raises an error -- x is not in scope outside of the block

x = 42
loop do
  puts x   # Prints 42 -- x is in scope inside the block
  x = 2    # We can even change the value of x
  break
end
puts x     # 2 -- the value was changed



#Countdown Exercise
x = gets.chomp.to_i
while x >= 0
  puts x
  x = x - 1 # this could also be x -= 1
end

#example of how while loops do NOT have their own scope
x = 0
while x < 5
  y = x * x
  x += 1
end
puts y #16 



#do/whiole example
loop do
  puts "Do you want to do that again"
  answer = gets.chomp
  if answer != "Y"
    break
  end
end


#for loop 
x = gets.chomp.to_i
for i in 1..x do
  puts x - i
end
d

#anotherCountdown with for loops
x = [1 ,2, 3, 4, 5]
for i in x.reverse do
  puts i
end
puts "done!"



#conditonal while loop

x = 0
while x <= 10
  if x.odd?
    puts x
  end
  x += 1
end


#Conditional while loop with next

x = 0 
while x <= 10
  if x == 3
    x += 1
    next
  elsif x.odd?
    puts x
  end
  x += 1
end



#conditional while loop with break 
x = 0

while x <= 10
  if x == 7
    break
  elsif x.odd? 
    puts x
  end
  x += 1
end


#Practice with Iterators

names = ["Bob", "Joe", "Steve", "Janice", "Susan", "Helen"]
x = 1
names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end



#Recursion
def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end
doubler(4)
#this will print 4,8,16



#stack 
def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second
puts "main method"



#fibonacci.rb
def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)

=end
