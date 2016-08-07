#!/usr/bin/env ruby
#
# Hello XYZ
# ruby 002_hello_you.rb

print "Who are you? "
who = gets.strip

# Takes a single argument
# http://ruby-doc.org/core-2.2.0/String.html#method-i-25
puts "Hello %s" % who   # printf("Hello %s", who)

# Mathematical operators
puts "Hello " + who
puts "Hello " * 5 + who

# Takes an array 
puts "Hello %s, %s" % [who, "Welcome"]

# Takes a hash
puts "Hello %{name}" % {name: who}

