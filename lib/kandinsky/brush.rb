class Brush

	attr_reader :brush, :color

	@brush

	@color

	def initialize
		@brush = [1]
		@color = Color.new
	end

end