class Acronym
  def self.abbreviate(phrase = "")
    match = phrase.scan(/\w+\b/)
    match.reduce("") do |acc, curr|
      fistChar = curr.chars[0] || ""
      acc.concat(fistChar.upcase)
    end
  end
end