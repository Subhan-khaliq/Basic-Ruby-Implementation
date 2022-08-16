# frozen_string_literal: true

# Using object oriented programing for set frequencies program
class Frequency
  byebug
  @@arr = []
  # This method will generate an array of size 10 with random elements in it.
  def random_array
    (0...10).each do |i|
      @@arr[i] = rand(1...10)
    end
    @@arr
  end

  # This method will display the array of random elements.
  def display_array
    print @@arr, "\n"
  end
  #   This function will calculate the occurance of every element in the array
  #   and then maps it into the hash

  def ocuurance
    h = {}
    i = 0
    while i < @@arr.length
      h[@@arr[i]] = if h.key?(@@arr[i])
                      h[@@arr[i]] + 1
                    else
                      1
                    end
      i += 1
    end
    h
  end

  # This method will display the element and its occurance
  def display_hash(f)
    f.each do |key, value|
      print key.to_s, ' has occured ', value.to_s, ' times.', "\n"
    end
  end
end

# Creates new object of the class
obj = Frequency.new

# It will call the method of generating random array in the class
arr = obj.random_array

# It will call the method to display the elements of random array
obj.display_array

# It will call the method to calculate the ocuurance of the elements in the array
hash = obj.ocuurance

# It will call the method to display the hash which contains the elements and their frequencies
obj.display_hash(hash)
