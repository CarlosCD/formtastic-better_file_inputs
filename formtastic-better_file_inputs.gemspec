# encoding: utf-8

require File.expand_path('../lib/formtastic-better_file_inputs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Carlos A. Carro Duplá', 'John Bintz']
  gem.email         = ['ccarrodupla@gmail.com', 'john@coswellproductions.com']
  gem.description   = 'A gem description, to be written'
  gem.summary       = 'A gem summary, comming soon'
  gem.homepage      = ''

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'formtastic-better_file_inputs'
  gem.require_paths = ['lib']
  gem.version       = Formtastic::BetterFileInputs::VERSION
end
