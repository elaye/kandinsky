#!/usr/bin/env ruby

require "kandinsky.rb"

img = Image.new

a = [Point.new(3,5), Point.new(15,27), Point.new(200,127)]

path = Path.new(a)

brush = Brush.new

path.trace do |p|
	img.draw(p, brush)
end

img.save("test.ppm")