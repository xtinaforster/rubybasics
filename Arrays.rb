#Arrays Section 

=begin

array = [1, "bob", 4.33, 'another string']
#find the first element in the array
puts array.first 
puts array.last 
puts array[3]

#pop method
array.pop
puts array
array.push("another string")
puts array
#push and << puts something back on an array 

#how to use the map/collect method 

a = [1,2,3,4]
a.map { |num| num**2 }

#this should give us the square of the numbers in the array (do in IRB)


#deleting an instance in an array
my_pets = ["cat", "dog", "fish", "bird", "snake"]
my_pets.delete('cat')
puts my_pets
#deletes the cat instance

#deleting multiple instances that are the same
b = [1,1,2,2,2,3,3,4,4,5]
b.uniq
puts b.uniq
#making the uniq method destructive (mutating the caller )



b = [1,1,2,2,2,3,3,4,4,5]
b.uniq!
puts b <----- # I DID NOT NEED TO PUT B>UNIQ! BECAUSE THE ! MUTATES THE CALLER (CHANGES THE ARRAY)



#Iterating over an Array 

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
numbers_2 = numbers.select { |number| number > 4 }
puts numbers_2
#the select method doesn't mutate the caller which is why I needed to make the new array a new variable (not currently doing in IRB)


#Mutating the caller/ not 
def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
mutate(a)
not_mutate(a)

puts a
puts not_mutate(a)
# the puts a returne 1,2,3,4,5 and the puts not_mutate(a) returns 4,5 
#the select method iterates over an array and returns a new array that includes any items that return TRUE
#pop is destructive, select is not



#Nested Arrarys

teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']] 
puts teams[2]



#comparing arrays 

a = [1,2,3]
b = [2,3,4]
puts a == b 
puts b.pop
puts b.unshift(1)
puts a == b 
#this returns, false, 4, 1,2,3, true



#to_S method

a = [1,2,3]
puts "Its as easy as #{a}"
#returns "It's as easy as [1, 2, 3]"



#Inlcude? Method for array class
a = [1,2,3,4,5]
puts a.include?(3) # <--- returns true 
puts a.include?(6)  # <---- returns false 



#flatten method

a = [1,2,[3,4,5], [6,7]]
puts a.flatten #returns [1,2,3,4,5,6,7]



#each_index
a = [1,2,3,4, 5]
puts a.each_index { |i| puts "this is index #{i}"} #this is what it returns     this is index 0 #this is index 1#this is index 2 #this is index 3 #this is index 4 - 1,2,3,4,5



#each_with_index method 

a = [1,2,3,4, 5]
puts a.each_with_index { |val, idx| puts "#{idx+1}. #{val}" }



#sort method
a = [5,3,8,2,4,1]
puts a.sort 
puts a # this shows that this method is not destructive



#product method
puts [1,2,3].product([4,5])
#returns [[1, 4], [1, 5], [2, 4], [2, 5], [3, 4], [3, 5]]


#Each Vs. Map
#each example
a = [1,2,3]
puts a.each { |e| puts e}
#this returns 1,2,3 and then the array [1,2,3]
a = [1,2,3]
puts a.each { |e| puts e + 2}
#this returns 3,4,5 and the array [1,2,3]



#do..end example
a = [1,2,3]
a.each do |e|
  puts e + 2
end
puts a 
#this returns 3,4,5 [1,2,3]


#final example of each with no block...returns an Enumerator
a = [1,2,3]
puts a.each
 


#Map method
a = [1,2,3]
puts a.map { |x| x**2 }
#this returns the array [1,4,9]
#if no block is given it returns an Enumerator 
=end

