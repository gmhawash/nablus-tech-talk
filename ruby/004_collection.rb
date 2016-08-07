#!/usr/bin/env ruby
#
# Collections: Hashes
#

#********* Hash (Dictionary, lookup table)
# http://docs.ruby-lang.org/en/2.2.0/Hash.html
#

begin # Dictionary items
  string_keys = { "Jane Doe" => 10, "Jim Doe" => 6 }
  p string_keys

  symbol_keys = { name: 'Bob', age: 6 }
  p symbol_keys
end

begin # Iterators
  puts "\n\n******* Line %d \n" % __LINE__
  {one: 1, two: 2, three: 3}.each do |pair|
    p pair
  end

  puts "\n\n******* Line %d \n" % __LINE__
  {one: 1, two: 2, three: 3}.each do |key, value|
    p "Key: #{key}"
    p "Value: #{value}"
  end
end
