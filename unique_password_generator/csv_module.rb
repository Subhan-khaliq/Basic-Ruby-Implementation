# frozen_string_literal: true

require 'csv'
module Csv
  def create_file(password)
    File.open('password.csv', 'a+') { |f| f.write(password, "\n") }
  end

  def compare_and_store_password(password)
    IO.foreach('password.csv') do |line|
      return if password == line
    end
    File.open('password.csv', 'a+') { |f| f.write(password, "\n") }
  end
end
