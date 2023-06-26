require "./animal.rb"
require "./dog.rb"
require "./cat.rb"

class Owner
  # owner has many animals
  attr_accessor :name
  attr_reader :animals

  def initialize(name)
    @name = name
    @animals = []
    # @animals is what holds the
    # relationship and to manage
    # it we will also create a
    # method add_animal
  end

  def add_animal(animal)
    animals.push(animal)
  end

  # both ways relationships: add animal to the owner
  def add_animal(animal)
    @animals.push(animal)
    animal.owner = self
  end
end

dog = Dog.new("black", "Rax")
spider = Cat.new(85, "Bob")
animal = Animal.new("lion", 4, "Some name")

alex = Owner.new("Alex")
p alex.animals
alex.add_animal(dog)
p alex.animals
alex.add_animal(spider)
p alex.animals
alex.add_animal(animal)

alex.animals.map {|animal| animal.name}

p alex.animals.count
p alex.animals.first.name
p alex.animals.first.number_of_legs

animal.owner = alex
p animal.owner