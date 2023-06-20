# class vs object

class Animal

  attr_accessor :name # for getting an setting name

  def initialize(type, name = "Unknown", number_of_legs=0)

    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type

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
  
end

animal_1 = Animal.new('dog','Bob', 4)
animal_2 = Animal.new('cat','Tin', 2)


animal_1.name = 'Casper'

# p animal_1.name