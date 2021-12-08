require('pry')

class Text
  def initialize(input)
    @text = input
  end
  def pal_checker
    just_letters = @text.gsub(/[^a-z0-9]/,'')
    i = 0
    while (i < (just_letters.length/2).floor)
      if just_letters[i] == just_letters[just_letters.length-i-1]
        i += 1
      else
        return false
      end
    end
    true
  end
end