# frozen_string_literal: true

require_relative 'password_class'
require_relative 'csv_file'
require 'csv'

obj = Password.new
obj.no_of_aplphabets = 9
obj.no_of_numbers = 8
obj.no_of_symbols = 9
password = obj.generate_password

obj2 = Compare.new
count = obj2.password_checker(password)
print 'Total number of time password match : ', count, "\n"
