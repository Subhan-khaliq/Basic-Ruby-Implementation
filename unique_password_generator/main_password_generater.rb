# frozen_string_literal: true

require_relative 'generate_password_module'
require_relative 'csv_module'

class Password
  include Unique
  include Csv
end

generate_password = Password.new

len = 0
loop do
  print 'Enter your password length (Must be greater than 7) : '
  len = gets.chomp
  len = len.to_i
  break unless len.to_i <= 7
end
print 'Do you want default setup? [y/n]: '
default = gets.chomp

if default == 'y'
  byebug
  no_of_alphabets = rand(1...len / 2)
  password = generate_password.default(no_of_alphabets, len - no_of_alphabets)
  generate_password.compare_and_store_password(password)
  print password, "\n"
  return
else
  print 'Want numbers in your password? [y/n] : '
  numbers = gets.chomp
  print 'Want characters in your password? [y/n] : '
  characters = gets.chomp
  if numbers == 'y' && characters == 'y'
    password = generate_password.numbers(len / 2 + 1)
    password += generate_password.char(len / 2)
  elsif numbers == 'n' && characters == 'y'
    password = generate_password.char(len)
  else
    password = generate_password.numbers(len)
  end

end

generate_password.compare_and_store_password(password)
puts password
