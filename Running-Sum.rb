# frozen_string_literal: true

# This method will calculate the running sum of the input array and return the array of running sum

def running_sum(x)
  v = []
  t = x.length - 1
  v.append(x[0])
  byebug
  (1..t).each do |i|
    g = x[i] + v[i - 1]
    v.append(g)
  end

  v
end
a = [9, 3, 4, 6]
t = running_sum(a)
puts t
nil?
