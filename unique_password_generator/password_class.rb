# frozen_string_literal: true

require_relative 'unique_password_module'

class Password
  attr_accessor :no_of_aplphabets, :no_of_numbers, :no_of_symbols

  @@password = ''

  include Unique

  def generate_password
    @@password = password_generator(num_alphabets: @no_of_aplphabets, num_numbers: @no_of_numbers,
                                    num_symbols: @no_of_symbols)
    @@password
  end
end
