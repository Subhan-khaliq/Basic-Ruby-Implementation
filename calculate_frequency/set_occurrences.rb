# frozen_string_literal: true

require_relative 'frequency_class'

obj = Frequency.new

arr = obj.random_array

obj.display_array

hash = obj.calculate_ocuurance

obj.display_hash(hash)
