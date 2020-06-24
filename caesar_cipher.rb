alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p','q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

def caesar_cipher(string, key)
  answer = []
  string_array = string.split('')
  string_array.each do | letter |
    if alphabet.include?(letter)
      current_position = alphabet.index(letter)
      new_position = (current_position + key) % 27
      new_letter = alphabet[new_position]
      answer.push(new_letter)
    else
      answer.push(letter)
    end
  end
  answer
end
