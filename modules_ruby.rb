# frozen_string_literal: true

# These are the Modules in Ruby

module Test
  def foo
    puts 'I am foo'
  end
end

class Car
  # Instance Variable
  @@no_of_cars = 10
  include Test
  def total_cars
    puts "Total numbers of cars are #{@@no_of_cars}"
  end
end

t = Car.new
t.total_cars
t.foo
