class Color

	attr_reader :r, :g, :b, :h, :s, :v

	@r
	@g
	@b

	@h
	@s
	@v

	def initialize(c1 = 0, c2 = 0, c3 = 0, cspace = :"")
		if cspace.empty?
			@r = [[0, c1].max, 255].min
			@g = [[0, c2].max, 255].min
			@b = [[0, c3].max, 255].min
			update_hsv
		elsif cspace == :hsv			
			@h = [[0, c1].max, 360].min
			@s = [[0, c2].max, 255].min
			@v = [[0, c3].max, 255].min
			update_rgb
		end	
	end

	def h=(new_h)
		@h = [[0, new_h].max, 360].min
		update_rgb
	end

	def s=(new_s)
		@s = [[0, new_s].max, 255].min
		update_rgb
	end

	def v=(new_v)
		@v = [[0, new_v].max, 255].min
		update_rgb
	end

	def r=(new_r)
		@r = [[0, new_r].max, 255].min
		update_hsv
	end

	def g=(new_g)
		@g = [[0, new_g].max, 255].min
		update_hsv
	end

	def b=(new_b)
		@b = [[0, new_b].max, 255].min
		update_rgb
	end

	private

	def update_hsv
		@h = update_h
		@s = update_s
		@v = update_v
	end

	def update_h
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

	def update_s
		max = [@r, @g, @b].max
		min = [@r, @g, @b].min
		if max == 0
			0
		else
			((1 - min.to_f/max.to_f)*100).to_i		
		end
	end

	def update_v
		([@r, @g, @b].max.to_f / 255 * 100).to_i
	end

	def update_rgb
		v = @v.to_f / 255
		s = @s.to_f / 255
		ti = (@h.to_f / 60).to_i % 6
		f = @h.to_f / 60 - ti
		l = v * (1 - s)
		m = v * (1 - f * s)
		n = v * (1 - (1 - f)) * s
		case ti
			when 0
				@r = v; @g = n; @b = l
			when 1
				@r = m; @g = v; @b = l
			when 2
				@r = l; @g = v; @b = n
			when 3
				@r = l; @g = m; @b = v
			when 4
				@r = n; @g = l; @b = v
			when 5
				@r = v; @g = l; @b =m 
		end
		@r = (@r * 255).to_i; @g = (@g * 255).to_i; @b = (@b * 255).to_i
	end

	def to_s
		"[#{@r}, #{@g}, #{@b}]"
	end

end