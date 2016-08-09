#!/usr/bin/env ruby
# Exceptions

begin # raise an exception
  class Rect
    attr_reader :width, :height
    def initialize(width=nil, height=nil)
      @width = width
      @height = height
    end

    def area
      raise 'Invalid width' unless width
      raise 'Invalid height' unless height
      width * height
    end
  end

  rect1 = Rect.new(100,200)
  p rect1.area
  p rect1.width

  rect2 = Rect.new
  p rect2.area
end if false

begin # catch an exception
  class Rect
    attr_reader :width, :height
    def initialize(width=nil, height=nil)
      @width = width
      @height = height
    end

    def area
      raise 'Invalid width' unless width
      raise 'Invalid height' unless height
      width * height
    end
  end

  rect1 = Rect.new(100,200)
  p rect1.area
  p rect1.width

  begin
    rect2 = Rect.new
    p rect2.area
  rescue Exception => e       # <<<<<<
    puts "Caught exception: #{e.message}"
  end
end if false

begin # catch an exception
  class Rect
    attr_reader :width, :height
    def initialize(width=nil, height=nil)
      @width = width
      @height = height
    end

    def area
      raise 'Invalid width' unless width
      raise 'Invalid height' unless height
      width * height
    end
  end

  rect1 = Rect.new(100,200)
  p rect1.area
  p rect1.width

  begin
    rect2 = Rect.new
    p rect2.area
  #rescue Exception => e
    #puts "Caught exception: #{e.message}"
  ensure        # <<<<<<
    puts "I will always run"
  end
end if false

begin # That's nice but...
  class Rect
    class MishMaqbool < StandardError; end
    attr_reader :width, :height
    def initialize(width=nil, height=nil)
      @width = width
      @height = height
    end

    def area
      # Two different ways to raise an exception
      raise MishMaqbool, 'Invalid width' unless width
      raise MishMaqbool.new('Invalid height') unless height
      width * height
    end

    def raise_something_else
      raise "Whatever"
    end
  end

  begin
    rect2 = Rect.new         # <<<<<
    p rect2.area
  rescue Rect::MishMaqbool => e
    puts "Caught exception: #{e.message}"
  end if false

  begin
    rect2 = Rect.new 200      # <<<<<
    p rect2.area
  rescue Rect::MishMaqbool => e
    puts "Caught exception: #{e.message}"
  rescue StandardError => e
    puts "Something else went wrong"
  end if false

  begin
    rect2 = Rect.new 100, 200  
    p rect2.raise_something_else     # <<<<<
  rescue Rect::MishMaqbool => e
    puts "Caught exception: #{e.message}"
  rescue StandardError => e
    puts "Something else went wrong"
  end if false
end if false

