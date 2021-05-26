class VowelMunger
  VOWELS = 'aeiou'

  def vowel_munger(string)
    string.each_char.with_index(1).map do |char, index|
      if VOWELS.include?(char.downcase)
        index.to_s
      else
        char
      end
    end.join
  end
end
