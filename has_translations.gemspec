# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'has_translations/version'

Gem::Specification.new do |s|
  s.name        = 'has_translations'
  s.version     = HasTranslations::VERSION
  s.authors     = ['Dmitry Polushkin']
  s.email       = %w(dmitry.polushkin@gmail.com)
  s.homepage    = 'http://github.com/dmitry/has_translations'
  s.summary     = %q{Create translations for your ActiveRecord models.}
  s.description = %q{Create translations for your ActiveRecord models. Uses delegate pattern. Fully tested and used in a several production sites.}

  s.rubyforge_project = 'has_translations'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = %w(lib)

  s.license          = 'MIT'

  s.add_dependency 'activesupport', '>= 3.2.0'
  s.add_dependency 'activerecord', '>= 3.2.0'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'test-unit'
end
