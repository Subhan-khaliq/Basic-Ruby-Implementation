# frozen_string_literal: true

# It will first try to open the file if file not opened then it will execute rescue block
# and then retry will take it to the begin block and then it will execute again with
# new filename which is assinged in rescue block

begin
  File = open('/Demo')
  puts 'File open successfully' if File
rescue StandardError
  fname = 'Demo-File.txt'
  retry
end
