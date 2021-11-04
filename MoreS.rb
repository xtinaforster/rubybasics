#booleann_regex
=begin

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "no match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")


#boolean_matchdata
def has_a_b?(string)
  if /b/.match(string)
    puts "We have a match"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
#gives the same output as above ^^^



#variables as POINTERS 

a = "hi there"
b = a
a = "not here"
p a 
p b
#b is "hi there"
#a is "not here"


a = "hi there"
b = a
a << ", Bob"
p a 
p b
#here they are the same 



#moreexamples 
a = [1,2,3,4]
b = a
c = a.uniq #with a ! c would be nil 
p a 
p b
p c
#this prints all the same 




def test(b)
  b.map {|letter| "I like the letter: #{letter}"}
end

a = ["a", "b", "c"]
p test(a)
#this did not mutate the original value of a just created a new array



#what if we did map! 

def test(b)
  b.map! {|letter| "I like the letter: #{letter}"}
end

a = ["a", "b", "c"]
p test(a)

#this would change the orginal array at the place it points to in memory 

p a #tested it: CORRECT 



#Blocks and Procs 
#passing_block

def take_block(&block) #the & tells us that the argument is a block 
  block.call
end

take_block do
  puts "Block being called in the method"
end


#more complex example of passing a block

def take_block(number, &block)
  block.call(number)
end
number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end


#Proc_Example

talk = Proc.new do 
  puts "I am talking."
end

talk.call



#anotherProcex

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end
talk.call "bob"



#Passing_proc into method

def take_proc(proc)
  [1,2,3,4,5].each do |number|
    proc.call number 
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)



#Exception-Example

begin
  #perform some dangerouse operation
rescue 
  #do this if the operation fails 
  #for example, log the error
end 



# exception_example2

names = ["Bob", "joe", "steve", nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end



#inline_exception_example 

zero = 0 
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"



#divide method example

def divide(number, divisor)
  begin
    answer = number / divisor 
  rescue ZeroDivisionError => e
    puts e.message 
  end
end
puts divide(16,4)
puts divide(4,0)
puts divide(14,7)

#this gives us 4, "divided by zero", 2 
#Here we are rescuing the ZeroDivisionError and saving it into a variable e. 
#We then have access to the message method that the ZeroDivisionError object has available.



#Examples of an error condition
StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError



#Bigger example error 
def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)



def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)




def top 
  bottom 
end

def bottom
  puts "Reached the bottom"
end

top 



#Exercises- End of Chapter 

#1. Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.
def has_lab?(string)
  if string =~ /lab/ #if we put a i after the /lab/i then it will make it not case sensitive 
    puts "We have a match!"
    puts string 
  else
    puts "no match here."
  end
end
has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")



#2 What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute {puts "Hello from inside the execute method!"}
#Nothing is printed to the screen because the block is never activated with the .call method. The method returns a Proc object.



#3 What is exception handling and what problem does it solve?
#errors to keep code working and not crashing when an exception happens 

#4. Modify the code in exercise 2 to make the block execute properly.
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }


#5 Give us the following error when we run it?
def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }
#theres no & sign which passes the block like a parameter 

=end
