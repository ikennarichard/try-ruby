# class vs object
require './remover.rb'
require './foods.rb'

class Animal

  attr_accessor :name # for getting and setting name

  def initialize(type, name = "Unknown", number_of_legs=0)

    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
    @liked_food = NoFood.new()

  end

  # make animal speak
  def speak
    if @type == 'dog'
      'woof, woof'

    elsif @type == 'cat'
      'meow meow'
    end
  end

  def animal_emoji
    '🐼'
  end

  # getters
  def id
    @id
  end

  def type
    @type
  end

  def number_of_legs
    @number_of_legs
  end

  # def name
  #   @name
  # end
  
  # # setters
  # def name=(value)
  #   @name = value
  # end

  def remove_leg
    remover = Remover.new()
    @number_of_legs = remover.decrease(@number_of_legs, 2)
  end
  
  def likes_food?(food)
    @liked_food.is_liked?(food)
  end

end

animal_1 = Animal.new('dog','Bob', 4)



animal_1.remove_leg

p animal_1.number_of_legs