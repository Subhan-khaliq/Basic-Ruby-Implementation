# frozen_string_literal: true

require_relative 'frequency_module'

class Frequency
  # byebug
  @@array = []
  include Generate_array
  def random_array
    @@array = generate_random_array(@@array)
  end

  def display_array
    print @@array, "\n"
  end

  def calculate_ocuurance
    hash = {}
    i = 0
    while i < @@array.length
      hash[@@array[i]] = if hash.key?(@@array[i])
                           hash[@@array[i]] + 1
                         else
                           1
                         end
      i += 1
    end
    hash
  end

  def display_hash(input_hash)
    input_hash.each { |key, value| print key, ' => ', value, "\n" }
  end
end
