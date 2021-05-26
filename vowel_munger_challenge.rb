class VowelMunger

  def vowel_munger(string)
    vowels = string.gsub(/[aeiou]/i)
    string.each_char.with_index(1).map do |char, index|
      if vowels.include?(char)
        index.to_s
      else
        char
      end
    end.join
  end
end
