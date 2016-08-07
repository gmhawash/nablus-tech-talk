#!/usr/bin/env ruby
#
# Methods

begin # 1. Plain ole methods
  def hola
    puts "Hello"
  end

  hola

  # Redefine the method to something else
  def hola
    puts "Hola"
  end

  hola
end

begin # 2. Create a method dynamically
  define_method :mazolla do
    puts "Mazolla"
  end

  mazolla

  # NOTE: Ruby never Calls a method, it sends a message to the object
  puts "\n\n******* Line %d \n" % __LINE__
  send(:mazolla)
end

begin # 3. No seriously, define the method at run time (aka, Metaprogramming)
  print "Method name: "
  method_name = gets.strip

  define_method method_name do
    puts "You defined the method: %s" % method_name
  end

  # try hello, hola and mazolla
  send(method_name)
end

