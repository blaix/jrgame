# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jrgame/version'

Gem::Specification.new do |spec|
  spec.name          = "jrgame"
  spec.version       = JRGame::VERSION
  spec.authors       = ["Justin Blake"]
  spec.email         = ["justin@hentzia.com"]
  spec.summary       = %q{JRuby/OpenGL game engine}
  spec.description   = %q{Game engine using JRuby with OpenGL/LWJGL}
  spec.homepage      = "https://github.com/blaix/jrgame"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.files.reject! { |fn| fn.include? "examples" }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
