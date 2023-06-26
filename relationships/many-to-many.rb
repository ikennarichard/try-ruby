# many to many relationships
# Animal and Vet through Visit

class Vet
  attr_reader :visits
  attr_accessor :name, :address

  def initialize(name, address)
    @name = name
    @address = address
    @visits = []
  end
end


class Visit
  attr_reader :animal, :vet
  attr_accessor :date

  def initialize(date, animal, vet)
    #add the visit to @visits of the animal and owner:
    @date = date

    @animal = animal
    animal.visits << self

    @vet = vet
    vet.visits << self
  end
end