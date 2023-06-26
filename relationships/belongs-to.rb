=beginTo make this relationship possible we only need to add an attr_accessor for @owners in Animal (animal.rb).
=end
class Animal
  # show animal belongs to owner
  attr_reader :owner

  # both ways relatinship: add owner to the animal
  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?
  end
end