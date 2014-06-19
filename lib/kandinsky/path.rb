class Path

	@path

	def initialize(a = [])
		@path = a
	end

	# Bresenham's line algorithm
	def trace
		p0 = @path[0]
		for i in (1...@path.size)
			p1 = @path[i]
			dx = (p1.x - p0.x).abs
			dy = (p1.y - p0.y).abs
			if p0.x < p1.x
				sx = 1
			else
				sx = -1
			end
			if p0.y < p1.y
				sy = 1
			else
				sy = -1
			end
			err = dx - dy
			loop do
				yield Point.new(p0.x, p0.y)
				break if (p0.x == p1.x && p0.y == p1.y)
				e2 = 2*err
				if e2 > -dy
					err = err - dy
					p0.x = p0.x + sx
				end
				if e2 < dx
					err = err + dx
					p0.y = p0.y + sy
				end
			end

		end
		@trace
	end
end
