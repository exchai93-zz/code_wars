# Unpacking Argument
def spread(func, args)
  func.call(*args)
end

# Is this a triangle?
def isTriangle(a,b,c)
  a, b, c = [a,b,c,].sort
  a + b > c
end

def isTriangle(a,b,c)
  if a>=(b+c) || b>=(a+c) || c>=(a+b)
    return false
  else
    return true
  end
end


# Shortest Word
# Given string of words, return the length of shortest words
"word and for loop"
def find_short(s)
  split_string = s.split(' ')
  split_string.each { |l| puts l.length.to_i}
end
