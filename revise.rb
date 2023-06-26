class Animal
  # shorter way of declaring
  # getter (attr_reader)
  # setter (attr_writer)
  # attr_accessor (getter/setter)
  attr_accessor :name
  attr_reader :id
  attr_writer :type

  def initialize(name, number_of_legs, snack='oreos', type='mammal')
    @id = Random.rand(1..100)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
  end

  # abstraction enables us to hide
  # unecessary complexities
  # and provide only relevant data
  def speak
    if @type == 'dog'
      'Woof, woof'
    elsif @type == 'spider'
      'pss pss pss'
    end
  end

  # getter function
  def name
    @name
  end

  # setter function
  def name=(value)
    @name = value
  end

  def favorite_food
    '....'
  end
end

# instances
animal_1 = Animal.new('Rex', 8)
animal_2 = Animal.new('Ben', 2)

# four principles of oop

animal_1.name = 'mikey'
p animal_1

# because of encapsulation class attributes cant
# be accessed directly only by
# methods inside of it


# inheritance is when a class
# derives from another class
# the child class inherits properties and methods
# from the super class
class Dog < Animal
  def initialize(color, name='unknown')
    #we can go a step further and set @number_of_legs in initialize and some specific attributes for each.
    super('dog', 4, name)
    @color = color
  end

  def bring_a_stick
    'Here is your stick: -----'
  end

  # polymorphism (many forms) is the method in an object-oriented programming language that does different things depending on the class of the object which calls it.
  def favorite_food
    'bones'
  end
end


