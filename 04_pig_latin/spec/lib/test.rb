def translate(input_text)

  words = input_text.split

  words.map do |word|

    if word[0] == 'q'
      puts word
    end
    start_of_word = word.split(/([aeiou].*)/)
    # puts start_of_word[1] + start_of_word[0] + 'ay'

  end

end

puts translate('the squick brown fox')
