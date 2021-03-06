# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'audio_librarian/version'

Gem::Specification.new do |spec|
  spec.name          = "audio_librarian"
  spec.version       = AudioLibrarian::VERSION
  spec.authors       = ["Hristo Banchev"]
  spec.email         = ["fanatikpriest@gmail.com"]

  spec.summary       = %q{A tool for automatic mp3 reorganization and tagging.}
  #spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler",      "~> 1.10"
  spec.add_development_dependency "rake",         "~> 10.0"
  spec.add_development_dependency "rspec",        "~> 3.3.0"
  spec.add_development_dependency "coveralls",    "~> 0.8.2"
  spec.add_development_dependency "ruby-mp3info", "~> 0.8.7"
  spec.add_development_dependency "pry",          "~> 0.10.1"
  spec.add_development_dependency "titleize"
  spec.add_development_dependency "rmagick",      "~> 2.15.4"
end
