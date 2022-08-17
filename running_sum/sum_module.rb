# frozen_string_literal: true

module Sum
  def running_sum(input_array)
    element = 0

    output_array = []

    output_array.append(input_array[0])

    (1...input_array.length).each do |i|
      element = input_array[i] + output_array[i - 1]
      output_array.append(element)
    end

    output_array
  end

  def display_array(input_array)
    print '['
    input_array.each do |i|
      print i
      break if i == input_array[input_array.length - 1]

      print ','
    end
    print ']', "\n"
  end
end
