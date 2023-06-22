require './animal.rb'
require './foods.rb'

class Dog < Animal
  
  def initialize(color, name='Unknown')
    super("dog", name, 4)
    @color = color
    @liked_food = DogFood.new()
  end

  def animal_emoji
    '🐶'
  end

  def fetch_stick
    'Heres the stick ----'
  end

end