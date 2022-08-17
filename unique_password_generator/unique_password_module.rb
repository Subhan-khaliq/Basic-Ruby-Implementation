# frozen_string_literal: true

module Unique
  @@numbers = []
  @@special_characters = []
  @@alphabets = []
  def generate_array
    special_characters = []
    alphabets = []
    num = []
    j = 0
    (33..126).each do |i|
      case i
      when 65..90
        alphabets.append(i.chr)
      when 33..47
        special_characters[j] = i.chr
        j += 1
      when 48..57
        num.append(i.chr)
      when 97..122
        alphabets.append(i.chr)
      when 123..126
        special_characters[j] = i.chr
        j += 1
      else
        special_characters[j] = i.chr
        j += 1
      end
    end
    [special_characters, alphabets, num]
  end

  def password_generator(num_alphabets:, num_numbers:, num_symbols:)
    special_characters, alphabets, numbers = generate_array
    password = ''
    if num_alphabets <= 7 || num_numbers <= 7 || num_symbols <= 7
      puts 'Each input should be more than 7 characters'
      nil
    else
      (0..num_alphabets).each do |_i|
        password += alphabets[rand(0..alphabets.length - 1)]
      end
      (0..num_numbers).each do |_i|
        password += numbers[rand(0..numbers.length - 1)]
      end
      (0..num_symbols).each do |_i|
        password += special_characters[rand(0..special_characters.length - 1)]
      end
      password
    end
  end
end
