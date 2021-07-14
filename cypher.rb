def cypher(string, position = 0)
  # get an array of the ABC
  abc_array = (('a'..'z').map { |item| [item] }).flatten
  
  # get the same array in uppercase for edge cases
  abc_array_uppercase = abc_array.map(&:upcase)
  
  # create variable to place the cypher phrase
  new_string = ''
  
  # loop through the string passed to the function to get each letter and encrypt it
  string.each_char do |letter|
    # get the index of the current letter in the ABC array
    coded_letter = abc_array.index(letter)
    
    # get the index of the letter in the ABC array of uppercase elements
    coded_letter_uppercase = abc_array_uppercase.index(letter)
    
    # Push each letter to the new encrypted string
    
    # if the letter is a space just push another space (edge case)
    new_string << if letter == ' ' 
                    ' '
                  # Select the letter in the ABC array (up or downcased) depending on the number to shift its position
                  elsif coded_letter.nil?
                    abc_array_uppercase[coded_letter_uppercase - position]
                  else
                    abc_array[coded_letter - position]
                  end
  end
  # return the new string
  new_string
end

# Result accounts for any number and any number of upcased letters
p cypher('HellA World', 5)
