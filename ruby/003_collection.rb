#!/usr/bin/env ruby
#
# Collections: Arrays
#

#********* Array of strings
# http://docs.ruby-lang.org/en/2.2.0/Array.html

begin # 1. All types of arrays
  p ["What", "about", "that"]
  p %w(What about that)

  # Come together
  p ["What", "about", "that"] * ', '

  # Merge
  p [1, 2, 3].product(["And", "That"])
  p [1, 2, 3].zip(["And", "That"])

  p [1,2,3,4,5,6].take(2)   # take first 2 elements
  p [1,2,3,4,5,6].sample(2) # take random 2 elements
end

begin # 2. Iterators
  puts "\n\n******* Line %d \n" % __LINE__
  ["What", "about", "that"].each do |value|
    print value + ' '
  end

  ["What", "about", "that"].each.with_index do |value, index|
    print "\n%d: %s" % [index, value]
  end

  puts "\n\n******* Line %d \n" % __LINE__
  [["What", 1], ["About", 2], ["That", 3]].each do |pair|
    p pair
  end

  puts "\n\n******* Line %d \n" % __LINE__
  [["What", 1], ["About", 2], ["That", 3]].each do |first, second|
    p "%s %s" % [first, second]
  end

  puts "\n\n******* Line %d \n" % __LINE__
  [["What", 1, :cat], ["About", 2, :mouse], ["That", 3, :dog]].each do |first, second, third|
    p "%s %s %s" % [first, second, third]
  end
end
