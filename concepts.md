Each string in a Ruby program is its own object, with its own unique location in memory, even if the strings are identical. 

But if you reference the same symbol multiple times, you’re referencing the same object everywhere in your program, which means you’re referencing the same memory location.


**symbols**
Using symbols as keys in hashes results in slightly better performance and less memory usage.


**type-checking**
Ruby uses dynamic typing, which means type checking is done at runtime rather than compile time, as in languages that use static typing.


**class method**
In Ruby, almost everything is an object. Integer, float, array, symbol, and hash are all Ruby objects, and they all have a method called class that will tell you what type they are.


**global variables**
Global variables begin with the '$global_variable'. It is not recommended to use global variables. They make programs cryptic.


**local variable**
Local variables begin with a lowercase letter or _. The scope of a local variable ranges from class, module, def, or do to the corresponding end or from a block's opening brace to its close brace {}.

When an uninitialized local variable is referenced, it is interpreted as a call to a method that has no arguments.

Assignment to uninitialized local variables also serves as variable declaration.


**constants**
Constants begin with an uppercase letter. Constants defined within a class or module can be accessed from within that class or module, and those defined outside a class or module can be accessed globally.

Constants may not be defined within methods. Referencing an uninitialized constant produces an error. Making an assignment to a constant that is already initialized produces a warning.


**ruby ranges**
A Range represents an interval which is a set of values with a start and an end. Ranges may be constructed using the s..e and s...e literals, or with Range.new.

Ranges constructed using .. run from the start to the end inclusively. Those created using ... exclude the end value. 


**each loop**
Before you can use each, you need a collection of items like an array, a range or a hash.

If you want to use each with a hash you’ll need two parameters, one for the key & another for the value.


**while loop**
There are situations when only a while loop would make sense. For example, if you don’t know how many times you need to loop in advance


**ruby method**
Every method in Ruby returns a value by default. This returned value will be the value of the last statement. For example −
```rb
def test
   i = 100
   j = 10
   k = 0
end
```
This method, when called, will return the last declared variable k.

When a method is defined outside of the class definition, the method is marked as private by default. On the other hand, the methods defined in the class definition are marked as public by default.



**ruby alias statement**
This gives alias to methods or global variables. Aliases cannot be defined within the method body. The alias of the method keeps the current definition of the method, even when methods are overridden.


**yield**
yield is a keyword in Ruby and it is used to run a block received by the method where it is used, returning the value of the block. Think of it as a dynamic way of calling a function instead of hardcoding an actual call.


**eqaul? over ==**
Prefer equal? over == when comparing object_id. Object#equal? is provided to compare objects for identity, and in contrast Object#== is provided for the purpose of doing value comparison.
```rb
#identity comparison - prefer equal? over ==
foo.object_id == bar.object_id #bad
foo.equal?(bar) #good
```


**proc application shorthand**
Use the Proc call shorthand when the called method is the only operation of a block.
```rb
# bad
names.map { |name| name.upcase }

# good
names.map(&:upcase)
```


**self-assignment**
Use shorthand self assignment operators whenever applicable.
```rb
# bad
x = x + y
x = x * y
x = x**y
x = x / y
x = x || y
x = x && y

# good
x += y
x *= y
x **= y
x /= y
x ||= y
x &&= y
```


**modules**
With modules you can share methods between classes: Modules can be included into classes, and this makes their methods available on the class, just as if we’d copied and pasted these methods over to the class definition.

This is useful if we have methods that we want to reuse in certain classes, but also want to keep them in a central place, so we do not have to repeat them everywhere.


**blocks**
Ruby blocks are little anonymous functions that can be passed into methods.

Blocks are enclosed in a do / end statement or between brackets {}, and they can have multiple arguments.

The argument names are defined between two pipe | characters.

If you have used each before, then you have used blocks!

eg.
```rb
[1, 2, 3].each 
{ |num| puts num }
   ^^^^^ ^^^^^^^^
   block   block
   args    body

# Form 2: recommended for multi-line blocks
[1, 2, 3].each do |num|
  puts num
end
```


**yield**
Yield is a Ruby keyword that calls a block when you use it.

It’s how methods USE blocks!

When you use the yield keyword, the code inside the block will run & do its work.

```rb
def print_twice
  yield
  yield
  # you can yield multiple times
end
print_twice { puts "Hello" }
# "Hello"
# "Hello"
```

You can pass any number of arguments to yield .These arguments then become the block’s arguments.
```rb
def one_two_three
  yield 1
  yield 2
  yield 3
end
one_two_three { |number| puts number * 10 }
```



**four principles of OOP are**
Encapsulation: An object's attributes can only be accessed/modified by one of its methods.

Abstraction: Show only the things needed.

Inheritance: The ability for one object to acquire properties from another object.

Polymorphism: The ability to have many implementations of a single interface. Using polymorphism we can alter or completely replace inherited features, but we don't have to change their identifiers, or names, or the interface that is used to use or access them! 


**class variables**

"ACCELERATION" is a constant that is global in scope and can be accessed using Ship::ACCELERATION outside the class or just ACCELERATION within the class. @position and @speed are instance variables which have local scope and therefore can only be accessed from within the class and don't actually exist until an object is created.

```rb
class Ship
  ACCELERATION = 1
  def initialize
  @position = { x: 0, y: 0 }
  @speed = { x: 0, y: 0 }
  end
end
```