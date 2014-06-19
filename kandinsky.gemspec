Gem::Specification.new do |s|
  s.name        = 'Kandinsky'
  s.version     = '0.0.0'
  s.date        = '2014-06-06'
  s.summary     = "Painting library"
  s.description = "A simple ruby painting gem"
  s.authors     = ["Elie Génard"]
  s.email       = ''
  s.files       = ["lib/kandinsky.rb",
                  "lib/kandinsky/color.rb",
                  "lib/kandinsky/pixel.rb",
                  "lib/kandinsky/brush.rb",
                  "lib/kandinsky/point.rb",
                  "lib/kandinsky/path.rb",
                  "lib/kandinsky/image.rb"]
  s.executables << 'kandinsky'
  s.homepage    = 'http://rubygems.org/gems/kandinsky'
  s.license     = 'MIT'
end