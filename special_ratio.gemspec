lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'special_ratio/version'

Gem::Specification.new do |spec|
  spec.name          = 'special_ratio'
  spec.version       = SpecialRatio::VERSION
  spec.authors       = ['kami30k']
  spec.email         = ['kami30k@gmail.com']
  spec.summary       = %q{Calculate value for designing by using some classic methods. e.g. Golden Ratio, Silver Ratio.}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/kami30k/special_ratio'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
