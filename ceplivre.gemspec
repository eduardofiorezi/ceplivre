# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ceplivre/version"

Gem::Specification.new do |s|
  s.name        = "ceplivre"
  s.version     = Ceplivre::VERSION
  s.authors     = ["Eduardo Fiorezi"]
  s.email       = ["eduardofiorezi@gmail.com"]
  s.homepage    = "http://hooppe.com"
  s.summary     = %q{Gem para utilizar a api ceplivre}
  s.description = %q{Utilize a API ceplivre na sua aplicação}

  s.rubyforge_project = "ceplivre"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
end
