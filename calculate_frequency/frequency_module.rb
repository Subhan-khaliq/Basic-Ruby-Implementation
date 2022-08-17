# frozen_string_literal: true

module Generate_array
  def generate_random_array(random_array)
    (0...10).each { |i| random_array[i] = rand(1...10) }
    random_array
  end
end
