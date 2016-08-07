#!/usr/bin/env ruby
#
# Procs and lambdas (anyonymous methods)
#

begin # Procs
  def input_processor method
    print "Give me a number: "
    input1 = gets.strip.to_i
    print "Give me another number: "
    input2 = gets.strip.to_i
    # NOTE: This is where we call (invoke) to the block
    result = method.call(input1, input2)
    puts "The result is #{result}"
  end

  # The entire implementation is saved in a variable and passed around like any data.
  multiplier = proc do |input1, input2|
    puts "****** This is multiplication"
    input1 * input2
  end

  adder = proc do |input1, input2|
    puts "****** This is addition"
    input1 + input2
  end

  input_processor multiplier
  input_processor adder
end

begin # Lambda
  def input_processor method
    print "Give me a number: "
    input1 = gets.strip.to_i
    print "Give me another number: "
    input2 = gets.strip.to_i
    # NOTE: This is where we call (invoke) to the block
    result = method.call(input1, input2)
    puts "The result is #{result}"
  end

  # The entire implementation is saved in a variable and passed around like any data.
  multiplier = lambda do |input1, input2|
    puts "****** This is multiplication"
    input1 * input2
  end

  # NOTE: dagger lambda shortcut
  adder = ->(input1, input2) do
    puts "****** This is addition"
    input1 + input2
  end

  input_processor multiplier
  input_processor adder
end
