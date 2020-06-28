class Phrase
  def initialize(phrase = "one of each")
    @phrase = phrase
  end
  def word_count
    @phrase.scan(/\b[\w']*\b/).reject { |p| p.to_s.empty? }.map { | p | p.downcase }.tally
  end
end
