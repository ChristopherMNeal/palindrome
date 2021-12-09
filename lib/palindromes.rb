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
    arrPal=[]
    just_letters = @text.gsub(/[^a-z0-9]/,'').downcase
    count = 0
    for i in 0..just_letters.length-1 do
      j=i+1
      while j < just_letters.length do
        pal_check_slice = just_letters[i..j]
          if(pal_checker(pal_check_slice) && pal_check_slice.length >= 5)
            arrPal.push(pal_check_slice)
            count+=1
          end
        j+=1
      end
    end
    count
  end
end