#Iterating over hashes 
=begin

person = {name: "bob", height: '6 ft', weight: '160 lbs', hair: 'brown'}
person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end



#Hashes as optional parameters 

def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else 
    puts "Hi, my name is #{name} and I am #{options[:age]}" + " years old and I live in #{options[:city]}."
  end
end

greeting("Bob")
greeting("Bob", { age: 62, city: "Denver"})
greeting("Bob", age: 62, city: "New York City") #curly braces are not required when the last argument is a hash #use this way




#END OF CHAPTER EXERCISES 

#1 

#MY SOLUTION
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}
new_family = family.select { |k,v| k == :sisters}
new_family2 = family.select { |k,v| k == :brothers}

new_family.merge!(new_family2)
p new_family.values.flatten

#LS SOLUTION

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr



#2 #shows the difference between the two merge methods 
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}
new_family = family.select { |k,v| k == :sisters}
new_family2 = family.select { |k,v| k == :brothers}

new_family.merge(new_family2)
p new_family
new_family.merge!(new_family2)
p new_family



#3 
family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

p family.keys
p family.values 
p family.each { |key, value| }



#4 Given the following expression, how would you access the name of the person?
#MY SOLUTION 
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person.fetch(:name)
 
# OR LS SOLUTION 
person[:name]



#5 What method could you use to find out if a Hash contains a specific value in it? Write a program that verifies that the value is within the hash.
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting', age: 24}
p person.has_value?(23)
p person.has_value?(24)




#6 What's the difference between the two hashes that were created?
x = "hi there"
p my_hash = {x: "some value"}
p my_hash2 = {x => "some value"}

#The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.

=end

#7 If you see this error, what do you suspect is the most likely problem?
#NoMethodError: undefined method `keys' for Array
#B. There is no method called keys for Array objects
