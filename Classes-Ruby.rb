#Classes in Ruby
class Animal
  @@no_of_animals = 4
  def initialize(x)
    @@no_of_animals = x
  end

  def show()
    puts "Total number of Animals are #{@@no_of_animals}"
  end
end

class Cat < Animal
  @@no_of_cats = 4
  def show()
    puts "Total number of cats are #{@@no_of_animals+@@no_of_cats}"
  end
end
t = Animal.new(69)
t.show()
p = Cat.new(34)
p.show()
