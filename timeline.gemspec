# -*- encoding: utf-8 -*-

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "timeline/version"
require "English"

Gem::Specification.new do |gem|
  gem.name          = "timeline"
  gem.version       = Timeline::VERSION
  gem.summary       = "Simple library for date comparisons"
  gem.description   = "Having trouble figuring out which date is in the future looking at > or < ?"
  gem.license       = "MIT"
  gem.authors       = ["Szymon Szeliga"]
  gem.email         = "szeliga.szymon@gmail.com"
  gem.homepage      = "https://github.com/szeliga/timeline"

  gem.files         = `git ls-files`.split($RS)

  `git submodule --quiet foreach --recursive pwd`.split($RS).each do |submodule|
    submodule.sub!("#{Dir.pwd}/", "")

    Dir.chdir(submodule) do
      `git ls-files`.split($RS).map do |subpath|
        gem.files << File.join(submodule, subpath)
      end
    end
  end
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "bundler", "~> 1.10"
  gem.add_development_dependency "codeclimate-test-reporter", "~> 0.1"
  gem.add_development_dependency "rake", "~> 10.0"
  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency "rubygems-tasks", "~> 0.2"
  gem.add_development_dependency "yard", "~> 0.8"
end
