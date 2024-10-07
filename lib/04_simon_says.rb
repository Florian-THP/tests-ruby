def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, times = 2)
  ([string] * times).join(" ")
end

def start_of_word(string, number)
   sortie = string.chars.reject.with_index{|lettre, index| index >= number}.join
end


def first_word(string)
  string.split[0]
end

def titleize(string)
  newphrase = []
  mot_min = string.split.min_by(&:length) # mot plus petit du string
  minok = mot_min.length # taille du mot
  
  string.split.each_with_index do |mot, index| #phrase passer en tableau de mot
    if index == 0
      mot[0] = mot[0].upcase
    elsif mot.length != minok
        mot[0] = mot[0].upcase
    end
    newphrase << mot
  end
  newphrase.join(" ")
end

