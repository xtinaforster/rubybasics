=begin
1. #Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.
arr = [1,3,5,7,9,11]
number = 3
puts arr.include?(number)


#LS Solution 
arr.each do |num|
  if num == number
    puts "#{number} is in the array."
  end
end

# ... or...
if arr.include?(number)
  puts "#{number} is indeed in the array."
end



2. #What will the following programs return? What is the value of arr after each?
1. arr = ["b", "a"]
   arr = arr.product(Array(1..3))
   arr.first.delete(arr.first.last)

2. arr = ["b", "a"]
   arr = arr.product([Array(1..3)])
   arr.first.delete(arr.first.last)

#first program will return [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]] & 1
# second will return [["b", [1,2,3]]["a", [1,2,3]]] & [1,2,3]



3. #How do you return the word "example" from the following array? (these are in IRB)
#my solution 
#arr1 = Array.flatten[["test", "hello", "world"],["example", "mem"]]

#arr2 == arr1
#puts arr2.fetch(3)

#LS Solution 
arr = [["test", "hello", "world"],["example", "mem"]]
puts arr.last.first 



#4. What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

1. arr.index(5)

2. arr.index[5]

3. arr[5]
#1 returns 3            index method- will return the first index of that number in the array, so the first five is at position 3. 
#2 returns error        
#3 returns 8



#5 What is the value of a, b, and c in the following program? A STRINGS INDEX IS 0 BASED and SPACES ARE INCLUDED
string = "Welcome to America!"
a = string[6]
b = string[11]
c = string[19]

#a returns e
#b returns A
#c returns nil



#6 What is the problem and how can it be fixed?
#names = ['bob', 'joe', 'susan', 'margaret']
#names['margaret'] = 'jody'

#MY solution

names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'
puts names 



#7 Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

names = ['Chris', 'Jess', "Sash", "liz"]
names.each_with_index { |name, idx| puts "#{idx + 1}. #{name}"}



#8 Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.
#MY SOLUTION 
a = [5, 6, 7]
b = a.map {|x| x+2 }
p a
p b 

#LS SOLUTION 
arr = [1, 2, 3, 4, 5]

new_arr = arr.map do |n|
  n + 2
end

p arr
p new_arr


=end
