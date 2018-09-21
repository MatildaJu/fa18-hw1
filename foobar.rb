class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    a = a.map!{ |e| e.to_i + 2 } #convert to integers and add 2 to each number
    a = a.select {|i| i.even?} #select even numbers only
    a = a.delete_if { |e| e >= 10  } #remove elements larger than or equal to ten
    a.uniq! #remove duplicates
    a = a.inject{ |sum, n| sum + n } #compute the sum
    return a

  end
end
