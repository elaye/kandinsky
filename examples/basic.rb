#!/usr/bin/env ruby

require "kandinsky.rb"

b = [
	[0,1,0],
	[1,0,1],
	[0,1,0]
]

# c = Color.new(30, 24, 170)

# puts "#{c}"
# puts "h=#{c.h} s=#{c.s} v=#{c.v}"

# c.h = 70

# puts "#{c}"
# puts "h=#{c.h} s=#{c.s} v=#{c.v}"

img = Image.new

a = [Point.new(3,5), Point.new(15,27), Point.new(200,127)]

path = Path.new(a)

brush = Brush.new(b)

puts Color.new(30,24,127,:hsv).h

path.trace do |p|
	img.apply(p, brush)
end

img.save("test.ppm")