class Book
  
  attr_reader :title

  def title=(title)
    @words = title.split.each_with_index do |word, index|
      unless %w(and in the of a an).include?(word) && index != 0
        word.capitalize!
      end
    end
    @title = @words.join(' ')
    @title
  end


end
