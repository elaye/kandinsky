require 'test/unit'
require 'kandinsky'

class KandinskyTest < Test::Unit::TestCase

	def setup
		@c = Color.new(137, 6, 39)
	end

	def test_color_init_default
		assert_kind_of Color,
			Color.new
		
		assert_equal 0,
			Color.new.r
		assert_equal 0,
			Color.new.g
		assert_equal 0,
			Color.new.b	
	end

	def test_color_init
		assert_kind_of Color,
			Color.new(137, 6, 39)
		
		assert_equal 137,
			Color.new(137, 6, 39).r
		assert_equal 6,
			Color.new(137, 6, 39).g
		assert_equal 39,
			Color.new(137, 6, 39).b	
	end

	def test_color_to_str
		assert_equal "[137, 6, 39]",
			"#{Color.new(137, 6, 39)}"
	end

	def test_color_set_rgb
		@c.r = 25
		assert_equal 25,
			@c.r
		@c.g = 123
		assert_equal 123,
			@c.g
		@c.b = 73
		assert_equal 73,
			@c.b
	end

	def test_color_get_hsv
		assert_equal 344,
			@c.h
		assert_equal 95,
			@c.s
		assert_equal 53,
			@c.v
	end

end