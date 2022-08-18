# frozen_string_literal: true

module Unique
  def char(no_of_aplphabets)
    [*('A'..'Z'), *('a'..'z'), *('!'..'/')].sample(no_of_aplphabets.to_i).join
  end

  def numbers(no_of_numbers)
    [*('A'..'Z'), *('a'..'z'), *(0..9)].sample(no_of_numbers.to_i).join
  end

  def default(no_of_aplphabets, no_of_numbers)
    password = char(no_of_aplphabets)
    password += numbers(no_of_numbers)
    password
  end
end
