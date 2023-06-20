# Polymorphism allows us to
# send the same message to 
# different objects and 
# get different results. 


# inheritance

# class GenericParser
#   def parse
#     raise NotImplementedError, 
#     'You must implement the
#     parse method'
#   end
# end

#duck typing - runtime polymorphism
class GenericParser
  def parse(parser)
    parser.parse
  end
end


class JsonParser < GenericParser
  def parse
    puts 'An instance of the 
    JsonParser class received the 
    parse message'
  end
end

class XmlParser < GenericParser
  def parse
    puts 'An instance of the 
    XmlParser class received 
    the parse message'
  end
end




parser = GenericParser.new
puts 'Using the JsonParser'
parser.parse(JsonParser.new)



# through the use of design patterns
# decorator pattern
class Parser
  def parse(message)
    puts "The Parser class recieved
    the #{mesage}"
  end
end

class JsonParser
  def initialize(parser)
    @parser = parser
  end

  def parse
    puts 'An instance of the JsonParser class received the parse message'
    @parser.parse
  end
end