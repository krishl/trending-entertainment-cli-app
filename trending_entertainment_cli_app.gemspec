# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'trending_entertainment_cli_app/version'

Gem::Specification.new do |spec|
  spec.name          = "trending_entertainment_cli_app"
  spec.version       = TrendingEntertainmentCliApp::VERSION
  spec.authors       = ["Krishel Lasam"]
  spec.email         = ["krishel.lasam@gmail.com"]

  spec.summary       = "Lists all currently trending shows and movies with their respective details based on real-time check-in data from Trakt.tv"
  spec.homepage      = "https://github.com/krishl/trending-entertainment-cli-app"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
