# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'extend_data/version'

Gem::Specification.new do |gem|
  gem.name          = "extend_data"
  gem.version       = ExtendData::VERSION
  gem.authors       = ["yukinoraru"]
  gem.email         = ["yukinoraru@gmail.com"]
  gem.description   = %q{ExtendData is an alternative for Object::DATA}
  gem.summary       = %q{To create multiple data sections use `__${SECTION_NAME}__` below `__END__`, then you can access via `EXTEND_DATA["SECTION_NAME"]`.}
  gem.homepage      = "http://github.com/yukinoraru/extend_data"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end
