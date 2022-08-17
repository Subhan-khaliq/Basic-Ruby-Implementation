# frozen_string_literal: true

require_relative 'sum_module'
class Running
  attr_accessor :input_array

  @@output_array = []

  include Sum

  def calculate_running_sum
    @@output_array = running_sum(input_array)
    display_array(@@output_array)
  end
end
