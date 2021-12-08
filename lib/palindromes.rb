require('pry')

class Text
  def initialize(input)
    @text = input
    
  end
  def pal_checker(txt)   
    i = 0
    while (i < (txt.length/2).floor)
      if txt[i] == txt[txt.length-i-1]
        i += 1
      else
        return false
      end
    end
    true
  end

  def pal_counter()
    #amanaplanacanalpanama
   # "a man, a plan, a canal, panama"
    just_letters = @text.gsub(/[^a-z0-9]/,'').downcase
    count = 0
    for i in 0..just_letters.length-1 do
      j=i+1
      while j < just_letters.length-1 do
        if just_letters[i] == just_letters[j]
          pal_check_slice = just_letters[i, j]
          # binding.pry
          if(pal_checker(pal_check_slice))
            count+=1
            # binding.pry
          end
        end
        j+=1
      end
    end
    count
  end
end


#I WANT A KAYAK, A TAKAY,I OKAY?
#KAYAK KAYAK KAYAK
