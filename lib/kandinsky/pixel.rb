class Pixel

	attr_reader :color

	@color

	def initialize(c = nil)
		if c.is_a?(Color)
			@color = c
		else
			@color = Color.new(0,0,0)
		end
	end

	def to_s
		"#{@color}"
	end

end