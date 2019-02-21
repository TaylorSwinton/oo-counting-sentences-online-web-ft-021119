require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    #count = 0
    ourSentences = self.split
    ourSentences.scan(/[^\.!?]+[\.!?]/).map(&:strip).count
=begin
    ourSentences.each do |sentence|
      if sentence.empty? == false
        count += 1
      else sentence.empty? == true
        sentence.delete!
      end
    end
    return count
=end
  end
end
