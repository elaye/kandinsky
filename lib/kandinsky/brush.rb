class Brush

	attr_reader :brush, :anchor, :color

	@brush
	@anchor

	@color

	def initialize(brush = [1])
		@brush = brush
		@anchor = Point.new(1,1)
		@color = Color.new
	end

	def width
		@brush[0].size
	end

	def height
		@brush.size
	end

end