
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "faker/buront/version"

Gem::Specification.new do |spec|
  spec.name          = "faker-buront"
  spec.version       = Faker::Buront::VERSION
  spec.authors       = ["colorbox"]
  spec.email         = ["colorbox222@gmail.com"]

  spec.summary       = %q{faker Buront implementation}
  spec.description   = %q{You can use a collection of buront's sayings}
  spec.homepage      = "https://github.com/colorbox/faker-buront"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 5.0.0"

  spec.add_development_dependency "bundler", "~> 2.1.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
