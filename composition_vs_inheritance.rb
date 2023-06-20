#implicit inheritance

class Parent

  def implicit()
    puts "PARENT implicit()"
  end
end


class Child < Parent
end

dad = Parent.new()
son = Child.new()

dad.implicit() => PARENT implicit()
son.implicit() => PARENT implicit()


=begin
if you put functions in a base class (i.e., Parent), then all subclasses (i.e., Child) will automatically get those features.
=end



#override explicitly
=beginIn this case you want to override the function in the child, effectively replacing the functionality. To do this just define a function with the same name in Child
=end

eg.
class Child < Parent
  def implicit()
    puts "CHILD override()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit() => PARENT implicit()
son.implicit() => CHILD overide()

=begin
it prints out the Child.implicit messages because son is an instance of Child and Child overrides that function by defining its own version.
=end




#alter before and after
=begin
The third way to use inheritance is a special case of overriding where you want to alter the behavior before or after the Parent class's version runs
=end


class Parent
  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent
  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super() #super will cause the parent version to run at this point
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.altered() => PARENT altered()
son.altered() => (
	CHILD, BEFORE PARENT altered()
	PARENT altered()
	CHILD, AFTER PARENT altered()
)




# combining the three types types of inheritance

class Parent

  def override()
    puts "PARENT override()"
  end

  def implicit()
    puts "PARENT implicit()"
  end

  def altered()
    puts "PARENT altered()"
  end
end

class Child < Parent

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE PARENT altered()"
    super()
    puts "CHILD, AFTER PARENT altered()"
  end
end

dad = Parent.new()
son = Child.new()

dad.implicit()
son.implicit()

dad.override()
son.override()

dad.altered()
son.altered()





#using super with initialize

class Child < Parent
    def initialize(stuff)
        @stuff = stuff
        super()
    end
end

#setting some variables in the initialize before having the Parent initialize with its Parent.initialize








# coomposition -  use other classes and modules, rather than rely on implicit inheritance.


 class Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def altered()
    puts "OTHER altered()"
  end
end

class Child

  def initialize()
    @other = Other.new()
  end

  def implicit()
    @other.implicit()
  end

  def override()
    puts "CHILD override()"
  end

  def altered()
    puts "CHILD, BEFORE OTHER altered()"
    @other.altered()
    puts "CHILD, AFTER OTHER altered()"
  end
end

son = Child.new()

son.implicit()
son.override()
son.altered()

#I could then ask myself if I need this Other to be a class, and could I just make it into a module named other.rb?

module

module Other

  def override()
    puts "OTHER override()"
  end

  def implicit()
    puts "OTHER implicit()"
  end

  def Other.altered()
    puts "OTHER altered()"
  end
end

class Child
  include Other

  def override()
    puts "CHILD override()"
  end
end





#when to use inheritance or composition

=begin
You don't want to have duplicated code all over your software, 
since that's not clean and Inheritance solves this problem by 
creating a mechanism for you to have implied features in base classes. 

Composition solves this by giving you modules and 
the capability to call functions in other classes.
Do not be a slave to these rules. The thing to remember 
about object-oriented programming is that it is 
entirely a social convention programmers have 
created to package and share code.
=end