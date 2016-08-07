#!/usr/bin/env ruby
#
# Methods

begin # 1. Parameters
  def hello name
    puts "Hello #{name}"
  end

  hello "Nablus"
  hello 10000       # WHAAAT
end

begin # 2. Optional parameters
  puts "\n\n******* Line %d \n" % __LINE__

  def hello name, description = "the beautiful"
    puts "Hello %s %s" % [name, description]
  end
  hello "Tubas"
  hello "Tubas", "MOST BEAUTIFUL"
end

begin # 3. Names parameters
  puts "\n\n******* Line %d \n" % __LINE__
  #   - order does not matter
  #   - parameter name must be specified

  def hello name:, address:
    puts "Hello %s in %s" % [name, address]
  end

  hello name: "Nablus", address: "Palestine"
  hello address: "Palestine", name: "Nablus"
end

begin # 4. Variable number of parameters
  def hello *args
    puts "Hello " + args.join(', ')
  end

  hello "Nablus", "Tubas", "TulKarem"
end

begin # 5. SPLAT operator  ***************
  puts "\n\n******* Line %d \n" % __LINE__
  cities = ["Nablus", "Tubas", "TulKarem"]
  hello(*cities)

  cities = ["Nablus", "Tubas", "TulKarem", "Al quds"]
  hello(*cities)
end
