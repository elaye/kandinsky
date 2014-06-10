class Pixel

	attr_reader :color

	@color

	def initialize
		@color = Color.new(255,0,0)
	end

	def to_s
		"#{@color}"
	end

end