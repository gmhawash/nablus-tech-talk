#!/usr/bin/env ruby
# OOO: Modules - mixins

begin # Definition
  module Shape
    def initialize(width, height)
      @width = width
      @height = height
    end

    def print
      puts "Area: %s, Peremiter: %s" % [area, peremiter]
    end
  end

  class Rect
    include Shape   # <<<<<<  Composition
    def area
      @width * @height
    end

    def peremiter
      @width + @height
    end
  end

  class Triangle
    include Shape   # <<<<<<
    def area
      0.5 * @width * @height
    end

    def peremiter
      "'still no can do'"
    end
  end

  Rect.new(12, 20).print
  Triangle.new(12, 20).print
end

