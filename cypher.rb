def cypher(string, position = 0)
  abc_array = (('a'..'z').map { |item| [item] }).flatten
  abc_array_uppercase = abc_array.map(&:upcase)
  new_string = ''
  string.each_char do |letter|
    coded_letter = abc_array.index(letter)
    coded_letter_uppercase = abc_array_uppercase.index(letter)
    new_string << if letter == ' '
                    ' '
                  elsif coded_letter.nil?
                    abc_array_uppercase[coded_letter_uppercase - position]
                  else
                    abc_array[coded_letter - position]
                  end
  end
  new_string
end


p cypher('HellA World', 5)
