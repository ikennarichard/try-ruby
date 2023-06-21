=begin
The decorator design pattern is a way to add extra functionality to an object without changing its structure. It's like adding toppings to a pizza without changing the pizza itself.
=end

# Let's say we have a simple example of a class called `Pizza` in Ruby:


class Pizza
  def make
    puts "Making a pizza"
  end
end


# Now, let's imagine we want to add some additional toppings to the pizza, like cheese and vegetables, without modifying the original `Pizza` class. We can use the decorator design pattern to achieve this.

# First, we'll create a base decorator class called `PizzaDecorator`:


class PizzaDecorator
  def initialize(pizza)
    @pizza = pizza
  end

  def make
    @pizza.make
  end
end

# This decorator class has a reference to the original `Pizza` object and it provides a `make` method that simply calls the `make` method of the original `Pizza` object.

#Next, let's create some concrete decorator classes, like `CheeseDecorator` and `VegetableDecorator`, that add specific toppings to the pizza:

class CheeseDecorator < PizzaDecorator
  def make
    super
    puts "Adding cheese"
  end
end

class VegetableDecorator < PizzaDecorator
  def make
    super
    puts "Adding vegetables"
  end
end

=begin
These concrete decorator classes inherit from the `PizzaDecorator` and override the `make` method to add their specific functionality. They first call the `make` method of the original pizza using `super`, and then add their own behavior. Now, let's see how we can use these decorators to enhance our pizza:
=end

plain_pizza = Pizza.new
cheese_pizza = CheeseDecorator.new(plain_pizza)
vegies =  VegetableDecorator.new(plain_pizza)
vegies.make
=begin

In this example, we create a plain pizza object called `plain_pizza`. Then, we create a `CheeseDecorator` object called `cheese_pizza` and pass `plain_pizza` as its argument. Finally, we create a `VegetableDecorator` object called `veggie_pizza` and pass `cheese_pizza` as its argument.

When we call `veggie_pizza.make`, it goes through the decorator chain. First, the `VegetableDecorator` calls `make` on the `CheeseDecorator`, which in turn calls `make` on the original `Pizza` object. After that, each decorator adds its specific functionality. So, the output will be:


Making a pizza
Adding cheese
Adding vegetables
=end