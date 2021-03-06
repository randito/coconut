# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coconut/version'

Gem::Specification.new do |spec|
  spec.name          = "coconut"
  spec.version       = Coconut::VERSION
  spec.authors       = ["Andres Hernandez", "Roy Cruz"]
  spec.email         = ["ahernandez@growthaccelerationpartners.com", "rcruz@growthaccelerationpartners.com"]

  spec.licenses    = ['MIT']
  spec.summary       = 'Local customer configuration switcher'
  spec.description   = 'A friendy Gem to dinamically change the configuration of your project'
  spec.homepage      = 'https://github.com/andresgap/coconut'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["coconut"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
