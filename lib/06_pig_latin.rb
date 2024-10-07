def translate(string)
  resultat = []
  voyelles = ["a", "e", "i", "o", "u"]
  
  string.split.each do |mot|
    if mot.start_with?("sch") # regarde si le mot commence par sch
      debut = mot.slice!(0, 3) # enleve du mot tableau les 3 premiere caractere
      resultat << mot.concat(debut) + "ay" # ajoute les 3premiere caracter a la fin + "ay"
      
    elsif mot.start_with?("qu")
      debut = mot.slice!(0, 2)
      resultat << mot.concat(debut) + "ay"

    elsif !voyelles.include?(mot[0].downcase) && mot[1] == "q" && mot[2] == "u" 
      #verifie si le mot commence par une consone et si la 2 lettre du mot et "q" et si la 3 eme lettre du mot et "u"
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
