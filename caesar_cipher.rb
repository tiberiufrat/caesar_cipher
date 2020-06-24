def caesar_cipher(string, key)
  lowercase = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p','q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  uppercase = lowercase.map(&:upcase)
  answer = []
  string_array = string.split('')
  string_array.each do | letter |
    if lowercase.include?(letter)
      current_position = lowercase.index(letter)
      new_position = (current_position + key.to_i) % 26
      new_letter = lowercase[new_position]
      answer.push(new_letter)
    elsif uppercase.include?(letter)
      current_position = uppercase.index(letter)
      new_position = (current_position + key.to_i) % 26
      new_letter = uppercase[new_position]
      answer.push(new_letter)
    else
      answer.push(letter)
    end
  end
  answer.join
end

p caesar_cipher('What a string!', 5)
