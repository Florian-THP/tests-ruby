def who_is_bigger(a, b, c)
  if a.nil? || b.nil? || c.nil? 
    "nil detected"
  elsif a > b && a > c
    "a is bigger"
  elsif b > a && b > c
    "b is bigger"
  elsif c > a && c > b
    "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  exclue = ["l", "t", "a", "L", "T", "A"]
  newphrase = string.upcase.chars.reject{|lettre| exclue.include?(lettre)}.join.reverse
end


def array_42(array)
 array.any? {|number| number == 42}
end

def magic_array(a)
  a.flatten.map{|i| i * 2}.uniq.reject {|i| i % 3 == 0}.sort
  #.uniq supprime les doublons dans un tableau
  #.flatten aplati tableau supprime les sous tableau
end