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

	public

	def to_str
		"[#{@r}, #{@g}, #{@b}]"
	end

end