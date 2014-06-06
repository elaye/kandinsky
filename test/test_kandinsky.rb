require 'test/unit'
require 'kandinsky'

class KandinskyTest < Test::Unit::TestCase
	
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
			Color.new(137, 6, 39).to_str
	end

end