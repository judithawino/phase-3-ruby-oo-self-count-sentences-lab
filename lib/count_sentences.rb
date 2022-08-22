require 'pry'

class String

  def sentence?
    "#{self}".end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    
    # /\.|\?|!/ is a regular expression that searches for periods, question marks and exclamations in a string
    # binding.pry
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size 
  end
end

# "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
