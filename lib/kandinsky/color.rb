class Color

	attr_accessor :r, :g, :b

	@r
	@g
	@b

	def initialize(r=0, g=0, b=0)
		@r = [[0, r].max, 255].min
		@g = [[0, g].max, 255].min
		@b = [[0, b].max, 255].min
	end

	def h
		max = [@r, @g, @b].max
		min = [@r, @g, @b].min
		if max == min
			0
		elsif max == @r
			(60*(@g - @b)/(max - min) + 360) % 360
		elsif max == @g	
			60*(@b - @r)/(max - min) + 120
		elsif max == @b
			60*(@r - @g)/(max - min) + 240
		end
	end

	def s
		max = [@r, @g, @b].max
		min = [@r, @g, @b].min
		if max == 0
			0
		else
			((1 - min.to_f/max.to_f)*100).to_i		
		end
	end

	def v
		([@r, @g, @b].max.to_f / 255 * 100).to_i
	end

	def to_s
		"[#{@r}, #{@g}, #{@b}]"
	end

end