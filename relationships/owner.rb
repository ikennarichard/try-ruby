require './animal.rb'
require './dog.rb'
require './cat.rb'
require './vet.rb'

class Owner
  attr_accessor :name
  attr_reader :animals

  def initialize(name)
    @name = name
    @animals = []
  end

  def add_animal(animal)
      # Instead of setter for entire collection a method to add animals one by one
      @animals.push(animal)
      animal.owner = self
  end
end
  
# dog = Dog.new("black", "Rax")
# cat = Cat.new(8, "Bob")
# animal = Animal.new("lion", 4, "Some name")

# alex = Owner.new("Alex")
# alex.animals
# alex.add_animal(dog)
# alex.animals
# alex.add_animal(cat)
# alex.animals
# alex.add_animal(animal)
# alex.animals.map {|animal| animal.name}

# puts alex.animals.count
# puts alex.animals.first.name
# puts alex.animals.first.number_of_legs


require "./animal.rb"
require "./dog.rb"
require "./spider.rb"
require "./owner.rb"
require "./visit.rb"
require "./vet.rb"

dog = Dog.new("black", "Rax")
spider = Spider.new(85, "Bob")

vet_maria = Vet.new("Maria", "New York")
vet_john = Vet.new("John", "San Francisco")

visit_1 = Visit.new("2017-12-22", dog, vet_maria)
visit_2 = Visit.new("2017-12-31", dog, vet_maria)

dog.visits.count
dog.visits.map { |visit| visit.date }
vet_john.visits.count
vet_maria.visits.count
vet_maria.visits.map { |visit| visit.animal.name }

visit_3 = Visit.new("2017-11-11", spider, vet_john)
visit_4 = Visit.new("2017-10-10", spider, vet_maria)

spider.visits.count
spider.visits.map { |visit| visit.date }
vet_john.visits.count
vet_john.visits.map { |visit| visit.animal.name }
vet_maria.visits.count
vet_maria.visits.map { |visit| visit.animal.name }