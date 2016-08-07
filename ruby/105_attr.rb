#!/usr/bin/env ruby
# OOO: attr_xyz

begin # attr_reader
  class Rect
    attr_reader :width, :height    # <<<<< 
    def initialize(width, height)
      @width = width
      @height = height
    end

    def area
      width * height
    end
  end

  rect1 = Rect.new(100,200)
  p rect1.area
  p rect1.width
end

begin # attr_writer
  class Rect2
    attr_writer :width, :height    # <<<<< 
    def initialize(width, height)
      @width = width
      @height = height
    end

    def area
      @width * @height
    end
  end

  rect1 = Rect2.new(100,200)
  p rect1.area
  rect1.width = 30
  p rect1.area
  # p rect1.width   # will fault
end

begin # attr_accessor (both reader and writer)
  class Rect3
    attr_accessor :width, :height    # <<<<< 
    def initialize(width, height)
      @width = width
      @height = height
    end

    def area
      width * height
    end
  end

  rect1 = Rect3.new(100,200)
  p rect1.area
  rect1.width = 30
  p rect1.area
  p rect1.width
end
