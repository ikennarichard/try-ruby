puts %w[ant bear cat].any? { |word| word.length >= 3}

def greet_customers
  yield 'Ikenna'
  yield 'Mary'
end

greet_customers { |name| puts "#{name} welcome to the wild"}