#These are the Ruby arrays
arr = [1, "Subhan", 3.45]
arr.each do |i|
  puts i
end

#These are the Ruby Hashes

hsh = colors = { "red" => 3, "green" => 5, "blue" => 8}

hsh.each do |key, value|
  print key, " is ", value, "\n"
end

#These are the Ruby Ranges
(200...230).each do |i|
  puts i," ","\n"
end

#These are if/else statements in Ruby

x = 10
unless x == 10
  puts "This is 10."
else
  puts "I don't Know what is it."
end

#These are the case statements in Ruby
x = 8
case x
when 0..2
  puts "It's between 0-2"
when 3..6
  puts "It's between 3-6"
else
  puts "It's between 7..8"
end

#These are the blocks in Ruby

def fee
  puts "I am in the function"
  yield
end
fee {puts "I am in the Block"}

#These are the modules in Ruby
module Car
  no_of_tyres = 10
  no_of_car = 2022
  def no_of_tyres()
    puts "No of tyres 23"
  end
  def car_no()
    puts "The car number is 2034"
  end
end

#These are the usage of module in a Class
class Tour
  t = 98
  include Car
end

i = Tour.new
i.car_no()

#Hashes
H = Hash["a" => 10, "b" =>20, "c" =>30]
puts "#{H['a']}"


H.each do |key, value|
  puts "#{key}"," is ","#{value}"
end
#Functions in Ruby

def even(x)
  if x%2==0
    return true
  else
    return false
  end
end

puts "#{even(9)}"
