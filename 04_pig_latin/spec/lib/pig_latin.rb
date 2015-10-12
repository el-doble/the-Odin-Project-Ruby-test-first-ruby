def translate(input_text)

  # split input text into array of words
  words = input_text.split
  # create empty string to collect part of each word that will be moved to the end
  start_of_word = ""
  # array to hold each translated word
  translated_sentence = []

  words.each do |word|
    #split each word into individual letters
    letters = word.chars
    #loop through each letter, adding them to start_of_word string
    for letter in letters
      # break when a vowel is reached
      if letter =~ /[a e i o u]/
        # unless the letter is a 'u' preceded by a 'q'
        if start_of_word =~ /q/ && letter == 'u'
          start_of_word << letter
        end

      break

      else
          start_of_word << letter
      end

    end
    # take first letters (equal in number to start_of_word)
    # and place at the end followed by 'ay'
    translated_word = letters.rotate(start_of_word.length).join + 'ay'
    # add to translated_sentence array
    translated_sentence << translated_word
    # reset start_of_word to an empty string ready for the next word
    start_of_word = ""

  end
  # return the translated input
  translated_sentence.join(' ')
end

puts translate('the squick brown fox')
