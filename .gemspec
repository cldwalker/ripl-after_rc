# -*- encoding: utf-8 -*-
require 'rubygems' unless Object.const_defined?(:Gem)
require File.dirname(__FILE__) + "/lib/ripl/after_rc"
 
Gem::Specification.new do |s|
  s.name        = "ripl-after_rc"
  s.version     = Ripl::AfterRc::VERSION
  s.authors     = ["Gabriel Horner"]
  s.email       = "gabriel.horner@gmail.com"
  s.homepage    = "http://github.com/cldwalker/ripl-after_rc"
  s.summary = "A ripl plugin that defines blocks to run after ~/.irbrc"
  s.description =  "This ripl plugin provides a simple way to define blocks which are run after ~/.irbrc is loaded. A more useful version of IRB.conf[:IRB_RC]."
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project = 'tagaholic'
  s.add_dependency 'ripl', '>= 0.2.0'
  s.files = Dir.glob(%w[{lib,test}/**/*.rb bin/* [A-Z]*.{txt,rdoc} ext/**/*.{rb,c} **/deps.rip]) + %w{Rakefile .gemspec}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.license = 'MIT'
end
