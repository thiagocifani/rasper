# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rasper/version'

Gem::Specification.new do |gem|
  gem.name          = "rasper"
  gem.date          = %q{2012-02-18}
  gem.version       = Rasper::VERSION
  gem.authors       = ["Rodrigo Manhães"]
  gem.email         = ["rmanhaes@gmail.com"]
  gem.description   = 'JRuby client to JasperReports API.'
  gem.summary       = "JRuby client to JasperReports API.\nCurrently, only does compilation of JRXML files and generation of PDF reports."
  gem.homepage      = "https://github.com/rodrigomanhaes/rasper"
  gem.licenses      = ['MIT']

  gem.files         = Dir.glob('lib/**/*.rb') +
                      %w(java/pom.xml README.rst LICENSE.txt Rakefile Gemfile)
  gem.require_paths = ["lib"]
  gem.platform      = 'java'

  gem.add_dependency 'builder'
  gem.add_dependency 'activesupport'
  gem.add_dependency 'rake'

  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'docsplit'
end