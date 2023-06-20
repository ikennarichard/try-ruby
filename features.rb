#conditional variable initialization
user = 'Mark'
user ||= 'Philips'
puts user # Mark

enabled ||= true #bad
enabled = true if enabled.nil? #good


#existence check shorthand
something = 'Pear'
some_string = 'Making moves'
if something
  something = something.downcase
end #bad

somthing &&= something.downcase #good
puts something


# case equality operator
# bad
Array === something
(1..100) === 7
/something/ === 'something'

# good
puts something.is_a?(Array)
puts (1..100).include?(7)
puts something.match?('pear')


# safe navigation &.

nil.some_method
=> NoMethodError: undefined method 'some_method' for nil:NilClass

$ nil&.some_method
=> nil

#Whenever we are unsure of object being nil object just use ampersand (&) before the method call. 
