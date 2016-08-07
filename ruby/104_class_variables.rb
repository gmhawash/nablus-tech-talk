#!/usr/bin/env ruby
# OOO: classes - variable scope

begin # Instance variables.  Different for each instance
  class Rect
    def initialize(width, height)
      @width = width
      @height = height
    end

    def area
      @width * @height
    end

    def identity
      p [@width.object_id, @height.object_id]
    end
  end

  rect1 = Rect.new(100,200)
  rect2 = Rect.new(1,2)
  p rect1
  p rect1.area
  p rect2
  p rect2.area
end


begin # Class variables.  Same for all instances
  class Rect2
    @@width = 2
    def initialize(width, height)
      @width = width
      @height = height
    end

    def area
      @@width * @height
    end

    def change_width
      @@width = 3
    end
  end

  puts "\n\n******* Line %d \n" % __LINE__
  rect1 = Rect2.new(100,200) 
  rect2 = Rect2.new(1,2)
  p rect1.area
  p rect2.area

  puts "\n\n******* Line %d \n" % __LINE__
  rect1.change_width            # <<<<<<<<<< Change value for all
  p rect1.area
  p rect2.area
end
