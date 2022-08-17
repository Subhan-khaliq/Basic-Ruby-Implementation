# frozen_string_literal: true

# Classes in Ruby
class Animal
  @@no_of_animals
  def initialize(x)
    @@no_of_animals = x
  end

  def show
    puts "Total number of Animals are #{@@no_of_animals}"
  end
end

# Inheritance in Classes
class Cat < Animal
  @@no_of_cats = 4
  def show
    puts "Total number of cats are #{@@no_of_animals + @@no_of_cats}"
  end
end
t = Animal.new(69)
t.show
p = Cat.new(34)
p.show

# Using attr_accessors

class Person
  attr_accessor :name

  def get_name
    puts " Hello #{@name}"
  end
end

person = Person.new
person.name = 'Subhan'
puts person.get_name
