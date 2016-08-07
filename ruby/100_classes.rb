#!/usr/bin/env ruby
# OOO: Classes

begin # Definition
  class Rect
    def initialize(width, height)
      @width = width
      @height = height
    end

    def area
      @width * @height
    end

    def peremiter
      2 * (@width + @height)
    end

    def print
      puts "Area: %d, Permiter: %d" % [area, peremiter]
    end
  end

  Rect.new(12, 20).print
  Rect.new(222, 20).print
end

