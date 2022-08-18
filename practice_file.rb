# frozen_string_literal: true

# o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
# string = (0...50).map { o[rand(o.length)] }.join
# print "Enter your password length : "
# len = gets.c
# print "Do you want default setup? [y/n]: "
# default  = gets.chomp
# print "Want symbols in your password? [y/n] : "
# symbols = gets.chomp
# print "Want special characters in your password? [y/n] : "
# special_characters = gets.chomp
# print "Please Choice one of the following"
# print "1) Default"
# print "2) symbols and special_characters"
# print "3) symbols and numbers"
# print "4) numbers and special characters"
# print "5) "
def char(no_of_aplphabets)
  password = [*('A'..'Z'), *('a'..'z'),*('!'..'/')].sample(no_of_aplphabets.to_i).join
  password
end


def numbers(no_of_numbers)
  password = [*('0'..'9')].sample(no_of_numbers.to_i).join
  password
end

def default(no_of_aplphabets,no_of_numbers)
  password = char(no_of_aplphabets)
  password += numbers(no_of_numbers)
  return password

end

begin
  print 'Enter your password length (Must be greater than 7) : '
  len = gets.chomp
  len = len.to_i
end while len.to_i <=7
print 'Do you want default setup? [y/n]: '
default = gets.chomp

if default == 'y'
  no_of_aplphabets = rand(1...len/2)
  no_of_numbers = len - no_of_aplphabets
  print no_of_aplphabets," ", no_of_numbers,"\n"
  puts default(no_of_aplphabets,no_of_numbers)
  return
else
  print 'Want numbers in your password? [y/n] : '
  numbers = gets.chomp
  print 'Want characters in your password? [y/n] : '
  characters = gets.chomp
  if numbers == 'y' && characters == 'y'
    password = numbers(len/2 + 1)
    password += char(len/2)
  elsif numbers == 'n' && characters == 'y'
    password = char(len)
  else
    password = numbers(len)
  end

end

puts password
