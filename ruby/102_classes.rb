#!/usr/bin/env ruby
# OOO: Classes - super duper

begin # Definition
  class Shape
    def initialize(width, height)
      @width = width
      @height = height
    end

    def print
      puts "Area: %s, Peremiter: %s" % [area, peremiter]
    end
  end

  class Rect < Shape
    def area
      @width * @height
    end

    def peremiter
      @width + @height
    end
  end

  class Triangle < Rect
    # NOTE: these methods are redefining the ones in Rect
    def area
      0.5 * super    # <<<<
    end

    def peremiter
      "'still no can do'"
    end
  end

  Rect.new(12, 20).print
  Triangle.new(12, 20).print
end

