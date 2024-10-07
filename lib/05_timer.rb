def time_string(secondes)
  heures = secondes / 3600  # 3600 secondes dans une heure
  minutes = (secondes % 3600)/60
  resteSeconde = secondes % 60

  formated_heures = format('%02d', heures)
  formated_minutes = format('%02d',minutes)
  formated_secondes =format('%02d', resteSeconde)
  "#{formated_heures}:#{formated_minutes}:#{formated_secondes}"
end
