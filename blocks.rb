# Blocks can be 
# “explicit” or “implicit”.

def explicit_block(&block)
  block.call # same as yield
end

explicit_block {puts "Explicit block called"}


# check if block was given
def do_something_with_block
  return "No block given" unless block_given?

  yield Random.rand(1..4)
end

puts do_something_with_block { |i| puts i }




# lamda - is a way to define a block
# and its parameters
say_something = -> { puts "This is a lambda" }

# call lambda method
say_something.call


# lambda can take arguments too
times_two = -> (x) { x * 2 }
times_two.call(10)



#Procs

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  my_proc.call
  puts "After proc"
end
p call_proc
# Prints "Before proc" but not "After proc"


# binding class

#Where do Ruby procs & lambdas store this scope information?


