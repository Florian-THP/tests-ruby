def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  total = 0
  array.each do |number|
    total += number
  end
  total
end

def multiply(a, b)
  a * b
end

def power(a, b)
  if b > 0 && a > 0
    a ** b
  elsif a == 0
    0
  elsif b == 0
    1
  end
end

def factorial(number)
  return 1 if number == 0  # Condition de base
  number * factorial(number - 1)  # Appel récursif
end