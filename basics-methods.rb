## Exercise 4
##dates = [1975, 2004, 2013, 2001, 1981]
##puts dates[0]
##puts dates[1]
#puts dates[2]
#puts dates[3]
#puts dates[4] 

#Exercise 5
#puts 5 * 4 * 3 * 2 * 1
#puts 6 * 5 * 4 * 3 * 2 * 1
#puts 7 * 6 * 5 * 4 * 3 * 2 * 1
#puts 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1

#Exercise 6
#puts 7.45 * 7.45
#puts 2.23 * 2.23
#puts 11.12  * 11.12

# scope
#a = 5
#3.times do |n|
 # a = 3
#end
#puts a #this puts out 3 

#a = 5
#3.times do |n|
  #a = 3
  #b = 5 #b is initialized in the inner scope
#end
#puts a
#puts b #is be accessible here, in the outer scope? No This is because the variable b is not available outside of the method invocation with a block where it is initialized. When we call puts b it is not available within that outer scope.

#Variable Exercises 
#1 
#puts 'What is your name?'
#name = gets.chomp
#puts 'Welcome ' + name
#3 #puts name * 10

#2
#puts 'How old are you?'
#AGE = gets.to_i
#puts "In ten years you will be #{AGE + 10}"
#puts "In twenty years you will be #{AGE + 20}"
#puts "In thirty years you will be #{AGE + 30}"
#puts "In forty years you will be #{AGE + 40}"

#4
#puts 'What is your frist name?'
#first_name= gets.chomp
#puts 'What is your last name?'
#last_name= gets.chomp
#puts firstname + lastname 

#5
#y = 0
#3.times do
  #y += 1
  #x = y
#end
#puts x   this code gives an error because x is unavaible due to it being created in and not outside of the scope (do end block)

#Methods 
#puts "hello"
#puts "hi"
#puts "how are you"
#puts "I'm fine"
#def say(words)
  #puts words
#end
#say("hello")
#say("hi")
#say('how are you')
#say("I'm fine") #this may seem like we added more code but what its done is extracted the logic of printing out text, so that our program has more flexibility 
#suppose we wanted to add a . at the end of every string we send to the say method. 
#We only have to make that change in one place: 
#def say(words)
 # puts words + '.' ## <= we only make the change here! 
#end
#say("hello")
#say("hi")
#say("how are you")
#say("I'm fine")

# Method invocation with a block

#[1, 2, 3].each do |num|
 # puts num
#end

# Method definition

#def print_num(num)
  #puts num
#end
#puts(5)

#a = [1,2,3]
# Example of a method definition that modifies its argument permanently
#def mutate(array)
  #array.pop           #the pop method mutates the caller so a can be passed
#end

#p "Before mutate method: #{a}"
#mutate(a)
#p "After mutate method: #{a}" #this does not print the same thing

#a = [1,2,3]
#Example of a method definition that does not mutate the caller, which prints the same thing
#def no_mutate(array)
  #array.last
#end
#p "Before no_mutate method: #{a}"
#no_mutate(a)
#p "after no_mutate method: #{a}"

#return.rb 

#def add_three(number)
   #return number + 3
   #number + 4
#end 
#returned_value = add_three(4)
#puts returned_value
#def add_three(n)
   #new_value = n + 3
   #puts new_value
   #new_value
#end
#add_three(5) { puts 'Will this work?'} #this means that we're calling the times method on the returned value of add_three(5) which is 8

#"hi there".length.to_s #the string length method returns an integer and we can call to_s on integers to convert into strings

=begin
def add(a,b)
  a + b 
end

def subtract(a, b)
  a-b
end
puts add(20,45)

def multiply(num1, num2)
  num1 * num2
end
puts multiply(add(20,45), subtract(80,10)) 
=end

=begin
def first
  puts 'first method'
end

def second
  first                      this is a call stack 
  puts 'second method'
end

second
puts 'main method'
=end


#1 method exercises
=begin
def greeting(name= 'Taylor')
  puts name + " says hello"
end
puts greeting()
puts greeting("Chrissy")
=end

#3 method exercises
=begin
def multiply(a, b)
  puts a * b
end
multiply(20,10)
=end

#4 see explanation video
=begin
def scream(words)
  words + '!!!!!'
end

puts scream('Yippeee')
=end
#5 see video as well 
#6 

 #call stack example 

# def first
  #puts "first method"
 #nd
 #def second
  #first
  #puts "second method"
 #end
 second
 puts "main method"
type "Hello "
