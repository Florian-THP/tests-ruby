def translate(string)
  resultat = []
  voyelles = ["a", "e", "i", "o", "u"]
  
  string.split.each do |mot|
    if mot.start_with?("sch")
      debut = mot.slice!(0, 3)
      resultat << mot.concat(debut) + "ay"
      
    elsif mot.start_with?("qu")
      debut = mot.slice!(0, 2)
      resultat << mot.concat(debut) + "ay"

    elsif !voyelles.include?(mot[0].downcase) && mot[1] == "q" && mot[2] == "u"
      debut = mot.slice!(0, 3)
      resultat << mot.concat(debut) + "ay"
    elsif voyelles.include?(mot[0].downcase)
      resultat << mot + "ay"
      
    else
      position = mot.downcase.index(/[aeiou]/) # Trouve la position de la première voyelle
      if position
        debut = mot.slice!(0, position)
        resultat << mot.concat(debut) + "ay"
      
      end
    end
  end
  
  resultat.join(" ")
end
