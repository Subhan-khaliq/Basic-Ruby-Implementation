# frozen_string_literal: true

require 'csv'
module Csv
  def create_file(password)
    File.open('password.csv', 'a+') { |f| f.write(password, "\n") }
  end

  def compare_password(password)
    count = 0
    IO.foreach('password.csv') do |line|
      count += 1 if password == line
    end
    count
  end
end

class Compare
  @@count

  include Csv

  def password_checker(password)
    create_file(password)
    @@count = compare_password(password)
    @@count
  end
end
