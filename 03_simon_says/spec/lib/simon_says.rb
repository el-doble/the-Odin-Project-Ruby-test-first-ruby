def echo(input_text)
	input_text
end

def shout(input_text)
	input_text.upcase
end

def repeat(input_text, n = 2)
  ([input_text] * n).join(' ')
end

def start_of_word(input_text, n)  
  input_text.slice(0, n)
end

def first_word(input_text)
  input_text.split.to_a[0]
end

def titleize(input_text)
  sentence = input_text.split
  sentence.each do |i|
    unless %w(the and over).include?(i)
      i.capitalize!
     end
  end
  sentence[0].capitalize!
  sentence.join(' ')
end

puts titleize('the bridge over the river kwai')