require './animal.rb'
require './foods.rb'

class Cat < Animal

  def initialize(lives=9, name='Unknown')
    super('cat', name, 4)
    @lives = lives
    @liked_food = CatFood.new()
  end

  def animal_emoji
    '🐱'
  end

  def poop
    '💩'
  end
end