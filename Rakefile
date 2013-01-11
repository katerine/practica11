require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require "bundler/gem_tasks"
require "rake/clean"

CLOBBER.include('pkg/*.gem' )
$:.unshift File.dirname(__FILE__) + 'lib'

task :default => :spec

desc "Ejecutar tests"
task :spec do
sh "rspec spec/expresiones_spec.rb --format documentation"
end

desc "Programa"
task :bin do
sh "ruby -Ilib bin/expresiones.rb"
end

desc "Ejecutar test con formato html"
task :thtml do
sh "rspec spec/expresiones_spec.rb --format html > resultados.html"
end

task :test do
  sh "ruby -w -Ilib test/test_expresiones.rb"
en
