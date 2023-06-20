require './animal.rb'

class Dog < Animal
  
  def initialize(color, name='Unknown')
    super("dog", name, 4)
    @color = color
  end

  def animal_emoji
    '🐶'
  end

  def fetch_stick
    'Heres the stick ----'
  end

end

dog = Dog.new('black', 'Pira')

p dog.animal_emoji