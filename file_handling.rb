# frozen_string_literal: true

# File handling in Ruby
# Reading from the File
aFile = File.new('Demo-File.txt', 'r')
if aFile
  test
  content = aFile.sysread(60)
  puts content
else
  puts 'Unable to open File'
end

# Writing into the File (Appending at the end of the text)
aFile = File.new('Demo-File.txt', 'a')
if aFile
  aFile.syswrite('And onething more I love playing cricket.')
else
  puts 'Unable to open File'
end

# IO readlines

arr = File.readlines('Demo-File.txt')
# It will output the last line of the input file
puts arr[arr.length - 1]
