class NoFood
  def is_liked?(food)
   false
  end
end

class DogFood
  def is_liked?(food)
   ["meat", "vegetable", "fruit"].member?(food)
  end
end

class CatFood
  def is_liked?(food)
   ["egg", "meat"].member?(food)
  end
end