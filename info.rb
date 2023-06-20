# data types -integers, booleans, floats, strings, symbols, arrays, and hashes.

# 1_234_567
# underscores make large nums more readable
large_number = 1_234_567


#arrays
car_brands = ['tesla', 'toyota', 'honda', 'mercedes']
puts car_brands.first  #print first item
puts car_brands.last #print last item
puts car_brands[2] #print third item


#hashes
user = {
  'first_name' => 'Ukamaka',
  :last_name => 'Winchester',
  :age => 20 # you can use symbols as keys
}
puts user['first_name'] + "\n"
puts user[:age]

# dynamic typing
length = 142
arr= [130, 124]
length_to_float = length.to_f # convert to float
legnth_to_int = length_to_float.to_i # convert to int
arr_to_str = arr.to_s # convert to string
puts arr_to_str


#class method - use to print data type pf element
# kind_of - to verify an elements data type
puts 42.class
puts (42.2).class
puts ['sammy', 'shark'].class
puts true.kind_of? TrueClass #true
puts false.class
puts nil.kind_of?(NilClass) #false
puts ['alpha'].kind_of?(Array)

# kind_of?(data_type)
name = 'Stephanie'
if name.kind_of? String
  name = 'Amanda'
end
 puts name


#is_a? is similar to kind_of?
actor = 'Joaquin'
if actor.is_a? Integer
  actor = 'Phoenix'
end
puts actor


# variables
class Customer
  @@customer_purchase = 0 # class variable

  def initialize(id, name, addr)
    @id = id
    @name = name,
    @addr = addr # instance varriables
  end

  def say_hello()
    puts "Hello #@name"
  end

  def purchase()
    puts @@customer_purchase += 1
  end
end

customer_1 = Customer.new(1, "Ukamaka", "Sweden")
customer_1.say_hello()
customer_1.purchase()
customer_1.purchase()


# string literals
puts 'escape from yards "\\"'
puts "The price is ##{20 * 40} only"


# looping over hashes
user.each do |key, value|
  print "#{key} is #{value}\n"
end


# ranges
Range.new(1,5).each do |i|
  print "#{i},"
end


# conditionals
x = 1

if x < 1
  puts 'X is less than 1'

elsif x>=1
  puts "\nX is 1"

else 
  puts 'X is nil'

end

x = 2

# if modifier
# unless executes if conditional is false
puts 'Yes' if x === 1 unless puts 'No' 


# case statement
lang = 'teddy'

case lang
when 'Javascript'
  puts 'web'

when 'Python'
  puts 'snakes'

when 'Go'
  puts 'flash'
  
else 
  puts 'Not a valid programming language'

end


$points = 15
case $points
when 1..5
  puts 'Try again'

when 6..10
  puts 'Almost there'

when 10..15
  puts 'Theres nothing else to say, its time to merge it!'

else 
  puts 'Invalid code review request'
end


# each loop
ints = [1,2,3,4]
ints.each do |n|
  puts n
end


# each_with_index- when u need the index
ints.each_with_index do |item, index|
  puts "Number #{item} has index of #{index}"
end

# times loop
5.times do |i| puts "Hello #{i}" #prints hello 5 times
end

(1..5).each {|i| puts i}

#while loop
limit = 5
while limit > 0
  puts "Tick #{limit}"
  limit-=1
end


#until loop - do something until a certain point
live = 0
until live === 5
  live+=1
  puts "live is #{live}"
end


# next and select - for skipping iterations
5.times do |i|
  next unless i.even?
  puts "live is #{i}"
end

# select 
puts (0..5).select(&:even?)


# break if
candies = [3, 5, 7, 7]

candies.each do |i|
  break if i >= 7
  puts i
end


#ruby methods
def test
  i=1
  j=2
  k=3333
  # return i,j,k
end
var = test
puts var


#variable parameter
def sample (*test) #declare variable number of parameters
  puts "The number of parameters is #{test.length}"
  for i in 0...test.length
     puts "The parameters are #{test[i]}"
  end
end
sample "Zara", "6", "F"
sample "Mac", "36", "M", "MCA"


#class methods

class Accounts
  def reading_charge
  end

  def Accounts.balance 
# class methods start with the name of the class
  end
end
