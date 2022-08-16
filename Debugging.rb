#Blocks in Ruby
def equal(x)
  y = 20
  if x==y
    puts "I am in method and your input is equal to #{y}"
    yield
  else
    puts "I am in method agian and your input is not equal to #{y}"
    yield
  end
end
equal(2) {puts "I am in the block"
puts "I am second line of the block"}

#Blocks with parameters in Ruby
def too(x)
  if x%2==0
    puts "It's an even number."
    yield 5,7
  else
    puts "It's an odd number."
    yield 9,7
  end
end

too (3) {|x,y| puts "I am #{x} and #{y}"}
BEGIN{
  puts "I will be the first to executes."
}
END{
  puts "I will be the last one to executes."
}

