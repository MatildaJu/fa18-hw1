def squared_sum(a, b)
  squared_sum = (a+b)**2
  return squared_sum

end

def sort_array_plus_one(a)
  a = a.sort
  b = []
  a.map { |e| b << (e+1)  } #put all element +1 in a to array b
  return b

end

def combine_name(first_name, last_name)
  name = first_name+ " " + last_name
  return name

end

def blockin_time(a)
  # DO NOT EDIT THIS CODE BELOW
  require './foobar'
  Foobar.baz a
end

def scrabble(word)
  values = {
    a: 1,
    b: 3,
    c: 3,
    d: 2,
    e: 1,
    f: 4,
    g: 2,
    h: 4,
    i: 1,
    j: 8,
    k: 5,
    l: 1,
    m: 3,
    n: 1,
    o: 1,
    p: 3,
    q: 10,
    r: 1,
    s: 1,
    t: 1,
    u: 1,
    v: 4,
    w: 4,
    x: 8,
    y: 4,
    z: 10,
  }
    wordSymbol = word.split('').map { |i| i.to_sym } #split into separate characters
                                                    #and convert to array of symbols
    wordSymbol = wordSymbol.map! { |i| values[i] } #create an array of characters converted values
    sum = wordSymbol.inject{|sum, n| sum + n}

    return sum
  end
