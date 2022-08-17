# frozen_string_literal: true

# While loops in Ruby
$i = 0
$p = 20
while $i < $p
  puts "I am  #{$i}"
  $i += 1
end

# Executes when condition is True
$t = 0
$r = 5
loop do
  puts "I am #{$t}"
  $t += 1
  break unless $t < $r
end

# Executes when condition is False
$c = 0
$r = 5
until $c > $r
  puts 'I am not executing'
  $c += 1
end

# Executes once before condition is evaluated
$g = 0
$f = 5
loop do
  puts "I am #{$g}"
  $g += 1
  break if $g > $f
end

# For Loop
(0..15).each do |i|
  puts "I am #{i}"
end

# Each statement
(0..5).each do |i|
  puts "I am #{i}"
end

# Break statement
(0..6).each do |i|
  if i > 2
    puts "I am break #{i}"
    break
  else
    puts 'I am before break.'
  end
end
