#!/usr/bin/env ruby
#
# Blocks (anyonymous methods)
#

begin # Regular Block
  def input_processor
    print "Give me a number: "
    input1 = gets.strip.to_i
    print "Give me another number: "
    input2 = gets.strip.to_i
    # NOTE: This is where we yield (invoke) to the block
    result = yield input1, input2
    puts "The result is #{result}"
  end

  input_processor do |input1, input2|
    puts "****** This is multiplication"
    input1 * input2
  end

  input_processor do |input1, input2|
    puts "****** This is addition"
    input1 + input2
  end
end

begin # Equivallence in regular method definiiton
  def input_processor(method_name)
    print "Give me a number: "
    input1 = gets.strip.to_i
    print "Give me another number: "
    input2 = gets.strip.to_i
    # NOTE: we're calling the method here and passing arguments to it
    result = send method_name, input1, input2
    puts "The result is #{result}"
  end

  def multiplier input1, input2
    puts "****** This is multiplication"
    input1 * input2
  end


  def adder input1, input2
    puts "****** This is addition"
    input1 + input2
  end

  input_processor :multiplier
  input_processor :adder
end
